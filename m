Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D79A6A4CC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 11:23:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DoH7JCSfAaJ9sia4lBHz3ivjyirsPZ5AdkcL5xYADHY=; b=tyUbRsDaXVCnkT
	oged+w8M5zRKOcpXIgOoans/2NnL23kelJIyEF2mJkNLZrqFMp/2HNJW4ezKhGJkkUkGs2Ddtm41a
	knRe7+wsBEVzDNJ6sSezdwQV+k/ljrymRaCmVYlrxrnaXK+7ItWFu3BSCTh1intMWawNv6KjAgoSw
	KTxMAvnfNPD2sb39oMtMnvHWbMKHi9gh9Ezdqm0N+6JxAEjB0LiHuf0/KMpTH0XTdNeIozxOQYkqE
	+rOXYQh91RcRkk5V13SPs2r3lr9KdmxXzzClrL3TKpCZAmznCCsY70XbpxFWDZDWJxFJDKcTlwbIK
	jv2TZqzlsnYcSyIDDPew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnJgR-0006G0-Q2; Tue, 16 Jul 2019 09:23:39 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnJfy-000640-9n
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 09:23:12 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20190716092304epoutp011775c693a3f29a49750c88041246214c~x2NvnS0rY2844028440epoutp01T
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 09:23:04 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20190716092304epoutp011775c693a3f29a49750c88041246214c~x2NvnS0rY2844028440epoutp01T
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563268984;
 bh=0F9bzj/24+LD+R/SMr1QYOgsuPHsRGm2VoKUJPK2MS0=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=K0ucOrWwS8yeG6z5eShzbw04ie4Ai5M6WJNpQILAAuYR1Dgm47S18Gy7oTwrCAuAI
 dKZQkRjeqvY9Ol6pYu3lv44lvRfEsTmOC1A7uDe4NFZOvedBJDkDxWmxcdOpAg1Ru2
 uzsWfYWNAXsDBk80Os6R4F0sBzDwL6UZXDzrCS4c=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190716092303epcas1p2f805b1e6ddd363aa2796ee334f7e644a~x2Nu6wfO43199531995epcas1p25;
 Tue, 16 Jul 2019 09:23:03 +0000 (GMT)
Received: from epsmges1p3.samsung.com (unknown [182.195.40.153]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 45nw110r4xzMqYlt; Tue, 16 Jul
 2019 09:23:01 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
 epsmges1p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 65.09.04066.5779D2D5; Tue, 16 Jul 2019 18:23:01 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20190716092300epcas1p480da14cd60097e8628f6d8e13b5ea488~x2NrqlzeJ0540705407epcas1p4X;
 Tue, 16 Jul 2019 09:23:00 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190716092300epsmtrp242e8f5f4d884e75645c8ffe5a553434c~x2NrptIYc2069720697epsmtrp2P;
 Tue, 16 Jul 2019 09:23:00 +0000 (GMT)
X-AuditID: b6c32a37-e27ff70000000fe2-f1-5d2d9775e082
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 12.85.03706.4779D2D5; Tue, 16 Jul 2019 18:23:00 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190716092259epsmtip13ac67680cae8023e5b2bdb44e9c6238e~x2NrPLPqR1303213032epsmtip1N;
 Tue, 16 Jul 2019 09:22:59 +0000 (GMT)
Subject: Re: [PATCH v1 02/50] clk: samsung: add IDs for Exynos5420 NoC clocks
To: Lukasz Luba <l.luba@partner.samsung.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <b8503015-732f-7ac5-1b25-50e943d27e55@samsung.com>
Date: Tue, 16 Jul 2019 18:26:06 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715124417.4787-3-l.luba@partner.samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrAJsWRmVeSWpSXmKPExsWy7bCmgW7pdN1YgxdzWS1urTvHarFxxnpW
 i/lHgKz+x6+ZLc6f38BucbbpDbvFrQYZi02Pr7FafOy5x2pxedccNosZ5/cxWaw9cpfdYun1
 i0wWF0+5WtxuXMFm0br3CLvF4TftrBb/rm1kcRDyWDNvDaPH+xut7B6bVnWyeWxeUu9x8N0e
 Jo++LasYPT5vkgtgj8q2yUhNTEktUkjNS85PycxLt1XyDo53jjc1MzDUNbS0MFdSyEvMTbVV
 cvEJ0HXLzAF6QkmhLDGnFCgUkFhcrKRvZ1OUX1qSqpCRX1xiq5RakJJTYFmgV5yYW1yal66X
 nJ9rZWhgYGQKVJiQndHf/Zmt4IVIxd9DT9gbGLcIdjFyckgImEicnvSZrYuRi0NIYAejxLLX
 z1khnE+MEm+urGQGqRIS+MYocecGXMeKXdPYIYr2MkpMmrgFquM9o8ShN+/AOoQF/CVW3DnN
 BmKLCJxjlOh4Kg1iMwtMY5KYNU8UxGYT0JLY/+IGWA2/gKLE1R+PGbsYOTh4BewkVm7QATFZ
 BFQlrk72AKkQFYiQOHVkHguIzSsgKHFy5hMWkBJOAXuJ5uMSEMPFJW49mc8EYctLNG+dzQxy
 mYTAOXaJaa3HWCHud5E49vYjE4QtLPHq+BZ2CFtK4vO7vWwQdrXEypNH2CCaOxgltuy/ANVs
 LLF/6WQmkMXMApoS63fpQ4QVJXb+nssIsZhP4t3XHlaQEgkBXomONiGIEmWJyw/uQq2VlFjc
 3sk2gVFpFpJvZiF5YRaSF2YhLFvAyLKKUSy1oDg3PbXYsMAYOao3MYJTt5b5DsYN53wOMQpw
 MCrx8J7YoxMrxJpYVlyZe4hRgoNZSYTX9qt2rBBvSmJlVWpRfnxRaU5q8SFGU2BYT2SWEk3O
 B+aVvJJ4Q1MjY2NjCxNDM1NDQyVx3nl/NGOFBNITS1KzU1MLUotg+pg4OKUaGO1f6Ex4Ja9h
 Ylyaqnna7Wa6steduA86Dxe4M/HNNA56rK9q7GiTrb5n3o4wqd8SE0p5I5jnsdoxejf1Xs18
 HvJNoSPmu+xjpXDtZSfSL248f6x4rn91R3paJItilrPidW/J2durz0vZnxXinRldMaHndpma
 h7pFm+ENz+/WKiIxQjf6G14rsRRnJBpqMRcVJwIAFuvaXfMDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrDIsWRmVeSWpSXmKPExsWy7bCSnG7JdN1Yg0+bRCxurTvHarFxxnpW
 i/lHgKz+x6+ZLc6f38BucbbpDbvFrQYZi02Pr7FafOy5x2pxedccNosZ5/cxWaw9cpfdYun1
 i0wWF0+5WtxuXMFm0br3CLvF4TftrBb/rm1kcRDyWDNvDaPH+xut7B6bVnWyeWxeUu9x8N0e
 Jo++LasYPT5vkgtgj+KySUnNySxLLdK3S+DK6O/+zFbwQqTi76En7A2MWwS7GDk5JARMJFbs
 msbexcjFISSwm1Hi7J/3zBAJSYlpF48C2RxAtrDE4cPFEDVvGSUWnr/MClIjLOAr8eHmHFaQ
 hIjAOUaJvr9n2UESzALTmCROrGeG6DjOKPFg3hw2kASbgJbE/hc3wGx+AUWJqz8eM4Js4BWw
 k1i5QQfEZBFQlbg62QOkQlQgQmLStZ0sIDavgKDEyZlPWEBKOAXsJZqPS0BsUpf4M+8SM4Qt
 LnHryXwmCFteonnrbOYJjMKzkHTPQtIyC0nLLCQtCxhZVjFKphYU56bnFhsWGOallusVJ+YW
 l+al6yXn525iBMexluYOxstL4g8xCnAwKvHwntijEyvEmlhWXJl7iFGCg1lJhNf2q3asEG9K
 YmVValF+fFFpTmrxIUZpDhYlcd6neccihQTSE0tSs1NTC1KLYLJMHJxSDYwSLHs2fL/257sN
 1yblSdO+NSVOUhfbqZE4TW7LlszYSPd3If5mNqdSv5cv/fY+SUo9wdLAd/6X3u4Jl3fUmbw2
 /ffXKGPN8/5KjvefDFTOieyzO+naobzPzznoueGx7TWxbiohOqbRv261rJR9pqt5MeW6e9I5
 x7VOM/syI4/ktbN6zovqnabEUpyRaKjFXFScCABX7fED3wIAAA==
X-CMS-MailID: 20190716092300epcas1p480da14cd60097e8628f6d8e13b5ea488
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190715124435eucas1p2099cd7670a3d85d9b11eb0ff86041a2a
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124435eucas1p2099cd7670a3d85d9b11eb0ff86041a2a@eucas1p2.samsung.com>
 <20190715124417.4787-3-l.luba@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_022310_588584_BFD16A66 
X-CRM114-Status: GOOD (  21.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, b.zolnierkie@samsung.com, sboyd@kernel.org,
 mturquette@baylibre.com, krzk@kernel.org, a.hajda@samsung.com,
 robh+dt@kernel.org, kyungmin.park@samsung.com, kgene@kernel.org,
 myungjoo.ham@samsung.com, s.nawrocki@samsung.com, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpZb3UgZG9uJ3QgbmVlZCB0byBtYWtlIHRoZSBzZXBhcmF0ZSBwYXRjaGVzIGFjY29yZGlu
ZyB0bwp0aGUgdHlwZSBvZiBjbG9jayBqdXN0IGluIG9yZGVyIHRvIGFkZCB0aGUgSUQgYnkgaGFu
ZGxpbmcgdGhlbQpmcm9tIGRldmljZXRyZWUuCgpQbGVhc2UgbWVyZ2UgZm9sbG93aW5nIHBhdGNo
ZXMgdG8gb25lIHBhdGNoIAotIHBhdGNoMiwgcGF0Y2g0fnBhdGNoNywgcGF0Y2g5LCBwYXRjaDEx
LCBwYXRjaDEyLCBwYXRjaDE0LCBwYXRjaDE3CmFuZCBzZXBhcmF0ZSBmcm9tIHBhdGNoMTMsIHBh
dGNoMTUsIHBhdGNoMTYgZm9yIGFkZGluZyB0aGUgSUQKCgpPbiAxOS4gNy4gMTUuIOyYpO2bhCA5
OjQzLCBMdWthc3ogTHViYSB3cm90ZToKPiBUaGUgcGF0Y2ggYWRkcyBOb0MgV0NPUkUgY2xvY2sg
SURzIG5lZWRlZCB1c2VkIGZvciBjaGFuZ2luZyBwYXJlbnQgb2YgdGhlCj4gbWFpbiBOb0MgY2xv
Y2sgZnJvbSB0aGUgRFQgZGV2aWNlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEx1a2FzeiBMdWJhIDxs
Lmx1YmFAcGFydG5lci5zYW1zdW5nLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9jbGsvc2Ftc3VuZy9j
bGstZXh5bm9zNTQyMC5jIHwgMTAgKysrKysrLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNl
cnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsay9z
YW1zdW5nL2Nsay1leHlub3M1NDIwLmMgYi9kcml2ZXJzL2Nsay9zYW1zdW5nL2Nsay1leHlub3M1
NDIwLmMKPiBpbmRleCAxNmFkNDk4ZTNmM2YuLmQzNTM4NzBlN2ZkYSAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2Nsay9zYW1zdW5nL2Nsay1leHlub3M1NDIwLmMKPiArKysgYi9kcml2ZXJzL2Nsay9z
YW1zdW5nL2Nsay1leHlub3M1NDIwLmMKPiBAQCAtNDYzLDcgKzQ2Myw4IEBAIHN0YXRpYyBjb25z
dCBzdHJ1Y3Qgc2Ftc3VuZ19maXhlZF9mYWN0b3JfY2xvY2sKPiAgc3RhdGljIGNvbnN0IHN0cnVj
dCBzYW1zdW5nX211eF9jbG9jayBleHlub3M1ODAwX211eF9jbGtzW10gX19pbml0Y29uc3QgPSB7
Cj4gIAlNVVgoMCwgIm1vdXRfYWNsazQwMF9pc3AiLCBtb3V0X2dyb3VwM181ODAwX3AsIFNSQ19U
T1AwLCAwLCAzKSwKPiAgCU1VWCgwLCAibW91dF9hY2xrNDAwX21zY2wiLCBtb3V0X2dyb3VwM181
ODAwX3AsIFNSQ19UT1AwLCA0LCAzKSwKPiAtCU1VWCgwLCAibW91dF9hY2xrNDAwX3djb3JlIiwg
bW91dF9ncm91cDJfNTgwMF9wLCBTUkNfVE9QMCwgMTYsIDMpLAo+ICsJTVVYKENMS19NT1VUX0FD
TEs0MDBfV0NPUkUsICJtb3V0X2FjbGs0MDBfd2NvcmUiLCBtb3V0X2dyb3VwMl81ODAwX3AsCj4g
KwkJCVNSQ19UT1AwLCAxNiwgMyksCj4gIAlNVVgoMCwgIm1vdXRfYWNsazEwMF9ub2MiLCBtb3V0
X2dyb3VwMV81ODAwX3AsIFNSQ19UT1AwLCAyMCwgMiksCj4gIAo+ICAJTVVYKDAsICJtb3V0X2Fj
bGszMzNfNDMyX2dzY2wiLCBtb3V0X2dyb3VwNl81ODAwX3AsIFNSQ19UT1AxLCAwLCAyKSwKPiBA
QCAtNTQ4LDcgKzU0OSw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgc2Ftc3VuZ19tdXhfY2xvY2sg
ZXh5bm9zNTQyMF9tdXhfY2xrc1tdIF9faW5pdGNvbnN0ID0gewo+ICAKPiAgCU1VWCgwLCAibW91
dF9hY2xrNDAwX2lzcCIsIG1vdXRfZ3JvdXAxX3AsIFNSQ19UT1AwLCAwLCAyKSwKPiAgCU1VWCgw
LCAibW91dF9hY2xrNDAwX21zY2wiLCBtb3V0X2dyb3VwMV9wLCBTUkNfVE9QMCwgNCwgMiksCj4g
LQlNVVgoMCwgIm1vdXRfYWNsazQwMF93Y29yZSIsIG1vdXRfZ3JvdXAxX3AsIFNSQ19UT1AwLCAx
NiwgMiksCj4gKwlNVVgoQ0xLX01PVVRfQUNMSzQwMF9XQ09SRSwgIm1vdXRfYWNsazQwMF93Y29y
ZSIsIG1vdXRfZ3JvdXAxX3AsCj4gKwkJCVNSQ19UT1AwLCAxNiwgMiksCj4gIAlNVVgoMCwgIm1v
dXRfYWNsazEwMF9ub2MiLCBtb3V0X2dyb3VwMV9wLCBTUkNfVE9QMCwgMjAsIDIpLAo+ICAKPiAg
CU1VWCgwLCAibW91dF9hY2xrMzMzXzQzMl9nc2NsIiwgbW91dF9ncm91cDRfcCwgU1JDX1RPUDEs
IDAsIDIpLAo+IEBAIC02NzQsOCArNjc2LDggQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBzYW1zdW5n
X211eF9jbG9jayBleHlub3M1eF9tdXhfY2xrc1tdIF9faW5pdGNvbnN0ID0gewo+ICAJCQlTUkNf
VE9QMTAsIDgsIDEpLAo+ICAJTVVYKDAsICJtb3V0X3N3X2FjbGsyMDBfZnN5czIiLCBtb3V0X3N3
X2FjbGsyMDBfZnN5czJfcCwKPiAgCQkJU1JDX1RPUDEwLCAxMiwgMSksCj4gLQlNVVgoMCwgIm1v
dXRfc3dfYWNsazQwMF93Y29yZSIsIG1vdXRfc3dfYWNsazQwMF93Y29yZV9wLAo+IC0JCQlTUkNf
VE9QMTAsIDE2LCAxKSwKPiArCU1VWChDTEtfTU9VVF9TV19BQ0xLNDAwX1dDT1JFLCAibW91dF9z
d19hY2xrNDAwX3djb3JlIiwKPiArCQkJbW91dF9zd19hY2xrNDAwX3djb3JlX3AsIFNSQ19UT1Ax
MCwgMTYsIDEpLAo+ICAJTVVYKDAsICJtb3V0X3N3X2FjbGsxMDBfbm9jIiwgbW91dF9zd19hY2xr
MTAwX25vY19wLAo+ICAJCQlTUkNfVE9QMTAsIDIwLCAxKSwKPiAgCU1VWCgwLCAibW91dF9zd19w
Y2xrMjAwX2ZzeXMiLCBtb3V0X3N3X3BjbGsyMDBfZnN5c19wLAo+IAoKCi0tIApCZXN0IFJlZ2Fy
ZHMsCkNoYW53b28gQ2hvaQpTYW1zdW5nIEVsZWN0cm9uaWNzCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
