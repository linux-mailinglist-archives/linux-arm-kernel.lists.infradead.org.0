Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5F574A87
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 11:56:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YFtzLCHQlI3GeDHcfmelQh1YIEN3hi9CgLAlEkn/AxE=; b=djiYBMHcecJ78a
	XicGuXe853SLppX93tMMddwSErY7tpKcUaHuhSYjhMXAcp0XpkxORJu47Uq+W0zmeaoaJg/yFPnFR
	9mGzARMShsOuzmZLeSX9EXnLK24qiNqydtD1ps4wooSI30bhMP4EtOpTHMPJ1LP/NJM/rHaaG+ccP
	dl3B69//nVYmVzcfvKwpfeJ2psci2nIM/2l8FetvJYUDtESpabyubPU6tsRuEZd6RLHLkPZ9r3RB3
	+pqHWhCr9SvaSC1RItSzwibGslx3dzeFhvDQ72MmzqiPATkVtZZ6+iz32QaSop2BNQ2Tgolo4hE9R
	ncjCQ8vhMRUH5kZ1I+QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqaTf-0000pk-F8; Thu, 25 Jul 2019 09:55:59 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqaTS-0000or-B8
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 09:55:48 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20190725095542epoutp047decf9044ecf2d2d3ef54622b390c6c9~0ndzW6qEn0893508935epoutp04Q
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 09:55:42 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20190725095542epoutp047decf9044ecf2d2d3ef54622b390c6c9~0ndzW6qEn0893508935epoutp04Q
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1564048542;
 bh=APvyhy0eQAA2wXp8WTSoXGWXI9/At5nyAp+5gePsgVg=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=h29K8wMHJjYi+fuUrkwfTfFMLgzeOV52qOxzjXWKSsnMJrADIsNojY5pZWFLpkVCh
 StoScMhnOUGugLejS72qOZp0f2ch+GHsv8oJlIs91Mbm7wLD5QgOGftC7/lA1UrkXt
 5jBkEm65QeP9piuf1D2JSzmTjGAHWXiD4U/4gDFs=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190725095541epcas1p23ae99ffd69957e3dd1bbbd877aacb535~0ndytmimj0831308313epcas1p2C;
 Thu, 25 Jul 2019 09:55:41 +0000 (GMT)
Received: from epsmges1p2.samsung.com (unknown [182.195.40.157]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 45vSJW2gBtzMqYkY; Thu, 25 Jul
 2019 09:55:39 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
 epsmges1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 15.22.04075.B9C793D5; Thu, 25 Jul 2019 18:55:39 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTPA id
 20190725095538epcas1p323a4e0d70b4a906ffb5927b2e43dc00f~0ndwDjd_B0042800428epcas1p3T;
 Thu, 25 Jul 2019 09:55:38 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190725095538epsmtrp2fc287fb53405ebd9e0d5370c0341322b~0ndv-668u1824718247epsmtrp2a;
 Thu, 25 Jul 2019 09:55:38 +0000 (GMT)
X-AuditID: b6c32a36-b49ff70000000feb-5f-5d397c9baee1
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 F9.7C.03706.A9C793D5; Thu, 25 Jul 2019 18:55:38 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190725095538epsmtip2f38872b5e416bf14678ccd1a705babdf~0ndvtvIEv1344113441epsmtip26;
 Thu, 25 Jul 2019 09:55:38 +0000 (GMT)
Subject: Re: [PATCH v3 1/5] devfreq: exynos-bus: correct clock enable sequence
To: k.konieczny@partner.samsung.com
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <9c29db92-2452-0ff3-3ffa-d861e4327bc9@samsung.com>
Date: Thu, 25 Jul 2019 18:58:43 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190719150535.15501-2-k.konieczny@partner.samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrIJsWRmVeSWpSXmKPExsWy7bCmge7sGstYg/0XRCw2zljPajH/yDlW
 i759/xkt+h+/ZrY4f34Du8XZpjfsFpseX2O1uLxrDpvF594jjBYzzu9jslh75C67xdLrF5ks
 bjeuYLN48+Msk0Xr3iPsFv+ubWSx2PzgGJuDoMeaeWsYPTat6mTz2Lyk3uPguz1MHn1bVjF6
 HL+xncnj8ya5APaobJuM1MSU1CKF1Lzk/JTMvHRbJe/geOd4UzMDQ11DSwtzJYW8xNxUWyUX
 nwBdt8wcoA+UFMoSc0qBQgGJxcVK+nY2RfmlJakKGfnFJbZKqQUpOQWWBXrFibnFpXnpesn5
 uVaGBgZGpkCFCdkZ/S9XMxVcU6n4e/YqUwPjZZkuRg4OCQETiQ+T5bsYuTiEBHYwSix5eZYV
 wvnEKDHxyzZmCOcbo0T/1MVAGU6wjjmrVzBCJPYySrw+fxzKec8o8f7fU7AqYYEAiV8LtjKB
 2CICyhKT700HG8UscJlFYtqjSWBFbAJaEvtf3GADsfkFFCWu/njMCGLzCthJ7H61BizOIqAq
 0bLmK9ggUYEIiU8PDrNC1AhKnJz5hAXE5hRwlfi/FGIxs4C4xK0n85kgbHmJ5q2zwRZLCJxj
 l9je3Qz1g4vEvHkwtrDEq+Nb2CFsKYnP7/ayQdjVEitPHmGDaO5glNiy/wJUg7HE/qWTmUDB
 xyygKbF+lz5EWFFi5++5jBCL+STefe1hhYQwr0RHmxBEibLE5Qd3mSBsSYnF7Z1sExiVZiF5
 ZxaSF2YheWEWwrIFjCyrGMVSC4pz01OLDQuMkKN7EyM4eWuZ7WBcdM7nEKMAB6MSDy9HkkWs
 EGtiWXFl7iFGCQ5mJRHewAazWCHelMTKqtSi/Pii0pzU4kOMpsDQnsgsJZqcD8wseSXxhqZG
 xsbGFiaGZqaGhkrivAt/AM0RSE8sSc1OTS1ILYLpY+LglGpglGZ5qzav4bVdHE9+2RHfqdcs
 P/X85C35yV7r8cS9e59A0uRDG3gld9d++KvwrY3nV+uUytJczkK/v8/+rhVl27Yg7PPFPRll
 xb47uBbqPih2TgizOudXxF0ft8utrcFzwdQtsqssDx/mlTsZdNat02Kuk3bx7VC9LOkvZ6M7
 U6/809i+yyZZiaU4I9FQi7moOBEAFCo0ovQDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrDIsWRmVeSWpSXmKPExsWy7bCSvO6sGstYgy/PNC02zljPajH/yDlW
 i759/xkt+h+/ZrY4f34Du8XZpjfsFpseX2O1uLxrDpvF594jjBYzzu9jslh75C67xdLrF5ks
 bjeuYLN48+Msk0Xr3iPsFv+ubWSx2PzgGJuDoMeaeWsYPTat6mTz2Lyk3uPguz1MHn1bVjF6
 HL+xncnj8ya5APYoLpuU1JzMstQifbsEroz+l6uZCq6pVPw9e5WpgfGyTBcjJ4eEgInEnNUr
 GLsYuTiEBHYzSrxd38oKkZCUmHbxKHMXIweQLSxx+HAxRM1bRonfy2Yxg9QIC/hJ3JryF6xe
 REBZYvK96cwgRcwCV1kkzm+cwwbRcZlRYumt+ewgVWwCWhL7X9xgA7H5BRQlrv54zAhi8wrY
 Sex+tQYsziKgKtGy5isTiC0qECFxeMcsqBpBiZMzn7CA2JwCrhL/lz4F28wsoC7xZ94lZghb
 XOLWk/lMELa8RPPW2cwTGIVnIWmfhaRlFpKWWUhaFjCyrGKUTC0ozk3PLTYsMMxLLdcrTswt
 Ls1L10vOz93ECI5jLc0djJeXxB9iFOBgVOLh3RBvESvEmlhWXJl7iFGCg1lJhDewwSxWiDcl
 sbIqtSg/vqg0J7X4EKM0B4uSOO/TvGORQgLpiSWp2ampBalFMFkmDk6pBkauuJ+VcxmmnDwX
 w/aWc1G75f1F/YzuHxVSxHK2FCmrea0/W7TwbvPB5SVPKn+ILHa7wMt77tGLwD1Gk1UrPC8U
 eu6OPeZ7f4VRqGZ98aHzzG75yzLy38ka6Hpvfu67dcd32asffl1aYhprkXdYSmm9yWnBDbe+
 /Ky3Eqo6n/hM+431tDMTbT8rsRRnJBpqMRcVJwIAF0CQiN8CAAA=
X-CMS-MailID: 20190725095538epcas1p323a4e0d70b4a906ffb5927b2e43dc00f
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190719150553eucas1p1665462f3fc0e06fc9c082e258be3a851
References: <20190719150535.15501-1-k.konieczny@partner.samsung.com>
 <CGME20190719150553eucas1p1665462f3fc0e06fc9c082e258be3a851@eucas1p1.samsung.com>
 <20190719150535.15501-2-k.konieczny@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_025546_785440_33EA3BE8 
X-CRM114-Status: GOOD (  28.44  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

SGkgS2FtaWwsCgpPbiAxOS4gNy4gMjAuIOyYpOyghCAxMjowNSwgay5rb25pZWN6bnlAcGFydG5l
ci5zYW1zdW5nLmNvbSB3cm90ZToKPiBSZWd1bGF0b3JzIHNob3VsZCBiZSBlbmFibGVkIGJlZm9y
ZSBjbG9ja3MgdG8gYXZvaWQgaC93IGhhbmcuIFRoaXMKPiByZXF1aXJlIGNoYW5nZSBpbiBleHlu
b3NfYnVzX3Byb2JlKCkgdG8gbW92ZSBleHlub3NfYnVzX3BhcnNlX29mKCkKPiBhZnRlciBleHlu
b3NfYnVzX3BhcmVudF9wYXJzZV9vZigpIGFuZCBjaGFuZ2UgaW4gZW5hYmxpbmcgc2VxdWVuY2UK
PiBvZiByZWd1bGF0b3IgYW5kIGNsb2NrIGluIGV4eW5vc19idXNfcGFyc2Vfb2YoKS4gU2ltaWxh
ciBjaGFuZ2UgaXMKPiBuZWVkZWQgaW4gZXh5bm9zX2J1c19leGl0KCkgd2hlcmUgY2xvY2sgc2hv
dWxkIGJlIGRpc2FibGVkIGZpcnN0Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEthbWlsIEtvbmllY3pu
eSA8ay5rb25pZWN6bnlAcGFydG5lci5zYW1zdW5nLmNvbT4KPiAtLS0KPiBUaGlzIHBhdGNoIGlz
IG5ldyB0byB0aGlzIHNlcmllcy4KPiAKPiAtLS0KPiAgZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1i
dXMuYyB8IDU4ICsrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLQo+ICAxIGZpbGUg
Y2hhbmdlZCwgMzIgaW5zZXJ0aW9ucygrKSwgMjYgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMgYi9kcml2ZXJzL2RldmZyZXEvZXh5bm9z
LWJ1cy5jCj4gaW5kZXggNDg2Y2M1YjQyMmYxLi5mMzkxMDQ0YWEzOWQgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYwo+ICsrKyBiL2RyaXZlcnMvZGV2ZnJlcS9leHlu
b3MtYnVzLmMKPiBAQCAtMTk0LDExICsxOTQsMTEgQEAgc3RhdGljIHZvaWQgZXh5bm9zX2J1c19l
eGl0KHN0cnVjdCBkZXZpY2UgKmRldikKPiAgCWlmIChyZXQgPCAwKQo+ICAJCWRldl93YXJuKGRl
diwgImZhaWxlZCB0byBkaXNhYmxlIHRoZSBkZXZmcmVxLWV2ZW50IGRldmljZXNcbiIpOwo+ICAK
PiArCWNsa19kaXNhYmxlX3VucHJlcGFyZShidXMtPmNsayk7Cj4gIAlpZiAoYnVzLT5yZWd1bGF0
b3IpCj4gIAkJcmVndWxhdG9yX2Rpc2FibGUoYnVzLT5yZWd1bGF0b3IpOwo+ICAKPiAgCWRldl9w
bV9vcHBfb2ZfcmVtb3ZlX3RhYmxlKGRldik7Cj4gLQljbGtfZGlzYWJsZV91bnByZXBhcmUoYnVz
LT5jbGspOwo+ICB9Cj4gIAo+ICAvKgo+IEBAIC0zMjYsOCArMzI2LDcgQEAgc3RhdGljIGludCBl
eHlub3NfYnVzX3BhcmVudF9wYXJzZV9vZihzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wLAo+ICAJcmV0
dXJuIHJldDsKPiAgfQo+ICAKPiAtc3RhdGljIGludCBleHlub3NfYnVzX3BhcnNlX29mKHN0cnVj
dCBkZXZpY2Vfbm9kZSAqbnAsCj4gLQkJCSAgICAgIHN0cnVjdCBleHlub3NfYnVzICpidXMpCj4g
K3N0YXRpYyBpbnQgZXh5bm9zX2J1c19wYXJzZV9vZihzdHJ1Y3QgZXh5bm9zX2J1cyAqYnVzKQo+
ICB7Cj4gIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSBidXMtPmRldjsKPiAgCXN0cnVjdCBkZXZfcG1f
b3BwICpvcHA7Cj4gQEAgLTM0MSwzNiArMzQwLDM1IEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19w
YXJzZV9vZihzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wLAo+ICAJCXJldHVybiBQVFJfRVJSKGJ1cy0+
Y2xrKTsKPiAgCX0KPiAgCj4gLQlyZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUoYnVzLT5jbGspOwo+
ICsJLyogR2V0IHRoZSBmcmVxIGFuZCB2b2x0YWdlIGZyb20gT1BQIHRhYmxlIHRvIHNjYWxlIHRo
ZSBidXMgZnJlcSAqLwo+ICsJcmV0ID0gZGV2X3BtX29wcF9vZl9hZGRfdGFibGUoZGV2KTsKPiAg
CWlmIChyZXQgPCAwKSB7Cj4gLQkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gZ2V0IGVuYWJsZSBj
bG9ja1xuIik7Cj4gKwkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gZ2V0IE9QUCB0YWJsZVxuIik7
Cj4gIAkJcmV0dXJuIHJldDsKPiAgCX0KPiAgCj4gLQkvKiBHZXQgdGhlIGZyZXEgYW5kIHZvbHRh
Z2UgZnJvbSBPUFAgdGFibGUgdG8gc2NhbGUgdGhlIGJ1cyBmcmVxICovCj4gLQlyZXQgPSBkZXZf
cG1fb3BwX29mX2FkZF90YWJsZShkZXYpOwo+ICsJcmV0ID0gY2xrX3ByZXBhcmVfZW5hYmxlKGJ1
cy0+Y2xrKTsKPiAgCWlmIChyZXQgPCAwKSB7Cj4gLQkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8g
Z2V0IE9QUCB0YWJsZVxuIik7Cj4gKwkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gZW5hYmxlIGNs
b2NrXG4iKTsKPiAgCQlnb3RvIGVycl9jbGs7Cj4gIAl9Cj4gLQo+ICAJcmF0ZSA9IGNsa19nZXRf
cmF0ZShidXMtPmNsayk7Cj4gIAo+ICAJb3BwID0gZGV2ZnJlcV9yZWNvbW1lbmRlZF9vcHAoZGV2
LCAmcmF0ZSwgMCk7Cj4gIAlpZiAoSVNfRVJSKG9wcCkpIHsKPiAgCQlkZXZfZXJyKGRldiwgImZh
aWxlZCB0byBmaW5kIGRldl9wbV9vcHBcbiIpOwo+ICAJCXJldCA9IFBUUl9FUlIob3BwKTsKPiAt
CQlnb3RvIGVycl9vcHA7Cj4gKwkJZ290byBlcnI7Cj4gIAl9Cj4gIAlidXMtPmN1cnJfZnJlcSA9
IGRldl9wbV9vcHBfZ2V0X2ZyZXEob3BwKTsKPiAgCWRldl9wbV9vcHBfcHV0KG9wcCk7Cj4gIAo+
ICAJcmV0dXJuIDA7Cj4gIAo+IC1lcnJfb3BwOgo+IC0JZGV2X3BtX29wcF9vZl9yZW1vdmVfdGFi
bGUoZGV2KTsKPiAtZXJyX2NsazoKPiArZXJyOgo+ICAJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKGJ1
cy0+Y2xrKTsKPiArZXJyX2NsazoKPiArCWRldl9wbV9vcHBfb2ZfcmVtb3ZlX3RhYmxlKGRldik7
Cj4gIAo+ICAJcmV0dXJuIHJldDsKPiAgfQo+IEBAIC0zODYsNiArMzg0LDcgQEAgc3RhdGljIGlu
dCBleHlub3NfYnVzX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAlzdHJ1
Y3QgZXh5bm9zX2J1cyAqYnVzOwo+ICAJaW50IHJldCwgbWF4X3N0YXRlOwo+ICAJdW5zaWduZWQg
bG9uZyBtaW5fZnJlcSwgbWF4X2ZyZXE7Cj4gKwlib29sIHBhc3NpdmUgPSBmYWxzZTsKPiAgCj4g
IAlpZiAoIW5wKSB7Cj4gIAkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gZmluZCBkZXZpY2V0cmVl
IG5vZGVcbiIpOwo+IEBAIC0zOTksMjcgKzM5OCwzMSBAQCBzdGF0aWMgaW50IGV4eW5vc19idXNf
cHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgCWJ1cy0+ZGV2ID0gJnBkZXYt
PmRldjsKPiAgCXBsYXRmb3JtX3NldF9kcnZkYXRhKHBkZXYsIGJ1cyk7Cj4gIAo+IC0JLyogUGFy
c2UgdGhlIGRldmljZS10cmVlIHRvIGdldCB0aGUgcmVzb3VyY2UgaW5mb3JtYXRpb24gKi8KPiAt
CXJldCA9IGV4eW5vc19idXNfcGFyc2Vfb2YobnAsIGJ1cyk7Cj4gLQlpZiAocmV0IDwgMCkKPiAt
CQlyZXR1cm4gcmV0Owo+IC0KPiAgCXByb2ZpbGUgPSBkZXZtX2t6YWxsb2MoZGV2LCBzaXplb2Yo
KnByb2ZpbGUpLCBHRlBfS0VSTkVMKTsKPiAtCWlmICghcHJvZmlsZSkgewo+IC0JCXJldCA9IC1F
Tk9NRU07Cj4gLQkJZ290byBlcnI7Cj4gLQl9Cj4gKwlpZiAoIXByb2ZpbGUpCj4gKwkJcmV0dXJu
IC1FTk9NRU07Cj4gIAo+ICAJbm9kZSA9IG9mX3BhcnNlX3BoYW5kbGUoZGV2LT5vZl9ub2RlLCAi
ZGV2ZnJlcSIsIDApOwo+ICAJaWYgKG5vZGUpIHsKPiAgCQlvZl9ub2RlX3B1dChub2RlKTsKPiAt
CQlnb3RvIHBhc3NpdmU7Cj4gKwkJcGFzc2l2ZSA9IHRydWU7Cj4gIAl9IGVsc2Ugewo+ICAJCXJl
dCA9IGV4eW5vc19idXNfcGFyZW50X3BhcnNlX29mKG5wLCBidXMpOwo+ICsJCWlmIChyZXQgPCAw
KQo+ICsJCQlyZXR1cm4gcmV0Owo+ICAJfQo+ICAKPiAtCWlmIChyZXQgPCAwKQo+IC0JCWdvdG8g
ZXJyOwo+ICsJLyogUGFyc2UgdGhlIGRldmljZS10cmVlIHRvIGdldCB0aGUgcmVzb3VyY2UgaW5m
b3JtYXRpb24gKi8KPiArCXJldCA9IGV4eW5vc19idXNfcGFyc2Vfb2YoYnVzKTsKPiArCWlmIChy
ZXQgPCAwKSB7Cj4gKwkJaWYgKCFwYXNzaXZlKQo+ICsJCQlyZWd1bGF0b3JfZGlzYWJsZShidXMt
PnJlZ3VsYXRvcik7Cj4gKwo+ICsJCXJldHVybiByZXQ7Cj4gKwl9Cj4gKwo+ICsJaWYgKHBhc3Np
dmUpCj4gKwkJZ290byBwYXNzaXZlOwo+ICAKPiAgCS8qIEluaXRpYWxpemUgdGhlIHN0cnVjdCBw
cm9maWxlIGFuZCBnb3Zlcm5vciBkYXRhIGZvciBwYXJlbnQgZGV2aWNlICovCj4gIAlwcm9maWxl
LT5wb2xsaW5nX21zID0gNTA7Cj4gQEAgLTUwOCw4ICs1MTEsMTEgQEAgc3RhdGljIGludCBleHlu
b3NfYnVzX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAlyZXR1cm4gMDsK
PiAgCj4gIGVycjoKPiAtCWRldl9wbV9vcHBfb2ZfcmVtb3ZlX3RhYmxlKGRldik7Cj4gIAljbGtf
ZGlzYWJsZV91bnByZXBhcmUoYnVzLT5jbGspOwo+ICsJaWYgKCFwYXNzaXZlKQo+ICsJCXJlZ3Vs
YXRvcl9kaXNhYmxlKGJ1cy0+cmVndWxhdG9yKTsKPiArCj4gKwlkZXZfcG1fb3BwX29mX3JlbW92
ZV90YWJsZShkZXYpOwo+ICAKPiAgCXJldHVybiByZXQ7Cj4gIH0KPiAKCkFja2VkLWJ5OiBDaGFu
d29vIENob2kgPGN3MDAuY2hvaUBzYW1zdW5nLmNvbT4KCi0tIApCZXN0IFJlZ2FyZHMsCkNoYW53
b28gQ2hvaQpTYW1zdW5nIEVsZWN0cm9uaWNzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
