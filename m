Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28484D5B95
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 08:42:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AhN5O4XWDLxUe9UovfwP/ZMOXX4u17c3EEhCfRfbREM=; b=XUSsyoRE90SPMC
	9iGvDP0TgkAETrEf1sajBwFFSdgdepahsxXyxdsPILPG6QPu9Y8LX7O9wu7kC/HsM1mAuURytj/lF
	DmvPxqRRsWmt9SodyR/Zl/ntVbrHLSmGbk4frLorPFUYjojKMJADtlGVhwcMQSMeeE9EEg5K3n2rr
	jvq8mCAjsWv69A8HZjxJXhe3Q046Bto8aHqdoFC9QDfwdq9OOvgNbVpIZp8WTL3NSd4+pEhRIYH0C
	taPzuGUEVQP6Re9hM3MkwX+/gPAEC3hKUH4E1w4Zfp8eSZY4hyS/UVTJDlLup6b3CE05RpEZmdSUg
	lEGUw2hbX1HX8qmKg+tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJu3p-0001CG-0b; Mon, 14 Oct 2019 06:42:29 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJu2f-0000TA-19
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 06:41:23 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20191014064113epoutp022136475bea8437c7a6f09dc972826bde~NcEHuWMV62253822538epoutp02f
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 06:41:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20191014064113epoutp022136475bea8437c7a6f09dc972826bde~NcEHuWMV62253822538epoutp02f
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1571035273;
 bh=etSmYkdlLCLqB+EQLVgfIlp/7aIMo3cLq0v/Hx3Nrvs=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=JDbMiGt1aUZjoL667/X1a71yzZJv3wNMlMyzqbuiVAjrss/LpuKRG65tRSP31BiWj
 FguYoLPFyvouzsS7dbgvx1BOu2F2yt0oYpwoYDGJAR0CdgFXLWyJbPMsllXyuVzSyI
 IFVeZubhVj8X7utUsq6AMxBaiLu43L2J3g/GMEQs=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTP id
 20191014064113epcas1p347dc9c7f71af8295f8c38114783c475c~NcEHa9vq_0560805608epcas1p3u;
 Mon, 14 Oct 2019 06:41:13 +0000 (GMT)
Received: from epsmges1p4.samsung.com (unknown [182.195.40.153]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 46s88c5hdyzMqYkX; Mon, 14 Oct
 2019 06:41:04 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 86.DC.04224.08814AD5; Mon, 14 Oct 2019 15:41:04 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTPA id
 20191014064103epcas1p35c029412778c82b174330560b5651196~NcD_dLO-Z0544405444epcas1p3S;
 Mon, 14 Oct 2019 06:41:03 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191014064103epsmtrp1b166e8df8c2ad17648b32d758d1032ab~NcD_cSe4z1480814808epsmtrp1a;
 Mon, 14 Oct 2019 06:41:03 +0000 (GMT)
X-AuditID: b6c32a38-1b4639c000001080-b8-5da41880d38c
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 45.5C.04081.F7814AD5; Mon, 14 Oct 2019 15:41:03 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191014064103epsmtip1e2707a260a0879b4da818937faf1ac81~NcD_B-bYV0502505025epsmtip1G;
 Mon, 14 Oct 2019 06:41:03 +0000 (GMT)
Subject: Re: [PATCH] devfreq: exynos-bus: workaround dev_pm_opp_set_rate()
 errors on Exynos5422/5800 SoCs
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 k.konieczny@partner.samsung.com
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <d742e7be-ca79-ae9e-6cc2-dc1fae08d252@samsung.com>
Date: Mon, 14 Oct 2019 15:46:03 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <0ce56e65-d989-18f8-af84-2fbd74ba20aa@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrKJsWRmVeSWpSXmKPExsWy7bCmrm6DxJJYg1kd+hYbZ6xntejb95/R
 ov/xa2aL8+c3sFucbXrDbrHp8TVWi8u75rBZfO49wmgx4/w+Jou1R+6yW9xuXMHmwO2xaVUn
 m8fmJfUeB9/tYfLo27KK0ePzJrkA1qhsm4zUxJTUIoXUvOT8lMy8dFsl7+B453hTMwNDXUNL
 C3MlhbzE3FRbJRefAF23zBygy5QUyhJzSoFCAYnFxUr6djZF+aUlqQoZ+cUltkqpBSk5BZYF
 esWJucWleel6yfm5VoYGBkamQIUJ2RlXHt5gK5ijVrH65S3GBsap8l2MHBwSAiYSb44rdjFy
 cQgJ7GCUuPtjGnsXIyeQ84lRomt1IUTiG6PE/kVtTDANO4/bQMT3MkpsmL2cCaLhPaPE+enJ
 ILawQLbEt9PLmEFsEYEgicX3ZzCCNDAL3GaS6P30iwUkwSagJbH/xQ02EJtfQFHi6o/HjCA2
 r4CdxOV3DWBxFgFViaeHt7KCLBYViJA4/TURokRQ4uTMJ2BjOAXsJR7/2w92NLOAuMStJ/OZ
 IGx5ieats5lB9koI9LNLzFzbCdYgIeAi8ef7VyYIW1ji1fEt7BC2lMTL/jYou1pi5ckjbBDN
 HYwSW/ZfYIVIGEvsXzoZHBLMApoS63fpQ4QVJXb+nssIsZhP4t3XHlZIYPFKdLQJQZQoS1x+
 cBdqraTE4vZOtgmMSrOQvDMLyQuzkLwwC2HZAkaWVYxiqQXFuempxYYFJshRvYkRnGS1LHYw
 7jnnc4hRgINRiYdXIW1xrBBrYllxZe4hRgkOZiURXoYJC2KFeFMSK6tSi/Lji0pzUosPMZoC
 A3sis5Rocj4wA+SVxBuaGhkbG1uYGJqZGhoqifOyMs6PFRJITyxJzU5NLUgtgulj4uCUamD0
 5mxbL2Rpxd9s1en35Xdyy80l7/2WGwZxzvzbFX5vp3G5SveMdywGn70u78hdmLswbJrXbe3A
 PuWE1qyPppen8VuVCfjEmC5n2nN0E+eTEzU/uQXaWgXs1Teeqn15W39/ROjkgD3HXRgrb30R
 bNFlZp39xSnpdc7X5NdJ3O5OM3UCajWDziuxFGckGmoxFxUnAgA/rkBGyAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrMIsWRmVeSWpSXmKPExsWy7bCSnG69xJJYg71npCw2zljPatG37z+j
 Rf/j18wW589vYLc42/SG3WLT42usFpd3zWGz+Nx7hNFixvl9TBZrj9xlt7jduILNgdtj06pO
 No/NS+o9Dr7bw+TRt2UVo8fnTXIBrFFcNimpOZllqUX6dglcGVce3mArmKNWsfrlLcYGxqny
 XYwcHBICJhI7j9t0MXJxCAnsZpTYvWcaUxcjJ1BcUmLaxaPMEDXCEocPF0PUvGWUuPXrHwtI
 jbBAtsS308uYQWwRgSCJRzNesYEUMQvcZZJY9+0DE0RHE5PE55k7GUGq2AS0JPa/uMEGYvML
 KEpc/fEYLM4rYCdx+V0DWJxFQFXi6eGtrCC2qECExPPtN6BqBCVOznwCtplTwF7i8b/97CA2
 s4C6xJ95l5ghbHGJW0/mM0HY8hLNW2czT2AUnoWkfRaSlllIWmYhaVnAyLKKUTK1oDg3PbfY
 sMAwL7Vcrzgxt7g0L10vOT93EyM46rQ0dzBeXhJ/iFGAg1GJh/dE8uJYIdbEsuLK3EOMEhzM
 SiK8DBMWxArxpiRWVqUW5ccXleakFh9ilOZgURLnfZp3LFJIID2xJDU7NbUgtQgmy8TBKdXA
 WOmVY5LIrzK1aDdH7zYGjngG11viwR7BDusNmj7LKtasyEo5GLJSM/NzSzvTSb1fp6WZd21L
 aKvuOVQ39/YN8UtWmeHtcztPK2xqs7n+JrV+WsBS66eKl5Zs/ZN06tDFbxw2mXG5W3arnoi/
 VO2cd9NplddO24crLj4I2FLy68tlG94ns6ZOUmIpzkg01GIuKk4EABQJz9S2AgAA
X-CMS-MailID: 20191014064103epcas1p35c029412778c82b174330560b5651196
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191008134950eucas1p15cfef5800efc10d5b18ec5eb37dde60b
References: <CGME20191008134950eucas1p15cfef5800efc10d5b18ec5eb37dde60b@eucas1p1.samsung.com>
 <20191008134923.30123-1-k.konieczny@partner.samsung.com>
 <4f14d3af-e455-d05b-fc03-cba58e001f41@samsung.com>
 <0ce56e65-d989-18f8-af84-2fbd74ba20aa@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_234117_507251_0A7A8EC7 
X-CRM114-Status: GOOD (  28.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyZWssCgpPbiAxOS4gMTAuIDExLiDsmKTtm4QgODozMywgTWFyZWsgU3p5cHJvd3NraSB3
cm90ZToKPiBIaSBDaGFud29vLAo+IAo+IE9uIDEwLjEwLjIwMTkgMDQ6NTAsIENoYW53b28gQ2hv
aSB3cm90ZToKPj4gT24gMjAxOeuFhCAxMOyblCAwOOydvCAyMjo0OSwgay5rb25pZWN6bnlAcGFy
dG5lci5zYW1zdW5nLmNvbSB3cm90ZToKPj4+IENvbW1pdCA0Mjk0YTc3OWJkOGQgKCJQTSAvIGRl
dmZyZXE6IGV4eW5vcy1idXM6IENvbnZlcnQgdG8gdXNlCj4+PiBkZXZfcG1fb3BwX3NldF9yYXRl
KCkiKSBpbnRyb2R1Y2VkIGVycm9yczoKPj4+IGV4eW5vcy1idXM6IG5ldyBidXMgZGV2aWNlIHJl
Z2lzdGVyZWQ6IHNvYzpidXNfd2NvcmUgKCA4NDAwMCBLSHogfiA0MDAwMDAgS0h6KQo+Pj4gZXh5
bm9zLWJ1czogbmV3IGJ1cyBkZXZpY2UgcmVnaXN0ZXJlZDogc29jOmJ1c19ub2MgKCA2NzAwMCBL
SHogfiAxMDAwMDAgS0h6KQo+Pj4gZXh5bm9zLWJ1czogbmV3IGJ1cyBkZXZpY2UgcmVnaXN0ZXJl
ZDogc29jOmJ1c19mc3lzX2FwYiAoMTAwMDAwIEtIeiB+IDIwMDAwMCBLSHopCj4+PiAuLi4KPj4+
IGV4eW5vcy1idXMgc29jOmJ1c193Y29yZTogZGV2X3BtX29wcF9zZXRfcmF0ZTogZmFpbGVkIHRv
IGZpbmQgY3VycmVudCBPUFAgZm9yIGZyZXEgNTMyMDAwMDAwICgtMzQpCj4+PiBleHlub3MtYnVz
IHNvYzpidXNfbm9jOiBkZXZfcG1fb3BwX3NldF9yYXRlOiBmYWlsZWQgdG8gZmluZCBjdXJyZW50
IE9QUCBmb3IgZnJlcSAxMTEwMDAwMDAgKC0zNCkKPj4+IGV4eW5vcy1idXMgc29jOmJ1c19mc3lz
X2FwYjogZGV2X3BtX29wcF9zZXRfcmF0ZTogZmFpbGVkIHRvIGZpbmQgY3VycmVudCBPUFAgZm9y
IGZyZXEgMjIyMDAwMDAwICgtMzQpCj4+Pgo+Pj4gVGhleSBhcmUgY2F1c2VkIGJ5IGluY29ycmVj
dCBQTEwgYXNzaWduZWQgdG8gY2xvY2sgc291cmNlLCB3aGljaCByZXN1bHRzCj4+PiBpbiBjbG9j
ayByYXRlIG91dHNpZGUgb2YgT1BQIHJhbmdlLiBBZGQgd29ya2Fyb3VuZCBmb3IgdGhpcyBpbgo+
Pj4gZXh5bm9zX2J1c19wYXJzZV9vZigpIGJ5IGFkanVzdGluZyBjbG9jayByYXRlIHRvIHRob3Nl
IHByZXNlbnQgaW4gT1BQLgo+PiBJZiB0aGUgY2xvY2sgY2F1c2VkIHRoaXMgaXNzdWUsIHlvdSBj
YW4gc2V0IHRoZSBpbml0aWFsIGNsb2NrIG9uIERldmljZVRyZWUKPj4gd2l0aCBhc3NpZ25lZC1j
bG9jay0qIHByb3BlcnRpZXMuIEJlY2F1c2UgdGhlIHByb2JlIHRpbWUgb2YgY2xvY2sgZHJpdmVy
Cj4+IGlzIGVhcmx5IHRoYW4gdGhlIGFueSBkZXZpY2UgZHJpdmVycy4KPj4KPj4gSXQgaXMgbm90
IHByb3BlciB0byBmaXggdGhlIGNsb2NrIGlzc3VlIG9uIG90aGVyIGRldmljZSBkcml2ZXIuCj4+
IEkgdGhpbmsgeW91IGNhbiBmaXggaXQgYnkgdXNpbmcgdGhlIHN1cHBvcnRlZCBjbG9jayBwcm9w
ZXJ0aWVzLgo+IAo+IFRoaXMgaXNzdWUgaXMgYWJvdXQgc29tZXRoaW5nIGNvbXBsZXRlbHkgZGlm
ZmVyZW50LiBUaGUgT1BQcyBkZWZpbmVkIGluIAo+IERUIGNhbm5vdCBiZSBhcHBsaWVkLCBiZWNh
dXNlIGl0IGlzIG5vdCBwb3NzaWJsZSB0byBkZXJpdmUgdGhlIG5lZWRlZCAKPiBjbG9jayByYXRl
IGZyb20gdGhlIGJvb3Rsb2FkZXItY29uZmlndXJlZCBjbG9jayB0b3BvbG9neSAobWFpbmx5IGR1
ZSB0byAKPiBsYWNrIG9mIGNvbW1vbiBkaXZpc29yIHZhbHVlcyBmb3Igc29tZSBvZiB0aGUgcGFy
ZW50IGNsb2NrcykuIFNvbWUgdGltZSAKPiBhZ28gTHVrYXN6IHRyaWVkIGluaXRpYWxseSB0byBy
ZWRlZmluZSB0aGlzIGNsb2NrIHRvcG9sb2d5IHVzaW5nIAo+IGFzc2lnbmVkLWNsb2NrLXJhdGVz
L3BhcmVudHMgcHJvcGVydGllcyAoc2VlIAo+IGh0dHBzOi8vcHJvdGVjdDIuZmlyZWV5ZS5jb20v
dXJsP2s9NGI4MGMwMzA0NDU5YmM4ZS40YjgxNGI3Zi1mODdmMWUxYWVlMWE4NWMwJnU9aHR0cHM6
Ly9sa21sLm9yZy9sa21sLzIwMTkvNy8xNS8yNzYpLCBidXQgaXQgaGFzIGxpbWl0YXRpb25zIGFu
ZCBzb21lIAo+IHN1Y2ggY2hhbmdlcyBoYXMgdG8gYmUgZG9uZSBpbiBib290bG9hZGVyLiBVbnRp
bCB0aGlzIGlzIHJlc29sdmVkLCAKPiBkZXZmcmVxIHNpbXBseSBjYW5ub3Qgc2V0IHNvbWUgb2Yg
dGhlIGRlZmluZWQgT1BQcy4KCkFzIHlvdSBtZW50aW9uZWQsIHRoZSB3cm9uZyBzZXR0aW5nIGlu
IGJvb3Rsb2FkZXIgY2F1c2UgdGhlIHRoaXMgaXNzdWUuClNvLCB0aGlzIHBhdGNoIGNoYW5nZSB0
aGUgcmF0ZSBvbiBleHlub3MtYnVzLmMgaW4gb3JkZXIgdG8gZml4CnRoZSBpc3N1ZSB3aXRoIHdv
cmthcm91bmQgc3R5bGUuIAoKQnV0LCBhbHNvLCBpdCBjYW4gYmUgZml4ZWQgYnkgaW5pdGlhbGl6
aW5nIHRoZSBjbG9jayByYXRlIG9uIERUCmFsdGhvdWdoIGl0IGlzIG5vdCBmdW5kYW1lbnRhbCBz
b2x1dGlvbiBhcyB5b3UgbWVudGlvbmVkLgoKSWYgYWJvdmUgdHdvIG1ldGhvZCBhcmUgd29ya2Fy
b3VuZCB3YXksIEkgdGhpbmsgdGhhdCBzZXQgdGhlIGNsb2NrCnJhdGUgaW4gRFQgaXMgcHJvcGVy
LiBUaGUgcm9sZSBvZiAnYXNzaWduZWQtY2xvY2stKicgcHJvcGVydGllcwppcyBmb3IgdGhpcyBj
YXNlIGluIG9yZGVyIHRvIHNldCB0aGUgaW5pdGlhbCBmcmVxdWVuY3kgb24gcHJvYmUgdGltZS4K
CkkgdGhpbmsgdGhhdCB0aGUgcHJldmlvdXMgcGF0Y2hbMV0gb2YgS2FtaWwgS29uaWVjem55IGlz
IG1pc3NpbmcKdGhlIHBhdGNoZXMgd2hpY2ggaW5pdGlhbGl6ZSB0aGUgY2xvY2sgcmF0ZSBvbiBE
VCBmaWxlLgpbMV0gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9n
aXQvdG9ydmFsZHMvbGludXguZ2l0L2NvbW1pdC8/aWQ9NDI5NGE3NzliZDhkZmY2YzY1ZTdlODVm
ZmU3YTFlYTIzNmU5MmE2OAoKPiAKPiBUaGlzIGlzc3VlIHdhcyB0aGVyZSBmcm9tIHRoZSBiZWdp
bm5pbmcsIHJlY2VudCBLYW1pbCdzIHBhdGNoIG9ubHkgCj4gcmV2ZWFsZWQgaXQuIEluIGZhY3Qg
aXQgd2FzIGV2ZW4gd29yc2UgLSBkZXZmcmVxIGFuZCBjb21tb24gY2xvY2sgCj4gZnJhbWV3b3Jr
IHNpbGVudGx5IHNldCBsb3dlciBjbG9jayB0aGFuIHRoZSBnaXZlbiBPUFAgZGVmaW5lZC4KPiAK
Pj4+IEZpeGVzOiA0Mjk0YTc3OWJkOGQgKCJQTSAvIGRldmZyZXE6IGV4eW5vcy1idXM6IENvbnZl
cnQgdG8gdXNlIGRldl9wbV9vcHBfc2V0X3JhdGUoKSIpCj4+PiBSZXBvcnRlZC1ieTogS3J6eXN6
dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3JnPgo+Pj4gU2lnbmVkLW9mZi1ieTogS2FtaWwg
S29uaWVjem55IDxrLmtvbmllY3pueUBwYXJ0bmVyLnNhbXN1bmcuY29tPgo+Pj4gLS0tCj4+PiAg
IGRyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMgfCAxNCArKysrKysrKysrKy0tLQo+Pj4gICAx
IGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPj4+Cj4+PiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYyBiL2RyaXZlcnMvZGV2ZnJl
cS9leHlub3MtYnVzLmMKPj4+IGluZGV4IGM4MzI2NzMyNzNhMi4uMzdiZDM0ZDU2MjViIDEwMDY0
NAo+Pj4gLS0tIGEvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYwo+Pj4gKysrIGIvZHJpdmVy
cy9kZXZmcmVxL2V4eW5vcy1idXMuYwo+Pj4gQEAgLTI0Myw3ICsyNDMsNyBAQCBzdGF0aWMgaW50
IGV4eW5vc19idXNfcGFyc2Vfb2Yoc3RydWN0IGRldmljZV9ub2RlICpucCwKPj4+ICAgewo+Pj4g
ICAJc3RydWN0IGRldmljZSAqZGV2ID0gYnVzLT5kZXY7Cj4+PiAgIAlzdHJ1Y3QgZGV2X3BtX29w
cCAqb3BwOwo+Pj4gLQl1bnNpZ25lZCBsb25nIHJhdGU7Cj4+PiArCXVuc2lnbmVkIGxvbmcgcmF0
ZSwgb3BwX3JhdGU7Cj4+PiAgIAlpbnQgcmV0Owo+Pj4gICAKPj4+ICAgCS8qIEdldCB0aGUgY2xv
Y2sgdG8gcHJvdmlkZSBlYWNoIGJ1cyB3aXRoIHNvdXJjZSBjbG9jayAqLwo+Pj4gQEAgLTI2Nywx
MyArMjY3LDIxIEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wYXJzZV9vZihzdHJ1Y3QgZGV2aWNl
X25vZGUgKm5wLAo+Pj4gICAJfQo+Pj4gICAKPj4+ICAgCXJhdGUgPSBjbGtfZ2V0X3JhdGUoYnVz
LT5jbGspOwo+Pj4gLQo+Pj4gLQlvcHAgPSBkZXZmcmVxX3JlY29tbWVuZGVkX29wcChkZXYsICZy
YXRlLCAwKTsKPj4+ICsJb3BwX3JhdGUgPSByYXRlOwo+Pj4gKwlvcHAgPSBkZXZmcmVxX3JlY29t
bWVuZGVkX29wcChkZXYsICZvcHBfcmF0ZSwgMCk7Cj4+PiAgIAlpZiAoSVNfRVJSKG9wcCkpIHsK
Pj4+ICAgCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBmaW5kIGRldl9wbV9vcHBcbiIpOwo+Pj4g
ICAJCXJldCA9IFBUUl9FUlIob3BwKTsKPj4+ICAgCQlnb3RvIGVycl9vcHA7Cj4+PiAgIAl9Cj4+
PiArCS8qCj4+PiArCSAqIEZJWE1FOiBVLWJvb3QgbGVhdmVzIGNsb2NrIHNvdXJjZSBhdCBpbmNv
cnJlY3QgUExMLCB0aGlzIHJlc3VsdHMKPj4+ICsJICogaW4gY2xvY2sgcmF0ZSBvdXRzaWRlIGRl
ZmluZWQgT1BQIHJhdGUuIFdvcmsgYXJvdW5kIHRoaXMgYnVnIGJ5Cj4+PiArCSAqIHNldHRpbmcg
Y2xvY2sgcmF0ZSB0byByZWNvbW1lbmRlZCBvbmUuCj4+PiArCSAqLwo+Pj4gKwlpZiAocmF0ZSA+
IG9wcF9yYXRlKQo+Pj4gKwkJY2xrX3NldF9yYXRlKGJ1cy0+Y2xrLCBvcHBfcmF0ZSk7Cj4+PiAr
Cj4+PiAgIAlidXMtPmN1cnJfZnJlcSA9IGRldl9wbV9vcHBfZ2V0X2ZyZXEob3BwKTsKPj4+ICAg
CWRldl9wbV9vcHBfcHV0KG9wcCk7Cj4+PiAgIAo+Pj4KPj4KPiBCZXN0IHJlZ2FyZHMKPiAKCgot
LSAKQmVzdCBSZWdhcmRzLApDaGFud29vIENob2kKU2Ftc3VuZyBFbGVjdHJvbmljcwoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
