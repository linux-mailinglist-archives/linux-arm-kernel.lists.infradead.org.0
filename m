Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B1E4B4849
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 09:29:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fzM5m0kyws2kQILQBTOrX0sm+Q5L1wuemRyebrHS+7U=; b=K9tL47mzBonbci
	vo0bwfT0QlAOKBg01ixP4fpd8R4e4RX48rGdusJrTUYYQ8pgALq5rQfZXfJc1CHGSTG+I2gP22E3E
	KmFZhvpeaEHBrHUqpQVNCGAExGrRMCg3YWAsjYHoGZfK1tWXm41K4Yv7xOZ9gJ3GXcIVUd3O8EyZ/
	lZeVRGas7AnyD3GoGIOsbThhwa+Q2+/MH6iUgMhQd09eO5NcQcqD3EtlI++BPAn7V4Na59+r/Un2G
	PGpujQM8RXhqtmf9KQtPDr+LexB+LntsCIhMT9rbwaAljl3JIUPVKzmWiHnDTtiziZVnuayON5lb9
	k+yn+tI8heQHC2f5aQKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA7vS-0006UZ-Cb; Tue, 17 Sep 2019 07:29:26 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA7uz-0006QP-Nw
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 07:29:01 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190917072854euoutp02b35f77adac7a9fba212c88243c3128f0~FKTC7vqV11538815388euoutp02h
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Sep 2019 07:28:54 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190917072854euoutp02b35f77adac7a9fba212c88243c3128f0~FKTC7vqV11538815388euoutp02h
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568705334;
 bh=QezmaJ9hcOGstagnwCUhReu3Niczm5FH8zPmTJiYE9c=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=fKLIEs8Gmx7hhErUMx1Gqak8zCvN3K9nVHT+DJzzDf065rC/zsRZazWMYXOE9B9pp
 M6QaspGPjAnj4PPIAFgDbvAgrwxX3yI9Mv2d8wFVn154TDnksKjKspRJ/fOCP9fF0w
 jihntaZX9j8qsttQsEP8NloAOQ75oVI5eYzkRepo=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190917072853eucas1p2d6396e914d979d35b45f7dbdef5557e9~FKTCTdLcH2324823248eucas1p2S;
 Tue, 17 Sep 2019 07:28:53 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id CA.CE.04469.53B808D5; Tue, 17
 Sep 2019 08:28:53 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190917072852eucas1p20e5a9c06f747c4ce755f2baede1dada5~FKTBeFKMY0371003710eucas1p2q;
 Tue, 17 Sep 2019 07:28:52 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190917072852eusmtrp15554c0aa853594e8bf1f76ab7b72481f~FKTBPSqE62506625066eusmtrp1C;
 Tue, 17 Sep 2019 07:28:52 +0000 (GMT)
X-AuditID: cbfec7f2-569ff70000001175-50-5d808b35753f
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id C9.9F.04117.43B808D5; Tue, 17
 Sep 2019 08:28:52 +0100 (BST)
Received: from [106.120.51.74] (unknown [106.120.51.74]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190917072851eusmtip2c086910acabb8262b34313f864868953~FKTAFe5ib1669916699eusmtip2H;
 Tue, 17 Sep 2019 07:28:51 +0000 (GMT)
Subject: Re: [PATCH 05/11] drm/bridge: analogix-anx78xx: correct value of TX_P0
To: Brian Masney <masneyb@onstation.org>, Enric Balletbo i Serra
 <enric.balletbo@collabora.com>
From: Andrzej Hajda <a.hajda@samsung.com>
Message-ID: <356d645a-1c88-8f34-5acb-0803cf2712d2@samsung.com>
Date: Tue, 17 Sep 2019 09:28:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190916120228.GA3045@onstation.org>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0yTVxj29Lv0o7HkWDC8wwW1iRpJLLJsyXE2hiUzOfvnLVFpFKp+AyNU
 1g/wNgLqZCjCuHhrgdFtJZIKoiBYOgUtZJV0dINNqQppF1yMUzGhgpsXHO2HkX/PeZ73fd7n
 SY7AaOx8vLDblCuaTcYsLa9iO375z7fik9KibSstUwnEN/qKJWW+PgXxdo+x5G1HJUPqe30c
 +XPiGU+a7rsRqX3Yj8jtF48Y0vfkNkuOV9qV5NTr8wrSOnqHI5Xd/Uryh6uWJw1DAwryXc1j
 jrjLDeThD/8y5Nj1XiUZqe5FKfNp0/dNiD7zH1NS54gd0euTNpZ2WkeUtKbEwtFWx3Ge3qoY
 VNDhO9d4enUyyNFAqUdB2+yFtMEfQz2ue0p6o6yapaHWhHU4VaXfJWbtzhfNSWvSVZnXgk18
 zuDS/WO2x8oi9O2iEyhKAPwxtPxUxp9AKkGDGxGUPnqB5MdzBDaLbUYJIRjvmlC+W2mcPMPJ
 wnkEo2+H2LCgwU8R+IO5YRyD18OvVh8fxrHYCKNdTyK2DC5mofLHqogTj5fDm7a7kSE1XgPN
 Q6EIz+IlUO1wREzn4y0wHuzh5Jl50Gd5MM0LQhT+CAJHIzSDF8LR9hpGxnFw70G9InwL8LAA
 VYG/GTn15zDVdZGXcQz847ky0+ZD8FafZGVcCIHGbxh5uQRB+6XOmeXV0OMZ4MKHmenQLa4k
 mf4MKrwDkTyAo8H/dJ6cIRqqOs4yMq2GkmKNPL0YAv3tM4Zx0PD7BF+BtNZZxayz2lhntbG+
 v2tDrAPFiXlSdoYoJZvEfTrJmC3lmTJ0O/dmt6Lpv+ud8ow70cTgDjfCAtLOVfvbCrdpOGO+
 dCDbjUBgtLHqdQXTlHqX8cBB0bw3zZyXJUputEBgtXHqQ3OCBg3OMOaKe0QxRzS/UxVCVHwR
 +mqJruzlRtXNl2kJR3LqCjbpVt1P1kfR7TsdFzI1Id8y+9bE+A21O+z1zhvRwgXI19d1biZ0
 /GSdfe0pfXnP4BdeZ8urr6Xh9AxPSlLiuZ8NqzxLXZcvrlwwadCl/GYqPXRaf3jxUGpacZoz
 frXLMrZB1fxp41+akMVwK1T+wZcFWlbKNCYnMmbJ+D9vF6rjtwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTYRjHeXcuO1qD06b5Il3GwO7Ntql7VyZ9fL9ERR+KTGzYQS23xc6M
 jELDTHN0GUbOTXKCy5AVNdN0adayvKWgpallFlkWppLiMjJrlwK//fg//x88DzwMIX5ARTOZ
 ehNn1GuzZHQ42bXY9m5rnDkvZVvjc4h6Pv4i0aWeDgHqapki0Z96C4EqWnso9GpumkauN16A
 yse7Aer/8ZVAHd/6SXTRUiVE1xaqBcj9cYBClpZuIXrpKaeR83WvAF2xT1DIezkZjVfOE6ig
 uVWIRkpawa5I7LrhAnh6sECIG0aqAG72OUjcaBsRYntRGYXdNRdp3H61T4DfDjTR+IHvPYVH
 zW0CXFuVi52DEtzmGRbix5dKSDzrXrOXPSRPNBqyTZw0w8CbdsqSFUgpV2iQXBmnkStU6pTt
 ynhZbFLiUS4r8yRnjE06Is9oeu+iT/StOzXlmBDmgUJpMQhjIBsHb/muUwEWs04A57+AUB4F
 H1ZMEiGWwIWBYroYhPs7EwAOt7mDAwm7D76w9dABjmC1sOvXzWCJYC+QsPFOMxUy7hKwf+4e
 GWjR7Eb4u3YoaIjYJHj79awwwCQbA0tqaoKdSPYgfNpgA6HOCthRNubPGSaMVcLR/OCmBLse
 LtzoI0K8FubX2f9xFBweqxBcBWLbEtu2RLEtUWxLFAcga0AEl83r0nW8Us5rdXy2Pl2eZtC5
 gf9p6p//vN8Aiqf2ewHLANly0WBtboqY0p7kc3ReABlCFiHae9YfiY5qc05zRkOqMTuL470g
 3n+bhYiOTDP4X1BvSlXEK9RIo1Cr1KoEJIsSFbFPDovZdK2JO85xJzjjf0/AhEXngZw4Zrqj
 QArFDdLPnpXJE2R3r/30sdihe98rzUMrHedXW4tiFup2DyxGt3jXVGONw1J1d8ebxPvWx+ZC
 U25juNo5s5PaY31Wt6zz3BV95maFqjP8UfmZD59G21dt0kxK5ySlcyr45/JYpH7LjNWzof3Y
 nZnBHUW+wgOluYuuBJWM5DO0ik2Ekdf+BRkdBOpKAwAA
X-CMS-MailID: 20190917072852eucas1p20e5a9c06f747c4ce755f2baede1dada5
X-Msg-Generator: CA
X-RootMTR: 20190815004918epcas3p135042bc52c7e3c8b1aca7624d121af97
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190815004918epcas3p135042bc52c7e3c8b1aca7624d121af97
References: <20190815004854.19860-1-masneyb@onstation.org>
 <CGME20190815004918epcas3p135042bc52c7e3c8b1aca7624d121af97@epcas3p1.samsung.com>
 <20190815004854.19860-6-masneyb@onstation.org>
 <dc10dd84-72e2-553e-669b-271b77b4a21a@samsung.com>
 <20190916103614.GA1644@onstation.org>
 <20190916104907.GB4734@pendragon.ideasonboard.com>
 <3ec4f0bc-f3c5-aebf-8213-bc4f80915902@collabora.com>
 <20190916120228.GA3045@onstation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_002858_968067_ADFC0577 
X-CRM114-Status: GOOD (  25.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, jernej.skrabec@siol.net,
 dri-devel@lists.freedesktop.org, narmstrong@baylibre.com, airlied@linux.ie,
 linux-arm-msm@vger.kernel.org, linus.walleij@linaro.org, jonas@kwiboo.se,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, bjorn.andersson@linaro.org,
 robdclark@gmail.com, agross@kernel.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, daniel@ffwll.ch,
 freedreno@lists.freedesktop.org, sean@poorly.run,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTYuMDkuMjAxOSAxNDowMiwgQnJpYW4gTWFzbmV5IHdyb3RlOgo+IE9uIE1vbiwgU2VwIDE2
LCAyMDE5IGF0IDAxOjMyOjU4UE0gKzAyMDAsIEVucmljIEJhbGxldGJvIGkgU2VycmEgd3JvdGU6
Cj4+IEhpLAo+Pgo+PiBPbiAxNi85LzE5IDEyOjQ5LCBMYXVyZW50IFBpbmNoYXJ0IHdyb3RlOgo+
Pj4gSGkgQnJpYW4sCj4+Pgo+Pj4gT24gTW9uLCBTZXAgMTYsIDIwMTkgYXQgMDY6MzY6MTRBTSAt
MDQwMCwgQnJpYW4gTWFzbmV5IHdyb3RlOgo+Pj4+IE9uIE1vbiwgU2VwIDE2LCAyMDE5IGF0IDEy
OjAyOjA5UE0gKzAyMDAsIEFuZHJ6ZWogSGFqZGEgd3JvdGU6Cj4+Pj4+IE9uIDE1LjA4LjIwMTkg
MDI6NDgsIEJyaWFuIE1hc25leSB3cm90ZToKPj4+Pj4+IFdoZW4gYXR0ZW1wdGluZyB0byBjb25m
aWd1cmUgdGhpcyBkcml2ZXIgb24gYSBOZXh1cyA1IHBob25lIChtc204OTc0KSwKPj4+Pj4+IHNl
dHRpbmcgdXAgdGhlIGR1bW15IGkyYyBidXMgZm9yIFRYX1AwIHdvdWxkIGZhaWwgZHVlIHRvIGFu
IC1FQlVTWQo+Pj4+Pj4gZXJyb3IuIFRoZSBkb3duc3RyZWFtIE1TTSBrZXJuZWwgc291cmNlcyBb
MV0gc2hvd3MgdGhhdCB0aGUgcHJvcGVyIHZhbHVlCj4+Pj4+PiBmb3IgVFhfUDAgaXMgMHg3OCwg
bm90IDB4NzAsIHNvIGNvcnJlY3QgdGhlIHZhbHVlIHRvIGFsbG93IGRldmljZQo+Pj4+Pj4gcHJv
YmluZyB0byBzdWNjZWVkLgo+Pj4+Pj4KPj4+Pj4+IFsxXSBodHRwczovL2dpdGh1Yi5jb20vQUlD
UC9rZXJuZWxfbGdlX2hhbW1lcmhlYWQvYmxvYi9uNy4xL2RyaXZlcnMvdmlkZW8vc2xpbXBvcnQv
c2xpbXBvcnRfdHhfcmVnLmgKPj4+Pj4+Cj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBCcmlhbiBNYXNu
ZXkgPG1hc25leWJAb25zdGF0aW9uLm9yZz4KPj4+Pj4+IC0tLQo+Pj4+Pj4gIGRyaXZlcnMvZ3B1
L2RybS9icmlkZ2UvYW5hbG9naXgtYW54Nzh4eC5oIHwgMiArLQo+Pj4+Pj4gIDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Pj4+Pj4KPj4+Pj4+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4LWFueDc4eHguaCBiL2RyaXZlcnMv
Z3B1L2RybS9icmlkZ2UvYW5hbG9naXgtYW54Nzh4eC5oCj4+Pj4+PiBpbmRleCAyNWUwNjNiY2Vj
YmMuLmJjNTExZmM2MDVjOSAxMDA2NDQKPj4+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9icmlk
Z2UvYW5hbG9naXgtYW54Nzh4eC5oCj4+Pj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdl
L2FuYWxvZ2l4LWFueDc4eHguaAo+Pj4+Pj4gQEAgLTYsNyArNiw3IEBACj4+Pj4+PiAgI2lmbmRl
ZiBfX0FOWDc4eHhfSAo+Pj4+Pj4gICNkZWZpbmUgX19BTlg3OHh4X0gKPj4+Pj4+ICAKPj4+Pj4+
IC0jZGVmaW5lIFRYX1AwCQkJCTB4NzAKPj4+Pj4+ICsjZGVmaW5lIFRYX1AwCQkJCTB4NzgKPj4+
Pj4KPj4+Pj4gVGhpcyBib3RoZXJzIG1lIGxpdHRsZS4gVGhlcmUgYXJlIG5vIHVwc3RyZWFtIHVz
ZXJzLCBncmVwcGluZyBhbmRyb2lkCj4+Pj4+IHNvdXJjZXMgc3VnZ2VzdHMgdGhhdCBib3RoIHZh
bHVlcyBjYW4gYmUgdXNlZCBbMV1bMl3CoCAoZ3JlcCBmb3IgIiNkZWZpbmUKPj4+Pj4gVFhfUDAi
KSwgbW9yZW92ZXIgdGhlcmUgaXMgY29kZSBzdWdnZXN0aW5nIGJvdGggdmFsdWVzIGNhbiBiZSB2
YWxpZCBbM10uCj4+Pj4+Cj4+Pj4+IENvdWxkIHlvdSB2ZXJpZnkgZGF0YXNoZWV0IHdoaWNoIGky
YyBzbGF2ZSBhZGRyZXNzZXMgYXJlIHZhbGlkIGZvciB0aGlzCj4+Pj4+IGNoaXAsIGlmIGJvdGgg
SSBndWVzcyB0aGlzIHBhdGNoIHNob3VsZCBiZSByZXdvcmtlZC4KPj4+Pj4KPj4+Pj4KPj4+Pj4g
WzFdOgo+Pj4+PiBodHRwczovL2FuZHJvaWQuZ29vZ2xlc291cmNlLmNvbS9rZXJuZWwvbXNtLysv
YW5kcm9pZC1tc20tZmxvLTMuNC1qYi1tcjIvZHJpdmVycy9taXNjL3NsaW1wb3J0X2FueDc4MDgv
c2xpbXBvcnRfdHhfcmVnLmgKPj4+Pj4KPj4+Pj4gWzJdOgo+Pj4+PiBodHRwczovL2dpdGh1Yi5j
b20vQW5kcm9pZEdYL1NpbXBsZUdYLU1NLTYuMF9IODE1XzIwZC9ibG9iL21hc3Rlci9kcml2ZXJz
L3ZpZGVvL3NsaW1wb3J0L2FueDc4MTIvc2xpbXBvcnQ3ODEyX3R4X3JlZy5oCj4+Pj4+Cj4+Pj4+
IFszXToKPj4+Pj4gaHR0cHM6Ly9naXRodWIuY29tL2NvbW1hYWkvYW5kcm9pZF9rZXJuZWxfbGVl
Y29fbXNtODk5Ni9ibG9iL21hc3Rlci9kcml2ZXJzL3ZpZGVvL21zbS9tZHNzL2RwL3NsaW1wb3J0
X2N1c3RvbV9kZWNsYXJlLmgjTDczCj4+Pj4gVGhpcyBhZGRyZXNzIGlzIDB4Nzggb24gbXkgTmV4
dXMgNS4gR2l2ZW4gWzNdIGFib3ZlIGl0IGxvb2tzIGxpa2Ugd2UKPj4+PiBuZWVkIHRvIHN1cHBv
cnQgYm90aCBhZGRyZXNzZXMuIFdoYXQgZG8geW91IHRoaW5rIGFib3V0IG1vdmluZyB0aGVzZQo+
Pj4+IGFkZHJlc3NlcyBpbnRvIGRldmljZSB0cmVlPwo+Pj4gQXNzdW1pbmcgdGhhdCB0aGUgZGV2
aWNlIHN1cHBvcnRzIGRpZmZlcmVudCBhZGRyZXNzZXMgKEkgY2FuJ3QgdmFsaWRhdGUKPj4+IHRo
YXQgYXMgSSBkb24ndCBoYXZlIGFjY2VzcyB0byB0aGUgZGF0YXNoZWV0KSwgYW5kIGRpZmZlcmVu
dCBhZGRyZXNzZXMKPj4+IG5lZWQgdG8gYmUgdXNlZCBvbiBkaWZmZXJlbnQgc3lzdGVtcywgdGhl
biB0aGUgYWRkcmVzcyB0byBiZSB1c2VkIG5lZWRzCj4+PiB0byBiZSBwcm92aWRlZCBieSB0aGUg
ZmlybXdhcmUgKERUIGluIHRoaXMgY2FzZSkuIFR3byBvcHRpb25zIGFyZQo+Pj4gcG9zc2libGUs
IGVpdGhlciBzcGVjaWZ5aW5nIHRoZSBhZGRyZXNzIGV4cGxpY2l0bHkgaW4gdGhlIGRldmljZSdz
IERUCj4+PiBub2RlLCBvciBzcGVjaWZ5aW5nIGZyZWUgYWRkcmVzc2VzIChpbiB0aGUgZm9ybSBv
ZiBhIHdoaXRlIGxpc3Qgb3IgYmxhY2sKPj4+IGxpc3QpIGFuZCBhbGxvY2F0aW5nIGFuIGFkZHJl
c3MgZnJvbSB0aGF0IHBvb2wuIFRoZSBsYXR0ZXIgaGFzIGJlZW4KPj4+IGRpc2N1c3NlZCBpbiBh
IEJvRiBhdCB0aGUgTGludXggUGx1bWJlcnMgQ29uZmVyZW5jZSBsYXN0IHdlZWssCj4+PiBodHRw
czovL2xpbnV4cGx1bWJlcnNjb25mLm9yZy9ldmVudC80L2NvbnRyaWJ1dGlvbnMvNTQyLy4KPj4+
Cj4+Pj4gVGhlIGRvd25zdHJlYW0gYW5kIHVwc3RyZWFtIGtlcm5lbCBzb3VyY2VzIGRpdmlkZSB0
aGVzZSBhZGRyZXNzZXMgYnkgdHdvCj4+Pj4gdG8gZ2V0IHRoZSBpMmMgYWRkcmVzcy4gSGVyZSdz
IHRoZSBjb2RlIGluIHVwc3RyZWFtOgo+Pj4+Cj4+Pj4gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5j
b20vbGludXgvbGF0ZXN0L3NvdXJjZS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4LWFu
eDc4eHguYyNMMTM1Mwo+Pj4+IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L2xhdGVz
dC9zb3VyY2UvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC1hbng3OHh4LmMjTDQxCj4+
Pj4KPj4+PiBJJ20gbm90IHN1cmUgd2h5IHRoZSBhY3R1YWwgaTJjIGFkZHJlc3MgaXNuJ3QgdXNl
ZCBpbiB0aGlzIGNvZGUuCj4+IFRoZSBBTlg3ODAyLzEyLzE0LzE2IGhhcyBhIHNsYXZlIEkyQyBi
dXMgdGhhdCBwcm92aWRlcyB0aGUgaW50ZXJmYWNlIHRvIGFjY2Vzcwo+PiBvciBjb250cm9sIHRo
ZSBjaGlwIGZyb20gdGhlIEFQLiBUaGUgSTJDIHNsYXZlIGFkZHJlc3NlcyB1c2VkIHRvIGNvbnRy
b2wgdGhlCj4+IEFOWDc4MDIvMTIvMTQvMTYgYXJlIDcwaCwgNzJoLCA3QWgsIDdFaCBhbmQgODBo
LiBFdmVyeSBhZGRyZXNzIGFsbG93cyB5b3UgdG8KPj4gYWNjZXNzIHRvIGRpZmZlcmVudCByZWdp
c3RlcnMgb2YgdGhlIGNoaXAgYW5kIEFGQUlDUyBpcyBub3QgY29uZmlndXJhYmxlLgo+Pgo+PiBJ
IGRvbid0IHRoaW5rIHRoZXNlIGFkZHJlc3NlcyBzaG91bGQgYmUgY29uZmlndXJlZCB2aWEgRFQg
YnV0IGZvciB0aGUgZHJpdmVyIGl0c2VsZi4KPj4KPj4gTXkgd2lsZCBndWVzcyBpcyB0aGF0IHRo
ZSBBTlg3ODA4IGhhcyBkaWZmZXJlbnQgYWRkcmVzc2VzLCBidXQgSSBkb24ndCBoYXZlIHRoZQo+
PiBkYXRhc2hlZXQgb2YgdGhpcyB2ZXJzaW9uLgo+IEknbSBhYmxlIHRvIGNvbW11bmljYXRlIHdp
dGggdGhlIDc4MDggb24gbXkgTmV4dXMgNSB1c2luZyB0aGUgMHg3OAo+IGFkZHJlc3MuIEdpdmVu
IHRoYXQgdGhlIGFkZHJlc3NlcyBhcHBlYXIgdG8gYmUgZml4ZWQgcGVyIG1vZGVsLCBtYXliZSBp
dAo+IG1ha2VzIHNlbnNlIHRvIGRyb3AgdGhlIGFkZHJlc3MgI2RlZmluZXMgYW5kIGFkZCB0aGUg
YWRkcmVzc2VzIHRvIHRoZQo+IGRhdGEgcG9pbnRlciBpbiB0aGUgZHJpdmVyJ3Mgb2ZfbWF0Y2hf
dGFibGUgbGlrZSBzbzoKPgo+IHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGFueDc4
eHhfbWF0Y2hfdGFibGVbXSA9IHsKPiAgICAgICAgIHsgLmNvbXBhdGlibGUgPSAiYW5hbG9naXgs
YW54NzgwOCIsIC5kYXRhID0gUFRSX1RPXzc4MDhfQUREUlMgfSwKPiAgICAgICAgIHsgLmNvbXBh
dGlibGUgPSAiYW5hbG9naXgsYW54NzgxMiIsIC5kYXRhID0gUFRSX1RPXzc4MVhfQUREUlMgfSwK
PiAgICAgICAgIHsgLmNvbXBhdGlibGUgPSAiYW5hbG9naXgsYW54NzgxNCIsIC5kYXRhID0gUFRS
X1RPXzc4MVhfQUREUlMgfSwKPiAgICAgICAgIHsgLmNvbXBhdGlibGUgPSAiYW5hbG9naXgsYW54
NzgxOCIsIC5kYXRhID0gUFRSX1RPXzc4MVhfQUREUlMgfSwKPiAgICAgICAgIHsgLyogc2VudGlu
ZWwgKi8gfSwKPiB9OwoKCldpdGggZ2l2ZW4gZmVlZGJhY2sgZnJvbSBvdGhlciB1c2VycyBhbmQg
bGFjayBvZiBkYXRhc2hlZXRzIGZvciBjaGlwcwooZXhjZXB0IGFueDc4MTQpIHdlIGNhbiB0cnkg
dGhpcyBhcHByb2FjaC4KCgpSZWdhcmRzCgpBbmRyemVqCgoKPgo+IEJyaWFuCj4KPgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
