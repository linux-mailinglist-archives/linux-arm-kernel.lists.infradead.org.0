Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 143E16A49E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 11:10:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kBZfUDyQGKLBBpLDLsWOddJ2sdt9wtKWqbRvWERPtos=; b=BA3/PptRTXBDZ4
	oJSyJeL2Yyd1Cu5CvEFGB0lJV8bk+OMqi7L19KNEKWVnLZsrjO4zeIGlZlRB5Ts+NyeLb2QN823Fb
	zYFp4Cxtl1UuHr9BrjtbiJzYlTuik5nhiDBFjzkz+T84huetZLuDKC39DdthBoLoV3CPzHVaQq+/1
	hPiUSIKUQpg4qVzKYIQQRG8yXCeSRck8nOm/5MxykO7CqsMELoKlss7QrUJjgEdvY0l8VYOFGwoya
	UKOV7Q+BVaaiyomYGFNP4APNnG7ECS61dI+++Y2t34iW/N9IC7bg6TFCy1EbFqbMbek3lrAabEA+3
	u4KF9QPKBk8iBs9fZZHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnJTv-0002WR-9z; Tue, 16 Jul 2019 09:10:43 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnJTg-0002Vl-QA
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 09:10:30 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20190716091025epoutp02dcd0d0a7007685a5c73b8ce990b3bb87~x2CsLjf4M1045410454epoutp02c
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 09:10:25 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20190716091025epoutp02dcd0d0a7007685a5c73b8ce990b3bb87~x2CsLjf4M1045410454epoutp02c
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563268225;
 bh=P4u5h85CFzOB9l4bM0VuyGV6wejNo+c68JCtJ/yWYn0=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=EUYjhMJw564H5OeNj+YfIPF1e4OZLpuY/6Gm57bQjniI5ceUcJ3RPAtGF0uJ33rjs
 52eLLhAP8YQu6rsNtIXCYVXDh8J/LWuixoRuj+bV9y1xWDfiS56n//2yRzBWcBk8Z2
 uolK4wB41Q1GBfdDEYfTrvd24zEPZklZFKRLbwRs=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190716091024epcas1p2c7ba029d12e0577ee127fb8474c81887~x2Crnmc0x1582915829epcas1p2s;
 Tue, 16 Jul 2019 09:10:24 +0000 (GMT)
Received: from epsmges1p3.samsung.com (unknown [182.195.40.154]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 45nvkN3VBNzMqYkd; Tue, 16 Jul
 2019 09:10:20 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 73.85.04066.C749D2D5; Tue, 16 Jul 2019 18:10:20 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTPA id
 20190716091019epcas1p3b3d7a6a80b958ec361e4f21f0baa65bd~x2CnafxxN0663706637epcas1p32;
 Tue, 16 Jul 2019 09:10:19 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190716091019epsmtrp1e7487c448d28a6b99e4169f88cae82c9~x2CnZc0C52476524765epsmtrp1o;
 Tue, 16 Jul 2019 09:10:19 +0000 (GMT)
X-AuditID: b6c32a37-e27ff70000000fe2-77-5d2d947c79f1
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 3B.D4.03706.B749D2D5; Tue, 16 Jul 2019 18:10:19 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190716091019epsmtip2d1ac0b25c7a2b174b117498e68f3c51f~x2Cm5kB5d2306223062epsmtip2-;
 Tue, 16 Jul 2019 09:10:19 +0000 (GMT)
Subject: Re: [PATCH v1 03/50] clk: samsung: change parent of
 dout_aclk400_wcore in Exynos5420
To: Lukasz Luba <l.luba@partner.samsung.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <6d3361b5-9e1f-eb1a-aaa9-3ca15ed5ad1d@samsung.com>
Date: Tue, 16 Jul 2019 18:13:25 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715124417.4787-4-l.luba@partner.samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrEJsWRmVeSWpSXmKPExsWy7bCmvm7NFN1Yg13vpS1urTvHarFxxnpW
 i/lHgKz+x6+ZLc6f38BucbbpDbvFrQYZi02Pr7FafOy5x2pxedccNosZ5/cxWaw9cpfdYun1
 i0wWF0+5WtxuXMFm0br3CLvF4TftrBb/rm1kcRDyWDNvDaPH+xut7B6bVnWyeWxeUu9x8N0e
 Jo++LasYPT5vkgtgj8q2yUhNTEktUkjNS85PycxLt1XyDo53jjc1MzDUNbS0MFdSyEvMTbVV
 cvEJ0HXLzAF6QkmhLDGnFCgUkFhcrKRvZ1OUX1qSqpCRX1xiq5RakJJTYFmgV5yYW1yal66X
 nJ9rZWhgYGQKVJiQnfH9+HGmggWcFYcPJjQwPmDvYuTkkBAwkXh45TdrFyMXh5DADkaJxj8X
 GSGcT4wS+/a3QGW+MUo877wN1/J443l2iMReRon//48ygySEBN4zSnw7xwJiCwvES/z+Ng2s
 QUTgHKNEx1NpEJtZYBqTxKx5oiA2m4CWxP4XN9hAbH4BRYmrPx4zgti8AnYSG57uB5vDIqAq
 MfXxFrD5ogIREqeOzGOBqBGUODnzCZjNKWAv0dzRzQoxX1zi1pP5TBC2vETz1tnMIIdKCBxj
 l/ixdTIzxAcuEleOtELZwhKvjm+B+kxK4mV/G5RdLbHy5BE2iOYORokt+y+wQiSMJfYvnQy0
 gQNog6bE+l36EGFFiZ2/5zJCLOaTePe1hxWkREKAV6KjTQiiRFni8oO7TBC2pMTi9k62CYxK
 s5C8MwvJC7OQvDALYdkCRpZVjGKpBcW56anFhgXGyJG9iRGcvrXMdzBuOOdziFGAg1GJh/fE
 Hp1YIdbEsuLK3EOMEhzMSiK8tl+1Y4V4UxIrq1KL8uOLSnNSiw8xmgJDeyKzlGhyPjC35JXE
 G5oaGRsbW5gYmpkaGiqJ8877oxkrJJCeWJKanZpakFoE08fEwSnVwMgvx5UwRdpmUda3PfMk
 A+fe37zb6EuR2PW/eWKBxRNSPy3ItLsySWFS3V5pjWs2049tqJ2oumRVYv65HWl+yW2pp+Q/
 nGFJOLp4tvyelJf8k39erDohxaFkFqn2c6lHt/+6rTx93yW5OvsTDDw5NQ7mGbjM0um0V9+X
 8Dljpr38YQeLfWGr65VYijMSDbWYi4oTAbZNqaH1AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrHIsWRmVeSWpSXmKPExsWy7bCSvG71FN1Yg9X39CxurTvHarFxxnpW
 i/lHgKz+x6+ZLc6f38BucbbpDbvFrQYZi02Pr7FafOy5x2pxedccNosZ5/cxWaw9cpfdYun1
 i0wWF0+5WtxuXMFm0br3CLvF4TftrBb/rm1kcRDyWDNvDaPH+xut7B6bVnWyeWxeUu9x8N0e
 Jo++LasYPT5vkgtgj+KySUnNySxLLdK3S+DK+H78OFPBAs6KwwcTGhgfsHcxcnJICJhIPN54
 Hsjm4hAS2M0o8aR1JwtEQlJi2sWjzF2MHEC2sMThw8UQNW8ZJVrPXmMGqREWiJf4/W0aWLOI
 wDlGib6/Z8GmMgtMY5I4sZ4ZouM4o8Tz5w/BEmwCWhL7X9xgA7H5BRQlrv54zAhi8wrYSWx4
 uh9sM4uAqsTUx1vANogKREhMugZxEa+AoMTJmU/AbE4Be4nmjm5WiGXqEn/mXWKGsMUlbj2Z
 zwRhy0s0b53NPIFReBaS9llIWmYhaZmFpGUBI8sqRsnUguLc9NxiwwLDvNRyveLE3OLSvHS9
 5PzcTYzgWNbS3MF4eUn8IUYBDkYlHt4Te3RihVgTy4orcw8xSnAwK4nw2n7VjhXiTUmsrEot
 yo8vKs1JLT7EKM3BoiTO+zTvWKSQQHpiSWp2ampBahFMlomDU6qBMb9B9U/wm2AxiYNbTyfN
 EagKromu23X+0b/tu27MYHxW90I2oNMjMre1kfuYdzDHlUXhO3s8Q+XPHWlvPmJ/5pH1VreZ
 1/NStfMcJ1SI9is+P6tUUaGSlPT30/vZmvOeih39dsbAPDM5xKvHJneOrkr2LIHuSXkKCrON
 uP/M26e8/oBPQ+ZBJZbijERDLeai4kQA/nCKoOECAAA=
X-CMS-MailID: 20190716091019epcas1p3b3d7a6a80b958ec361e4f21f0baa65bd
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190715124436eucas1p28a581bc25f6dae52a5b9b1af26d26368
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124436eucas1p28a581bc25f6dae52a5b9b1af26d26368@eucas1p2.samsung.com>
 <20190715124417.4787-4-l.luba@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_021029_265122_CD4C7EBE 
X-CRM114-Status: GOOD (  18.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
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

T24gMTkuIDcuIDE1LiDsmKTtm4QgOTo0MywgTHVrYXN6IEx1YmEgd3JvdGU6Cj4gQ2hhbmdlIHBh
cmVudCBvZiBkb3V0X2FjbGs0MDBfd2NvcmUgdG8gbW91dF9hY2xrNDAwX3djb3JlIHdoaWNoIHJl
ZmxlY3RzCj4gdG9wb2xvZ3kgZGVzY3JpYmVkIGluIHRoZSBSTS4KPiAKPiBTaWduZWQtb2ZmLWJ5
OiBMdWthc3ogTHViYSA8bC5sdWJhQHBhcnRuZXIuc2Ftc3VuZy5jb20+Cj4gLS0tCj4gIGRyaXZl
cnMvY2xrL3NhbXN1bmcvY2xrLWV4eW5vczU0MjAuYyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Y2xrL3NhbXN1bmcvY2xrLWV4eW5vczU0MjAuYyBiL2RyaXZlcnMvY2xrL3NhbXN1bmcvY2xrLWV4
eW5vczU0MjAuYwo+IGluZGV4IGQzNTM4NzBlN2ZkYS4uMzYxZWU1M2ZjOWZjIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvY2xrL3NhbXN1bmcvY2xrLWV4eW5vczU0MjAuYwo+ICsrKyBiL2RyaXZlcnMv
Y2xrL3NhbXN1bmcvY2xrLWV4eW5vczU0MjAuYwo+IEBAIC01NzcsNyArNTc3LDcgQEAgc3RhdGlj
IGNvbnN0IHN0cnVjdCBzYW1zdW5nX211eF9jbG9jayBleHlub3M1NDIwX211eF9jbGtzW10gX19p
bml0Y29uc3QgPSB7Cj4gIAo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IHNhbXN1bmdfZGl2X2Nsb2Nr
IGV4eW5vczU0MjBfZGl2X2Nsa3NbXSBfX2luaXRjb25zdCA9IHsKPiAgCURJVihDTEtfRE9VVF9B
Q0xLNDAwX1dDT1JFLCAiZG91dF9hY2xrNDAwX3djb3JlIiwKPiAtCQkJIm1vdXRfYWNsazQwMF93
Y29yZV9icGxsIiwgRElWX1RPUDAsIDE2LCAzKSwKPiArCQkJIm1vdXRfYWNsazQwMF93Y29yZSIs
IERJVl9UT1AwLCAxNiwgMyksCj4gIH07Cj4gIAo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IHNhbXN1
bmdfZ2F0ZV9jbG9jayBleHlub3M1NDIwX2dhdGVfY2xrc1tdIF9faW5pdGNvbnN0ID0gewo+IAoK
QWNrZWQtYnk6IENoYW53b28gQ2hvaSA8Y3cwMC5jaG9pQHNhbXN1bmcuY29tPgoKSWYgcG9zc2li
bGUsIHlvdSBiZXR0ZXIgdG8gc2VuZCBpdCB0byBzdGFibGUgbWFpbGluZyBsaXN0CndpdGggRml4
ZXMgaW5mb3JtYXRpb24uCgotLSAKQmVzdCBSZWdhcmRzLApDaGFud29vIENob2kKU2Ftc3VuZyBF
bGVjdHJvbmljcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
