Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E55CA13D1BC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 02:54:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1Eu1Tuavaaybk7CqYz/MqGrZyWmYd3nM+s0JEPD9hAA=; b=dtZKC37ComBvnraG0+5kYBtju
	UzoEHZH/YtCEYLZ85mgpTAXlMYU6Qb2mQYc+zG4kEG37jJCXGsKCRSVmRhXpChdD6w+b1nvxFzrc2
	+kqdUkdEGeQrCKnvVMWck9nLBD6B4hZUfgEX+dHg1Nw7qVBxGC2TThiP86BPJA+4DuFJ0rIgj9VKv
	7VlwWX1KCESbq2/7RklBYZrhmmcz5GLlDqCcfBUaw4AflyrvJHdhnd24nYH1lUyl0euhiNAYnPoAN
	v9HgZ6G7TPZfNdI5jFGW4Zi5DaxrhCMaF4+cRAzxGH5NDtfFo5NoBVvPE/5/lInDQJu4Y3UFs4Rc4
	PaJvXcMGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iruMd-0005tt-Ny; Thu, 16 Jan 2020 01:54:27 +0000
Received: from out30-132.freemail.mail.aliyun.com ([115.124.30.132])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iruMT-0005tA-Ee
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 01:54:18 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R191e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01f04452;
 MF=zhangliguang@linux.alibaba.com; NM=1; PH=DS; RN=3; SR=0;
 TI=SMTPD_---0Tnr.RhS_1579139650; 
Received: from 30.5.115.118(mailfrom:zhangliguang@linux.alibaba.com
 fp:SMTPD_---0Tnr.RhS_1579139650) by smtp.aliyun-inc.com(127.0.0.1);
 Thu, 16 Jan 2020 09:54:11 +0800
Subject: Re: [PATCH 1/3] firmware: arm_sdei: fix possible deadlock
To: James Morse <james.morse@arm.com>
References: <1577110975-54782-1-git-send-email-zhangliguang@linux.alibaba.com>
From: =?UTF-8?B?5Lmx55+z?= <zhangliguang@linux.alibaba.com>
Message-ID: <a00c53ef-aed4-ac26-6cfe-8d4cc6daa7f8@linux.alibaba.com>
Date: Thu, 16 Jan 2020 09:54:10 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <1577110975-54782-1-git-send-email-zhangliguang@linux.alibaba.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_175417_681172_64567BB8 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.132 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSmFtZXMsCgpTb3JyeSBmb3IgdGhlIGxhdGUgcmVwbHksIHRoaXMgcHJvYmxlbSB3YXMgZm91
bmQgYnkgY29kZSByZXZpZXcuCgoKVGhhbmtzLAoKbHVhbnNoaQoK1NogMjAxOS8xMi8yMyAyMjoy
MiwgbHVhbnNoaSDQtLXAOgo+IEZyb206IExpZ3VhbmcgWmhhbmcgPHpoYW5nbGlndWFuZ0BsaW51
eC5hbGliYWJhLmNvbT4KPgo+IFdlIGNhbGwgc2RlaV9yZXJlZ2lzdGVyX2V2ZW50KCkgd2l0aCBz
ZGVpX2xpc3RfbG9jayBoZWxkIGJ1dAo+IF9zZGVpX2V2ZW50X3JlZ2lzdGVyKCkgYW5kIHNkZWlf
ZXZlbnRfZGVzdHJveSgpIGFsc28gYWNxdWlyZXMKPiBzZGVpX2xpc3RfbG9jayB0aHVzIGNyZWF0
aW5nIEEtQSBkZWFkbG9jay4KPgo+IEZpeGVzOiBkYTM1MTgyNzI0MGUgKCJmaXJtd2FyZTogYXJt
X3NkZWk6IEFkZCBzdXBwb3J0IGZvciBDUFUgYW5kIHN5c3RlbSBwb3dlciBzdGF0ZXMiKQo+IFNp
Z25lZC1vZmYtYnk6IExpZ3VhbmcgWmhhbmcgPHpoYW5nbGlndWFuZ0BsaW51eC5hbGliYWJhLmNv
bT4KPiAtLS0KPiAgIGRyaXZlcnMvZmlybXdhcmUvYXJtX3NkZWkuYyB8IDE3ICsrKysrKysrLS0t
LS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygt
KQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZmlybXdhcmUvYXJtX3NkZWkuYyBiL2RyaXZlcnMv
ZmlybXdhcmUvYXJtX3NkZWkuYwo+IGluZGV4IGE0NzkwMjMuLmIxMjI5MjcgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9maXJtd2FyZS9hcm1fc2RlaS5jCj4gKysrIGIvZHJpdmVycy9maXJtd2FyZS9h
cm1fc2RlaS5jCj4gQEAgLTY1MSwyMCArNjUxLDE5IEBAIHN0YXRpYyBpbnQgc2RlaV9yZXJlZ2lz
dGVyX2V2ZW50KHN0cnVjdCBzZGVpX2V2ZW50ICpldmVudCkKPiAgIAo+ICAgCWxvY2tkZXBfYXNz
ZXJ0X2hlbGQoJnNkZWlfZXZlbnRzX2xvY2spOwo+ICAgCj4gLQllcnIgPSBfc2RlaV9ldmVudF9y
ZWdpc3RlcihldmVudCk7Cj4gKwllcnIgPSBzZGVpX2FwaV9ldmVudF9yZWdpc3RlcihldmVudC0+
ZXZlbnRfbnVtLAo+ICsJCQkJICAgICAgIHNkZWlfZW50cnlfcG9pbnQsCj4gKwkJCQkgICAgICAg
ZXZlbnQtPnJlZ2lzdGVyZWQsCj4gKwkJCQkgICAgICAgU0RFSV9FVkVOVF9SRUdJU1RFUl9STV9B
TlksIDApOwo+ICAgCWlmIChlcnIpIHsKPiAgIAkJcHJfZXJyKCJGYWlsZWQgdG8gcmUtcmVnaXN0
ZXIgZXZlbnQgJXVcbiIsIGV2ZW50LT5ldmVudF9udW0pOwo+IC0JCXNkZWlfZXZlbnRfZGVzdHJv
eShldmVudCk7Cj4gKwkJbGlzdF9kZWwoJmV2ZW50LT5saXN0KTsKPiArCQlrZnJlZShldmVudC0+
cmVnaXN0ZXJlZCk7Cj4gICAJCXJldHVybiBlcnI7Cj4gICAJfQo+ICAgCj4gLQlpZiAoZXZlbnQt
PnJlZW5hYmxlKSB7Cj4gLQkJaWYgKGV2ZW50LT50eXBlID09IFNERUlfRVZFTlRfVFlQRV9TSEFS
RUQpCj4gLQkJCWVyciA9IHNkZWlfYXBpX2V2ZW50X2VuYWJsZShldmVudC0+ZXZlbnRfbnVtKTsK
PiAtCQllbHNlCj4gLQkJCWVyciA9IHNkZWlfZG9fY3Jvc3NfY2FsbChfbG9jYWxfZXZlbnRfZW5h
YmxlLCBldmVudCk7Cj4gLQl9Cj4gLQo+ICsJaWYgKGV2ZW50LT5yZWVuYWJsZSkKPiArCQllcnIg
PSBzZGVpX2FwaV9ldmVudF9lbmFibGUoZXZlbnQtPmV2ZW50X251bSk7Cj4gICAJaWYgKGVycikK
PiAgIAkJcHJfZXJyKCJGYWlsZWQgdG8gcmUtZW5hYmxlIGV2ZW50ICV1XG4iLCBldmVudC0+ZXZl
bnRfbnVtKTsKPiAgIAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
