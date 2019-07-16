Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83CD06A4B5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 11:15:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O9CNYECH/W5laUKlNgqgWwvqcSTd7ZfrW0ZC4uI69oU=; b=jbQiKQOrPQIl+J
	1fts8CSKEfFy6MCODon1xML4PJjbi0Gat9/zp7rZlKfjQfD0jJs1B/SnSHNp7t77dnr1WbN0vUrjW
	Vg7TdHnxqK/R85goY/YhKK08Rb4f5eXdDOUirDRoCPukrJkF+WmolaFkgokaowcKV23vsE61ttRCn
	XKMVB1y8ZmPERB1fUmhAZBD2BTOHiDCLJ/pIAutkoTLseJ/75CNNR+zXir/O4VALDgOHeG/Bxkw55
	QVq1FHV3r/CfYbKV9pNwqEpeF4i3E26FdG/JFi11fKxD8tVg2yDDNOKOHmA/bAx81aI5e7/RlfN/u
	MbnCD907sVZGEE1QcNbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnJY8-00037U-F2; Tue, 16 Jul 2019 09:15:04 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnJXs-00032C-4u
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 09:14:50 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20190716091444epoutp011a363817ad3e5fd0d5fa546c2b537062~x2GeQ2KJY1947319473epoutp01b
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 09:14:44 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20190716091444epoutp011a363817ad3e5fd0d5fa546c2b537062~x2GeQ2KJY1947319473epoutp01b
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563268485;
 bh=zBu4gOUZIJPkwABGufXzWlLGcekITc9MN5DsL/nJYAo=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=JprzL/3DcqjjQWfHeuAI+L6NvZz2Y2yQeIXh+kv1rwJfXNBsxmFlXeDr/Nl8tC3n5
 G3riGPb/d4lTDxQXNb0XO3KOA87r1tAsxoCwqJ1PBCTK4kDOg2WvzdKbL0ztrNgPfR
 YFkXGCKvxjWTB1SN02Rbnc9nX3bgsn7ysxqyzbxY=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190716091444epcas1p211c275ef689a959e57cc43c1894d9766~x2Gdvi2LI0536605366epcas1p2T;
 Tue, 16 Jul 2019 09:14:44 +0000 (GMT)
Received: from epsmges1p3.samsung.com (unknown [182.195.40.157]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 45nvqP0cy3zMqYkb; Tue, 16 Jul
 2019 09:14:41 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 26.B6.04066.1859D2D5; Tue, 16 Jul 2019 18:14:41 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20190716091440epcas1p4a076cdb435e969787951ff4a0135e07d~x2GaRNw3X2468124681epcas1p40;
 Tue, 16 Jul 2019 09:14:40 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190716091440epsmtrp16d05bb4d95ad6e876cd04be72ab3d772~x2GaP9UvY2700827008epsmtrp10;
 Tue, 16 Jul 2019 09:14:40 +0000 (GMT)
X-AuditID: b6c32a37-e3fff70000000fe2-72-5d2d9580d31c
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 BE.05.03706.0859D2D5; Tue, 16 Jul 2019 18:14:40 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190716091440epsmtip29d2a42d1413a959f5c4c095a67fd3e8b~x2GZxgy7a2701527015epsmtip2s;
 Tue, 16 Jul 2019 09:14:40 +0000 (GMT)
Subject: Re: [PATCH v1 04/50] clk: samsung: add IDs to manage aclk400_mscl
 in Exynos5420
To: Lukasz Luba <l.luba@partner.samsung.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <ce268a6e-b450-c405-6fd0-4b4bc93def45@samsung.com>
Date: Tue, 16 Jul 2019 18:17:46 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715124417.4787-5-l.luba@partner.samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrEJsWRmVeSWpSXmKPExsWy7bCmvm7jVN1YgwO/mSxurTvHarFxxnpW
 i/lHgKz+x6+ZLc6f38BucbbpDbvFrQYZi02Pr7FafOy5x2pxedccNosZ5/cxWaw9cpfdYun1
 i0wWF0+5WtxuXMFm0br3CLvF4TftrBb/rm1kcRDyWDNvDaPH+xut7B6bVnWyeWxeUu9x8N0e
 Jo++LasYPT5vkgtgj8q2yUhNTEktUkjNS85PycxLt1XyDo53jjc1MzDUNbS0MFdSyEvMTbVV
 cvEJ0HXLzAF6QkmhLDGnFCgUkFhcrKRvZ1OUX1qSqpCRX1xiq5RakJJTYFmgV5yYW1yal66X
 nJ9rZWhgYGQKVJiQnbF61XOWglNCFTvuljcwHuTvYuTkkBAwkXjc3c8OYgsJ7GCUOHObsYuR
 C8j+xCix5+8lFgjnG6PE8RkT2WE6Vpx9DFW1FyixfDIzhPOeUeLv5yNsIFXCAlESbw59BusQ
 ETjHKNHxVBrEZhaYxiQxa54oiM0moCWx/8UNsHp+AUWJqz9ApnJy8ArYSVx8fJoVxGYRUJWY
 dmkGmC0qECFx6sg8FogaQYmTM5+A2ZwC9hI3jq9khZgvLnHryXwmCFteonnrbLDjJAROsUus
 /POeBeIFF4nrl+eyQtjCEq+Ob4F6TUriZX8blF0tsfIkyDMgzR2MElv2X4BqMJbYv3Qy0AYO
 oA2aEut36UOEFSV2/p7LCLGYT+Ld1x5WkBIJAV6JjjYhiBJlicsP7jJB2JISi9s72SYwKs1C
 8s4sJC/MQvLCLIRlCxhZVjGKpRYU56anFhsWGCNH9iZGcPrWMt/BuOGczyFGAQ5GJR7eE3t0
 YoVYE8uKK3MPMUpwMCuJ8Np+1Y4V4k1JrKxKLcqPLyrNSS0+xGgKDO2JzFKiyfnA3JJXEm9o
 amRsbGxhYmhmamioJM47749mrJBAemJJanZqakFqEUwfEwenVAOjxoyN7UnLea9pzOISa5g0
 +9fNyQ9WC82T/mnQYMzdqNiQ2F64e3VDxKJFfyMEv1hav7SofXjw9dU/s2f5HpwSPXu3XOPd
 izdYUt5skTeRvRsx96Dkwx3BgbOm3ltxN8dN94Gm2buboWuXh2jZHyw9Gn7wfOYqpmrOJ7/N
 99R3ifydua9x0jS2jUosxRmJhlrMRcWJAJTIR471AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrLIsWRmVeSWpSXmKPExsWy7bCSvG7DVN1Yg+NPVS1urTvHarFxxnpW
 i/lHgKz+x6+ZLc6f38BucbbpDbvFrQYZi02Pr7FafOy5x2pxedccNosZ5/cxWaw9cpfdYun1
 i0wWF0+5WtxuXMFm0br3CLvF4TftrBb/rm1kcRDyWDNvDaPH+xut7B6bVnWyeWxeUu9x8N0e
 Jo++LasYPT5vkgtgj+KySUnNySxLLdK3S+DKWL3qOUvBKaGKHXfLGxgP8ncxcnJICJhIrDj7
 mBHEFhLYzShx+oUnRFxSYtrFo8xdjBxAtrDE4cPFXYxcQCVvGSUO3XvHDFIjLBAlcWzdTXaQ
 hIjAOUaJvr9n2UESzALTmCROrGeG6DjOKPFu9SMWkASbgJbE/hc32EBsfgFFias/IDbzCthJ
 XHx8mhXEZhFQlZh2aQaYLSoQITHp2k4WiBpBiZMzn4DZnAL2EjeOr2SFWKYu8WfeJWYIW1zi
 1pP5TBC2vETz1tnMExiFZyFpn4WkZRaSlllIWhYwsqxilEwtKM5Nzy02LDDMSy3XK07MLS7N
 S9dLzs/dxAiOZC3NHYyXl8QfYhTgYFTi4T2xRydWiDWxrLgy9xCjBAezkgiv7VftWCHelMTK
 qtSi/Pii0pzU4kOM0hwsSuK8T/OORQoJpCeWpGanphakFsFkmTg4pRoY5TRkeDkqrq0LzKzw
 lJPauP9ryrtjT9eZRrkITQub/vjhtYJfqV2s/Iv1vvWlnTOyPqwu2NDt8O+zuvPuWynmdSnP
 Mi4o7L4WfndJC7/Nk//vz9ff4++S/9we8c7y+b99n9YX/WouOLzxU6W4Jtu2E/eq5Bpmfdyj
 Plv02v/3n6N//tJkbxEOUWIpzkg01GIuKk4EAPoGYeTgAgAA
X-CMS-MailID: 20190716091440epcas1p4a076cdb435e969787951ff4a0135e07d
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190715124437eucas1p1827d7b5d7196f060799e5df6c27d29ad
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124437eucas1p1827d7b5d7196f060799e5df6c27d29ad@eucas1p1.samsung.com>
 <20190715124417.4787-5-l.luba@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_021448_358634_50588FC9 
X-CRM114-Status: GOOD (  20.60  )
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

SGksCgpUaGUgcGF0Y2g0fnBhdGNoNyBqdXN0IGFkZCB0aGUgSUQgdG8gY29udHJvbCB0aGUgY2xv
Y2sgZnJvbSBEVC4KWW91IGNhbiBzcXVhc2ggdGhlbSB0byBvbmUgcGF0Y2ggaW5zdGVhZCBvZiBz
cGxpdHRpbmcgb3V0IGFjY29yZGluZyB0bwp0aGUgdHlwZSBvZiBjbG9jay4KCk9uIDE5LiA3LiAx
NS4g7Jik7ZuEIDk6NDMsIEx1a2FzeiBMdWJhIHdyb3RlOgo+IEFkZCBuZWVkZWQgSURzIHRvIE1V
WGVzIHdoaWNoIGFyZSB1c2VkIGZyb20gRFQgdG8gcHJvcGVybHkgc2V0IGNsb2NrCj4gaGllcmFy
Y2h5Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEx1a2FzeiBMdWJhIDxsLmx1YmFAcGFydG5lci5zYW1z
dW5nLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9jbGsvc2Ftc3VuZy9jbGstZXh5bm9zNTQyMC5jIHwg
MTAgKysrKysrLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA0IGRlbGV0
aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsay9zYW1zdW5nL2Nsay1leHlub3M1
NDIwLmMgYi9kcml2ZXJzL2Nsay9zYW1zdW5nL2Nsay1leHlub3M1NDIwLmMKPiBpbmRleCAzNjFl
ZTUzZmM5ZmMuLjhmMWQzOWNiMmYxZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2Nsay9zYW1zdW5n
L2Nsay1leHlub3M1NDIwLmMKPiArKysgYi9kcml2ZXJzL2Nsay9zYW1zdW5nL2Nsay1leHlub3M1
NDIwLmMKPiBAQCAtNDYyLDcgKzQ2Miw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgc2Ftc3VuZ19m
aXhlZF9mYWN0b3JfY2xvY2sKPiAgCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgc2Ftc3VuZ19tdXhf
Y2xvY2sgZXh5bm9zNTgwMF9tdXhfY2xrc1tdIF9faW5pdGNvbnN0ID0gewo+ICAJTVVYKDAsICJt
b3V0X2FjbGs0MDBfaXNwIiwgbW91dF9ncm91cDNfNTgwMF9wLCBTUkNfVE9QMCwgMCwgMyksCj4g
LQlNVVgoMCwgIm1vdXRfYWNsazQwMF9tc2NsIiwgbW91dF9ncm91cDNfNTgwMF9wLCBTUkNfVE9Q
MCwgNCwgMyksCj4gKwlNVVgoQ0xLX01PVVRfQUNMSzQwMF9NU0NMLCAibW91dF9hY2xrNDAwX21z
Y2wiLCBtb3V0X2dyb3VwM181ODAwX3AsCj4gKwkJCVNSQ19UT1AwLCA0LCAzKSwKPiAgCU1VWChD
TEtfTU9VVF9BQ0xLNDAwX1dDT1JFLCAibW91dF9hY2xrNDAwX3djb3JlIiwgbW91dF9ncm91cDJf
NTgwMF9wLAo+ICAJCQlTUkNfVE9QMCwgMTYsIDMpLAo+ICAJTVVYKDAsICJtb3V0X2FjbGsxMDBf
bm9jIiwgbW91dF9ncm91cDFfNTgwMF9wLCBTUkNfVE9QMCwgMjAsIDIpLAo+IEBAIC01NDgsNyAr
NTQ5LDggQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBzYW1zdW5nX211eF9jbG9jayBleHlub3M1NDIw
X211eF9jbGtzW10gX19pbml0Y29uc3QgPSB7Cj4gIAkJCQlUT1BfU1BBUkUyLCA0LCAxKSwKPiAg
Cj4gIAlNVVgoMCwgIm1vdXRfYWNsazQwMF9pc3AiLCBtb3V0X2dyb3VwMV9wLCBTUkNfVE9QMCwg
MCwgMiksCj4gLQlNVVgoMCwgIm1vdXRfYWNsazQwMF9tc2NsIiwgbW91dF9ncm91cDFfcCwgU1JD
X1RPUDAsIDQsIDIpLAo+ICsJTVVYKENMS19NT1VUX0FDTEs0MDBfTVNDTCwgIm1vdXRfYWNsazQw
MF9tc2NsIiwgbW91dF9ncm91cDFfcCwKPiArCQkJU1JDX1RPUDAsIDQsIDIpLAo+ICAJTVVYKENM
S19NT1VUX0FDTEs0MDBfV0NPUkUsICJtb3V0X2FjbGs0MDBfd2NvcmUiLCBtb3V0X2dyb3VwMV9w
LAo+ICAJCQlTUkNfVE9QMCwgMTYsIDIpLAo+ICAJTVVYKDAsICJtb3V0X2FjbGsxMDBfbm9jIiwg
bW91dF9ncm91cDFfcCwgU1JDX1RPUDAsIDIwLCAyKSwKPiBAQCAtNjcwLDggKzY3Miw4IEBAIHN0
YXRpYyBjb25zdCBzdHJ1Y3Qgc2Ftc3VuZ19tdXhfY2xvY2sgZXh5bm9zNXhfbXV4X2Nsa3NbXSBf
X2luaXRjb25zdCA9IHsKPiAgCj4gIAlNVVgoMCwgIm1vdXRfc3dfYWNsazQwMF9pc3AiLCBtb3V0
X3N3X2FjbGs0MDBfaXNwX3AsCj4gIAkJCVNSQ19UT1AxMCwgMCwgMSksCj4gLQlNVVgoMCwgIm1v
dXRfc3dfYWNsazQwMF9tc2NsIiwgbW91dF9zd19hY2xrNDAwX21zY2xfcCwKPiAtCQkJU1JDX1RP
UDEwLCA0LCAxKSwKPiArCU1VWChDTEtfTU9VVF9TV19BQ0xLNDAwX01TQ0wsICJtb3V0X3N3X2Fj
bGs0MDBfbXNjbCIsCj4gKwkJCW1vdXRfc3dfYWNsazQwMF9tc2NsX3AsCVNSQ19UT1AxMCwgNCwg
MSksCj4gIAlNVVgoQ0xLX01PVVRfU1dfQUNMSzIwMCwgIm1vdXRfc3dfYWNsazIwMCIsIG1vdXRf
c3dfYWNsazIwMF9wLAo+ICAJCQlTUkNfVE9QMTAsIDgsIDEpLAo+ICAJTVVYKDAsICJtb3V0X3N3
X2FjbGsyMDBfZnN5czIiLCBtb3V0X3N3X2FjbGsyMDBfZnN5czJfcCwKPiAKCgotLSAKQmVzdCBS
ZWdhcmRzLApDaGFud29vIENob2kKU2Ftc3VuZyBFbGVjdHJvbmljcwoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
