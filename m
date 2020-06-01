Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C8A1E9FF7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 10:19:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2y3XRLkHj5ZfFxZkskbf6CdMNyW1q16EByTlPgqUiY0=; b=L78Ke687uuQ8qf
	nNIt2IhuwB3WGMug+oqnWMHuJ8W6O1rq5kYeP2OnPM91QTPIfoL2o12MveDmUA3zmxINPsM6eKsb+
	LqrJEY0QkqZS4VC8VKQ/x5lU5tcFP3Odsjs/1sC6BQBuUK/gHCuAyYmPh9/kr4IzkZcmhobwTjY+D
	3Cv70RQT01SZMcS2oECwGHN8PyLkGAg8odm9e+JOPTzLRvwhCDi8X1ff6JUoxtTmuR6jI+no86yeq
	9+zNNCCn4OQVhQFbj1UBDkNu/3T3/mzw2EENRoUehWQ1dMNe7xMTbeaddkIbW3ZiqkTT0Sxipr3MD
	QR/j7HlK29ewuEotE/2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfffo-0002Et-Th; Mon, 01 Jun 2020 08:19:56 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfffi-0002Dz-Pa
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 08:19:52 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200601081947euoutp027eb258d36ac8af2c49fef83eb0e496b7~UXbH_k6Vh2329423294euoutp02N
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  1 Jun 2020 08:19:47 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200601081947euoutp027eb258d36ac8af2c49fef83eb0e496b7~UXbH_k6Vh2329423294euoutp02N
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1590999587;
 bh=s3Ec/lKFroeeFCLe2u/iYci4hhYxXJEs5l6GyVdbeD4=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=Y94+MSvJceWl2X5Ixbl/oIvGj5FJsateM4dOqfXKqF7G9Sj5kt3cPYpes+l/Troi2
 72+23bFyg6A0HaZkIqg4HmFqJ9DfHHrTw0mjyJ5EyO4qkdeclW/jzEClIioMFrtKSj
 6Eqyd1+Qg4nMBcflmOStczyGOaz5mpPfX/cY0FZw=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200601081947eucas1p16dc2db3eb04fa508f3a1be2f7cd67bb2~UXbHuG69y1270012700eucas1p15;
 Mon,  1 Jun 2020 08:19:47 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 90.C2.60698.32AB4DE5; Mon,  1
 Jun 2020 09:19:47 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200601081946eucas1p208442218e510398cacb83e4e08217bef~UXbHa-Fuq3257432574eucas1p2E;
 Mon,  1 Jun 2020 08:19:46 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200601081946eusmtrp1593276250b5abf23051607514e822098~UXbHaMPla2264822648eusmtrp1W;
 Mon,  1 Jun 2020 08:19:46 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-73-5ed4ba235d7f
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id ED.B4.07950.22AB4DE5; Mon,  1
 Jun 2020 09:19:46 +0100 (BST)
Received: from [106.210.123.115] (unknown [106.210.123.115]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200601081945eusmtip25475d48146a4203d6398e2ca580244df~UXbGSU20M2280122801eusmtip2Y;
 Mon,  1 Jun 2020 08:19:45 +0000 (GMT)
Subject: Re: [RFC PATCH v5 1/6] dt-bindings: exynos-bus: Add documentation
 for interconnect properties
To: georgi.djakov@linaro.org, cw00.choi@samsung.com, krzk@kernel.org
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
Message-ID: <e8e00988-af5d-7022-f66d-89a2cb0f74cf@samsung.com>
Date: Mon, 1 Jun 2020 10:19:45 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200529163200.18031-2-s.nawrocki@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTYRiA+XbOzo6j2XFavpiZTYtU8oL9OJCsFINhGP0KstRmHqbmpmxe
 Wn9SRDNvmEreSrvMFDUvc4nM1FJLcl5AxTSNVS5FRULUxGaW2zHy3/O+7/PxXvhITDjJdSJj
 FUmMUiGNFxF8vP391uhpN/1EhG+JhksbqzIR3VrWzKU/ri9w6er+ES49sfGDoEu7tARdZCzE
 6dHRFh6tnZvk0uP6RwRdNtrNoV/2f+bRM+l1BJ3Z1c+jy4oXifMHJdr6+4RkdvI1ITHmDnAk
 bZq7kgJdPZKsaV0uE2H8gGgmPjaFUfqIb/BjJsfbUWLr4dvpi9koDTUIcxBJAnUGhnVeOciG
 FFJ1CBamnHMQf5fXEcxVt/HYYA3BdpqOY7EsD4ZqSzhsoRbBG/MmxgarCEZqx3CLZU/FQMfX
 fMzCDlQwZH2vwi0SRn3jwE5jJddSICg/yH9XgCwsoMSQ93zc2gKn3GFDu2PlQ1Q45BmXMNax
 gw/lJmsDGyoAmpcNVgejHOGTqXqPj0HGq0qMHXWLB/MaV5aDYbry6V7eHpYGdDyWncFQnGcd
 DqgMBHmdMzw2KERgHHiCWOsszI78IiwXwygPaNb7sOlAME01cdhD2sLUih07gy0UtZdibFoA
 2VlC1nYHc33p3hWdINf0By9Eoop9m1Xs26Zi3zYV//s+QXg9cmSSVXIZo/JXMKneKqlclayQ
 ed9MkGvR7m8z7AxsdKDu7aheRJFIdEBwamw8QsiVpqjU8l4EJCZyEAQNGyKEgmip+g6jTIhU
 Jsczql50hMRFjgL/Z4vhQkomTWJuMUwio/xX5ZA2Tmko0skUd84DCtUnfFKvBEWsttXyq7x+
 Rg369JUf737g2s1s9vXKltoeuptP1vjKWnKuumQ0fbnXM6SueWwOGV4jyFJF57pmTd0Y7/l7
 8yLdM5bMM4vdXJqv6Ru8+6+HwkZJWE+I2KBemb80zakRv0WJofKs+cEXRcvyC0cDM+JEuCpG
 6ueJKVXSv0Jw6cppAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrBIsWRmVeSWpSXmKPExsVy+t/xe7pKu67EGSw6aWBxf14ro8XGGetZ
 La5/ec5qMf/IOVaLK1/fs1lM37uJzWLS/QksFufPb2C32PT4GqvF5V1z2CxmnN/HZLH2yF12
 i9uNK9gsWvceYbeYMfklmwO/x6ZVnWwed67tYfO4332cyWPzknqPvi2rGD0+b5ILYIvSsynK
 Ly1JVcjILy6xVYo2tDDSM7S00DMysdQzNDaPtTIyVdK3s0lJzcksSy3St0vQy7h2eRtjwUax
 isaXHYwNjKuFuhg5OSQETCTOLJ/CBGILCSxllDj/LKqLkQMoLiUxv0UJokRY4s+1LjaIkveM
 EgcXqoLYwgIZEj17D4PFRQRcJNqezmPpYuTiYBZ4xCSxtKmPGcQREjjIKPH2yCV2kCo2AUOJ
 3qN9jCA2r4CdRM/iy2CLWQRUJL5u+gdmiwrESnQv/sEOUSMocXLmExYQm1PARmL969NgNcwC
 6hJ/5l1ihrDFJW49mQ8Vl5do3jqbeQKj0Cwk7bOQtMxC0jILScsCRpZVjCKppcW56bnFRnrF
 ibnFpXnpesn5uZsYgbG87djPLTsYu94FH2IU4GBU4uG9cP5ynBBrYllxZe4hRgkOZiURXqez
 p+OEeFMSK6tSi/Lji0pzUosPMZoCPTeRWUo0OR+YZvJK4g1NDc0tLA3Njc2NzSyUxHk7BA7G
 CAmkJ5akZqemFqQWwfQxcXBKNTDW9PwIOPPpYPHDh/u2sc6YdfTX6lzNWwYrPm6NnrprHdM9
 fhsGTptTrx9HOTg93rmg8F/V/az4NZOTqr727q2oU9gyZ8/uc+YrNfOFlhhoxb5sEMtVvWz6
 qunA39TJL6+73XFq/CPwdsqKhTderayV/mghEmgY9Z7l/AJHq7brUV4PRO/eYE/dq8RSnJFo
 qMVcVJwIAIa1OQb7AgAA
X-CMS-MailID: 20200601081946eucas1p208442218e510398cacb83e4e08217bef
X-Msg-Generator: CA
X-RootMTR: 20200529163219eucas1p2d127fe3936921f53f6fe7902e7d14a3e
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200529163219eucas1p2d127fe3936921f53f6fe7902e7d14a3e
References: <20200529163200.18031-1-s.nawrocki@samsung.com>
 <CGME20200529163219eucas1p2d127fe3936921f53f6fe7902e7d14a3e@eucas1p2.samsung.com>
 <20200529163200.18031-2-s.nawrocki@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_011950_959915_F719B544 
X-CRM114-Status: GOOD (  21.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 b.zolnierkie@samsung.com, sw0312.kim@samsung.com, a.swigon@samsung.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 inki.dae@samsung.com, Rob Herring <robh+dt@kernel.org>,
 myungjoo.ham@samsung.com, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Q2M6IFJvYiwgZGV2aWNldHJlZSBNTAoKT24gMjkuMDUuMjAyMCAxODozMSwgU3lsd2VzdGVyIE5h
d3JvY2tpIHdyb3RlOgo+IEFkZCBkb2N1bWVudGF0aW9uIGZvciBuZXcgb3B0aW9uYWwgcHJvcGVy
dGllcyBpbiB0aGUgZXh5bm9zIGJ1cyBub2RlczoKPiBzYW1zdW5nLGludGVyY29ubmVjdC1wYXJl
bnQsICNpbnRlcmNvbm5lY3QtY2VsbHMuCj4gVGhlc2UgcHJvcGVydGllcyBhbGxvdyB0byBzcGVj
aWZ5IHRoZSBTb0MgaW50ZXJjb25uZWN0IHN0cnVjdHVyZSB3aGljaAo+IHRoZW4gYWxsb3dzIHRo
ZSBpbnRlcmNvbm5lY3QgY29uc3VtZXIgZGV2aWNlcyB0byByZXF1ZXN0IHNwZWNpZmljCj4gYmFu
ZHdpZHRoIHJlcXVpcmVtZW50cy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBBcnR1ciDFmndpZ2/FhCA8
YS5zd2lnb25Ac2Ftc3VuZy5jb20+Cj4gU2lnbmVkLW9mZi1ieTogU3lsd2VzdGVyIE5hd3JvY2tp
IDxzLm5hd3JvY2tpQHNhbXN1bmcuY29tPgo+IC0tLQo+IENoYW5nZXMgZm9yIHY1Ogo+ICAtIGV4
eW5vcyxpbnRlcmNvbm5lY3QtcGFyZW50LW5vZGUgcmVuYW1lZCB0byBzYW1zdW5nLGludGVyY29u
bmVjdC1wYXJlbnQKPiAtLS0KPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rl
dmZyZXEvZXh5bm9zLWJ1cy50eHQgfCAxNSArKysrKysrKysrKysrLS0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDEzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kZXZmcmVxL2V4eW5vcy1idXMudHh0IGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2RldmZyZXEvZXh5bm9zLWJ1cy50eHQK
PiBpbmRleCBlNzFmNzUyLi5lMGQyZGFhIDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9kZXZmcmVxL2V4eW5vcy1idXMudHh0Cj4gKysrIGIvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2RldmZyZXEvZXh5bm9zLWJ1cy50eHQKPiBAQCAtNTEs
NiArNTEsMTEgQEAgT3B0aW9uYWwgcHJvcGVydGllcyBvbmx5IGZvciBwYXJlbnQgYnVzIGRldmlj
ZToKPiAgLSBleHlub3Msc2F0dXJhdGlvbi1yYXRpbzogdGhlIHBlcmNlbnRhZ2UgdmFsdWUgd2hp
Y2ggaXMgdXNlZCB0byBjYWxpYnJhdGUKPiAgCQkJdGhlIHBlcmZvcm1hbmNlIGNvdW50IGFnYWlu
c3QgdG90YWwgY3ljbGUgY291bnQuCj4gCj4gK09wdGlvbmFsIHByb3BlcnRpZXMgZm9yIGludGVy
Y29ubmVjdCBmdW5jdGlvbmFsaXR5IChRb1MgZnJlcXVlbmN5IGNvbnN0cmFpbnRzKToKPiArLSBz
YW1zdW5nLGludGVyY29ubmVjdC1wYXJlbnQ6IHBoYW5kbGUgdG8gdGhlIHBhcmVudCBpbnRlcmNv
bm5lY3Qgbm9kZTsgZm9yCj4gKyAgcGFzc2l2ZSBkZXZpY2VzIHNob3VsZCBwb2ludCB0byBzYW1l
IG5vZGUgYXMgdGhlIGV4eW5vcyxwYXJlbnQtYnVzIHByb3BlcnR5Lgo+ICstICNpbnRlcmNvbm5l
Y3QtY2VsbHM6IHNob3VsZCBiZSAwCj4gKwo+ICBEZXRhaWxlZCBjb3JyZWxhdGlvbiBiZXR3ZWVu
IHN1Yi1ibG9ja3MgYW5kIHBvd2VyIGxpbmUgYWNjb3JkaW5nIHRvIEV4eW5vcyBTb0M6Cj4gIC0g
SW4gY2FzZSBvZiBFeHlub3MzMjUwLCB0aGVyZSBhcmUgdHdvIHBvd2VyIGxpbmUgYXMgZm9sbG93
aW5nOgo+ICAJVkREX01JRiB8LS0tIERNQwo+IEBAIC0xODUsOCArMTkwLDkgQEAgRXhhbXBsZTE6
Cj4gIAktLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tCj4gCj4gIEV4YW1wbGUyIDoKPiAtCVRoZSBidXMgb2YgRE1DIChEeW5hbWljIE1lbW9y
eSBDb250cm9sbGVyKSBibG9jayBpbiBleHlub3MzMjUwLmR0c2kKPiAtCWlzIGxpc3RlZCBiZWxv
dzoKPiArCVRoZSBidXMgb2YgRE1DIChEeW5hbWljIE1lbW9yeSBDb250cm9sbGVyKSBibG9jayBp
biBleHlub3MzMjUwLmR0c2kgaXMKPiArCWxpc3RlZCBiZWxvdy4gQW4gaW50ZXJjb25uZWN0IHBh
dGggImJ1c19sY2QwIC0tIGJ1c19sZWZ0YnVzIC0tIGJ1c19kbWMiCj4gKwlpcyBkZWZpbmVkIGZv
ciBkZW1vbnN0cmF0aW9uIHB1cnBvc2VzLgo+IAo+ICAJYnVzX2RtYzogYnVzX2RtYyB7Cj4gIAkJ
Y29tcGF0aWJsZSA9ICJzYW1zdW5nLGV4eW5vcy1idXMiOwo+IEBAIC0zNzYsMTIgKzM4MiwxNSBA
QCBFeGFtcGxlMiA6Cj4gIAkmYnVzX2RtYyB7Cj4gIAkJZGV2ZnJlcS1ldmVudHMgPSA8JnBwbXVf
ZG1jMF8zPiwgPCZwcG11X2RtYzFfMz47Cj4gIAkJdmRkLXN1cHBseSA9IDwmYnVjazFfcmVnPjsJ
LyogVkREX01JRiAqLwo+ICsJCSNpbnRlcmNvbm5lY3QtY2VsbHMgPSA8MD47Cj4gIAkJc3RhdHVz
ID0gIm9rYXkiOwo+ICAJfTsKPiAKPiAgCSZidXNfbGVmdGJ1cyB7Cj4gIAkJZGV2ZnJlcS1ldmVu
dHMgPSA8JnBwbXVfbGVmdGJ1c18zPiwgPCZwcG11X3JpZ2h0YnVzXzM+Owo+ICAJCXZkZC1zdXBw
bHkgPSA8JmJ1Y2szX3JlZz47Cj4gKwkJc2Ftc3VuZyxpbnRlcmNvbm5lY3QtcGFyZW50ID0gPCZi
dXNfZG1jPjsKPiArCQkjaW50ZXJjb25uZWN0LWNlbGxzID0gPDA+Owo+ICAJCXN0YXR1cyA9ICJv
a2F5IjsKPiAgCX07Cj4gCj4gQEAgLTM5Miw2ICs0MDEsOCBAQCBFeGFtcGxlMiA6Cj4gCj4gIAkm
YnVzX2xjZDAgewo+ICAJCWRldmZyZXEgPSA8JmJ1c19sZWZ0YnVzPjsKPiArCQlzYW1zdW5nLGlu
dGVyY29ubmVjdC1wYXJlbnQgPSA8JmJ1c19sZWZ0YnVzPjsKPiArCQkjaW50ZXJjb25uZWN0LWNl
bGxzID0gPDA+Owo+ICAJCXN0YXR1cyA9ICJva2F5IjsKPiAgCX07Cj4gCj4gLS0KPiAyLjcuNAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
