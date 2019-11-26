Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04D4C109C43
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 11:25:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=th+B7RkvOTA8iBLh5Tb1PVtCgnZyePfk2LwU3aFcfTU=; b=ToWxztrWNpbBP4V21uQAIFm0+
	osVvs8tbCrivPzPvKXjj0Q3UIiYNkiTyvgU4tn8ItFxiIfOGxv5OVDhFqsal8zFK/yP8WAGCHguGP
	62VAkGFCAHXZ1/J2j32K89sH+xw0fHhzmWozZ/FIwZRlwJZawi2TmInNM3TTsmM6QSYyHzrTQjbkP
	lShpt5WccVa0BVLj/3rL/rBR9EpUq/Q2PmC54x3vOBSRpaL9TW+WpDgsgiXVjcPwqb/H81+if68JJ
	Lq+VZFarpbPHxn8B76Wh4LcCdVDzMaYLDF1Un04zEUl2dkQpScZWgsMUgG+FFbWa8p4hrLn17iOAM
	boYxCZrYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZY21-0005sf-KY; Tue, 26 Nov 2019 10:25:17 +0000
Received: from out30-133.freemail.mail.aliyun.com ([115.124.30.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZY1d-00057l-5M
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 10:24:54 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R131e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e01422; MF=wenyang@linux.alibaba.com;
 NM=1; PH=DS; RN=4; SR=0; TI=SMTPD_---0Tj8hI5Z_1574763887; 
Received: from IT-C02W23QPG8WN.local(mailfrom:wenyang@linux.alibaba.com
 fp:SMTPD_---0Tj8hI5Z_1574763887) by smtp.aliyun-inc.com(127.0.0.1);
 Tue, 26 Nov 2019 18:24:48 +0800
Subject: Re: [PATCH] firmware: arm_scmi: avoid double free in error flow
To: Sudeep Holla <sudeep.holla@arm.com>
References: <20191125155409.9948-1-wenyang@linux.alibaba.com>
 <20191125161313.GA1157@bogus>
From: Wen Yang <wenyang@linux.alibaba.com>
Message-ID: <21f4f7d6-9085-382d-42d3-a63484aca8a2@linux.alibaba.com>
Date: Tue, 26 Nov 2019 18:24:47 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0)
 Gecko/20100101 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191125161313.GA1157@bogus>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_022453_374988_540ABC6F 
X-CRM114-Status: GOOD (  15.55  )
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.133 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAyMDE5LzExLzI2IDEyOjEzIOS4iuWNiCwgU3VkZWVwIEhvbGxhIHdyb3RlOgo+IE9uIE1v
biwgTm92IDI1LCAyMDE5IGF0IDExOjU0OjA5UE0gKzA4MDAsIFdlbiBZYW5nIHdyb3RlOgo+PiBJ
ZiBkZXZpY2VfcmVnaXN0ZXIoKSBmYWlscywgYm90aCBwdXRfZGV2aWNlKCkgYW5kIGtmcmVlKCkK
Pj4gYXJlIGNhbGxlZCwgZW5kaW5nIHdpdGggYSBkb3VibGUgZnJlZSBvZiB0aGUgc2NtaV9kZXYu
Cj4+Cj4gCj4gQ29ycmVjdC4KPiAKPj4gQ2FsbGluZyBrZnJlZSgpIGlzIG5lZWRlZCBvbmx5IHdo
ZW4gYSBmYWlsdXJlIGhhcHBlbnMgYmV0d2VlbiB0aGUKPj4gYWxsb2NhdGlvbiBvZiB0aGUgc2Nt
aV9kZXYgYW5kIGl0cyByZWdpc3RyYXRpb24sIHNvIG1vdmUgaXQgdG8KPj4gdGhlcmUgYW5kIHJl
bW92ZSBpdCBmcm9tIHRoZSBlcnJvciBmbG93Lgo+Pgo+IAo+IGtzdHJkdXBfY29uc3QgY2FuIGZh
aWwgYW5kIGluIHRoYXQgY2FzZSBkZXZpY2UgaXMgbm90IHlldCByZWdpc3RlcmVkLAo+IHNvIHdl
IG5lZWQgdG8gZnJlZS4gU2luY2UgZGV2aWNlX3JlZ2lzdGVyKCkgY2FsbHMgcHV0X2RldmljZSgp
IG9uIGZhaWx1cmUKPiB0b28sIEkgd291bGQganVzdCBkcm9wIGl0IGFzIGl0J3MgdW5uZWNlc3Nh
cnksIG5vdCBzdXJlIHdoeSBJIGhhdmUgYWRkZWQKPiBpdCBpbiB0aGUgZmlyc3QgcGxhY2UuIENh
biB5b3UgcmUtc3BpbiB0aGUgcGF0Y2ggZHJvcHBpbmcgcHV0X2RldmljZQo+IGFuZCByZW5hbWlu
ZyBwdXRfZGV2IGxhYmVsIHRvIHNvbWV0aGluZyBsaWtlIGZyZWVfY29uc3QuCj4gCj4gLS0KPiBS
ZWdhcmRzLAo+IFN1ZGVlcAo+IAoKSGkgU3VkZWVwLApUaGFua3MgZm9yIHlvdXIgY29tbWVudHMu
CkxldCdzIGNoZWNrIHRoZSBjb2RlIGxpa2UgdGhpczoKCmludCBkZXZpY2VfcmVnaXN0ZXIoc3Ry
dWN0IGRldmljZSAqZGV2KQp7CiAgICAgICAgIGRldmljZV9pbml0aWFsaXplKGRldik7ICAgLS0+
IEluaXRpYWxpemUga29iai0+IGtyZWYgdG8gMQogICAgICAgICByZXR1cm4gZGV2aWNlX2FkZChk
ZXYpOwp9CgppbnQgZGV2aWNlX2FkZChzdHJ1Y3QgZGV2aWNlICpkZXYpCnsKLi4uCiAgICAgICAg
IGRldiA9IGdldF9kZXZpY2UoZGV2KTsgIC0tPiBrb2JqLT4ga3JlZiBpbmNyZWFzZXMgYnkgMQou
Li4KZG9uZToKICAgICAgICAgcHV0X2RldmljZShkZXYpOyAgLS0+IGtvYmotPiBrcmVmIGRlY3Jl
YXNlcyBieSAxIGFuZCBpcyBub3cgMQogICAgICAgICByZXR1cm4gZXJyb3I7Ci4uLgp9CgpTbyB3
ZSBhbHNvIG5lZWQgdG8gY2FsbCBwdXRfZGV2aWNlICgpLAphbmQgdGhlIG9yaWdpbmFsIHBhdGNo
IHNob3VsZCBiZSBmaW5lLgpQbGVhc2Uga2luZGx5IGhlbHAgdG8gY2hlY2sgYWdhaW4sIHRoYW5r
IHlvdS4KCi0tClJlZ2FyZHMsCldlbgoKCgoKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
