Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 044B416714C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 08:53:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uwvUViO9jYOZBv6evE8zeKXEpb5ueSe9FNVIcH+xmoo=; b=omueeoFLHVF1+E
	pE1+C4P0Vz90wh67PwYoudfzf04mpMbnQX4jFn1+BIbxOvsiPpLp2UsW01pn9owl4atKtIPeR+C0W
	7ORZ9lBg7Z10ThEvfMFyTxQjANm7/9e1iO36hn37Tg0SM7s0sy5cvjWvQhR6MgzMpWZ60r6+vtqAy
	iUXPbiR75eOaaVCPBYdpc/rt4Y3rDQPOdQFK+Ze5vk+fH9zZkY7HMqnopc8nIH4Gv7qivRIKtSyoq
	C5F91DdnvmYO+1pETJCLuxXaS/g2v32+oLX4kxMOzlueVx7bruEaALbiLDavPKJwdInd1a4Nz0cq/
	dPBsZnSBKLa1QkIq5ddw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5384-0006EJ-BJ; Fri, 21 Feb 2020 07:53:44 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j537l-0005yo-No
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 07:53:30 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01L7rABf123736;
 Fri, 21 Feb 2020 01:53:10 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1582271590;
 bh=4oe8zWumyH1U/XLfwq2hHrnruwHoFbfKJKSxe0/eD4A=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=m5iOI48LxCt9hBXs9jVzOFlNoQDGfM09SOucuNdRdLcsBPGKDvT8cTIa/2A1Mn3os
 bqsUUuzUX9mRu4cqGRLtOGsCSGHzvqYLKqk4kqDZ4eeI40lK6MgJqvswYpcFoDT0Yq
 bUft9eWP9YpyyHFYDM49x2uuO8EZZX7KIr4Ct3fQ=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 01L7rA9Q023230
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 21 Feb 2020 01:53:10 -0600
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 21
 Feb 2020 01:53:09 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 21 Feb 2020 01:53:09 -0600
Received: from [172.24.190.4] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01L7r5hr091996;
 Fri, 21 Feb 2020 01:53:05 -0600
Subject: Re: [PATCH v2 2/3] can: m_can: m_can_platform: Add support for
 enabling transceiver
To: Dan Murphy <dmurphy@ti.com>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <netdev@vger.kernel.org>, <linux-can@vger.kernel.org>
References: <20200217142836.23702-1-faiz_abbas@ti.com>
 <20200217142836.23702-3-faiz_abbas@ti.com>
 <250f905a-33c3-dd17-15c9-e282299dd742@ti.com>
From: Faiz Abbas <faiz_abbas@ti.com>
Message-ID: <8885c00b-7b73-0448-7e9d-ecb19fe84adf@ti.com>
Date: Fri, 21 Feb 2020 13:24:46 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <250f905a-33c3-dd17-15c9-e282299dd742@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_235325_923476_042F5FAC 
X-CRM114-Status: GOOD (  14.79  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, sriram.dash@samsung.com,
 lgirdwood@gmail.com, robh+dt@kernel.org, broonie@kernel.org,
 mkl@pengutronix.de, wg@grandegger.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgRGFuLAoKT24gMTcvMDIvMjAgODo0MCBwbSwgRGFuIE11cnBoeSB3cm90ZToKPiBGYWl6Cj4g
Cj4gT24gMi8xNy8yMCA4OjI4IEFNLCBGYWl6IEFiYmFzIHdyb3RlOgo+PiBDQU4gdHJhbnNjZWl2
ZXJzIG9uIHNvbWUgYm9hcmRzIGhhdmUgYSBzdGFuZGJ5IGxpbmUgd2hpY2ggY2FuIGJlCj4+IHRv
Z2dsZWQgdG8gZW5hYmxlL2Rpc2FibGUgdGhlIHRyYW5zY2VpdmVyLiBNb2RlbCB0aGlzIGFzIGFu
IG9wdGlvbmFsCj4+IGZpeGVkIHhjZWl2ZXIgcmVndWxhdG9yLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5
OiBGYWl6IEFiYmFzIDxmYWl6X2FiYmFzQHRpLmNvbT4KPj4gQWNrZWQtYnk6IFNyaXJhbSBEYXNo
IDxzcmlyYW0uZGFzaEBzYW1zdW5nLmNvbT4KPj4gLS0tCj4+IMKgIGRyaXZlcnMvbmV0L2Nhbi9t
X2Nhbi9tX2Nhbl9wbGF0Zm9ybS5jIHwgNiArKysrKysKPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDYg
aW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvY2FuL21fY2FuL21f
Y2FuX3BsYXRmb3JtLmMKPj4gYi9kcml2ZXJzL25ldC9jYW4vbV9jYW4vbV9jYW5fcGxhdGZvcm0u
Ywo+PiBpbmRleCAzOGVhNWU2MDBmYjguLjcxOTQ2OGZhYjUwNyAxMDA2NDQKPj4gLS0tIGEvZHJp
dmVycy9uZXQvY2FuL21fY2FuL21fY2FuX3BsYXRmb3JtLmMKPj4gKysrIGIvZHJpdmVycy9uZXQv
Y2FuL21fY2FuL21fY2FuX3BsYXRmb3JtLmMKPj4gQEAgLTYsNiArNiw3IEBACj4+IMKgIC8vIENv
cHlyaWdodCAoQykgMjAxOC0xOSBUZXhhcyBJbnN0cnVtZW50cyBJbmNvcnBvcmF0ZWQgLQo+PiBo
dHRwOi8vd3d3LnRpLmNvbS8KPj4gwqAgwqAgI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2Rldmlj
ZS5oPgo+PiArI2luY2x1ZGUgPGxpbnV4L3JlZ3VsYXRvci9jb25zdW1lci5oPgo+PiDCoCDCoCAj
aW5jbHVkZSAibV9jYW4uaCIKPj4gwqAgQEAgLTU3LDYgKzU4LDcgQEAgc3RhdGljIGludCBtX2Nh
bl9wbGF0X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UKPj4gKnBkZXYpCj4+IMKgIHsKPj4g
wqDCoMKgwqDCoCBzdHJ1Y3QgbV9jYW5fY2xhc3NkZXYgKm1jYW5fY2xhc3M7Cj4+IMKgwqDCoMKg
wqAgc3RydWN0IG1fY2FuX3BsYXRfcHJpdiAqcHJpdjsKPj4gK8KgwqDCoCBzdHJ1Y3QgcmVndWxh
dG9yICpyZWdfeGNlaXZlcjsKPj4gwqDCoMKgwqDCoCBzdHJ1Y3QgcmVzb3VyY2UgKnJlczsKPj4g
wqDCoMKgwqDCoCB2b2lkIF9faW9tZW0gKmFkZHI7Cj4+IMKgwqDCoMKgwqAgdm9pZCBfX2lvbWVt
ICptcmFtX2FkZHI7Cj4+IEBAIC0xMTEsNiArMTEzLDEwIEBAIHN0YXRpYyBpbnQgbV9jYW5fcGxh
dF9wcm9iZShzdHJ1Y3QKPj4gcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+PiDCoCDCoMKgwqDCoMKg
IG1fY2FuX2luaXRfcmFtKG1jYW5fY2xhc3MpOwo+PiDCoCArwqDCoMKgIHJlZ194Y2VpdmVyID0g
ZGV2bV9yZWd1bGF0b3JfZ2V0X29wdGlvbmFsKCZwZGV2LT5kZXYsICJ4Y2VpdmVyIik7Cj4+ICvC
oMKgwqAgaWYgKFBUUl9FUlIocmVnX3hjZWl2ZXIpID09IC1FUFJPQkVfREVGRVIpCj4+ICvCoMKg
wqDCoMKgwqDCoCByZXR1cm4gLUVQUk9CRV9ERUZFUjsKPj4gKwo+IAo+IFdoZXJlIGlzIHRoaXMg
cmVndWxhdG9yIGVuYWJsZWQ/CgpJIGhhdmUgc2V0IHJlZ3VsYXRvci1ib290LW9uIGZsYWcgaW4g
dGhlIGR0IHNvIHRoaXMgZGlkbid0IHJlcXVpcmUgYW4KZW5hYmxlLgoKPiBTaG91bGRuJ3QgdGhl
IHJlZ3VsYXRvciBiZSBtYW5hZ2VkIGJ5IHJ1bnRpbWUgUE0gYXMgd2VsbD8KPiAKCkxldCBtZSB0
cnkgdGhpcyBvdXQuCgpUaGFua3MsCkZhaXoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
