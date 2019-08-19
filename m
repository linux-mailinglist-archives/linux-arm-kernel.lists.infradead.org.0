Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73AE994D70
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 21:02:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jiZFUaPF7pwjUnyA5sUviIEyFlbqJZk3hMw6k+F20so=; b=c5KJss50z2+AVnjJkons11bM3
	IlGyI3XW1V3lT/jioHZKWEvSX0vVm9Rf9BPib5OvJK4g2tEJxsWIMyGhKUgA0eFCLCwdqaTU/2RcV
	oKruYUfKOJJxpOueckDDKrB03ovJz8K2yCdk1kyVPC0A0srAPeTJjlMj2o96t0KkuYHLSTGSBgfyF
	X3Fh9w2u098yeni5/jtTp4RDEchBGLXX9Plc9StUeRG8T+jKuNXqgRQpqTA5z5aEGZXSRsi8A9Sg4
	8VG4BJufq8Hot97qotJ7ncO6P3//me26hFTP4Qt7iaEYHL5ziLgQ7Kt07ZuKE+gz0xHq/Jcp8KnTJ
	ERQIUzWlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzmvX-0005d6-Oc; Mon, 19 Aug 2019 19:02:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hzmvI-0005cL-Oa
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 19:02:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4FBAE360;
 Mon, 19 Aug 2019 12:02:32 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9B3DB3F246;
 Mon, 19 Aug 2019 12:02:31 -0700 (PDT)
Subject: Re: Build regression in Linux 5.3-rc5 with CONFIG_XEN=y
To: Stefan Wahren <wahrenst@gmx.net>, Christoph Hellwig <hch@lst.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>
References: <ebd95b7c-d265-cbf1-be50-945db1dd06ad@gmx.net>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <825549ed-8aa4-b418-8812-15a9d3cc153e@arm.com>
Date: Mon, 19 Aug 2019 20:02:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <ebd95b7c-d265-cbf1-be50-945db1dd06ad@gmx.net>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_120232_842099_C6657780 
X-CRM114-Status: GOOD (  16.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTkvMDgvMjAxOSAxOTozNywgU3RlZmFuIFdhaHJlbiB3cm90ZToKPiBIaSwKPiAKPiBpIHRy
aWVkIHRvIGNyb3NzIGNvbXBpbGUgYXJtL211bHRpX3Y3X2RlZmNvbmZpZyB3aXRoIENPTkZJR19Y
RU49eSB3aXRoCj4gTGludXggNS4zLXJjNSBhbmQgaSdtIGdldHRpbmcgdGhpczoKPiAKPiBhcmNo
L2FybS9tbS9kbWEtbWFwcGluZy5jOiBJbiBmdW5jdGlvbiDigJhhcmNoX3NldHVwX2RtYV9vcHPi
gJk6Cj4gYXJjaC9hcm0vbW0vZG1hLW1hcHBpbmcuYzoyMzQ3OjU6IGVycm9yOiDigJhzdHJ1Y3Qg
ZGV2aWNl4oCZIGhhcyBubyBtZW1iZXIKPiBuYW1lZCDigJhkbWFfY29oZXJlbnTigJkKPiAgwqAg
ZGV2LT5kbWFfY29oZXJlbnQgPSBjb2hlcmVudDsKPiAgwqDCoMKgwqAgXn4KPiBhcmNoL2FybS9t
bS9kbWEtbWFwcGluZy5jOiBBdCB0b3AgbGV2ZWw6Cj4gYXJjaC9hcm0vbW0vZG1hLW1hcHBpbmcu
YzoyMzg1OjY6IGVycm9yOiByZWRlZmluaXRpb24gb2YKPiDigJhhcmNoX3N5bmNfZG1hX2Zvcl9k
ZXZpY2XigJkKPiAgwqB2b2lkIGFyY2hfc3luY19kbWFfZm9yX2RldmljZShzdHJ1Y3QgZGV2aWNl
ICpkZXYsIHBoeXNfYWRkcl90IHBhZGRyLAo+ICDCoMKgwqDCoMKgIF5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fgo+IEluIGZpbGUgaW5jbHVkZWQgZnJvbSBhcmNoL2FybS9tbS9kbWEtbWFwcGluZy5j
OjE4OjA6Cj4gLi9pbmNsdWRlL2xpbnV4L2RtYS1ub25jb2hlcmVudC5oOjY3OjIwOiBub3RlOiBw
cmV2aW91cyBkZWZpbml0aW9uIG9mCj4g4oCYYXJjaF9zeW5jX2RtYV9mb3JfZGV2aWNl4oCZIHdh
cyBoZXJlCj4gIMKgc3RhdGljIGlubGluZSB2b2lkIGFyY2hfc3luY19kbWFfZm9yX2RldmljZShz
dHJ1Y3QgZGV2aWNlICpkZXYsCj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgo+IGFyY2gvYXJtL21tL2RtYS1tYXBwaW5nLmM6
MjM5Mjo2OiBlcnJvcjogcmVkZWZpbml0aW9uIG9mCj4g4oCYYXJjaF9zeW5jX2RtYV9mb3JfY3B1
4oCZCj4gIMKgdm9pZCBhcmNoX3N5bmNfZG1hX2Zvcl9jcHUoc3RydWN0IGRldmljZSAqZGV2LCBw
aHlzX2FkZHJfdCBwYWRkciwKPiAgwqDCoMKgwqDCoCBefn5+fn5+fn5+fn5+fn5+fn5+fn4KPiBJ
biBmaWxlIGluY2x1ZGVkIGZyb20gYXJjaC9hcm0vbW0vZG1hLW1hcHBpbmcuYzoxODowOgo+IC4v
aW5jbHVkZS9saW51eC9kbWEtbm9uY29oZXJlbnQuaDo3NzoyMDogbm90ZTogcHJldmlvdXMgZGVm
aW5pdGlvbiBvZgo+IOKAmGFyY2hfc3luY19kbWFfZm9yX2NwdeKAmSB3YXMgaGVyZQo+ICDCoHN0
YXRpYyBpbmxpbmUgdm9pZCBhcmNoX3N5bmNfZG1hX2Zvcl9jcHUoc3RydWN0IGRldmljZSAqZGV2
LAo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBefn5+fn5+fn5+fn5+
fn5+fn5+fn4KPiBJbiBmaWxlIGluY2x1ZGVkIGZyb20gLi9hcmNoL2FybS9pbmNsdWRlL2FzbS9w
YWdlLmg6MTQ5OjAsCj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGZyb20gLi9h
cmNoL2FybS9pbmNsdWRlL2FzbS90aHJlYWRfaW5mby5oOjE0LAo+ICDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBmcm9tIC4vaW5jbHVkZS9saW51eC90aHJlYWRfaW5mby5oOjM4LAo+
ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmcm9tIC4vaW5jbHVkZS9hc20tZ2Vu
ZXJpYy9wcmVlbXB0Lmg6NSwKPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZnJv
bSAuL2FyY2gvYXJtL2luY2x1ZGUvZ2VuZXJhdGVkL2FzbS9wcmVlbXB0Lmg6MSwKPiAgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZnJvbSAuL2luY2x1ZGUvbGludXgvcHJlZW1wdC5o
Ojc4LAo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmcm9tIC4vaW5jbHVkZS9s
aW51eC9zcGlubG9jay5oOjUxLAo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBm
cm9tIC4vaW5jbHVkZS9saW51eC9zZXFsb2NrLmg6MzYsCj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGZyb20gLi9pbmNsdWRlL2xpbnV4L3RpbWUuaDo2LAo+ICDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmcm9tIC4vaW5jbHVkZS9saW51eC9zdGF0Lmg6MTksCj4g
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGZyb20gLi9pbmNsdWRlL2xpbnV4L21v
ZHVsZS5oOjEwLAo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmcm9tIGFyY2gv
YXJtL21tL2RtYS1tYXBwaW5nLmM6OToKPiAKPiBUaGVyZSBpcyBubyBidWlsZCBpc3N1ZSB3aXRo
IExpbnV4IDUuMiwgc28gdGhpcyBtdXN0IGJlIGludHJvZHVjZWQgd2l0aAo+IDUuMy1yYy4gSSBo
b3BlIHlvdSBoYXZlIGEgY2x1ZSB3aXRob3V0IGJpc2VjdGluZyB0aGlzLgoKT2gsIHRoYXQgbXVz
dCBiZSBhZDNjN2IxOGM1Yiwgc2luY2UgdGhlIGRtYS1ub25jb2hlcmVudCBzdHVmZiBpcyBvbmx5
IApzZWxlY3RlZCBieSBDT05GSUdfQVJNX0xQQUUsIGJ1dCB0aGUgcmVmZXJlbmNlcyB0byBpdCBh
cmUgZ3VhcmRlZCBieSAKQ09ORklHX1NXSU9UTEIsIGFuZCBDT05GSUdfWEVOIGJyaW5ncyBpbiB0
aGUgbGF0dGVyIHdpdGhvdXQgdGhlIGZvcm1lci4KClJvYmluLgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
