Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE226BD7E8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 07:48:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:Mime-Version:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FdNhegqKDXLQHHu/gJ+tiLlhSsXR4mAyK4spVdITViw=; b=bTjkI70IKqkXVN
	tPrkPuNcbioIdCwYwYus9k5S7RUcrQkJtBPejKZOI7QPP6aGkfT2V+PKrVlwxKxfswzTXM7nZYYPY
	Ithof51Xq8dvP6d7NT14YKNCCQVN/PA09cDArkVWIDJi/8Mjp/56xTo0T8722JWpQUy9mntkh6r7l
	tVJ55ThtPCpT4N6nc3Afhhce4flgrkOaCQZjkfvlMfPfnmPaZyixs9LDZfr+AE9j3H42eFTeNFbSI
	BPQzhhK73Dq/MByID/lfZsLePFQloVJnF6S7SnwXR1cQhW0H5IeBva+TbTuY3E5VlDJUDkCUptJIB
	fV6oLw6gXJrOVxTFVQjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD09h-0005eu-3A; Wed, 25 Sep 2019 05:48:01 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD09T-0005eK-5u
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 05:47:49 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190925054745euoutp020d4f0611d868a0b433afbd520cdf7757~HmFBIA0P61314313143euoutp02D
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 05:47:45 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190925054745euoutp020d4f0611d868a0b433afbd520cdf7757~HmFBIA0P61314313143euoutp02D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1569390465;
 bh=Z5x2fIzH/UThhqtNBRGIRK73inw+W8sQQShb8cuq+Dw=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=V5DXhR48LbO9KrkJsz3TN+ZFNKSp60UrzKMIZc7eGUIP9tfgVAZuA7SaVl/KwsABV
 Dc03JDVYzPK3PKeOyxcMtEbAly/Ou7bx11D1EWEs8LvkaxKBrHjy957okYp2wZKcjp
 DmOTAkWyOk7T+qmMfNwdJ6WK4xJA4koNlCJwxOcs=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190925054745eucas1p170eaab25d17f88843483700ee6d8e1d6~HmFA7xPP31488914889eucas1p1z;
 Wed, 25 Sep 2019 05:47:45 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 9A.01.04309.18FFA8D5; Wed, 25
 Sep 2019 06:47:45 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190925054744eucas1p28a2427e08dbdf148d67e395642a533da~HmFAN9UFj1996119961eucas1p2C;
 Wed, 25 Sep 2019 05:47:44 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190925054744eusmtrp218ada16cb20b3971cc469885b41d559c~HmFANKgFL0721607216eusmtrp2g;
 Wed, 25 Sep 2019 05:47:44 +0000 (GMT)
X-AuditID: cbfec7f4-afbff700000010d5-ea-5d8aff815330
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 8C.94.04117.08FFA8D5; Wed, 25
 Sep 2019 06:47:44 +0100 (BST)
Received: from AMDC3555 (unknown [106.120.51.67]) by eusmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20190925054743eusmtip192b3d31fb4c2ff8a37f978484e114585~HmE-Zonns3141331413eusmtip1K;
 Wed, 25 Sep 2019 05:47:43 +0000 (GMT)
Message-ID: <c06ca89f2b40e0282f19727b95da5e5b0158d7e3.camel@samsung.com>
Subject: Re: [RFC PATCH v2 00/11] Simple QoS for exynos-bus driver using
 interconnect
From: Artur =?UTF-8?Q?=C5=9Awigo=C5=84?= <a.swigon@samsung.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
 dri-devel@lists.freedesktop.org
Date: Wed, 25 Sep 2019 07:47:43 +0200
In-Reply-To: <d8550f93-d4cf-f215-c083-8ecad267d430@samsung.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0hTYRj229k5O1pHPqflm62kReEkNSvigyILog5Ftz8FheRqh2npjB21
 KzTLbotVGJFaOqOoZch0WugqKx0OKu9mQomGXV2uRKdEF9t2ivr3vM/7Pc/zPvCxlLKDjmEz
 DDmC0aDNVDNh8nvN31oT8ifNqQsneoFUF9lp8qlRQ16OfaCJ1dVKk27fF4ZcfuhgSGH/BTlp
 a6tSEFvfCE0cgz006XJeZcioxYVIUVuDjFS6+hTkVb6NIUUXPzErMe+oOMPwr3seMHz/WbeM
 r7lxlK/21sn4c7UViB91zN6s2B62XCdkZuQJxqQVaWHphV3n5fvyEw68NDUgE2qYa0YsC3gJ
 PHgbb0ZhrBLbEHy73iKXhjEEvZ99MmkYRXBjot+/CQ0q2u9fYqTFLQSWIRuShvcIHO0P6cAr
 DvPQZCpkAjgSb4NSz0CQZ3AKtLwaD9pGYS+Ct4++UoGBwuMIfGVVwQw5ngettlIqgEP9isHb
 HiRlL4Dhp+fkgcs5HAE/6yIDNIVj4fjdK0EfwCMKKCh+Q0ntVkOFZa0kjYQhd61CwiqYrLfK
 JCzCu/p+WtKa/A1uuihpsQya3B10wIfCGrA7kySaA1P19z8+q6DS46SlqHDoHY6QzgmHwnuX
 /1zAwemTSgmqwVkcLgkBjt3poS4gdcm/KiX/VSn5l1qOqAoULeSKWXpBXGQQ9ieK2iwx16BP
 3J2d5UD+j/bsl3usDjl/7GpEmEXqqdxK2pyqpLV54sGsRgQspY7iSlR+itNpDx4SjNk7jbmZ
 gtiIZrJydTR3OGRghxLrtTnCXkHYJxj/bmVsaIwJMb4YlTcieWTBNYe5fFr81qXNE7da5uti
 6p7r5+Bivvdd/vpNnmOzt/h2Go54H29L6izXbyLW6SHrhs42qzoGxBmrhu1WcUXphrbkghef
 Ez6SlJTUjeNxHWssRVx2X5SmzO5xzTp1Is4crkv7EZ/TvSdW83RKp+GkzlqzaHHpkzi1XEzX
 JsdTRlH7G0eFqPVkAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrFIsWRmVeSWpSXmKPExsVy+t/xu7oN/7tiDU7tV7PYOGM9q8XLQ5oW
 1788Z7WYf+Qcq8WVr+/ZLKbv3cRmMen+BBaL8+c3sFusuPuR1WLT42usFpd3zWGz+Nx7hNFi
 xvl9TBZrj9xlt7jduILNYsbkl2wOAh6bVnWyedy5tofN4373cSaPzUvqPTa+28Hk0bdlFaPH
 501yAexRejZF+aUlqQoZ+cUltkrRhhZGeoaWFnpGJpZ6hsbmsVZGpkr6djYpqTmZZalF+nYJ
 ehmTLvezFDTqVlxv2MfYwLhPuYuRk0NCwETiwu6pbF2MXBxCAksZJd4e2sYOkZCQ+Lj+BiuE
 LSzx51oXVNETRokHpxYzgiR4BTwkDjdMYgOxhQXCJea+fgDWwCZgL3H29jcmkAYRgfeMEh+2
 vwObyizwg1Hi8wl9EJtFQFXi3Iq5zCA2J1DD45WvGSE2/GGUaJm2nxmiQVOidftvqJN0JN6e
 6mPpYuQA2iwo8XeHMESJvETz1tnMExgFZyHpmIVQNQtJ1QJG5lWMIqmlxbnpucVGesWJucWl
 eel6yfm5mxiB8brt2M8tOxi73gUfYhTgYFTi4XVg7YoVYk0sK67MPcQowcGsJMI7SwYoxJuS
 WFmVWpQfX1Sak1p8iNEU6J+JzFKiyfnAVJJXEm9oamhuYWlobmxubGahJM7bIXAwRkggPbEk
 NTs1tSC1CKaPiYNTqoFR+oq/wLKOf/s9bIQ6dbuz2+7wHvHW45a9bLUjzmeHs1aoaGgj8yqL
 DQqr/y+uq94QauMmWyZzpnjN1wfVB9UmKvYdnO6z49CzLYv42COO9c5VeTD7Ucb8/hLnNfcW
 bwtwfqX5/ZSu3iouVX71az2B9+va5565bvhX9IHsNgH3to1bFu1il2RXYinOSDTUYi4qTgQA
 iyp1f+0CAAA=
X-CMS-MailID: 20190925054744eucas1p28a2427e08dbdf148d67e395642a533da
X-Msg-Generator: CA
X-CPGSPASS: Y
X-RootMTR: 20190919142321eucas1p164c2591ad402427cb71fd00c348a29ec
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190919142321eucas1p164c2591ad402427cb71fd00c348a29ec
References: <CGME20190919142321eucas1p164c2591ad402427cb71fd00c348a29ec@eucas1p1.samsung.com>
 <20190919142236.4071-1-a.swigon@samsung.com>
 <fe6d026d-71b5-438d-6932-6a2234fc72c2@samsung.com>
 <d8550f93-d4cf-f215-c083-8ecad267d430@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_224747_364997_F6B742DD 
X-CRM114-Status: GOOD (  28.70  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: b.zolnierkie@samsung.com, sw0312.kim@samsung.com, krzk@kernel.org,
 inki.dae@samsung.com, myungjoo.ham@samsung.com,
 "cpgs \(cpgs@samsung.com\)" <cpgs@samsung.com>, leonard.crestez@nxp.com,
 georgi.djakov@linaro.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBGcmksIDIwMTktMDktMjAgYXQgMTE6MTQgKzA5MDAsIENoYW53b28gQ2hvaSB3cm90
ZToKPiBIaSBBcnR1ciwKPiAKPiBJIHRyaWVkIHRvIGp1c3QgYnVpbGQgdGhpcyBwYXRjaCBvbiBt
YWlubGluZSBrZXJuZWwgb3IgbGludXgtbmV4dC4KPiBCdXQsIHdoZW4gSSBhcHBsaWVkIHRoZW0s
IG1lcmdlIGNvbmZsaWN0IGhhcHBlbnMuIFlvdSBkaWRuJ3QgZGV2ZWxvcAo+IHRoZW0gb24gbGF0
ZXN0IHZlcnNpb24uIFBsZWFzZSByZWJhc2UgdGhlbSBiYXNlZCBvbiBsYXRlc3QgbWFpbmxpbmUg
a2VybmVsLgoKSSBkZXZlbG9wZWQgb24gdG9wIG9mIG5leHQtMjAxOTA5MTggb24gd2hpY2ggSSBh
cHBsaWVkCmh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvY292ZXIvMTExNDk0OTcvIGFzIEkg
bWVudGlvbmVkIGluIHRoZSBjb3ZlcgpsZXR0ZXIuIFRoZSBkZXZfcG1fcW9zIHBhdGNoZXMgYW5k
IG15IFJGQyBoYXZlIGp1c3QgY2xlYW5seSByZWJhc2VkIHRvZ2V0aGVyIG9uCnRvcCBvZiBuZXh0
LTIwMTkwOTIwLiBDb3VsZCB5b3UgY2hlY2sgaWYgeW91IGhhdmUgdGhlIGRldl9wbV9xb3MgcGF0
Y2hlcyAodjUsCnRoZSB2ZXJzaW9uIG51bWJlciBpcyBtaXNzaW5nIGluIHRoaXMgb25lOyBsaW5r
IGFib3ZlKSBhbmQgaWYgc28sIHdoZXJlIGRvZXMgdGhlCmNvbmZsaWN0IGFwcGVhcj8KCj4gT24g
MTkuIDkuIDIwLiDsmKTsoIQgMTA6MDcsIENoYW53b28gQ2hvaSB3cm90ZToKPiA+IEhpIEFydHVy
LAo+ID4gCj4gPiBPbiB2MSwgSSBtZW50aW9uZWQgdGhhdCB3ZSBuZWVkIHRvIGRpc2N1c3MgaG93
IHRvIGNoYW5nZQo+ID4gdGhlIHYyIGZvciB0aGlzLiBCdXQsIEkgaGF2ZSBub3QgcmVjZWl2ZWQg
YW55IHJlcGx5IGZyb20geW91IG9uIHYxLgo+ID4gQW5kLCB3aXRob3V0IHlvdXIgcmVwbHkgZnJv
bSB2MSwgeW91IGp1c3Qgc2VuZCB2Mi4KPiA+IAo+ID4gSSB0aGluayB0aGF0IGl0IGlzIG5vdCBw
cm9wZXIgZGV2ZWxvcG1lbnQgc2VxdWVuY2UuCj4gPiBJIGhhdmUgc3BlbnQgbWFueSB0aW1lcyB0
byByZXZpZXcgeW91ciBwYXRjaGVzCj4gPiBhbmQgYWxzbyBJJ2xsIHJldmlldyB5b3VyIHBhdGNo
ZXMuIFlvdSBoYXZlIHRvIHRha2UgY2FyZQo+ID4gdGhlIHJlcGx5IG9mIHJldmlld2VyIGFuZCBh
bmQga2VlcCB0aGUgYmFzaWMgcnVsZQo+ID4gb2YgbWFpbGluZyBjb250cmlidXRpb24gZm9yIGRp
c2N1c3Npb24uCj4gPiAKPiA+IE9uIDE5LiA5LiAxOS4g7Jik7ZuEIDExOjIyLCBBcnR1ciDFmndp
Z2/FhCB3cm90ZToKPiA+ID4gVGhlIGZvbGxvd2luZyBwYXRjaHNldCBhZGRzIGludGVyY29ubmVj
dFsxXVsyXSBmcmFtZXdvcmsgc3VwcG9ydCB0byB0aGUKPiA+ID4gZXh5bm9zLWJ1cyBkZXZmcmVx
IGRyaXZlci4gRXh0ZW5kaW5nIHRoZSBkZXZmcmVxIGRyaXZlciB3aXRoIGludGVyY29ubmVjdAo+
ID4gPiBjYXBhYmlsaXRpZXMgc3RhcnRlZCBhcyBhIHJlc3BvbnNlIHRvIHRoZSBpc3N1ZSByZWZl
cmVuY2VkIGluIFszXS4gVGhlCj4gPiA+IHBhdGNoZXMgY2FuIGJlIHN1YmRpdmlkZWQgaW50byBm
b3VyIGxvZ2ljYWwgZ3JvdXBzOgo+ID4gPiAKPiA+ID4gKGEpIFJlZmFjdG9yaW5nIHRoZSBleGlz
dGluZyBkZXZmcmVxIGRyaXZlciBpbiBvcmRlciB0byBpbXByb3ZlIHJlYWRhYmlsaXR5Cj4gPiA+
IGFuZCBhY2NvbW1vZGF0ZSBmb3IgYWRkaW5nIG5ldyBjb2RlIChwYXRjaGVzIDAxLS0wNC8xMSku
Cj4gPiA+IAo+ID4gPiAoYikgVHdlYWtpbmcgdGhlIGludGVyY29ubmVjdCBmcmFtZXdvcmsgdG8g
c3VwcG9ydCB0aGUgZXh5bm9zLWJ1cyB1c2UgY2FzZQo+ID4gPiAocGF0Y2hlcyAwNS0tMDcvMTEp
LiBFeHBvcnRpbmcgb2ZfaWNjX2dldF9mcm9tX3Byb3ZpZGVyKCkgYWxsb3dzIHVzIHRvCj4gPiA+
IGF2b2lkIGhhcmRjb2RpbmcgZXZlcnkgc2luZ2xlIGdyYXBoIGVkZ2UgaW4gdGhlIERUIG9yIGRy
aXZlciBzb3VyY2UsIGFuZAo+ID4gPiByZWxheGluZyB0aGUgcmVxdWlyZW1lbnQgY29udGFpbmVk
IGluIHRoYXQgZnVuY3Rpb24gcmVtb3ZlcyB0aGUgbmVlZCB0bwo+ID4gPiBwcm92aWRlIGR1bW15
IG5vZGUgSURzIGluIHRoZSBEVC4gQWRqdXN0aW5nIHRoZSBsb2dpYyBpbgo+ID4gPiBhcHBseV9j
b25zdHJhaW50cygpIChkcml2ZXJzL2ludGVyY29ubmVjdC9jb3JlLmMpIGFjY291bnRzIGZvciB0
aGUgZmFjdAo+ID4gPiB0aGF0IGV2ZXJ5IGJ1cyBpcyBhIHNlcGFyYXRlIGVudGl0eSBhbmQgdGhl
cmVmb3JlIGEgc2VwYXJhdGUgaW50ZXJjb25uZWN0Cj4gPiA+IHByb3ZpZGVyLCBhbGJlaXQgY29u
c3RpdHV0aW5nIGEgcGFydCBvZiBhIGxhcmdlciBoaWVyYXJjaHkuCj4gPiA+IAo+ID4gPiAoYykg
SW1wbGVtZW50aW5nIGludGVyY29ubmVjdCBwcm92aWRlcnMgaW4gdGhlIGV4eW5vcy1idXMgZGV2
ZnJlcSBkcml2ZXIKPiA+ID4gYW5kIGFkZGluZyByZXF1aXJlZCBEVCBwcm9wZXJ0aWVzIGZvciBv
bmUgc2VsZWN0ZWQgcGxhdGZvcm0sIG5hbWVseQo+ID4gPiBFeHlub3M0NDEyIChwYXRjaGVzIDA4
LS0wOS8xMSkuIER1ZSB0byB0aGUgZmFjdCB0aGF0IHRoaXMgYWltcyB0byBiZSBhCj4gPiA+IGdl
bmVyaWMgZHJpdmVyIGZvciB2YXJpb3VzIEV4eW5vcyBTb0NzLCBub2RlIElEcyBhcmUgZ2VuZXJh
dGVkIGR5bmFtaWNhbGx5Cj4gPiA+IHJhdGhlciB0aGFuIGhhcmRjb2RlZC4gVGhpcyBoYXMgYmVl
biBkZXRlcm1pbmVkIHRvIGJlIGEgc2ltcGxlciBhcHByb2FjaCwKPiA+ID4gYnV0IGRlcGVuZHMg
b24gY2hhbmdlcyBkZXNjcmliZWQgaW4gKGIpLgo+ID4gPiAKPiA+ID4gKGQpIEltcGxlbWVudGlu
ZyBhIHNhbXBsZSBpbnRlcmNvbm5lY3QgY29uc3VtZXIgZm9yIGV4eW5vcy1taXhlciB0YXJnZXRl
ZAo+ID4gPiBhdCB0aGUgaXNzdWUgcmVmZXJlbmNlZCBpbiBbM10sIGFnYWluIHdpdGggRFQgaW5m
byBvbmx5IGZvciBFeHlub3M0NDEyCj4gPiA+IChwYXRjaGVzIDEwLS0xMS8xMSkuCj4gPiA+IAo+
ID4gPiBJbnRlZ3JhdGlvbiBvZiBkZXZmcmVxIGFuZCBpbnRlcmNvbm5lY3QgZnVuY3Rpb25hbGl0
aWVzIGlzIGFjaGlldmVkIGJ5Cj4gPiA+IHVzaW5nIGRldl9wbV9xb3NfKigpIEFQSVs1XS4gQWxs
IG5ldyBjb2RlIHdvcmtzIGVxdWFsbHkgd2VsbCB3aGVuCj4gPiA+IENPTkZJR19JTlRFUkNPTk5F
Q1QgaXMgJ24nIChhcyBpbiBleHlub3NfZGVmY29uZmlnKSBpbiB3aGljaCBjYXNlIGFsbAo+ID4g
PiBpbnRlcmNvbm5lY3QgQVBJIGZ1bmN0aW9ucyBhcmUgbm8tb3BzLgo+ID4gPiAKPiA+ID4gVGhp
cyBwYXRjaHNldCBkZXBlbmRzIG9uIFs1XS4KPiA+ID4gCj4gPiA+IC0tLSBDaGFuZ2VzIHNpbmNl
IHYxIFs2XToKPiA+ID4gKiBSZWJhc2Ugb24gWzRdIChjb3VwbGVkIHJlZ3VsYXRvcnMpLgo+ID4g
PiAqIFJlYmFzZSBvbiBbNV0gKGRldl9wbV9xb3MgZm9yIGRldmZyZXEpLgo+ID4gPiAqIFVzZSBk
ZXZfcG1fcW9zXyooKSBBUElbNV0gaW5zdGVhZCBvZiBvdmVycmlkaW5nIGZyZXF1ZW5jeSBpbgo+
ID4gPiAgIGV4eW5vc19idXNfdGFyZ2V0KCkuCj4gPiA+ICogVXNlIElEUiBmb3Igbm9kZSBJRCBh
bGxvY2F0aW9uLgo+ID4gPiAqIEF2b2lkIGdvdG8gaW4gZnVuY3Rpb25zIGV4dHJhY3RlZCBpbiBw
YXRjaGVzIDAxICYgMDIgKGNmLiBwYXRjaCAwNCkuCj4gPiA+ICogUmV2ZXJzZSBvcmRlciBvZiBt
dWx0aXBsaWNhdGlvbiBhbmQgZGl2aXNpb24gaW4KPiA+ID4gICBtaXhlcl9zZXRfbWVtb3J5X2Jh
bmR3aWR0aCgpIChwYXRjaCAxMSkgdG8gYXZvaWQgaW50ZWdlciBvdmVyZmxvdy4KPiA+ID4gCj4g
PiA+IC0tLQo+ID4gPiBBcnR1ciDFmndpZ2/FhAo+ID4gPiBTYW1zdW5nIFImRCBJbnN0aXR1dGUg
UG9sYW5kCj4gPiA+IFNhbXN1bmcgRWxlY3Ryb25pY3MKPiA+ID4gCj4gPiA+IC0tLQo+ID4gPiBS
ZWZlcmVuY2VzOgo+ID4gPiBbMV0gRG9jdW1lbnRhdGlvbi9pbnRlcmNvbm5lY3QvaW50ZXJjb25u
ZWN0LnJzdAo+ID4gPiBbMl0gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2ludGVy
Y29ubmVjdC9pbnRlcmNvbm5lY3QudHh0Cj4gPiA+IFszXSBodHRwczovL3BhdGNod29yay5rZXJu
ZWwub3JnL3BhdGNoLzEwODYxNzU3LyAob3JpZ2luYWwgaXNzdWUpCj4gPiA+IFs0XSBodHRwczov
L3BhdGNod29yay5rZXJuZWwub3JnL2NvdmVyLzExMDgzNjYzLyAoY291cGxlZCByZWd1bGF0b3Jz
OyBtZXJnZWQpCj4gPiA+IFs1XSBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL2NvdmVyLzEx
MTQ5NDk3LyAoZGV2X3BtX3FvcyBmb3IgZGV2ZnJlcSkKPiA+ID4gWzZdIGh0dHBzOi8vcGF0Y2h3
b3JrLmtlcm5lbC5vcmcvY292ZXIvMTEwNTQ0MTcvICh2MSBvZiB0aGlzIFJGQykKPiA+ID4gCj4g
PiA+IEFydHVyIMWad2lnb8WEICgxMCk6Cj4gPiA+ICAgZGV2ZnJlcTogZXh5bm9zLWJ1czogRXh0
cmFjdCBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdCgpCj4gPiA+ICAgZGV2ZnJlcTogZXh5bm9zLWJ1
czogRXh0cmFjdCBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdF9wYXNzaXZlKCkKPiA+ID4gICBkZXZm
cmVxOiBleHlub3MtYnVzOiBDaGFuZ2UgZ290by1iYXNlZCBsb2dpYyB0byBpZi1lbHNlIGxvZ2lj
Cj4gPiA+ICAgZGV2ZnJlcTogZXh5bm9zLWJ1czogQ2xlYW4gdXAgY29kZQo+ID4gPiAgIGludGVy
Y29ubmVjdDogRXhwb3J0IG9mX2ljY19nZXRfZnJvbV9wcm92aWRlcigpCj4gPiA+ICAgaW50ZXJj
b25uZWN0OiBSZWxheCByZXF1aXJlbWVudCBpbiBvZl9pY2NfZ2V0X2Zyb21fcHJvdmlkZXIoKQo+
ID4gPiAgIGludGVyY29ubmVjdDogUmVsYXggY29uZGl0aW9uIGluIGFwcGx5X2NvbnN0cmFpbnRz
KCkKPiA+ID4gICBhcm06IGR0czogZXh5bm9zOiBBZGQgcGFyZW50cyBhbmQgI2ludGVyY29ubmVj
dC1jZWxscyB0byBFeHlub3M0NDEyCj4gPiA+ICAgZGV2ZnJlcTogZXh5bm9zLWJ1czogQWRkIGlu
dGVyY29ubmVjdCBmdW5jdGlvbmFsaXR5IHRvIGV4eW5vcy1idXMKPiA+ID4gICBhcm06IGR0czog
ZXh5bm9zOiBBZGQgaW50ZXJjb25uZWN0cyB0byBFeHlub3M0NDEyIG1peGVyCj4gPiA+IAo+ID4g
PiBNYXJlayBTenlwcm93c2tpICgxKToKPiA+ID4gICBkcm06IGV4eW5vczogbWl4ZXI6IEFkZCBp
bnRlcmNvbm5lY3Qgc3VwcG9ydAo+ID4gPiAKPiA+ID4gIC4uLi9ib290L2R0cy9leHlub3M0NDEy
LW9kcm9pZC1jb21tb24uZHRzaSAgICB8ICAgMSArCj4gPiA+ICBhcmNoL2FybS9ib290L2R0cy9l
eHlub3M0NDEyLmR0c2kgICAgICAgICAgICAgfCAgMTAgKwo+ID4gPiAgZHJpdmVycy9kZXZmcmVx
L2V4eW5vcy1idXMuYyAgICAgICAgICAgICAgICAgIHwgMzE5ICsrKysrKysrKysrKystLS0tLQo+
ID4gPiAgZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfbWl4ZXIuYyAgICAgICAgIHwgIDcx
ICsrKy0KPiA+ID4gIGRyaXZlcnMvaW50ZXJjb25uZWN0L2NvcmUuYyAgICAgICAgICAgICAgICAg
ICB8ICAxMiArLQo+ID4gPiAgaW5jbHVkZS9saW51eC9pbnRlcmNvbm5lY3QtcHJvdmlkZXIuaCAg
ICAgICAgIHwgICA2ICsKPiA+ID4gIDYgZmlsZXMgY2hhbmdlZCwgMzI3IGluc2VydGlvbnMoKyks
IDkyIGRlbGV0aW9ucygtKQo+ID4gPiAKPiA+IAo+ID4gCj4gCj4gCi0tIApBcnR1ciDFmndpZ2/F
hApTYW1zdW5nIFImRCBJbnN0aXR1dGUgUG9sYW5kClNhbXN1bmcgRWxlY3Ryb25pY3MKCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
