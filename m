Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 687DA1B0972
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 14:35:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YjjgOnc+XUCwZlnq8uIr78xk1BN358/ziJeIO2rNW3M=; b=f9coxZoRYPRwvoCZfj38BlA3l
	NSIn9D/1A0H2ZlWqhAMgzszbhTk5aQ93AvTcMQNXi/0B2JscS0r5y1OKgmbIA1V7l99OeskKdoi5e
	wzqDzlG8L3XKlUe8dsOu/DyR1hH046IpCI9aWubjtaPctTjIGqSJdV95N9JQdSiEV+8j1QIg9DAni
	r77zxUaOeMjwmXOjXoXndXzcDzqE+b4j2nOhSCUbp2he91a4RQb28hKujFPyV+1XJCFvqWJe2BC4v
	nsFg8HxbEmu3xUtub1pBPhxI+zxTs+A0dd+FL3Ue9lVQbzZT4iMu6zcgF4VRtojmQbo4tNj/jD9OE
	IUEosLU/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQVe6-0002r1-JR; Mon, 20 Apr 2020 12:35:30 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQVdf-0001kc-MX; Mon, 20 Apr 2020 12:35:05 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 42114F8280CD990CF8CC;
 Mon, 20 Apr 2020 20:35:01 +0800 (CST)
Received: from [127.0.0.1] (10.166.213.7) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.487.0; Mon, 20 Apr 2020
 20:34:59 +0800
Subject: Re: [PATCH] staging: mt7621-pinctrl: Use correct pointer type
 argument for sizeof
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <20200420123755.4353-1-yanaijie@huawei.com>
 <20200420121900.GD2659@kadam>
From: Jason Yan <yanaijie@huawei.com>
Message-ID: <c6b155a6-28ae-e0f9-b866-4d17e8a45706@huawei.com>
Date: Mon, 20 Apr 2020 20:34:59 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200420121900.GD2659@kadam>
X-Originating-IP: [10.166.213.7]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_053503_940758_14D4BDB2 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 nishkadg.linux@gmail.com, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgrU2iAyMDIwLzQvMjAgMjA6MTksIERhbiBDYXJwZW50ZXIg0LS1wDoKPiBPbiBNb24sIEFwciAy
MCwgMjAyMCBhdCAwODozNzo1NVBNICswODAwLCBKYXNvbiBZYW4gd3JvdGU6Cj4+IEZpeCB0aGUg
Zm9sbG93aW5nIGNvY2NpY2hlY2sgd2FybmluZzoKPj4KPj4gZHJpdmVycy9zdGFnaW5nL210NzYy
MS1waW5jdHJsL3BpbmN0cmwtcnQyODgwLmM6MjIzOjE0LTM2OiBXQVJOSU5HOiBVc2UKPj4gY29y
cmVjdCBwb2ludGVyIHR5cGUgYXJndW1lbnQgZm9yIHNpemVvZgo+Pgo+PiBTaWduZWQtb2ZmLWJ5
OiBKYXNvbiBZYW4gPHlhbmFpamllQGh1YXdlaS5jb20+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvc3Rh
Z2luZy9tdDc2MjEtcGluY3RybC9waW5jdHJsLXJ0Mjg4MC5jIHwgMiArLQo+PiAgIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9zdGFnaW5nL210NzYyMS1waW5jdHJsL3BpbmN0cmwtcnQyODgwLmMgYi9kcml2ZXJz
L3N0YWdpbmcvbXQ3NjIxLXBpbmN0cmwvcGluY3RybC1ydDI4ODAuYwo+PiBpbmRleCBkMGYwNjc5
MGQzOGYuLjg4ODNmMmE4ZWE1NyAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL210NzYy
MS1waW5jdHJsL3BpbmN0cmwtcnQyODgwLmMKPj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL210NzYy
MS1waW5jdHJsL3BpbmN0cmwtcnQyODgwLmMKPj4gQEAgLTIyMCw3ICsyMjAsNyBAQCBzdGF0aWMg
aW50IHJ0Mjg4MF9waW5tdXhfaW5kZXgoc3RydWN0IHJ0Mjg4MF9wcml2ICpwKQo+PiAgIAkvKiBh
bGxvY2F0ZSBvdXIgZnVuY3Rpb24gYW5kIGdyb3VwIG1hcHBpbmcgaW5kZXggYnVmZmVycyAqLwo+
PiAgIAlmID0gcC0+ZnVuYyA9IGRldm1fa2NhbGxvYyhwLT5kZXYsCj4+ICAgCQkJCSAgIHAtPmZ1
bmNfY291bnQsCj4+IC0JCQkJICAgc2l6ZW9mKHN0cnVjdCBydDI4ODBfcG14X2Z1bmMpLAo+PiAr
CQkJCSAgIHNpemVvZihzdHJ1Y3QgcnQyODgwX3BteF9mdW5jICopLAo+IAo+IFllcy4gIFRoaXMg
Zml4ZXMgYSBidWcuICBXZSB3ZXJlIGFsbG9jYXRpbmcgdG9vIG11Y2ggZGF0YS4gIEJ1dCB0aGUK
PiBwcmVmZXJlZCBzdHlsZSBpczoKPiAKPiAJCQkJc2l6ZW9mKCpwLT5mdW5jKSwKPiAKPiBQbGVh
c2UgY291bGQgeW91IHJlc2VuZD8KPiAKClN1cmUsIEkgd2lsbCBjb29rIGEgbmV3IG9uZS4KCj4g
cmVnYXJkcywKPiBkYW4gY2FycGVudGVyCj4gCj4gCj4gLgo+IAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
