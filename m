Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E961951CE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 01:44:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7QMKDVjS2iDgg/8O2h1g/mFEy+GfDurXX7Z9bNso8sQ=; b=V/jsYAFAvcF0/2
	Bdm9knb2EYsgU+VqybcQt22nw068srhxBjcbeDRHmOUenW6f9s0TubH7jY4QUbMvw92NFiBO2gtNO
	/U3r/AjbmRTdnPOUyZwvMKbFgVrZTyvusq1yn8veX2oC6ErJmKOMCrJcjkKMqXt2F1nuHJLHx2IWe
	sUomKKWpBkto1QKaNmLF41f5wHQRXh8zqoJjMTt7r+Z0sihMWV6YTXGC6j2Ua/Mv++cGNEMAyVBc2
	ntDvQvoZSUCivlzP2DSgrNhnZUrXQ3uxFop9XxY1ph9i9SZ6RxILSzwm4PBjhD3v7F719f3CpbObK
	0erM6ci1S/H8rMgLMErQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzrKH-000326-SP; Mon, 19 Aug 2019 23:44:37 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzrK1-00030S-DR
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 23:44:23 +0000
Received: from epcas1p2.samsung.com (unknown [182.195.41.46])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20190819234417epoutp04902b6c4f293f84351bc839925d71483f~8d5Yqb_uC1180611806epoutp04r
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 23:44:17 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20190819234417epoutp04902b6c4f293f84351bc839925d71483f~8d5Yqb_uC1180611806epoutp04r
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1566258257;
 bh=vmQQpSvhO+NOIFRR33czksndsdtC6ZWE3vrlipr9SU0=;
 h=Subject:To:From:Date:In-Reply-To:References:From;
 b=K/sy7g3sqhM5o09aJf2zg2WLLjCgcs0fqBl/q2EfBLQisuIDhGHKQrMqgwXZuQ+DD
 N3YQu4nb6oatCniNUuMak9wQZJhDm6QkEQwmezy/E7nMrUEngwDrgIrrcDtAsEmqrZ
 zGxE6feVtqnVVUDoM9xeMJ0hHHPH/ki4BcHO4/Xo=
Received: from epsnrtp5.localdomain (unknown [182.195.42.166]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20190819234416epcas1p47ce8684570146aa0344c59cabf337814~8d5YR6nyQ1517015170epcas1p4M;
 Mon, 19 Aug 2019 23:44:16 +0000 (GMT)
Received: from epsmges1p3.samsung.com (unknown [182.195.40.157]) by
 epsnrtp5.localdomain (Postfix) with ESMTP id 46C9W23v0FzMqYkf; Mon, 19 Aug
 2019 23:44:14 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
 epsmges1p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 FC.91.04066.E443B5D5; Tue, 20 Aug 2019 08:44:14 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTPA id
 20190819234413epcas1p39f66a61fda4a86b7913d6f9bd7ba8c55~8d5U9KjTh0081300813epcas1p3-;
 Mon, 19 Aug 2019 23:44:13 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190819234413epsmtrp2e632f52582d069a8cc20b205d1a4a5b2~8d5U8NuEm2043620436epsmtrp2Q;
 Mon, 19 Aug 2019 23:44:13 +0000 (GMT)
X-AuditID: b6c32a37-e27ff70000000fe2-c5-5d5b344e3b33
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 91.42.03706.D443B5D5; Tue, 20 Aug 2019 08:44:13 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190819234412epsmtip12cb3f8d7a40f36bb54864a1ce6b17f1e~8d5UpZc081355113551epsmtip19;
 Mon, 19 Aug 2019 23:44:12 +0000 (GMT)
Subject: Re: [PATCH] MAINTAINERS: Extend patterns for Samsung SoC, Security
 Subsystem and clock drivers
To: Krzysztof Kozlowski <krzk@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Vladimir Zapolskiy <vz@mleia.com>, Kamil Konieczny
 <k.konieczny@partner.samsung.com>, Herbert Xu <herbert@gondor.apana.org.au>,
 "David S. Miller" <davem@davemloft.net>, Sylwester Nawrocki
 <s.nawrocki@samsung.com>, Tomasz Figa <tomasz.figa@gmail.com>, Michael
 Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-clk@vger.kernel.org, "cpgs (cpgs@samsung.com)" <cpgs@samsung.com>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <0bc1c3a5-cdf2-eeab-e547-97598ca1fbd1@samsung.com>
Date: Tue, 20 Aug 2019 08:48:07 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190818172750.20921-1-krzk@kernel.org>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrOJsWRmVeSWpSXmKPExsWy7bCmga6fSXSswdn10hYvD2lazDnfwmLR
 /UrGom/ff0aL/sevmS3On9/AbrHp8TVWi48991gt7t/7yWRxedccNosZ5/cxWVw85Wpx+E07
 q8W/axtZLFbt+sNo8f9XM7ODgMf7G63sHltW3mTy2DnrLrvHtgOqHptWdbJ5bF5S7/Fv4RQW
 j4Pv9jB59G1ZxejxeZNcAFdUtk1GamJKapFCal5yfkpmXrqtkndwvHO8qZmBoa6hpYW5kkJe
 Ym6qrZKLT4CuW2YO0B9KCmWJOaVAoYDE4mIlfTubovzSklSFjPziElul1IKUnALLAr3ixNzi
 0rx0veT8XCtDAwMjU6DChOyMv525BUeFK17/ucvYwHhOoIuRk0NCwERiweL9LF2MXBxCAjsY
 JT4vvM0I4XxilNg2aw2U841R4sej3cwwLQ3zX7JBJPYySlxcfpgJwnnPKPHn9lwWkCphgUyJ
 /et/gbWLCLxnkVixeDY7SIJNQEti/4sbbCA2v4CixNUfjxlBbF4BO4ntPc/BbBYBVYkv358y
 gdiiAhESnx4cZoWoEZQ4OfMJ2AJOAVOJmzv+gp3ELCAucevJfCYIW16ieetsZpDFEgKH2CXe
 Nr5ng7jbReLy+WusELawxKvjW9ghbCmJz+/2QtVUS6w8eYQNormDUWLL/gtQDcYS+5dOBtrA
 AbRBU2L9Ln2IsKLEzt9zGSFsXomGjb/ZIY7gk3j3tYcVpBwk3tEmBFGiLHH5wV0mCFtSYnF7
 J9sERqVZSF6bheSdWUjemYWweAEjyypGsdSC4tz01GLDAmPk6N7ECE7kWuY7GDec8znEKMDB
 qMTD6zEtKlaINbGsuDL3EKMEB7OSCG/FHKAQb0piZVVqUX58UWlOavEhRlNgyE9klhJNzgdm
 mbySeENTI2NjYwsTQzNTQ0Mlcd6FPyxihQTSE0tSs1NTC1KLYPqYODilGhgFTl/iu3ZLcmn8
 kc2Gn2LfbzqnKqL78JLhnsR54m/O6wUUORzdp8I0Mf+/0RqlIy+27tZNeirwrulcStPG5bJS
 UZO2vp50tub6D6OypX89zR3M2oXuv529vc7JqNV2q88e5ytOHLM9r7jZ7N7VJynXdKJVs8j4
 2yUznRdL1u9ll83T9GJWfjBZiaU4I9FQi7moOBEAmBA7/PoDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrKIsWRmVeSWpSXmKPExsWy7bCSnK6vSXSswcF+NouXhzQt5pxvYbHo
 fiVj0bfvP6NF/+PXzBbnz29gt9j0+Bqrxceee6wW9+/9ZLK4vGsOm8WM8/uYLC6ecrU4/Kad
 1eLftY0sFqt2/WG0+P+rmdlBwOP9jVZ2jy0rbzJ57Jx1l91j2wFVj02rOtk8Ni+p9/i3cAqL
 x8F3e5g8+rasYvT4vEkugCuKyyYlNSezLLVI3y6BK+NvZ27BUeGK13/uMjYwnhPoYuTkkBAw
 kWiY/5Kti5GLQ0hgN6PEnblrWSESkhLTLh5l7mLkALKFJQ4fLoaoecsosX3hTjaQGmGBTIn9
 638xgiREBL6ySDy/vI8FoqqDUeLMhVZ2kCo2AS2J/S9ugHXwCyhKXP3xmBHE5hWwk9je8xzM
 ZhFQlfjy/SkTiC0qECFxeMcsqBpBiZMzn7CA2JwCphI3d/xlBrGZBdQl/sy7BGWLS9x6Mp8J
 wpaXaN46m3kCo9AsJO2zkLTMQtIyC0nLAkaWVYySqQXFuem5xYYFhnmp5XrFibnFpXnpesn5
 uZsYwZGrpbmD8fKS+EOMAhyMSjy8HtOiYoVYE8uKK3MPMUpwMCuJ8FbMAQrxpiRWVqUW5ccX
 leakFh9ilOZgURLnfZp3LFJIID2xJDU7NbUgtQgmy8TBKdXAuE5MkVdHNyGI8+gTps332Lo7
 Sr49qVO8oLLr1NbleT8qDeWv+77JPtuvmr/y7+RHTcb/Hiu5pynFzJgVoJacnpN2IEZsft/S
 4yVOL+I1Awzazv5jXCCyT8+Zf8GZ5X98yysPrtnKE9f76pZ+jq/KpHulW6fc8Jz+SjPt0Z8F
 F7fJR5w3dfBWV2Ipzkg01GIuKk4EAOjbrsTYAgAA
X-CMS-MailID: 20190819234413epcas1p39f66a61fda4a86b7913d6f9bd7ba8c55
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
X-CPGSPASS: Y
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190818172803epcas1p32db0707cb391c5ca1795ba2690284a56
References: <CGME20190818172803epcas1p32db0707cb391c5ca1795ba2690284a56@epcas1p3.samsung.com>
 <20190818172750.20921-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_164421_786871_9580D44D 
X-CRM114-Status: GOOD (  21.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgS3J6eXN6dG9mLAoKT24gMTkuIDguIDE5LiDsmKTsoIQgMjoyNywgS3J6eXN6dG9mIEtvemxv
d3NraSB3cm90ZToKPiBFeHRlbmQgdGhlIHBhdHRlcm5zIHRvIGNvdmVyIGFsbCByZWxhdGVkIGZp
bGVzIGluIHJlc3BlY3RpdmUKPiBjYXRlZ29yaWVzOgo+IDEuIFNhbXN1bmcgRXh5bm9zIEFSTSBh
cmNoaXRlY3R1cmU6IGFkZCBzb2MgZHJpdmVycyBoZWFkZXJzIGFuZCBtYWtlCj4gICAgZGlyZWN0
b3J5IG1hdGNoZXMgY29uc2lzdGVudCwKPiAyLiBTYW1zdW5nIFNlY3VyaXR5IFN1YlN5c3RlbSBk
cml2ZXIgKGNyeXB0byk6IGFkZCBiaW5kaW5ncywKPiAzLiBTYW1zdW5nIFNvQyBjbG9jayBkcml2
ZXJzOiBhZGQgUzNDMjR4eCwgUzNDNjR4eCBhbmQgUzVQdjIxMCBiaW5kaW5ncy4KPiAKPiBDYzog
S3VramluIEtpbSA8a2dlbmVAa2VybmVsLm9yZz4KPiBDYzogVmxhZGltaXIgWmFwb2xza2l5IDx2
ekBtbGVpYS5jb20+Cj4gQ2M6IEthbWlsIEtvbmllY3pueSA8ay5rb25pZWN6bnlAcGFydG5lci5z
YW1zdW5nLmNvbT4KPiBDYzogU3lsd2VzdGVyIE5hd3JvY2tpIDxzLm5hd3JvY2tpQHNhbXN1bmcu
Y29tPgo+IENjOiBUb21hc3ogRmlnYSA8dG9tYXN6LmZpZ2FAZ21haWwuY29tPgo+IENjOiBDaGFu
d29vIENob2kgPGN3MDAuY2hvaUBzYW1zdW5nLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0
b2YgS296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+Cj4gCj4gLS0tCj4gCj4gQ2M6IGxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IENjOiBsaW51eC1zYW1zdW5nLXNvY0B2Z2Vy
Lmtlcm5lbC5vcmcKPiBDYzogbGludXgtY3J5cHRvQHZnZXIua2VybmVsLm9yZwo+IENjOiBsaW51
eC1jbGtAdmdlci5rZXJuZWwub3JnCj4gLS0tCj4gIE1BSU5UQUlORVJTIHwgOSArKysrKysrLS0K
PiAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBk
aWZmIC0tZ2l0IGEvTUFJTlRBSU5FUlMgYi9NQUlOVEFJTkVSUwo+IGluZGV4IDQyMDU2N2QxNTE5
YS4uMzVhNDAwMmFjNThiIDEwMDY0NAo+IC0tLSBhL01BSU5UQUlORVJTCj4gKysrIGIvTUFJTlRB
SU5FUlMKPiBAQCAtMjE5OSw4ICsyMTk5LDkgQEAgRjoJZHJpdmVycy8qLypzM2MyNCoKPiAgRjoJ
ZHJpdmVycy8qLyovKnMzYzI0Kgo+ICBGOglkcml2ZXJzLyovKnMzYzY0eHgqCj4gIEY6CWRyaXZl
cnMvKi8qczVwdjIxMCoKPiAtRjoJZHJpdmVycy9tZW1vcnkvc2Ftc3VuZy8qCj4gLUY6CWRyaXZl
cnMvc29jL3NhbXN1bmcvKgo+ICtGOglkcml2ZXJzL21lbW9yeS9zYW1zdW5nLwo+ICtGOglkcml2
ZXJzL3NvYy9zYW1zdW5nLwo+ICtGOglpbmNsdWRlL2xpbnV4L3NvYy9zYW1zdW5nLwo+ICBGOglE
b2N1bWVudGF0aW9uL2FybS9zYW1zdW5nLwo+ICBGOglEb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvYXJtL3NhbXN1bmcvCj4gIEY6CURvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9zcmFtL3NhbXN1bmctc3JhbS50eHQKPiBAQCAtMTQxNzQsNiArMTQxNzUsOCBAQCBNOglL
YW1pbCBLb25pZWN6bnkgPGsua29uaWVjem55QHBhcnRuZXIuc2Ftc3VuZy5jb20+Cj4gIEw6CWxp
bnV4LWNyeXB0b0B2Z2VyLmtlcm5lbC5vcmcKPiAgTDoJbGludXgtc2Ftc3VuZy1zb2NAdmdlci5r
ZXJuZWwub3JnCj4gIFM6CU1haW50YWluZWQKPiArRjoJRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2NyeXB0by9zYW1zdW5nLXNsaW1zc3MudHh0Cj4gK0Y6CURvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9jcnlwdG8vc2Ftc3VuZy1zc3MudHh0Cj4gIEY6CWRyaXZlcnMv
Y3J5cHRvL3M1cC1zc3MuYwo+ICAKPiAgU0FNU1VORyBTNVAvRVhZTk9TNCBTT0MgU0VSSUVTIENB
TUVSQSBTVUJTWVNURU0gRFJJVkVSUwo+IEBAIC0xNDE5NCw2ICsxNDE5Nyw4IEBAIFQ6CWdpdCBn
aXQ6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvc25hd3JvY2tpL2Ns
ay5naXQKPiAgRjoJZHJpdmVycy9jbGsvc2Ftc3VuZy8KPiAgRjoJaW5jbHVkZS9kdC1iaW5kaW5n
cy9jbG9jay9leHlub3MqLmgKPiAgRjoJRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L2Nsb2NrL2V4eW5vcyoudHh0Cj4gK0Y6CURvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9jbG9jay9zYW1zdW5nLHMzYyoKPiArRjoJRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL2Nsb2NrL3NhbXN1bmcsczVwKgo+ICAKPiAgU0FNU1VORyBTUEkgRFJJVkVSUwo+ICBNOglL
dWtqaW4gS2ltIDxrZ2VuZUBrZXJuZWwub3JnPgo+IAoKRm9yIGNsb2NrIHBhcnQsCkFja2VkLWJ5
OiBDaGFud29vIENob2kgPGN3MDAuY2hvaUBzYW1zdW5nLmNvbT4KCgotLSAKQmVzdCBSZWdhcmRz
LApDaGFud29vIENob2kKU2Ftc3VuZyBFbGVjdHJvbmljcwoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
