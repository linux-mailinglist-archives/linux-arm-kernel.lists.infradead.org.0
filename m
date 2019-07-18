Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A77096C8BD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 07:26:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2qxYNLblEMZBvB5g8yi0nsG0KqQ/PtfJ6CWDlWVrHxQ=; b=IsdnHZ99AUi7ov
	t2/Fiee22/H9weS+t9cJJLzgDwuOlAv9kvptwgCBJ+LtyyW9KRArYL0depIIUKeGhyOfLYibaOc/N
	Ec/2QrJxSq6M69qdWarHkKi8Mp2Rvt6gNkn/cF5BALyBJlavRCewoDNOnBJx54McVXll5YGwgpkkN
	rMsfoN2GLXSkfrv5KU20J5PNL/EKngNK6l3QdGU/jJdULFaj5MMO3dzRhOlioonzNlCWbk83JDK/8
	WyMyeGtbfLKvPx0/5Wmgxjfmyh08cgDGFg/F816SpU9Ns/3ezulnaH4LdtzfEjGN5L8X2MfZIqsLY
	JaREtttF2KonmA1PU7mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnywQ-0001VD-KM; Thu, 18 Jul 2019 05:26:54 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnywD-0001Ub-GD
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 05:26:43 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190718052637euoutp029531174e23c8e5fba28755ef930f6b38~yaR3tsM2s2648826488euoutp02M
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 05:26:37 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190718052637euoutp029531174e23c8e5fba28755ef930f6b38~yaR3tsM2s2648826488euoutp02M
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563427597;
 bh=VqyitIjmHvd1mFt9nd0wLsDdOiN5IPoLZWqZmuqK4ow=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=T0ACcPj0kHSwPk9EgVyIF1GKa++mbBorSKnB1H8nVOmKIYqmtGjuqPyvPK/PrZ+25
 s3Qeqdnypvmu0B4gGD6jMMoa+c/DFYmgjijFrBqzgAQf3IcEfyBdFEyL5i8bIlK91G
 M0IrHvYiEvlxXLhFKA5oePoLkDs//Zp5D6MZUkww=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190718052637eucas1p1567714f8a8eb509d67286b296b342931~yaR3AAz9R1478114781eucas1p1C;
 Thu, 18 Jul 2019 05:26:37 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 0E.10.04298.C03003D5; Thu, 18
 Jul 2019 06:26:36 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190718052636eucas1p206de16a320293650767d73f1b7dd7da9~yaR18a2gT1160411604eucas1p20;
 Thu, 18 Jul 2019 05:26:36 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190718052635eusmtrp2a01cb3b315ae1f78c419969913863525~yaR1toZgF1475514755eusmtrp2p;
 Thu, 18 Jul 2019 05:26:35 +0000 (GMT)
X-AuditID: cbfec7f2-f13ff700000010ca-2e-5d30030cbde6
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id F2.3D.04146.B03003D5; Thu, 18
 Jul 2019 06:26:35 +0100 (BST)
Received: from [106.120.51.20] (unknown [106.120.51.20]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190718052634eusmtip1cb652b3ec0e7b62a46944508f69ee866~yaR07zQdm2410324103eusmtip1U;
 Thu, 18 Jul 2019 05:26:34 +0000 (GMT)
Subject: Re: [PATCH v1 02/50] clk: samsung: add IDs for Exynos5420 NoC clocks
To: Chanwoo Choi <cw00.choi@samsung.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org
From: Lukasz Luba <l.luba@partner.samsung.com>
Message-ID: <5d3d1cb0-15db-8332-ee6d-946e2906fb87@partner.samsung.com>
Date: Thu, 18 Jul 2019 07:26:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <b8503015-732f-7ac5-1b25-50e943d27e55@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02SaUhUURTHvfPem3lKE9dR81RSMhQtmKMYdaXIopTpQ2TLhzAsR32Mlo42
 Ty1byCytRs0oUpsylTKnSR13TNoYRVFxS3Nr0dDItCEsgxayfD4jv/3+5/zPdrkspRhilrCR
 ujhOr9NEKaUOdE3jj/Z1CyivYK+h5g1ksLSdIeU5Fob0TX1gSF7DjMwcmaBIR0eZjLQlf5KR
 ipFehkymv2VId91tKcnpeCohJQ1vZKSwr0tCulr8yatzJilJedIgI/WfLjJkurec3qpQF98p
 RurP/SkydYX5slRdee+s+kqVGam/ViwLlAY5bA7noiITOL1qS4hDRF/PLyr2s8uJ+hsvURK6
 rjAglgW8Hi5c8DEgB1aBTQimzO8oUUwh+GF+JjEg+xnxFcFvQ4DAQoGhrEUqmooQVP4x0aKw
 Ieg3PmcElxPeDabXrbMuZ9yC4NywYbYVhbMkYLzjIsyWYk+oNR8TUI4DIDXVWUAar4TBfB/B
 7IIPQHdVHRJYjh2h+eYoLbA99oO0dotMbOgKg6N5c82Xw/nqW5S4ZwoLOcWsyDugJDsPiewE
 401VMpHd4M8jsRYwD0kZBXOe0zCSmTvn2QT1TV2MsBqF14ClTiWGt0GnzSYV33Ah9NscxQ0W
 wrWabEoMy+FSqkJ0r4aq9M65QYugqDhLdhUpjfPuMs67xTjvFuP/ufmINiNXLp6P1nK8t447
 7slrovl4ndYzLCa6As18u9bppi+16NuLUCvCLFIukCe5q4IVjCaBT4y2ImAppbP81ceZkDxc
 k3iS08cc1sdHcbwVLWVppav8lN3wQQXWauK4oxwXy+n/ZSWs/ZIktGqvdc/dnWO2rRKPXfLG
 NHfH/cNeA5QquxJ6f2Z6eBd5D/gm0r66+ytCVIl7PYd66Oq2BNX2U7klRyYl065nAifshov2
 jYdexzvjNj7Efo8LLf4D7zMGUViy7/eCq4GL35tsee6HHpzILyc+ha1jo+Nupdrz5E1tjDYo
 LfP0kzIlzUdovNdSel7zFw34wy5yAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrGIsWRmVeSWpSXmKPExsVy+t/xu7rczAaxBj1tmha31p1jtdg4Yz2r
 xfUvz1kt5h8Bcvsfv2a2OH9+A7vF2aY37BabHl9jtfjYc4/V4vKuOWwWM87vY7JYe+Quu8XS
 6xeZLC6ecrW43biCzaJ17xF2i8Nv2lkt/l3byOIg5LFm3hpGj/c3Wtk9Nq3qZPPYvKTeo2/L
 KkaPz5vkAtii9GyK8ktLUhUy8otLbJWiDS2M9AwtLfSMTCz1DI3NY62MTJX07WxSUnMyy1KL
 9O0S9DKuX/nNXPBetOLw1KuMDYyThboYOTkkBEwkujacYuti5OIQEljKKPHm834WiISYxKR9
 29khbGGJP9e6oIpeM0r8vNIClhAW8JX4cHMOK0hCROAUo0T3o8VsIAlmgWlMEifWM0N0/GGU
 OLGylbGLkYODTUBPYseqQhCTV8BNoq1NBMRkEVCVuLXAGKRTVCBCoq9tNtgUXgFBiZMzn4Dd
 wylgL9F9bj07xHQziXmbHzJD2OISt57MZ4Kw5SWat85mnsAoNAtJ+ywkLbOQtMxC0rKAkWUV
 o0hqaXFuem6xoV5xYm5xaV66XnJ+7iZGYJxvO/Zz8w7GSxuDDzEKcDAq8fDeUNKPFWJNLCuu
 zD3EKMHBrCTCe/slUIg3JbGyKrUoP76oNCe1+BCjKdBvE5mlRJPzgSkoryTe0NTQ3MLS0NzY
 3NjMQkmct0PgYIyQQHpiSWp2ampBahFMHxMHp1QDY8troQ9Kc0T+V6y+fcl75XzpqRarg3Z/
 yueYFu+yqW5d72yTnYv7LGuj3ORdHfqktMIudTiv61531avxUXWlDpfBl9395ffSNfan34k9
 t5d7yqyyu3vmKy68Gm/69uSKduX7mieyvwr6RzOzzZablyB8xnByT5lT2npHySNBaTFebt/Z
 PnivU2Ipzkg01GIuKk4EAKFDpmYJAwAA
X-CMS-MailID: 20190718052636eucas1p206de16a320293650767d73f1b7dd7da9
X-Msg-Generator: CA
X-RootMTR: 20190715124435eucas1p2099cd7670a3d85d9b11eb0ff86041a2a
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124435eucas1p2099cd7670a3d85d9b11eb0ff86041a2a
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124435eucas1p2099cd7670a3d85d9b11eb0ff86041a2a@eucas1p2.samsung.com>
 <20190715124417.4787-3-l.luba@partner.samsung.com>
 <b8503015-732f-7ac5-1b25-50e943d27e55@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_222641_752639_3A81F60C 
X-CRM114-Status: GOOD (  18.28  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, b.zolnierkie@samsung.com, sboyd@kernel.org,
 mturquette@baylibre.com, krzk@kernel.org, a.hajda@samsung.com,
 robh+dt@kernel.org, kyungmin.park@samsung.com, kgene@kernel.org,
 myungjoo.ham@samsung.com, s.nawrocki@samsung.com, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA3LzE2LzE5IDExOjI2IEFNLCBDaGFud29vIENob2kgd3JvdGU6Cj4gSGksCj4gCj4gWW91
IGRvbid0IG5lZWQgdG8gbWFrZSB0aGUgc2VwYXJhdGUgcGF0Y2hlcyBhY2NvcmRpbmcgdG8KPiB0
aGUgdHlwZSBvZiBjbG9jayBqdXN0IGluIG9yZGVyIHRvIGFkZCB0aGUgSUQgYnkgaGFuZGxpbmcg
dGhlbQo+IGZyb20gZGV2aWNldHJlZS4KPiAKPiBQbGVhc2UgbWVyZ2UgZm9sbG93aW5nIHBhdGNo
ZXMgdG8gb25lIHBhdGNoCj4gLSBwYXRjaDIsIHBhdGNoNH5wYXRjaDcsIHBhdGNoOSwgcGF0Y2gx
MSwgcGF0Y2gxMiwgcGF0Y2gxNCwgcGF0Y2gxNwo+IGFuZCBzZXBhcmF0ZSBmcm9tIHBhdGNoMTMs
IHBhdGNoMTUsIHBhdGNoMTYgZm9yIGFkZGluZyB0aGUgSUQKSSBhZ3JlZS4gVGhlIHBhdGNoZXMg
d2lsbCBiZSBzcXVhc2hlZC4KClJlZ2FyZHMsCkx1a2Fzego+IAo+IAo+IE9uIDE5LiA3LiAxNS4g
7Jik7ZuEIDk6NDMsIEx1a2FzeiBMdWJhIHdyb3RlOgo+PiBUaGUgcGF0Y2ggYWRkcyBOb0MgV0NP
UkUgY2xvY2sgSURzIG5lZWRlZCB1c2VkIGZvciBjaGFuZ2luZyBwYXJlbnQgb2YgdGhlCj4+IG1h
aW4gTm9DIGNsb2NrIGZyb20gdGhlIERUIGRldmljZS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogTHVr
YXN6IEx1YmEgPGwubHViYUBwYXJ0bmVyLnNhbXN1bmcuY29tPgo+PiAtLS0KPj4gICBkcml2ZXJz
L2Nsay9zYW1zdW5nL2Nsay1leHlub3M1NDIwLmMgfCAxMCArKysrKystLS0tCj4+ICAgMSBmaWxl
IGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvY2xrL3NhbXN1bmcvY2xrLWV4eW5vczU0MjAuYyBiL2RyaXZlcnMvY2xrL3Nh
bXN1bmcvY2xrLWV4eW5vczU0MjAuYwo+PiBpbmRleCAxNmFkNDk4ZTNmM2YuLmQzNTM4NzBlN2Zk
YSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9jbGsvc2Ftc3VuZy9jbGstZXh5bm9zNTQyMC5jCj4+
ICsrKyBiL2RyaXZlcnMvY2xrL3NhbXN1bmcvY2xrLWV4eW5vczU0MjAuYwo+PiBAQCAtNDYzLDcg
KzQ2Myw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgc2Ftc3VuZ19maXhlZF9mYWN0b3JfY2xvY2sK
Pj4gICBzdGF0aWMgY29uc3Qgc3RydWN0IHNhbXN1bmdfbXV4X2Nsb2NrIGV4eW5vczU4MDBfbXV4
X2Nsa3NbXSBfX2luaXRjb25zdCA9IHsKPj4gICAJTVVYKDAsICJtb3V0X2FjbGs0MDBfaXNwIiwg
bW91dF9ncm91cDNfNTgwMF9wLCBTUkNfVE9QMCwgMCwgMyksCj4+ICAgCU1VWCgwLCAibW91dF9h
Y2xrNDAwX21zY2wiLCBtb3V0X2dyb3VwM181ODAwX3AsIFNSQ19UT1AwLCA0LCAzKSwKPj4gLQlN
VVgoMCwgIm1vdXRfYWNsazQwMF93Y29yZSIsIG1vdXRfZ3JvdXAyXzU4MDBfcCwgU1JDX1RPUDAs
IDE2LCAzKSwKPj4gKwlNVVgoQ0xLX01PVVRfQUNMSzQwMF9XQ09SRSwgIm1vdXRfYWNsazQwMF93
Y29yZSIsIG1vdXRfZ3JvdXAyXzU4MDBfcCwKPj4gKwkJCVNSQ19UT1AwLCAxNiwgMyksCj4+ICAg
CU1VWCgwLCAibW91dF9hY2xrMTAwX25vYyIsIG1vdXRfZ3JvdXAxXzU4MDBfcCwgU1JDX1RPUDAs
IDIwLCAyKSwKPj4gICAKPj4gICAJTVVYKDAsICJtb3V0X2FjbGszMzNfNDMyX2dzY2wiLCBtb3V0
X2dyb3VwNl81ODAwX3AsIFNSQ19UT1AxLCAwLCAyKSwKPj4gQEAgLTU0OCw3ICs1NDksOCBAQCBz
dGF0aWMgY29uc3Qgc3RydWN0IHNhbXN1bmdfbXV4X2Nsb2NrIGV4eW5vczU0MjBfbXV4X2Nsa3Nb
XSBfX2luaXRjb25zdCA9IHsKPj4gICAKPj4gICAJTVVYKDAsICJtb3V0X2FjbGs0MDBfaXNwIiwg
bW91dF9ncm91cDFfcCwgU1JDX1RPUDAsIDAsIDIpLAo+PiAgIAlNVVgoMCwgIm1vdXRfYWNsazQw
MF9tc2NsIiwgbW91dF9ncm91cDFfcCwgU1JDX1RPUDAsIDQsIDIpLAo+PiAtCU1VWCgwLCAibW91
dF9hY2xrNDAwX3djb3JlIiwgbW91dF9ncm91cDFfcCwgU1JDX1RPUDAsIDE2LCAyKSwKPj4gKwlN
VVgoQ0xLX01PVVRfQUNMSzQwMF9XQ09SRSwgIm1vdXRfYWNsazQwMF93Y29yZSIsIG1vdXRfZ3Jv
dXAxX3AsCj4+ICsJCQlTUkNfVE9QMCwgMTYsIDIpLAo+PiAgIAlNVVgoMCwgIm1vdXRfYWNsazEw
MF9ub2MiLCBtb3V0X2dyb3VwMV9wLCBTUkNfVE9QMCwgMjAsIDIpLAo+PiAgIAo+PiAgIAlNVVgo
MCwgIm1vdXRfYWNsazMzM180MzJfZ3NjbCIsIG1vdXRfZ3JvdXA0X3AsIFNSQ19UT1AxLCAwLCAy
KSwKPj4gQEAgLTY3NCw4ICs2NzYsOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHNhbXN1bmdfbXV4
X2Nsb2NrIGV4eW5vczV4X211eF9jbGtzW10gX19pbml0Y29uc3QgPSB7Cj4+ICAgCQkJU1JDX1RP
UDEwLCA4LCAxKSwKPj4gICAJTVVYKDAsICJtb3V0X3N3X2FjbGsyMDBfZnN5czIiLCBtb3V0X3N3
X2FjbGsyMDBfZnN5czJfcCwKPj4gICAJCQlTUkNfVE9QMTAsIDEyLCAxKSwKPj4gLQlNVVgoMCwg
Im1vdXRfc3dfYWNsazQwMF93Y29yZSIsIG1vdXRfc3dfYWNsazQwMF93Y29yZV9wLAo+PiAtCQkJ
U1JDX1RPUDEwLCAxNiwgMSksCj4+ICsJTVVYKENMS19NT1VUX1NXX0FDTEs0MDBfV0NPUkUsICJt
b3V0X3N3X2FjbGs0MDBfd2NvcmUiLAo+PiArCQkJbW91dF9zd19hY2xrNDAwX3djb3JlX3AsIFNS
Q19UT1AxMCwgMTYsIDEpLAo+PiAgIAlNVVgoMCwgIm1vdXRfc3dfYWNsazEwMF9ub2MiLCBtb3V0
X3N3X2FjbGsxMDBfbm9jX3AsCj4+ICAgCQkJU1JDX1RPUDEwLCAyMCwgMSksCj4+ICAgCU1VWCgw
LCAibW91dF9zd19wY2xrMjAwX2ZzeXMiLCBtb3V0X3N3X3BjbGsyMDBfZnN5c19wLAo+Pgo+IAo+
IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
