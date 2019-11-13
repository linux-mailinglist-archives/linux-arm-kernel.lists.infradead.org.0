Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 513EEFAD81
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 10:47:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GVMbapfRRUgqspMD5LIVh439QEY7PGYzVtKOpTnu4Bc=; b=Nt5dNdp0JT3uFS
	RaRictNKez5Yu1VcBxtO2PRqVjO2A3bwyeo94O/S692q22cP0IuBm/NX5EBs6eq+o6vKc7FDY3ORU
	qhSjJ0eTmzH6AUpXtthBxABGJQ84xqZZyh0v89B6gD+xatp2IfLd8OhKCPymFbHAA9gwu8Xo4ZhWJ
	1bvNOwAE91ri5v7QNE+si4xqHKCTgcz1hO0sQbtDzvMW/grpcCbPBsyBY3T+aF68G8Ggvt6QFviMx
	hi6NOn2VD/G0yb2FjlqtwuTiX9y94swuTRprGjVUXl00ZZyf3a7lGZZtl4pBhBNKr+11HgrI+VQpp
	Q/iteLEb+mNHs5EsJjoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUpF3-0003JM-Mq; Wed, 13 Nov 2019 09:47:13 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUpEp-0003I2-1z
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 09:47:00 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20191113094655epoutp03b86d890207bc92b4665493d9cefbdd8c~Wr802FSXg2564725647epoutp03l
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 09:46:55 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20191113094655epoutp03b86d890207bc92b4665493d9cefbdd8c~Wr802FSXg2564725647epoutp03l
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1573638415;
 bh=VsyYZ9+HL/OjPZaEPukjhHvzqd+m/yivBbTZkkOgxV8=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=Dyyi5qtw7/n4x4BsEHMwY+9Vvw+CUDfh1RppT/YDlklgJ6asngQ4pGwCFjBK98//A
 4iBcXbM4DbqxLCPttgamw4xAM5zjiRqA0XuPWmiOoHMet0QzfO+R5oDDNI/JDH7H38
 3tOtSBTmZ7/LtAlJw0iU7MM1FzE+9Ow9p5aULG4o=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191113094655epcas1p1fb9d2e93579c5db9818397db3b2aff4d~Wr80YBgzL0338203382epcas1p1g;
 Wed, 13 Nov 2019 09:46:55 +0000 (GMT)
Received: from epsmges1p2.samsung.com (unknown [182.195.40.154]) by
 epsnrtp3.localdomain (Postfix) with ESMTP id 47Cfs90d11zMqYkb; Wed, 13 Nov
 2019 09:46:53 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 01.C0.04135.C01DBCD5; Wed, 13 Nov 2019 18:46:52 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191113094652epcas1p255dbe5f7b1b813fb99a7a052d9297d17~Wr8x4DY3R2763427634epcas1p2i;
 Wed, 13 Nov 2019 09:46:52 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191113094652epsmtrp20876f43432e2026b982aff0b45cfd60a~Wr8x3Rz8r0325703257epsmtrp2i;
 Wed, 13 Nov 2019 09:46:52 +0000 (GMT)
X-AuditID: b6c32a36-7e3ff70000001027-d4-5dcbd10c73e8
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 BC.9D.24756.C01DBCD5; Wed, 13 Nov 2019 18:46:52 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191113094652epsmtip1b83a1dd5a07b503244f1c19eb1aa2c13~Wr8xk4Ccw0869808698epsmtip1f;
 Wed, 13 Nov 2019 09:46:52 +0000 (GMT)
Subject: Re: [PATCH] devfreq: exynos-bus: workaround dev_pm_opp_set_rate()
 errors on Exynos5422/5800 SoCs
From: Chanwoo Choi <cw00.choi@samsung.com>
To: k.konieczny@partner.samsung.com
Organization: Samsung Electronics
Message-ID: <60d9c577-128a-3ca9-2979-aa444cfb4e12@samsung.com>
Date: Wed, 13 Nov 2019 18:52:38 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <4f14d3af-e455-d05b-fc03-cba58e001f41@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrOJsWRmVeSWpSXmKPExsWy7bCmvi7PxdOxBke+2FhsnLGe1aJv339G
 i/7Hr5ktzp/fwG5xtukNu8Wmx9dYLS7vmsNm8bn3CKPFjPP7mCzWHrnLbnG7cQWbA7fHplWd
 bB6bl9R7HHy3h8mjb8sqRo/Pm+QCWKOybTJSE1NSixRS85LzUzLz0m2VvIPjneNNzQwMdQ0t
 LcyVFPISc1NtlVx8AnTdMnOALlNSKEvMKQUKBSQWFyvp29kU5ZeWpCpk5BeX2CqlFqTkFFgW
 6BUn5haX5qXrJefnWhkaGBiZAhUmZGdMWLuKtWCDRMX3/aUNjLeFuxg5OSQETCQWrDvM1sXI
 xSEksINR4vS9a6wQzidGidvnjrNAON8YJY7Mv8AK09K3dz07iC0ksJdRYt5HQ4ii94wS+1e8
 YwNJCAtkS3w7vYwZxGYT0JLY/+IGWFxEQFli8r3pzCANzAJdzBL7n14GK+IXUJS4+uMxI4jN
 K2An8XDeMRYQm0VAVWLh/oNANgeHqECExOmviRAlghInZz4BK+EUsJf40XSICcRmFhCXuPVk
 PpQtL9G8dTbYLgmBbnaJe7P2MkN84CKx4s50JghbWOLV8S3sELaUxOd3e9kg7GqJlSePsEE0
 dzBKbNkP876xxP6lk5lADmIW0JRYv0sfIqwosfP3XEaIxXwS7772sIKUSAjwSnS0CUGUKEtc
 fnAXaq2kxOL2TrYJjEqzkLwzC8kLs5C8MAth2QJGllWMYqkFxbnpqcWGBUbIkb2JEZxotcx2
 MC4653OIUYCDUYmHV2LhqVgh1sSy4srcQ4wSHMxKIrw7Kk7ECvGmJFZWpRblxxeV5qQWH2I0
 BQb2RGYp0eR8YBbIK4k3NDUyNja2MDE0MzU0VBLndVy+NFZIID2xJDU7NbUgtQimj4mDU6qB
 0WK77PmsTQUCHnG3U/90PFGfERHvHqFozZ+85H6O87eXp50WnQ+bJOl0frpO02VRg8TcnjNL
 H33p0Ghd6Lh717JtvRpKcjW1BzPe5fLc5NrotnONgpYJy5U/mof7NLr3bfVcPW9Pz8uUozM+
 TV4eqn/oB4ub1Nzq4//n9NftM53jnsLcOiWsQomlOCPRUIu5qDgRANizwHrKAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrMIsWRmVeSWpSXmKPExsWy7bCSnC7PxdOxBnseiFlsnLGe1aJv339G
 i/7Hr5ktzp/fwG5xtukNu8Wmx9dYLS7vmsNm8bn3CKPFjPP7mCzWHrnLbnG7cQWbA7fHplWd
 bB6bl9R7HHy3h8mjb8sqRo/Pm+QCWKO4bFJSczLLUov07RK4MiasXcVasEGi4vv+0gbG28Jd
 jJwcEgImEn1717N3MXJxCAnsZpRYtPE2C0RCUmLaxaPMXYwcQLawxOHDxRA1bxklzi9ZzgRS
 IyyQLfHt9DJmEJtNQEti/4sbbCC2iICyxOR705lBGpgFepgl2vc3M0F0n2WUeDBvJiNIFb+A
 osTVH4/BbF4BO4mH846BbWYRUJVYuP8gmC0qECHxfPsNqBpBiZMzn4DFOQXsJX40HQK7gllA
 XeLPvEvMELa4xK0n86Hi8hLNW2czT2AUnoWkfRaSlllIWmYhaVnAyLKKUTK1oDg3PbfYsMAw
 L7Vcrzgxt7g0L10vOT93EyM46rQ0dzBeXhJ/iFGAg1GJh1di4alYIdbEsuLK3EOMEhzMSiK8
 OypOxArxpiRWVqUW5ccXleakFh9ilOZgURLnfZp3LFJIID2xJDU7NbUgtQgmy8TBKdXA2Bcl
 L9Xx75/fx5e3Di7jOOafckLcw2Si3LNbUlV1y2azRMeucrix9eTtf87FQolNi2zLX/OXqcim
 edjndy7Me8Sg/W+Nf0WiXGrzoo7dl50D7+eeP8HErVIkop95OkY0zvbhGcXag5tPfXu+4vx6
 VrG4+ADO5dPe52+/Psl9noPvoR+P6k5dVmIpzkg01GIuKk4EAA5sYfm2AgAA
X-CMS-MailID: 20191113094652epcas1p255dbe5f7b1b813fb99a7a052d9297d17
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191008134950eucas1p15cfef5800efc10d5b18ec5eb37dde60b
References: <CGME20191008134950eucas1p15cfef5800efc10d5b18ec5eb37dde60b@eucas1p1.samsung.com>
 <20191008134923.30123-1-k.konieczny@partner.samsung.com>
 <4f14d3af-e455-d05b-fc03-cba58e001f41@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_014659_361173_466FD25E 
X-CRM114-Status: GOOD (  24.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgS2FtaWwsCgpQaW5nLgoKT24gMTAvMTAvMTkgMTE6NTAgQU0sIENoYW53b28gQ2hvaSB3cm90
ZToKPiBPbiAyMDE564WEIDEw7JuUIDA47J28IDIyOjQ5LCBrLmtvbmllY3pueUBwYXJ0bmVyLnNh
bXN1bmcuY29tIHdyb3RlOgo+PiBDb21taXQgNDI5NGE3NzliZDhkICgiUE0gLyBkZXZmcmVxOiBl
eHlub3MtYnVzOiBDb252ZXJ0IHRvIHVzZQo+PiBkZXZfcG1fb3BwX3NldF9yYXRlKCkiKSBpbnRy
b2R1Y2VkIGVycm9yczoKPj4gZXh5bm9zLWJ1czogbmV3IGJ1cyBkZXZpY2UgcmVnaXN0ZXJlZDog
c29jOmJ1c193Y29yZSAoIDg0MDAwIEtIeiB+IDQwMDAwMCBLSHopCj4+IGV4eW5vcy1idXM6IG5l
dyBidXMgZGV2aWNlIHJlZ2lzdGVyZWQ6IHNvYzpidXNfbm9jICggNjcwMDAgS0h6IH4gMTAwMDAw
IEtIeikKPj4gZXh5bm9zLWJ1czogbmV3IGJ1cyBkZXZpY2UgcmVnaXN0ZXJlZDogc29jOmJ1c19m
c3lzX2FwYiAoMTAwMDAwIEtIeiB+IDIwMDAwMCBLSHopCj4+IC4uLgo+PiBleHlub3MtYnVzIHNv
YzpidXNfd2NvcmU6IGRldl9wbV9vcHBfc2V0X3JhdGU6IGZhaWxlZCB0byBmaW5kIGN1cnJlbnQg
T1BQIGZvciBmcmVxIDUzMjAwMDAwMCAoLTM0KQo+PiBleHlub3MtYnVzIHNvYzpidXNfbm9jOiBk
ZXZfcG1fb3BwX3NldF9yYXRlOiBmYWlsZWQgdG8gZmluZCBjdXJyZW50IE9QUCBmb3IgZnJlcSAx
MTEwMDAwMDAgKC0zNCkKPj4gZXh5bm9zLWJ1cyBzb2M6YnVzX2ZzeXNfYXBiOiBkZXZfcG1fb3Bw
X3NldF9yYXRlOiBmYWlsZWQgdG8gZmluZCBjdXJyZW50IE9QUCBmb3IgZnJlcSAyMjIwMDAwMDAg
KC0zNCkKPj4KPj4gVGhleSBhcmUgY2F1c2VkIGJ5IGluY29ycmVjdCBQTEwgYXNzaWduZWQgdG8g
Y2xvY2sgc291cmNlLCB3aGljaCByZXN1bHRzCj4+IGluIGNsb2NrIHJhdGUgb3V0c2lkZSBvZiBP
UFAgcmFuZ2UuIEFkZCB3b3JrYXJvdW5kIGZvciB0aGlzIGluCj4+IGV4eW5vc19idXNfcGFyc2Vf
b2YoKSBieSBhZGp1c3RpbmcgY2xvY2sgcmF0ZSB0byB0aG9zZSBwcmVzZW50IGluIE9QUC4KPiAK
PiBJZiB0aGUgY2xvY2sgY2F1c2VkIHRoaXMgaXNzdWUsIHlvdSBjYW4gc2V0IHRoZSBpbml0aWFs
IGNsb2NrIG9uIERldmljZVRyZWUKPiB3aXRoIGFzc2lnbmVkLWNsb2NrLSogcHJvcGVydGllcy4g
QmVjYXVzZSB0aGUgcHJvYmUgdGltZSBvZiBjbG9jayBkcml2ZXIKPiBpcyBlYXJseSB0aGFuIHRo
ZSBhbnkgZGV2aWNlIGRyaXZlcnMuCj4gCj4gSXQgaXMgbm90IHByb3BlciB0byBmaXggdGhlIGNs
b2NrIGlzc3VlIG9uIG90aGVyIGRldmljZSBkcml2ZXIuCj4gSSB0aGluayB5b3UgY2FuIGZpeCBp
dCBieSB1c2luZyB0aGUgc3VwcG9ydGVkIGNsb2NrIHByb3BlcnRpZXMuCgpJcyB0aGVyZSBhbnkg
cmVwbHk/IG9yIG90aGVyIHBhdGNoIHRvIGZpeCBpdD8KCj4gCj4gCj4+Cj4+IEZpeGVzOiA0Mjk0
YTc3OWJkOGQgKCJQTSAvIGRldmZyZXE6IGV4eW5vcy1idXM6IENvbnZlcnQgdG8gdXNlIGRldl9w
bV9vcHBfc2V0X3JhdGUoKSIpCj4+IFJlcG9ydGVkLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxr
cnprQGtlcm5lbC5vcmc+Cj4+IFNpZ25lZC1vZmYtYnk6IEthbWlsIEtvbmllY3pueSA8ay5rb25p
ZWN6bnlAcGFydG5lci5zYW1zdW5nLmNvbT4KPj4gLS0tCj4+ICBkcml2ZXJzL2RldmZyZXEvZXh5
bm9zLWJ1cy5jIHwgMTQgKysrKysrKysrKystLS0KPj4gIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNl
cnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kZXZm
cmVxL2V4eW5vcy1idXMuYyBiL2RyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMKPj4gaW5kZXgg
YzgzMjY3MzI3M2EyLi4zN2JkMzRkNTYyNWIgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZGV2ZnJl
cS9leHlub3MtYnVzLmMKPj4gKysrIGIvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYwo+PiBA
QCAtMjQzLDcgKzI0Myw3IEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wYXJzZV9vZihzdHJ1Y3Qg
ZGV2aWNlX25vZGUgKm5wLAo+PiAgewo+PiAgCXN0cnVjdCBkZXZpY2UgKmRldiA9IGJ1cy0+ZGV2
Owo+PiAgCXN0cnVjdCBkZXZfcG1fb3BwICpvcHA7Cj4+IC0JdW5zaWduZWQgbG9uZyByYXRlOwo+
PiArCXVuc2lnbmVkIGxvbmcgcmF0ZSwgb3BwX3JhdGU7Cj4+ICAJaW50IHJldDsKPj4gIAo+PiAg
CS8qIEdldCB0aGUgY2xvY2sgdG8gcHJvdmlkZSBlYWNoIGJ1cyB3aXRoIHNvdXJjZSBjbG9jayAq
Lwo+PiBAQCAtMjY3LDEzICsyNjcsMjEgQEAgc3RhdGljIGludCBleHlub3NfYnVzX3BhcnNlX29m
KHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAsCj4+ICAJfQo+PiAgCj4+ICAJcmF0ZSA9IGNsa19nZXRf
cmF0ZShidXMtPmNsayk7Cj4+IC0KPj4gLQlvcHAgPSBkZXZmcmVxX3JlY29tbWVuZGVkX29wcChk
ZXYsICZyYXRlLCAwKTsKPj4gKwlvcHBfcmF0ZSA9IHJhdGU7Cj4+ICsJb3BwID0gZGV2ZnJlcV9y
ZWNvbW1lbmRlZF9vcHAoZGV2LCAmb3BwX3JhdGUsIDApOwo+PiAgCWlmIChJU19FUlIob3BwKSkg
ewo+PiAgCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBmaW5kIGRldl9wbV9vcHBcbiIpOwo+PiAg
CQlyZXQgPSBQVFJfRVJSKG9wcCk7Cj4+ICAJCWdvdG8gZXJyX29wcDsKPj4gIAl9Cj4+ICsJLyoK
Pj4gKwkgKiBGSVhNRTogVS1ib290IGxlYXZlcyBjbG9jayBzb3VyY2UgYXQgaW5jb3JyZWN0IFBM
TCwgdGhpcyByZXN1bHRzCj4+ICsJICogaW4gY2xvY2sgcmF0ZSBvdXRzaWRlIGRlZmluZWQgT1BQ
IHJhdGUuIFdvcmsgYXJvdW5kIHRoaXMgYnVnIGJ5Cj4+ICsJICogc2V0dGluZyBjbG9jayByYXRl
IHRvIHJlY29tbWVuZGVkIG9uZS4KPj4gKwkgKi8KPj4gKwlpZiAocmF0ZSA+IG9wcF9yYXRlKQo+
PiArCQljbGtfc2V0X3JhdGUoYnVzLT5jbGssIG9wcF9yYXRlKTsKPj4gKwo+PiAgCWJ1cy0+Y3Vy
cl9mcmVxID0gZGV2X3BtX29wcF9nZXRfZnJlcShvcHApOwo+PiAgCWRldl9wbV9vcHBfcHV0KG9w
cCk7Cj4+ICAKPj4KPiAKPiAKCgotLSAKQmVzdCBSZWdhcmRzLApDaGFud29vIENob2kKU2Ftc3Vu
ZyBFbGVjdHJvbmljcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
