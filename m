Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B43366A117
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 06:00:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MwkVdGw02M2ynHLrmMg3eZpNzH1xG1qtV1F7I2Qrn9E=; b=WDoDjyTZIyYvKO
	+1MfJ0/ySwlIxm9hwCk4+pxd4htjNaNr3sEZ5T8Vay16+Q1zrnp04QwlbBwmtb4jjJWAe7rKe8vA8
	PsSMgMly8hgInP/+gnmhc+s9ji9RuMUUDjJHYmMmbxkpCLI3AoDKujw+wIKYBrzk2lNhPdmh1LXv1
	aGzHVf184RibGUCIQILSkxMjpTz3YQXh0KTHH9hDHqEvPY9s9cq/CORyWuYCS3b73oajzdYV3eRFv
	/w+9CB+KvkvIW0cb50E/lS+ZCujfHJuvvqxAoMhUEgCnpp9XJW+/Mzdbsy1S6c12IdEef7ibW7FDd
	nnQinwhmv9ieZJAwKq6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnEdc-0005Pl-1U; Tue, 16 Jul 2019 04:00:24 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnEdQ-0004xT-3p
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 04:00:13 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20190716040004epoutp0150e7b0d3f86a4edb81324d2ead53d924~xxzuUJBYs0157301573epoutp01a
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 04:00:04 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20190716040004epoutp0150e7b0d3f86a4edb81324d2ead53d924~xxzuUJBYs0157301573epoutp01a
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563249604;
 bh=aDNCnD/M4XVzG7WU9bomWyyx8bcIFIBz3UHjVIKdLFc=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=Wx52VE08m89iW/5HojH/YnU41027xgSdd8+npEliMjZPWAPKZ4ZfdCEZR5FpYJkda
 6HOLcb0XpjlxE2wfGyIRGQ8KIRq+3ewCmicg7zAT+zjzgJVNLeK4oBnhcLPlyQzioI
 MiK1pdRsgXT8nQtpyn64H9OZbWaIj0dBCZllU3s4=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190716040003epcas1p1723a366f058fe1abe3f9c547fa1164f2~xxztvnvT00742907429epcas1p1j;
 Tue, 16 Jul 2019 04:00:03 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.40.157]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 45nmrJ5WcyzMqYkV; Tue, 16 Jul
 2019 04:00:00 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 F8.A1.04085.0CB4D2D5; Tue, 16 Jul 2019 13:00:00 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTPA id
 20190716040000epcas1p3e60e79eb68e7c9cd3343774adf33f45c~xxzqmUrv50653406534epcas1p3_;
 Tue, 16 Jul 2019 04:00:00 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190716040000epsmtrp2a685f93ed63e20804bf50c09e22a394c~xxzqlasX92813328133epsmtrp2v;
 Tue, 16 Jul 2019 04:00:00 +0000 (GMT)
X-AuditID: b6c32a39-cebff70000000ff5-24-5d2d4bc05c6c
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 48.CD.03706.0CB4D2D5; Tue, 16 Jul 2019 13:00:00 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190716040000epsmtip2b4c2f3e4ec98676416a39eb36a9e1710~xxzqVYIOv0528005280epsmtip2R;
 Tue, 16 Jul 2019 04:00:00 +0000 (GMT)
Subject: Re: [PATCH v2 1/4] opp: core: add regulators enable and disable
To: Kamil Konieczny <k.konieczny@partner.samsung.com>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <9acc7dd0-614b-ccd3-a485-eeca3dab494b@samsung.com>
Date: Tue, 16 Jul 2019 13:03:06 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715120416.3561-2-k.konieczny@partner.samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrHJsWRmVeSWpSXmKPExsWy7bCmru4Bb91Yg4fP1C02zljPajH/yDlW
 i759/xkt+h+/ZrY4f34Du8XZpjfsFpseX2O1uLxrDpvF594jjBYzzu9jslh75C67xdLrF5ks
 bjeuYLN48+Msk0Xr3iPsFv+ubWSx2PzgGJuDoMeaeWsYPTat6mTz2Lyk3uPguz1MHn1bVjF6
 HL+xncnj8ya5APaobJuM1MSU1CKF1Lzk/JTMvHRbJe/geOd4UzMDQ11DSwtzJYW8xNxUWyUX
 nwBdt8wcoA+UFMoSc0qBQgGJxcVK+nY2RfmlJakKGfnFJbZKqQUpOQWWBXrFibnFpXnpesn5
 uVaGBgZGpkCFCdkZX7dtZy54JVQx7bZLA+Mk/i5GTg4JAROJ85NvMHYxcnEICexglNgyuZcJ
 JCEk8IlRYtJnUYjEN0aJzadOscN09E09yAaR2Mso8WL6WmaIjveMEncuW4PYwgIeEsevPGcD
 sUUETCUerW5gBWlgFrjMIjHt0SRWkASbgJbE/hc3wIr4BRQlrv54zAhi8wrYSTw7eZ8FxGYR
 UJU4emsDmC0qECFx6sg8FogaQYmTM5+A2ZwCLhKNx06AzWQWEJe49WQ+E4QtL9G8dTYzyGIJ
 gUPsEi9+rQBaxgHkuEh8b1OH+EZY4tXxLVCfSUl8freXDcKullh58ggbRG8HMFz2X2CFSBhL
 7F86mQlkDrOApsT6XfoQYUWJnb/nMkLs5ZN497WHFWIVr0RHmxBEibLE5Qd3mSBsSYnF7Z1s
 ExiVZiH5ZhaSD2Yh+WAWwrIFjCyrGMVSC4pz01OLDQtMkeN6EyM4bWtZ7mA8ds7nEKMAB6MS
 D++JPTqxQqyJZcWVuYcYJTiYlUR4bb9qxwrxpiRWVqUW5ccXleakFh9iNAUG9kRmKdHkfGBO
 ySuJNzQ1MjY2tjAxNDM1NFQS5533RzNWSCA9sSQ1OzW1ILUIpo+Jg1OqgXHqgcOqbG6BU5vK
 DHhPfDzxzK55Z+/i+cU/Nq489YTRJKLtwyG+7X4b7RySdNZE1FXlss5oda4/25G47TDj9aBG
 r7y0h+pzKgW/uGt9PpN5v0n0VLP+nISzPtHfHtx5Uf/f1C7dTL9RNO6C+M2cjeomx2ojLpnJ
 fBN+ZyvVf/CigVRBwaH/J5VYijMSDbWYi4oTAeopGYfxAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrJIsWRmVeSWpSXmKPExsWy7bCSvO4Bb91YgxtHBS02zljPajH/yDlW
 i759/xkt+h+/ZrY4f34Du8XZpjfsFpseX2O1uLxrDpvF594jjBYzzu9jslh75C67xdLrF5ks
 bjeuYLN48+Msk0Xr3iPsFv+ubWSx2PzgGJuDoMeaeWsYPTat6mTz2Lyk3uPguz1MHn1bVjF6
 HL+xncnj8ya5APYoLpuU1JzMstQifbsEroyv27YzF7wSqph226WBcRJ/FyMnh4SAiUTf1INs
 ILaQwG5GiY9XRCHikhLTLh5l7mLkALKFJQ4fLu5i5AIqecsoMf1oI1i9sICHxPErz8FsEQFT
 iUerG1hBipgFrrJInN84B2roRUaJKY8tQWw2AS2J/S9ugMX5BRQlrv54zAhi8wrYSTw7eZ8F
 xGYRUJU4emsDmC0qECEx6dpOFogaQYmTM5+A2ZwCLhKNx06wgtjMAuoSf+ZdYoawxSVuPZnP
 BGHLSzRvnc08gVF4FpL2WUhaZiFpmYWkZQEjyypGydSC4tz03GLDAsO81HK94sTc4tK8dL3k
 /NxNjOAI1tLcwXh5SfwhRgEORiUe3hN7dGKFWBPLiitzDzFKcDArifDaftWOFeJNSaysSi3K
 jy8qzUktPsQozcGiJM77NO9YpJBAemJJanZqakFqEUyWiYNTqoExvZ95xu1zoWcbrLLllzUY
 r2XdyBhbYnhdpdFazkqxYPPacOXCJeqSzq/ttzc9snx5Otfw0uZ/vQw7NII5uM+vqykVb85o
 cX5R/UpknZOknnTENYP2o0Gy6keezHA8abRU7gJzAnf48VxN7sntpbO/S0y4z5he7MzDbMPp
 vP7Qjggv13+VukosxRmJhlrMRcWJAIUiIRLcAgAA
X-CMS-MailID: 20190716040000epcas1p3e60e79eb68e7c9cd3343774adf33f45c
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190715120430eucas1p19dddcc93756e6a110d3476229f9428b3
References: <20190715120416.3561-1-k.konieczny@partner.samsung.com>
 <CGME20190715120430eucas1p19dddcc93756e6a110d3476229f9428b3@eucas1p1.samsung.com>
 <20190715120416.3561-2-k.konieczny@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_210012_487694_9D7185B4 
X-CRM114-Status: GOOD (  29.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Stephen Boyd <sboyd@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, devicetree@vger.kernel.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgS2FtaWwsCgpPbiAxOS4gNy4gMTUuIOyYpO2bhCA5OjA0LCBLYW1pbCBLb25pZWN6bnkgd3Jv
dGU6Cj4gQWRkIGVuYWJsZSByZWd1bGF0b3JzIHRvIGRldl9wbV9vcHBfc2V0X3JlZ3VsYXRvcnMo
KSBhbmQgZGlzYWJsZQo+IHJlZ3VsYXRvcnMgdG8gZGV2X3BtX29wcF9wdXRfcmVndWxhdG9ycygp
LiBUaGlzIHByZXBhcmVzIGZvcgo+IGNvbnZlcnRpbmcgZXh5bm9zLWJ1cyBkZXZmcmVxIGRyaXZl
ciB0byB1c2UgZGV2X3BtX29wcF9zZXRfcmF0ZSgpLgoKSU1ITywgaXQgaXMgbm90IHByb3BlciB0
byBtZW50aW9uIHRoZSBzcGVjaWZpYyBkcml2ZXIgbmFtZS4KSWYgeW91IGV4cGxhaW4gdGhlIHJl
YXNvbiB3aHkgZW5hYmxlIHRoZSByZWd1bGF0b3IgYmVmb3JlIHVzaW5nIGl0LAppdCBpcyBlbm91
Z2ggZGVzY3JpcHRpb24uCgo+IAo+IFNpZ25lZC1vZmYtYnk6IEthbWlsIEtvbmllY3pueSA8ay5r
b25pZWN6bnlAcGFydG5lci5zYW1zdW5nLmNvbT4KPiAtLQo+IENoYW5nZXMgaW4gdjI6Cj4gCj4g
LSBtb3ZlIHJlZ3VsYXRvciBlbmFibGUgYW5kIGRpc2FibGUgaW50byBsb29wCj4gCj4gLS0tCj4g
IGRyaXZlcnMvb3BwL2NvcmUuYyB8IDE4ICsrKysrKysrKysrKysrKy0tLQo+ICAxIGZpbGUgY2hh
bmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9vcHAvY29yZS5jIGIvZHJpdmVycy9vcHAvY29yZS5jCj4gaW5kZXggMGU3NzAzZmU3
MzNmLi4wNjljNWNmODgyN2UgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9vcHAvY29yZS5jCj4gKysr
IGIvZHJpdmVycy9vcHAvY29yZS5jCj4gQEAgLTE1NzAsNiArMTU3MCwxMCBAQCBzdHJ1Y3Qgb3Bw
X3RhYmxlICpkZXZfcG1fb3BwX3NldF9yZWd1bGF0b3JzKHN0cnVjdCBkZXZpY2UgKmRldiwKPiAg
CQkJZ290byBmcmVlX3JlZ3VsYXRvcnM7Cj4gIAkJfQo+ICAKPiArCQlyZXQgPSByZWd1bGF0b3Jf
ZW5hYmxlKHJlZyk7Cj4gKwkJaWYgKHJldCA8IDApCj4gKwkJCWdvdG8gZGlzYWJsZTsKPiArCj4g
IAkJb3BwX3RhYmxlLT5yZWd1bGF0b3JzW2ldID0gcmVnOwo+ICAJfQo+ICAKPiBAQCAtMTU4Miw5
ICsxNTg2LDE1IEBAIHN0cnVjdCBvcHBfdGFibGUgKmRldl9wbV9vcHBfc2V0X3JlZ3VsYXRvcnMo
c3RydWN0IGRldmljZSAqZGV2LAo+ICAKPiAgCXJldHVybiBvcHBfdGFibGU7Cj4gIAo+ICtkaXNh
YmxlOgo+ICsJcmVndWxhdG9yX3B1dChyZWcpOwo+ICsJLS1pOwo+ICsKPiAgZnJlZV9yZWd1bGF0
b3JzOgo+IC0Jd2hpbGUgKGkgIT0gMCkKPiAtCQlyZWd1bGF0b3JfcHV0KG9wcF90YWJsZS0+cmVn
dWxhdG9yc1stLWldKTsKPiArCWZvciAoOyBpID49IDA7IC0taSkgewo+ICsJCXJlZ3VsYXRvcl9k
aXNhYmxlKG9wcF90YWJsZS0+cmVndWxhdG9yc1tpXSk7Cj4gKwkJcmVndWxhdG9yX3B1dChvcHBf
dGFibGUtPnJlZ3VsYXRvcnNbaV0pOwo+ICsJfQo+ICAKPiAgCWtmcmVlKG9wcF90YWJsZS0+cmVn
dWxhdG9ycyk7Cj4gIAlvcHBfdGFibGUtPnJlZ3VsYXRvcnMgPSBOVUxMOwo+IEBAIC0xNjEwLDgg
KzE2MjAsMTAgQEAgdm9pZCBkZXZfcG1fb3BwX3B1dF9yZWd1bGF0b3JzKHN0cnVjdCBvcHBfdGFi
bGUgKm9wcF90YWJsZSkKPiAgCS8qIE1ha2Ugc3VyZSB0aGVyZSBhcmUgbm8gY29uY3VycmVudCBy
ZWFkZXJzIHdoaWxlIHVwZGF0aW5nIG9wcF90YWJsZSAqLwo+ICAJV0FSTl9PTighbGlzdF9lbXB0
eSgmb3BwX3RhYmxlLT5vcHBfbGlzdCkpOwo+ICAKPiAtCWZvciAoaSA9IG9wcF90YWJsZS0+cmVn
dWxhdG9yX2NvdW50IC0gMTsgaSA+PSAwOyBpLS0pCj4gKwlmb3IgKGkgPSBvcHBfdGFibGUtPnJl
Z3VsYXRvcl9jb3VudCAtIDE7IGkgPj0gMDsgaS0tKSB7Cj4gKwkJcmVndWxhdG9yX2Rpc2FibGUo
b3BwX3RhYmxlLT5yZWd1bGF0b3JzW2ldKTsKPiAgCQlyZWd1bGF0b3JfcHV0KG9wcF90YWJsZS0+
cmVndWxhdG9yc1tpXSk7Cj4gKwl9Cj4gIAo+ICAJX2ZyZWVfc2V0X29wcF9kYXRhKG9wcF90YWJs
ZSk7Cj4gIAo+IAoKSSBhZ3JlZSB0byBlbmFibGUgdGhlIHJlZ3VsYXRvciBiZWZvcmUgdXNpbmcg
aXQuClRoZSBib290bG9hZGVyIG1pZ2h0IG5vdCBlbmFibGUgdGhlIHJlZ3VsYXRvcnMKYW5kIHRo
ZSBrZXJuZWwgbmVlZCB0byBlbmFibGUgcmVndWxhdG9yIGluIG9yZGVyIHRvIGluY3JlYXNlCnRo
ZSByZWZlcmVuY2UgY291bnQgZXhwbGljaXRseSBldmVudCBpZiBib290bG9hZGVyIGVuYWJsZXMg
aXQuCgpSZXZpZXdlZC1ieTogQ2hhbndvbyBDaG9pIDxjdzAwLmNob2lAc2Ftc3VuZy5jb20+Cgot
LSAKQmVzdCBSZWdhcmRzLApDaGFud29vIENob2kKU2Ftc3VuZyBFbGVjdHJvbmljcwoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
