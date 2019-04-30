Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F18F3100F4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 22:36:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A5ISDRv0UaskzCNcTlyH9FIk4VU7vGLj2qEAdx8faic=; b=ZjG9QRfD6loK3A
	LpHQr6sEpjcOxH4bKfOy8QjM7Js/OPIiM6cdOhim9BvjUNxSCXuK4O613cEiXTl/tD+4FS7+P5YuJ
	2puQktQi7hclpHHetAfDVtxkXQ/b03FneIXB/q5zMu+njjlYejvykBA2FYRwmtwSe1nbF8wm6HGAK
	H/7xR2C2MtbFAFiDcRCVWYq51RZiU0ytbYakqQxlQzWDO0Y5qlg/fBHexRcM8z2/VEH9gzWFdxh8p
	IRsJoo9/vV5lqAHWBenqWbso7i9ModCJPf1wXrbeSNhWZzci+zgqsaRloubrRM9Bg7m/b9hbBIKRA
	c4pYzuxpbJrwFbVL4kIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLZUW-0006Ko-SW; Tue, 30 Apr 2019 20:36:40 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLZUP-0006JF-1C
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 20:36:35 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190430203628euoutp0212f8d779cacfe935be0c1bafdc1ef1da~aWut4KtIV2592725927euoutp02I
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 20:36:28 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190430203628euoutp0212f8d779cacfe935be0c1bafdc1ef1da~aWut4KtIV2592725927euoutp02I
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1556656588;
 bh=9vsMiykLOjeRt1UBwt+uh9cpWO5LxcvBibQAYduQZ2k=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=qkOJAd42VxebsGSE7i8GchRoB2K3SxV+SPRpSysABmd+Mv/Ph1ZjUYCo0lF06xYA5
 JTqoaLC+sWVlgZMDrODAZ9OT9swRwgqbqsn0VvmiOgpmkPPeElCI3exODP1OuTy9o7
 umGYaD07/zQLYYlJmTfSSbCNy2dTm81D0PV2CewU=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190430203627eucas1p2cd7cdeda0a90d5f910b62e2a28f30dcd~aWus59kQn1819918199eucas1p2Z;
 Tue, 30 Apr 2019 20:36:27 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 18.34.04377.BC1B8CC5; Tue, 30
 Apr 2019 21:36:27 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190430203626eucas1p1b6c7ee4f818e4cce513bb3d2c9fed071~aWurnSe8y3007630076eucas1p1y;
 Tue, 30 Apr 2019 20:36:26 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190430203625eusmtrp278c27e285d1adecadf4629eef010cd59~aWurXp6U51705217052eusmtrp2j;
 Tue, 30 Apr 2019 20:36:25 +0000 (GMT)
X-AuditID: cbfec7f4-113ff70000001119-92-5cc8b1cb95d0
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 40.F2.04140.9C1B8CC5; Tue, 30
 Apr 2019 21:36:25 +0100 (BST)
Received: from [106.120.51.20] (unknown [106.120.51.20]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190430203624eusmtip1b4f8457819f10c76a30cfc5f09f71ffe~aWuqdkACg1788717887eusmtip1j;
 Tue, 30 Apr 2019 20:36:24 +0000 (GMT)
Subject: Re: [PATCH v3 1/4] include: dt-bindings: add Performance Monitoring
 Unit for Exynos
To: Chanwoo Choi <cw00.choi@samsung.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
From: Lukasz Luba <l.luba@partner.samsung.com>
Message-ID: <d07544be-50c8-4520-4637-b0938701df1e@partner.samsung.com>
Date: Tue, 30 Apr 2019 22:36:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <a1ff3566-6117-b670-a2f3-b60a2bbec14a@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0gUURTHuzs7O6O0eh0tTxZFS0WZWUbRQNEDSoaMKCHIFHPNSSNdayc1
 S0p7mImv/GC5VhqY2mL5aBUVtNDV9VFqWmlt0mM10zQSLYzNasdR8tvvnPu79/wPXJpg3pBu
 9AnNGV6rUYerFPbyyqZf7evaypoDNmRVOLJlt0pItmdikGRzje0km275SrAdHaUU+/zSCMWW
 W16TbHfNbQU7nmpE7K2OOhn70NhHsfd7XshYc0KRgr1aa6TYhpFrJPuz+RPaibniu8WIq9b1
 UVy5/rqCe5x/kUsz6BE3Xr70gOKI/bYQPvxENK9dvz3IPszQ+5E49QyfbX97mYhHlcpkZEcD
 3gTXphLlIjO4CEFB+hKJJxBYKnwlHkdQmrZ51h9rsVDJyN7WL7T5TQWEVIwiaK9rRKLljAPh
 kSF72nLBLQhSE/pIsSDEp1o+vLYVNK3AnlClPy1eUGJvaEvpo0SW45Xwt/IKIfICfBjeN5WS
 kuMELdn901Ht8A7orP+sEJnArvC2P1cm8TK4XJEznQjwFAVNrT8UUu7dUPJgAEnsDMMmAyXx
 EvhbLV0GLEB86r0ZJw4s6XdmnK3QYHoxnZnAa6CkZr3U3gXvcqtkYhuwA/SOOkkRHCCz8iYh
 tZWQlMhI9mowpHTODFoIhcVZVAZS6eYsppuzjG7OMrr/c/OQXI9c+SghIpQXNmr4GE9BHSFE
 aUI9j0VGlCPbh2v7Y5qoQjW/g+sRppFqvrLTuzmAIdXRQmxEPQKaULkoOVNjAKMMUcee47WR
 R7VR4bxQjxbTcpWr8vy8D/4MDlWf4U/y/CleO3sqo+3c4hH9Msx9uCvej/F5+ZPrn9q7JXPt
 7t+NOYHuhxo8Mhz8vm/zLTnSvYhpJZfHfHI6FzLo8W3VgBW+BN94OmCefO/ddeH0cH7c+aKh
 rH2MOc9/aJffQb47cGzF9rHqTMfIrII9PtZXVp+uIK9JU/X+JHP2k97M4XmHj1vNRnV/rQeV
 w6nkQpjay53QCup/Qh2NJWwDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrAIsWRmVeSWpSXmKPExsVy+t/xu7onN56IMTiwWMli44z1rBbXvzxn
 tZh/5ByrRf/j18wW589vYLc42/SG3WLT42usFpd3zWGz+Nx7hNFixvl9TBZrj9xlt1h6/SKT
 xe3GFWwWrXuPsFscftPOavHtxCNGBwGPNfPWMHrsnHWX3WPTqk42j81L6j36tqxi9Pi8SS6A
 LUrPpii/tCRVISO/uMRWKdrQwkjP0NJCz8jEUs/Q2DzWyshUSd/OJiU1J7MstUjfLkEvY8uN
 h8wFZwQqzt1qZm5g3MbbxcjJISFgIvHx5GP2LkYuDiGBpYwSH94fZ4NIiElM2redHcIWlvhz
 rYsNoug1o8Se/3PAioQF4iTWbZkJ1i0icJJRYvaEv0wgDrPAZ0aJ6WsuM0O0TGGSOLS2Acjh
 4GAT0JPYsaoQpJtXwE3idM9dsBUsAqoS/7e1MIPYogIREmfer2CBqBGUODnzCZjNKWAvceHQ
 M7DNzAJmEvM2P2SGsMUlbj2ZzwRhy0s0b53NPIFRaBaS9llIWmYhaZmFpGUBI8sqRpHU0uLc
 9NxiI73ixNzi0rx0veT83E2MwNjeduznlh2MXe+CDzEKcDAq8fBqeJ6IEWJNLCuuzD3EKMHB
 rCTC63H8aIwQb0piZVVqUX58UWlOavEhRlOg5yYyS4km5wPTTl5JvKGpobmFpaG5sbmxmYWS
 OG+HwMEYIYH0xJLU7NTUgtQimD4mDk6pBsaKMqeDEp6GNdNfup3y4anKX6Z3+E/j3fDwE+pv
 OXafv+5qpaCc87/LKktA9Yu/U0LQTdW+eavfL33rIjhJ5ZiptI+oteUGy/RvK1ztZt3peZps
 16gd+78gylsl4zSDRpnavM0i89WzJyqWvNa/vEjCWGfVm2cMBnEaBW3FodW19Qftnt05pMRS
 nJFoqMVcVJwIALxxx3kDAwAA
X-CMS-MailID: 20190430203626eucas1p1b6c7ee4f818e4cce513bb3d2c9fed071
X-Msg-Generator: CA
X-RootMTR: 20190419134820eucas1p154e839769af0e1b8bae17ce3efa0ba93
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190419134820eucas1p154e839769af0e1b8bae17ce3efa0ba93
References: <1555681688-19643-1-git-send-email-l.luba@partner.samsung.com>
 <CGME20190419134820eucas1p154e839769af0e1b8bae17ce3efa0ba93@eucas1p1.samsung.com>
 <1555681688-19643-2-git-send-email-l.luba@partner.samsung.com>
 <a1ff3566-6117-b670-a2f3-b60a2bbec14a@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_133633_377826_2FB216D4 
X-CRM114-Status: GOOD (  21.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, willy.mh.wolff.ml@gmail.com, kgene@kernel.org,
 b.zolnierkie@samsung.com, krzk@kernel.org, kyungmin.park@samsung.com,
 robh+dt@kernel.org, myungjoo.ham@samsung.com, s.nawrocki@samsung.com,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA0LzMwLzE5IDY6NTYgQU0sIENoYW53b28gQ2hvaSB3cm90ZToKPiBIaSwKPiAKPiBJIGFn
cmVlIG9mIHRoaXMgcGF0Y2guIEJ1dCwgSSBhZGQgdGhlIG1pbm9yIGNvbW1lbnRzLgo+IAo+IElm
IHlvdSBlZGl0IHRoZW0gYWNjb3JkaW5nIHRvIG15IGNvbW1lbnQsIGZlZWwgZnJlZSB0byBhZGQg
bXkgZm9sbG93aW5nIHRhZzoKPiBBY2tlZC1ieTogQ2hhbndvbyBDaG9pIDxjdzAwLmNob2lAc2Ft
c3VuZy5jb20+Cj4gCj4gT24gMTkuIDQuIDE5LiDsmKTtm4QgMTA6NDgsIEx1a2FzeiBMdWJhIHdy
b3RlOgo+PiBUaGlzIHBhdGNoIGFkZCBzdXBwb3J0IG9mIGEgbmV3IGZlYXR1cmUgd2hpY2ggY2Fu
IGJlIHVzZWQgaW4gRFQ6Cj4+IFBlcmZvcm1hbmNlIE1vbml0b3JpbmcgVW5pdCB3aXRoIGRlZmlu
ZWQgZXZlbnQgZGF0YSB0eXBlLgo+PiBJbiB0aGlzIHBhdGNoIHRoZSBldmVudCBkYXRhIHR5cGVz
IGFyZSBkZWZpbmVkIGZvciBFeHlub3MgUFBNVS4KPj4gVGhlIHBhdGNoIGFsc28gdXBkYXRlcyB0
aGUgTUFJTlRBSU5FUlMgZmlsZSBhY2NvcmRpbmdseSBhbmQKPj4gYWRkcyB0aGUgaGVhZGVyIGZp
bGUgdG8gZGV2ZnJlcSBldmVudCBzdWJzeXN0ZW0uCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEx1a2Fz
eiBMdWJhIDxsLmx1YmFAcGFydG5lci5zYW1zdW5nLmNvbT4KPj4gLS0tCj4+ICAgTUFJTlRBSU5F
UlMgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAxICsKPj4gICBpbmNsdWRlL2R0LWJpbmRp
bmdzL3BtdS9leHlub3NfcHBtdS5oIHwgMjYgKysrKysrKysrKysrKysrKysrKysrKysrKysKPj4g
ICAyIGZpbGVzIGNoYW5nZWQsIDI3IGluc2VydGlvbnMoKykKPj4gICBjcmVhdGUgbW9kZSAxMDA2
NDQgaW5jbHVkZS9kdC1iaW5kaW5ncy9wbXUvZXh5bm9zX3BwbXUuaAo+Pgo+PiBkaWZmIC0tZ2l0
IGEvTUFJTlRBSU5FUlMgYi9NQUlOVEFJTkVSUwo+PiBpbmRleCAzNjcxZmRlLi4xYmE0YjliIDEw
MDY0NAo+PiAtLS0gYS9NQUlOVEFJTkVSUwo+PiArKysgYi9NQUlOVEFJTkVSUwo+PiBAQCAtNDU2
MCw2ICs0NTYwLDcgQEAgVDoJZ2l0IGdpdDovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgv
a2VybmVsL2dpdC9tengvZGV2ZnJlcS5naXQKPj4gICBTOglTdXBwb3J0ZWQKPj4gICBGOglkcml2
ZXJzL2RldmZyZXEvZXZlbnQvCj4+ICAgRjoJZHJpdmVycy9kZXZmcmVxL2RldmZyZXEtZXZlbnQu
Ywo+PiArRjoJaW5jbHVkZS9kdC1iaW5kaW5ncy9wbXUvZXh5bm9zX3BwbXUuaAo+PiAgIEY6CWlu
Y2x1ZGUvbGludXgvZGV2ZnJlcS1ldmVudC5oCj4+ICAgRjoJRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2RldmZyZXEvZXZlbnQvCj4+ICAgCj4+IGRpZmYgLS1naXQgYS9pbmNsdWRl
L2R0LWJpbmRpbmdzL3BtdS9leHlub3NfcHBtdS5oIGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9wbXUv
ZXh5bm9zX3BwbXUuaAo+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+PiBpbmRleCAwMDAwMDAwLi4w
OGZkY2U5Cj4+IC0tLSAvZGV2L251bGwKPj4gKysrIGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9wbXUv
ZXh5bm9zX3BwbXUuaAo+PiBAQCAtMCwwICsxLDI2IEBACj4+ICsvKiBTUERYLUxpY2Vuc2UtSWRl
bnRpZmllcjogR1BMLTIuMCAqLwo+PiArLyoKPj4gKyAqIFNhbXN1bmcgRXh5bm9zIFBQTVUgZXZl
bnQgdHlwZXMgZm9yIGNvdW50aW5nIGluIHJlZ3MKPj4gKyAqCj4+ICsgKiBDb3B5cmlnaHQgKGMp
IDIwMTksIFNhbXN1bmcKPiAKPiBNYWJ5ZSwgIlNhbXN1bmcgRWxlY3Ryb25pY3MiIGluc3RlYWQg
b2YgJ1NhbXN1bmcnLgpBQ0sKPiAKPj4gKyAqIEF1dGhvcjogTHVrYXN6IEx1YmEgPGwubHViYUBw
YXJ0bmVyLnNhbXN1bmcuY29tPgo+PiArICovCj4+ICsKPj4gKyNpZm5kZWYgX19EVF9CSU5ESU5H
U19QTVVfRVhZTk9TX1BQTVVfSAo+PiArI2RlZmluZSBfX0RUX0JJTkRJTkdTX1BNVV9FWFlOT1Nf
UFBNVV9ICj4+ICsKPj4gKwo+IAo+IFJlbW92ZSB1bm5lZWRlZCBibGFuayBsaW5lLgpPSyBkb25l
LiBJIHdpbGwgYWRkIHlvdXIgJ0Fja2VkLWJ5JyBpbiB0aGUgbmV4dCB2ZXJzaW9uLgoKUmVnYXJk
cywKTHVrYXN6CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
