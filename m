Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 367231481C5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 12:22:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:Mime-Version:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P29iEcip8xuh0rEatl/ueGtQco8nm5B/lzFkNpWKjB8=; b=cjW/wcTCZGEUtD
	5xFWRRDgG2OijcNWGNAAAkEiD3ohVpuSjnIEaNQ+CGAVerpPa37DREoNXgI38fn9vIRO19lmnPb6T
	dnGw80dKSBZUGgsJEQ2fVyCOGkQGqeiofy7sl8jwMVdIQKOYbWchz7LTNID0npC9OmrLrjxm2G+aj
	KDce2lRwBdGbq2EwQSnQDwXApNRi0MCxxwKVIt/IpJsFkOrX21qIRZJ0jvmRw4YfYXRySBxAnqI6u
	/9urHLq0+AMFUgfZ8rxXUvUjtomqB8cOH0oOHNxCJF20hBoxPs76c8kF6K1tyC1VVro7tCfmi+Sol
	1nDtR1pLJzji6x1no6PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iux2q-0002TK-St; Fri, 24 Jan 2020 11:22:36 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iux2Y-0002RN-LB
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 11:22:24 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200124112216euoutp014a5b2eb750d1dd5ad13f9a1e4460fa15~szsoWqLU63177231772euoutp01H
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Jan 2020 11:22:16 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200124112216euoutp014a5b2eb750d1dd5ad13f9a1e4460fa15~szsoWqLU63177231772euoutp01H
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1579864936;
 bh=7QgOgBbRwaO1gPunTQwolQO1mswbl0Pc5i8yAbUQ7qk=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=YZLOMn+A/X6tUtWKvkzA/UpAnpfqt0MdlZPtN/VIeL7jwui+D04mQCpyuPr3AFOa6
 SNFwANL99xOyfNmGSuxg34vGqZTHNSGdGgJKTQlomG32M5P75InIXYqgHCQ7K2H56V
 epn0RnABlf3bV80gvnQuysplVGeMvjp0U9u7UocU=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200124112216eucas1p1beb2dd4f097b85d70af5ece129f5cf6c~szsoCkfQW0250602506eucas1p1v;
 Fri, 24 Jan 2020 11:22:16 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 31.64.60679.863DA2E5; Fri, 24
 Jan 2020 11:22:16 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200124112215eucas1p202d735ab621b1ed19fffb34fa54c6a3b~szsnqz4Lm2557325573eucas1p2B;
 Fri, 24 Jan 2020 11:22:15 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200124112215eusmtrp190437a0c868cb781a2c552b95a5b0c47~szsnp9YCU0042100421eusmtrp1h;
 Fri, 24 Jan 2020 11:22:15 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-4b-5e2ad368735f
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id F3.FC.08375.763DA2E5; Fri, 24
 Jan 2020 11:22:15 +0000 (GMT)
Received: from AMDC3555 (unknown [106.120.51.67]) by eusmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20200124112215eusmtip13e2ba550c7861f88bca97d78ccaa5b21~szsm5WRZf1680616806eusmtip1k;
 Fri, 24 Jan 2020 11:22:15 +0000 (GMT)
Message-ID: <0de33b1ae7c52270d11c606ecccc9af5f44d0421.camel@samsung.com>
Subject: Re: [RFC PATCH v3 5/7] devfreq: exynos-bus: Add interconnect
 functionality to exynos-bus
From: Artur =?UTF-8?Q?=C5=9Awigo=C5=84?= <a.swigon@samsung.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
 dri-devel@lists.freedesktop.org
Date: Fri, 24 Jan 2020 12:22:14 +0100
In-Reply-To: <15795421-db12-8466-bb7e-688e6625cf4a@linaro.org>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0hTYRju29k5Ow63jlPwxaJoWaR5KbM4aJhG1In8EUH9KLwsPajkjR3n
 Ja28gJWmiAbaFCw1LxNvy0RXhthyeB1iaqRmUSYqKuYytYw2j2L/nvd53ud7nhc+EpMZcQcy
 IjqOVUYrIuWEWNjStTbgGj7kHHhsvNuabipqwOlR0zROl+oHcPr9z0WCLmzXEnT+ZJ6QNhob
 RXT1xBJOa7+O4PSQroSgl3P0iC4yvhHQdfoJET2WVk3QRQUzhO9uRqt5SDDjI68JZjLbIGBe
 VNxjmhZaBUxuswYxy9p9l0XXxadD2ciIeFbp7hMsDp+pNaHYkbOJb2ueYanosWcWsiKB8oSP
 FXqUhcSkjKpGUJfWhfODCUHTcAHGD8sIxuoNom1LcUcNwQtVZmF6dsvyHYFmUI9btiQUA5q2
 QmTBtlQIFHypE1owQZ2B/rEVgcVgR/1A0F9RvJmOUXoEcyvfNreE1CHQFQ1tuq0oH9iYNxF8
 tgvM9+Sad0hzgg1stNpaaIzaDxkvize7AjUvguf1K1tdz0HP53TEY1uYNTRv8Xuht+CRkMcc
 TLVN4rw5FYG2Uo/xgjeMD6wTljCMcoIGnTtP+0GXdkhkoYGSwod5G76DFPJbCjGelsCDTBkP
 5aB7IuWNAOm1I1tvMzC6tiTIQwfUO7eo/7tFvZP6FGEaZM+quKgwlvOIZhPcOEUUp4oOcwuJ
 idIi8zfr/WswtSLdn5udiCKR3FoCOU6BMlwRzyVFdSIgMbmdBF0zU5JQRdJtVhkTpFRFslwn
 2kMK5faSE2UzATIqTBHH3mLZWFa5rQpIK4dUVD+nqkx0GW67un5HnH/xSLdLckDPwbuZqtDz
 h+tnV12vpKwayi8Nekk9yvs6snP9/K1iX603KPuEyYtpK1W/p4xV1g03/BT+jsbsQHxdWzl1
 fyFesuYz+ym4LEU92birrUl6MuiCzPeU5N0vrxR1t7zFu6S0KsFxlSYyjrY3qhfkQi5ccdwZ
 U3KKf0AlGpJiAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrOIsWRmVeSWpSXmKPExsVy+t/xu7rpl7XiDC7eM7LYOGM9q8X1L89Z
 LeYfOcdqceXrezaL6Xs3sVlMuj+BxeL8+Q3sFivufmS12PT4GqvF5V1z2Cw+9x5htJhxfh+T
 xdojd9ktbjeuYLOYMfklmwO/x6ZVnWwed67tYfO4332cyWPzknqPje92MHn0bVnF6PF5k1wA
 e5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJpZ6hsXmslZGpkr6dTUpqTmZZapG+XYJexsvV
 XxgLrjlVHF65kLmBcYpJFyMnh4SAicTsAyvZuhi5OIQEljJK7F/TwgqRkJD4uP4GlC0s8eda
 F1TRE0aJWx9XMoEkeAU8JFbtnM4IYgsLJEtMfriWBcRmE7CXOHv7GxNIg4jAZ0aJw4s+sYA4
 zAJHGSWenbjPDlLFIqAqsWvGZbBuTgE7ib9vv0Ct+MQocfz3a7AEs4CmROv23+wQd+hIvD3V
 BzSJA2i1oMTfHcIQJfISzVtnM09gFJyFpGMWQtUsJFULGJlXMYqklhbnpucWG+oVJ+YWl+al
 6yXn525iBEbqtmM/N+9gvLQx+BCjAAejEg+vRK9mnBBrYllxZe4hRgkOZiURXsYwoBBvSmJl
 VWpRfnxRaU5q8SFGU6B/JjJLiSbnA5NIXkm8oamhuYWlobmxubGZhZI4b4fAwRghgfTEktTs
 1NSC1CKYPiYOTqkGRvPHzqFrZX9WVn5OWCFz+MdHicbcJfeuV9oHz2CPu8Fjcd1smeZjQ4sM
 jwT7x2uOMSVr9rrp3ji3vCL8sMBaV4v3zxrDWI//MXqyaAOb14UkdrP8w7KNbDL7VvM2sLfq
 8Tv5PRe4x9N0c65nHv92kZc/Uhgvyl3dqlZYmcS4oPmigduGDadWKbEUZyQaajEXFScCAEak
 e/LqAgAA
X-CMS-MailID: 20200124112215eucas1p202d735ab621b1ed19fffb34fa54c6a3b
X-Msg-Generator: CA
X-RootMTR: 20191220120145eucas1p295af63eed7b23982d8c49fcf875cec8c
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191220120145eucas1p295af63eed7b23982d8c49fcf875cec8c
References: <20191220115653.6487-1-a.swigon@samsung.com>
 <CGME20191220120145eucas1p295af63eed7b23982d8c49fcf875cec8c@eucas1p2.samsung.com>
 <20191220115653.6487-6-a.swigon@samsung.com>
 <15795421-db12-8466-bb7e-688e6625cf4a@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_032222_171345_7236E1F2 
X-CRM114-Status: GOOD (  32.24  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 inki.dae@samsung.com, cw00.choi@samsung.com, myungjoo.ham@samsung.com,
 leonard.crestez@nxp.com, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgR2VvcmdpLAoKT24gV2VkLCAyMDIwLTAxLTIyIGF0IDE5OjAyICswMjAwLCBHZW9yZ2kgRGph
a292IHdyb3RlOgo+IEhpIEFydHVyLAo+IAo+IE9uIDEyLzIwLzE5IDEzOjU2LCBBcnR1ciDFmndp
Z2/FhCB3cm90ZToKPiA+IFRoaXMgcGF0Y2ggYWRkcyBpbnRlcmNvbm5lY3QgZnVuY3Rpb25hbGl0
eSB0byB0aGUgZXh5bm9zLWJ1cyBkZXZmcmVxCj4gPiBkcml2ZXIuCj4gPiAKPiA+IFRoZSBTb0Mg
dG9wb2xvZ3kgaXMgYSBncmFwaCAob3IsIG1vcmUgc3BlY2lmaWNhbGx5LCBhIHRyZWUpIGFuZCBp
dHMKPiA+IGVkZ2VzIGFyZSBzcGVjaWZpZWQgdXNpbmcgdGhlICdleHlub3MsaW50ZXJjb25uZWN0
LXBhcmVudC1ub2RlJyBpbiB0aGUKPiA+IERULiBEdWUgdG8gdW5zcGVjaWZpZWQgcmVsYXRpdmUg
cHJvYmluZyBvcmRlciwgLUVQUk9CRV9ERUZFUiBtYXkgYmUKPiA+IHByb3BhZ2F0ZWQgdG8gZW5z
dXJlIHRoYXQgdGhlIHBhcmVudCBpcyBwcm9iZWQgYmVmb3JlIGl0cyBjaGlsZHJlbi4KPiA+IAo+
ID4gRWFjaCBidXMgaXMgbm93IGFuIGludGVyY29ubmVjdCBwcm92aWRlciBhbmQgYW4gaW50ZXJj
b25uZWN0IG5vZGUgYXMgd2VsbAo+ID4gKGNmLiBEb2N1bWVudGF0aW9uL2ludGVyY29ubmVjdC9p
bnRlcmNvbm5lY3QucnN0KSwgaS5lLiBldmVyeSBidXMgcmVnaXN0ZXJzCj4gPiBpdHNlbGYgYXMg
YSBub2RlLiBOb2RlIElEcyBhcmUgbm90IGhhcmRjb2RlZCBidXQgcmF0aGVyIGFzc2lnbmVkIGF0
Cj4gCj4gSnVzdCB0byBub3RlIHRoYXQgdXN1YWxseSB0aGUgcHJvdmlkZXIgY29uc2lzdHMgb2Yg
bXVsdGlwbGUgbm9kZXMgYW5kIGVhY2ggbm9kZQo+IHJlcHJlc2VudHMgYSBzaW5nbGUgbWFzdGVy
IG9yIHNsYXZlIHBvcnQgb24gdGhlIEFYSSBidXMgZm9yIGV4YW1wbGUuIEkgYW0gbm90Cj4gc3Vy
ZSB3aGV0aGVyIHRoaXMgcmVwcmVzZW50cyBjb3JyZWN0bHkgdGhlIEV4eW5vcyBoYXJkd2FyZSwg
c28gaXQncyB1cCB0bwo+IHlvdS4KPiAKPiA+IHJ1bnRpbWUsIGluIHByb2Jpbmcgb3JkZXIgKHN1
YmplY3QgdG8gdGhlIGFib3ZlLW1lbnRpb25lZCBleGNlcHRpb24KPiA+IHJlZ2FyZGluZyByZWxh
dGl2ZSBvcmRlcikuIFRoaXMgYXBwcm9hY2ggYWxsb3dzIGZvciB1c2luZyB0aGlzIGRyaXZlciB3
aXRoCj4gPiB2YXJpb3VzIEV4eW5vcyBTb0NzLgo+IAo+IFRoaXMgc291bmRzIGdvb2QuIEkgYW0g
d29uZGVyaW5nIHdoZXRoZXIgc3VjaCBkeW5hbWljIHByb2Jpbmcgd291bGQgYmUgdXNlZnVsCj4g
Zm9yIG90aGVyIHBsYXRmb3JtcyB0b28uIFRoZW4gbWF5YmUgaXQgd291bGQgbWFrZSBzZW5zZSB0
byBldmVuIGhhdmUgYSBjb21tb24gRFQKPiBwcm9wZXJ0eSwgYnV0IHdlIHdpbGwgc2VlLgo+IAo+
IElzIHRoaXMgZ29pbmcgdG8gYmUgdXNlZCBvbmx5IHRvZ2V0aGVyIHdpdGggZGV2ZnJlcT8KClll
cywgdGhpcyBmdW5jdGlvbnMgc29sZWx5IGFzIGFuIGV4dGVuc2lvbiB0byBkZXZmcmVxLCBoZW5j
ZSB0aGUgc2xpZ2h0bHkKdW51c3VhbCBhcmNoaXRlY3R1cmUgKG9uZSBpY2NfcHJvdmlkZXIvaWNj
X25vZGUgcGVyIGRldmZyZXEpLgoKKENvbXBhcmVkIHRvIGEgc2luZ2xldG9uIGljY19wcm92aWRl
ciwgdGhpcyBhcHByb2FjaCB5aWVsZHMgbGVzcyBjb2RlIHdpdGgKYSB2ZXJ5IHNpbXBsZSB4bGF0
ZSgpKS4KCldpdGggZXhhY3RseSBvbmUgaWNjX25vZGUgZm9yIGV2ZXJ5IGRldmZyZXEgZGV2aWNl
LCBJIHRoaW5rIEkgd2lsbCBhY3R1YWxseQpyZXVzZSB0aGUgZGV2ZnJlcSBJRCAoYXMgc2VlbiBp
biB0aGUgZGV2aWNlIG5hbWUsIGUuZy4gdGhlICIzIiBpbiAiZGV2ZnJlcTMiKQpmb3IgdGhlIG5v
ZGUgSUQuIFRoZSBkZXZmcmVxIGZyYW1ld29yayBhbHJlYWR5IGRvZXMgdGhlIGR5bmFtaWMgbnVt
YmVyaW5nCnRoaW5nIHRoYXQgSSBkbyBpbiB0aGlzIHBhdGNoIHVzaW5nIElEUi4KCj4gPiBGcmVx
dWVuY2llcyByZXF1ZXN0ZWQgdmlhIHRoZSBpbnRlcmNvbm5lY3QgQVBJIGZvciBhIGdpdmVuIG5v
ZGUgYXJlCj4gPiBwcm9wYWdhdGVkIHRvIGRldmZyZXEgdXNpbmcgZGV2X3BtX3Fvc191cGRhdGVf
cmVxdWVzdCgpLiBQbGVhc2Ugbm90ZSB0aGF0Cj4gPiBpdCBpcyBub3QgYW4gZXJyb3Igd2hlbiBD
T05GSUdfSU5URVJDT05ORUNUIGlzICduJywgaW4gd2hpY2ggY2FzZSBhbGwKPiA+IGludGVyY29u
bmVjdCBBUEkgZnVuY3Rpb25zIGFyZSBuby1vcC4KPiAKPiBIb3cgYWJvdXQgdGhlIGNhc2Ugd2hl
cmUgQ09ORklHX0lOVEVSQ09OTkVDVD1tLiBMb29rcyBsaWtlIHRoZSBidWlsZCB3aWxsIGZhaWwK
PiBpZiBDT05GSUdfQVJNX0VYWU5PU19CVVNfREVWRlJFUT15LCBzbyB0aGlzIGRlcGVuZGVuY3kg
c2hvdWxkIGJlIGV4cHJlc3NlZCBpbgo+IEtjb25maWcuCgpJIHRoaW5rIGFkZGluZzoKCWRlcGVu
ZHMgb24gSU5URVJDT05ORUNUIHx8ICFJTlRFUkNPTk5FQ1QKCnVuZGVyIEFSTV9FWFlOT1NfQlVT
X0RFVkZSRVEgZG9lcyB0aGUgdHJpY2suCgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBBcnR1ciDF
mndpZ2/FhCA8YS5zd2lnb25Ac2Ftc3VuZy5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2RldmZy
ZXEvZXh5bm9zLWJ1cy5jIHwgMTQ0ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
Cj4gPiAgMSBmaWxlIGNoYW5nZWQsIDE0NCBpbnNlcnRpb25zKCspCj4gPiAKPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jIGIvZHJpdmVycy9kZXZmcmVxL2V4eW5v
cy1idXMuYwo+ID4gaW5kZXggOWZkYjE4ODkxNWU4Li42OTRhOTU4MWRjZGIgMTAwNjQ0Cj4gPiAt
LS0gYS9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jCj4gPiArKysgYi9kcml2ZXJzL2RldmZy
ZXEvZXh5bm9zLWJ1cy5jCj4gPiBAQCAtMTQsMTQgKzE0LDE5IEBACj4gPiAgI2luY2x1ZGUgPGxp
bnV4L2RldmZyZXEtZXZlbnQuaD4KPiA+ICAjaW5jbHVkZSA8bGludXgvZGV2aWNlLmg+Cj4gPiAg
I2luY2x1ZGUgPGxpbnV4L2V4cG9ydC5oPgo+ID4gKyNpbmNsdWRlIDxsaW51eC9pZHIuaD4KPiA+
ICsjaW5jbHVkZSA8bGludXgvaW50ZXJjb25uZWN0LXByb3ZpZGVyLmg+Cj4gPiAgI2luY2x1ZGUg
PGxpbnV4L21vZHVsZS5oPgo+ID4gICNpbmNsdWRlIDxsaW51eC9vZi5oPgo+ID4gICNpbmNsdWRl
IDxsaW51eC9wbV9vcHAuaD4KPiA+ICsjaW5jbHVkZSA8bGludXgvcG1fcW9zLmg+Cj4gPiAgI2lu
Y2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2RldmljZS5oPgo+ID4gICNpbmNsdWRlIDxsaW51eC9yZWd1
bGF0b3IvY29uc3VtZXIuaD4KPiA+ICAKPiA+ICAjZGVmaW5lIERFRkFVTFRfU0FUVVJBVElPTl9S
QVRJTwk0MAo+ID4gIAo+ID4gKyNkZWZpbmUga2Jwc190b19raHooeCkgKCh4KSAvIDgpCj4gPiAr
Cj4gPiAgc3RydWN0IGV4eW5vc19idXMgewo+ID4gIAlzdHJ1Y3QgZGV2aWNlICpkZXY7Cj4gPiAg
Cj4gPiBAQCAtMzUsNiArNDAsMTIgQEAgc3RydWN0IGV4eW5vc19idXMgewo+ID4gIAlzdHJ1Y3Qg
b3BwX3RhYmxlICpvcHBfdGFibGU7Cj4gPiAgCXN0cnVjdCBjbGsgKmNsazsKPiA+ICAJdW5zaWdu
ZWQgaW50IHJhdGlvOwo+ID4gKwo+ID4gKwkvKiBPbmUgcHJvdmlkZXIgcGVyIGJ1cywgb25lIG5v
ZGUgcGVyIHByb3ZpZGVyICovCj4gPiArCXN0cnVjdCBpY2NfcHJvdmlkZXIgcHJvdmlkZXI7Cj4g
PiArCXN0cnVjdCBpY2Nfbm9kZSAqbm9kZTsKPiA+ICsKPiA+ICsJc3RydWN0IGRldl9wbV9xb3Nf
cmVxdWVzdCBxb3NfcmVxOwo+ID4gIH07Cj4gPiAgCj4gPiAgLyoKPiA+IEBAIC0yMDUsNiArMjE2
LDM5IEBAIHN0YXRpYyB2b2lkIGV4eW5vc19idXNfcGFzc2l2ZV9leGl0KHN0cnVjdCBkZXZpY2Ug
KmRldikKPiA+ICAJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKGJ1cy0+Y2xrKTsKPiA+ICB9Cj4gPiAg
Cj4gPiArc3RhdGljIGludCBleHlub3NfYnVzX2ljY19zZXQoc3RydWN0IGljY19ub2RlICpzcmMs
IHN0cnVjdCBpY2Nfbm9kZSAqZHN0KQo+ID4gK3sKPiA+ICsJc3RydWN0IGV4eW5vc19idXMgKnNy
Y19idXMgPSBzcmMtPmRhdGEsICpkc3RfYnVzID0gZHN0LT5kYXRhOwo+ID4gKwlzMzIgc3JjX2Zy
ZXEgPSBrYnBzX3RvX2toeihzcmMtPmF2Z19idyk7Cj4gPiArCXMzMiBkc3RfZnJlcSA9IGticHNf
dG9fa2h6KGRzdC0+YXZnX2J3KTsKPiA+ICsJaW50IHJldDsKPiA+ICsKPiA+ICsJcmV0ID0gZGV2
X3BtX3Fvc191cGRhdGVfcmVxdWVzdCgmc3JjX2J1cy0+cW9zX3JlcSwgc3JjX2ZyZXEpOwo+ID4g
KwlpZiAocmV0IDwgMCkgewo+ID4gKwkJZGV2X2VycihzcmNfYnVzLT5kZXYsICJmYWlsZWQgdG8g
dXBkYXRlIFBNIFFvUyByZXF1ZXN0Iik7Cj4gPiArCQlyZXR1cm4gcmV0Owo+ID4gKwl9Cj4gPiAr
Cj4gPiArCXJldCA9IGRldl9wbV9xb3NfdXBkYXRlX3JlcXVlc3QoJmRzdF9idXMtPnFvc19yZXEs
IGRzdF9mcmVxKTsKPiA+ICsJaWYgKHJldCA8IDApIHsKPiA+ICsJCWRldl9lcnIoZHN0X2J1cy0+
ZGV2LCAiZmFpbGVkIHRvIHVwZGF0ZSBQTSBRb1MgcmVxdWVzdCIpOwo+ID4gKwkJcmV0dXJuIHJl
dDsKPiA+ICsJfQo+ID4gKwo+ID4gKwlyZXR1cm4gMDsKPiA+ICt9Cj4gPiArCj4gPiArc3RhdGlj
IHN0cnVjdCBpY2Nfbm9kZSAqZXh5bm9zX2J1c19pY2NfeGxhdGUoc3RydWN0IG9mX3BoYW5kbGVf
YXJncyAqc3BlYywKPiA+ICsJCQkJCSAgICAgdm9pZCAqZGF0YSkKPiA+ICt7Cj4gPiArCXN0cnVj
dCBleHlub3NfYnVzICpidXMgPSBkYXRhOwo+ID4gKwo+ID4gKwlpZiAoc3BlYy0+bnAgIT0gYnVz
LT5kZXYtPm9mX25vZGUpCj4gPiArCQlyZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsKPiA+ICsKPiA+
ICsJcmV0dXJuIGJ1cy0+bm9kZTsKPiA+ICt9Cj4gPiArCj4gPiAgc3RhdGljIGludCBleHlub3Nf
YnVzX3BhcmVudF9wYXJzZV9vZihzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wLAo+ID4gIAkJCQkJc3Ry
dWN0IGV4eW5vc19idXMgKmJ1cykKPiA+ICB7Cj4gPiBAQCAtNDE5LDYgKzQ2Myw5NiBAQCBzdGF0
aWMgaW50IGV4eW5vc19idXNfcHJvZmlsZV9pbml0X3Bhc3NpdmUoc3RydWN0IGV4eW5vc19idXMg
KmJ1cywKPiA+ICAJcmV0dXJuIDA7Cj4gPiAgfQo+ID4gIAo+ID4gK3N0YXRpYyBzdHJ1Y3QgaWNj
X25vZGUgKmV4eW5vc19idXNfaWNjX2dldF9wYXJlbnQoc3RydWN0IGV4eW5vc19idXMgKmJ1cykK
PiA+ICt7Cj4gPiArCXN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAgPSBidXMtPmRldi0+b2Zfbm9kZTsK
PiA+ICsJc3RydWN0IG9mX3BoYW5kbGVfYXJncyBhcmdzOwo+ID4gKwlpbnQgbnVtLCByZXQ7Cj4g
PiArCj4gPiArCW51bSA9IG9mX2NvdW50X3BoYW5kbGVfd2l0aF9hcmdzKG5wLCAiZXh5bm9zLGlu
dGVyY29ubmVjdC1wYXJlbnQtbm9kZSIsCj4gPiArCQkJCQkiI2ludGVyY29ubmVjdC1jZWxscyIp
Owo+ID4gKwlpZiAobnVtICE9IDEpCj4gPiArCQlyZXR1cm4gTlVMTDsgLyogcGFyZW50IG5vZGVz
IGFyZSBvcHRpb25hbCAqLwo+ID4gKwo+ID4gKwlyZXQgPSBvZl9wYXJzZV9waGFuZGxlX3dpdGhf
YXJncyhucCwgImV4eW5vcyxpbnRlcmNvbm5lY3QtcGFyZW50LW5vZGUiLAo+ID4gKwkJCQkJIiNp
bnRlcmNvbm5lY3QtY2VsbHMiLCAwLCAmYXJncyk7Cj4gPiArCWlmIChyZXQgPCAwKQo+ID4gKwkJ
cmV0dXJuIEVSUl9QVFIocmV0KTsKPiA+ICsKPiA+ICsJb2Zfbm9kZV9wdXQoYXJncy5ucCk7Cj4g
PiArCj4gPiArCXJldHVybiBvZl9pY2NfZ2V0X2Zyb21fcHJvdmlkZXIoJmFyZ3MpOwo+ID4gK30K
PiA+ICsKPiA+ICtzdGF0aWMgaW50IGV4eW5vc19idXNfaWNjX2luaXQoc3RydWN0IGV4eW5vc19i
dXMgKmJ1cykKPiA+ICt7Cj4gPiArCXN0YXRpYyBERUZJTkVfSURBKGlkYSk7Cj4gPiArCj4gPiAr
CXN0cnVjdCBkZXZpY2UgKmRldiA9IGJ1cy0+ZGV2Owo+ID4gKwlzdHJ1Y3QgaWNjX3Byb3ZpZGVy
ICpwcm92aWRlciA9ICZidXMtPnByb3ZpZGVyOwo+ID4gKwlzdHJ1Y3QgaWNjX25vZGUgKm5vZGUs
ICpwYXJlbnRfbm9kZTsKPiA+ICsJaW50IGlkLCByZXQ7Cj4gPiArCj4gPiArCS8qIEluaXRpYWxp
emUgdGhlIGludGVyY29ubmVjdCBwcm92aWRlciAqLwo+ID4gKwlwcm92aWRlci0+c2V0ID0gZXh5
bm9zX2J1c19pY2Nfc2V0Owo+ID4gKwlwcm92aWRlci0+YWdncmVnYXRlID0gaWNjX3N0ZF9hZ2dy
ZWdhdGU7Cj4gPiArCXByb3ZpZGVyLT54bGF0ZSA9IGV4eW5vc19idXNfaWNjX3hsYXRlOwo+ID4g
Kwlwcm92aWRlci0+ZGV2ID0gZGV2Owo+ID4gKwlwcm92aWRlci0+aW50ZXJfc2V0ID0gdHJ1ZTsK
PiA+ICsJcHJvdmlkZXItPmRhdGEgPSBidXM7Cj4gPiArCj4gPiArCXJldCA9IGljY19wcm92aWRl
cl9hZGQocHJvdmlkZXIpOwo+ID4gKwlpZiAocmV0IDwgMCkKPiA+ICsJCXJldHVybiByZXQ7Cj4g
PiArCj4gPiArCXJldCA9IGlkID0gaWRhX2FsbG9jKCZpZGEsIEdGUF9LRVJORUwpOwo+ID4gKwlp
ZiAocmV0IDwgMCkKPiA+ICsJCWdvdG8gZXJyX2lkOwo+ID4gKwo+ID4gKwlub2RlID0gaWNjX25v
ZGVfY3JlYXRlKGlkKTsKPiA+ICsJaWYgKElTX0VSUihub2RlKSkgewo+ID4gKwkJcmV0ID0gUFRS
X0VSUihub2RlKTsKPiA+ICsJCWdvdG8gZXJyX25vZGU7Cj4gPiArCX0KPiA+ICsKPiA+ICsJYnVz
LT5ub2RlID0gbm9kZTsKPiA+ICsJbm9kZS0+bmFtZSA9IGRldi0+b2Zfbm9kZS0+bmFtZTsKPiA+
ICsJbm9kZS0+ZGF0YSA9IGJ1czsKPiA+ICsJaWNjX25vZGVfYWRkKG5vZGUsIHByb3ZpZGVyKTsK
PiA+ICsKPiA+ICsJcGFyZW50X25vZGUgPSBleHlub3NfYnVzX2ljY19nZXRfcGFyZW50KGJ1cyk7
Cj4gPiArCWlmIChJU19FUlIocGFyZW50X25vZGUpKSB7Cj4gPiArCQlyZXQgPSBQVFJfRVJSKHBh
cmVudF9ub2RlKTsKPiA+ICsJCWdvdG8gZXJyX3BhcmVudDsKPiA+ICsJfQo+ID4gKwo+ID4gKwlp
ZiAocGFyZW50X25vZGUpIHsKPiA+ICsJCXJldCA9IGljY19saW5rX2NyZWF0ZShub2RlLCBwYXJl
bnRfbm9kZS0+aWQpOwo+ID4gKwkJaWYgKHJldCA8IDApCj4gPiArCQkJZ290byBlcnJfcGFyZW50
Owo+ID4gKwl9Cj4gPiArCj4gPiArCXJldCA9IGRldl9wbV9xb3NfYWRkX3JlcXVlc3QoYnVzLT5k
ZXZmcmVxLT5kZXYucGFyZW50LCAmYnVzLT5xb3NfcmVxLAo+ID4gKwkJCQkJREVWX1BNX1FPU19N
SU5fRlJFUVVFTkNZLCAwKTsKPiA+ICsJaWYgKHJldCA8IDApCj4gPiArCQlnb3RvIGVycl9yZXF1
ZXN0Owo+ID4gKwo+ID4gKwlyZXR1cm4gMDsKPiA+ICsKPiA+ICtlcnJfcmVxdWVzdDoKPiA+ICsJ
aWYgKHBhcmVudF9ub2RlKQo+ID4gKwkJaWNjX2xpbmtfZGVzdHJveShub2RlLCBwYXJlbnRfbm9k
ZSk7Cj4gPiArZXJyX3BhcmVudDoKPiA+ICsJaWNjX25vZGVfZGVsKG5vZGUpOwo+ID4gKwlpY2Nf
bm9kZV9kZXN0cm95KGlkKTsKPiA+ICtlcnJfbm9kZToKPiA+ICsJaWRhX2ZyZWUoJmlkYSwgaWQp
Owo+ID4gK2Vycl9pZDoKPiA+ICsJaWNjX3Byb3ZpZGVyX2RlbChwcm92aWRlcik7Cj4gPiArCj4g
PiArCXJldHVybiByZXQ7Cj4gPiArfQo+ID4gKwo+ID4gIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19w
cm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gIHsKPiA+ICAJc3RydWN0IGRl
dmljZSAqZGV2ID0gJnBkZXYtPmRldjsKPiA+IEBAIC00NjgsNiArNjAyLDE2IEBAIHN0YXRpYyBp
bnQgZXh5bm9zX2J1c19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gIAlp
ZiAocmV0IDwgMCkKPiA+ICAJCWdvdG8gZXJyOwo+ID4gIAo+ID4gKwkvKgo+ID4gKwkgKiBJbml0
aWFsaXplIGludGVyY29ubmVjdCBwcm92aWRlci4gQSByZXR1cm4gdmFsdWUgb2YgLUVOT1RTVVBQ
IG1lYW5zCj4gPiArCSAqIHRoYXQgQ09ORklHX0lOVEVSQ09OTkVDVCBpcyBkaXNhYmxlZC4KPiA+
ICsJICovCj4gPiArCXJldCA9IGV4eW5vc19idXNfaWNjX2luaXQoYnVzKTsKPiA+ICsJaWYgKHJl
dCA8IDAgJiYgcmV0ICE9IC1FTk9UU1VQUCkgewo+ID4gKwkJZGV2X2VycihkZXYsICJmYWlsZWQg
dG8gaW5pdGlhbGl6ZSB0aGUgaW50ZXJjb25uZWN0IHByb3ZpZGVyIik7Cj4gPiArCQlnb3RvIGVy
cjsKPiA+ICsJfQo+ID4gKwo+ID4gIAltYXhfc3RhdGUgPSBidXMtPmRldmZyZXEtPnByb2ZpbGUt
Pm1heF9zdGF0ZTsKPiA+ICAJbWluX2ZyZXEgPSAoYnVzLT5kZXZmcmVxLT5wcm9maWxlLT5mcmVx
X3RhYmxlWzBdIC8gMTAwMCk7Cj4gPiAgCW1heF9mcmVxID0gKGJ1cy0+ZGV2ZnJlcS0+cHJvZmls
ZS0+ZnJlcV90YWJsZVttYXhfc3RhdGUgLSAxXSAvIDEwMDApOwo+ID4gCj4gCj4gCi0tIApBcnR1
ciDFmndpZ2/FhApTYW1zdW5nIFImRCBJbnN0aXR1dGUgUG9sYW5kClNhbXN1bmcgRWxlY3Ryb25p
Y3MKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
