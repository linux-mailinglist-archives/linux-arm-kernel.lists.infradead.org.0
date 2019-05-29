Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C562D513
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 07:31:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GtUShonnP9H3vm3Nsljc+vs2LsejRVTMWxyGIy2ure4=; b=N1+LieYxDjHH8K
	LnqUGfSl9wCkPNTHKYnVL276BmZZrsJoUB6xWbRaJVia9sQHX/OLFU/f9tvO/Szxu9mG35smDpL+Z
	k6Mik9nD1vHYtqdX+UoKp9wAyeF/GevSD4U6XL56nFEQn07a/AlAGapT6p/xXYJ7h/rbclkMV4K7Q
	tbwRFG6mJQJprhK16FCn+4rDIRP0lvFSJkNHzjsdPvH1rQlETgCfWY6IJZ41P+N3Cc+DecfSitQj8
	J9wum9utwxE2KdIBsOoGSfPejE65KY9LlSTWEMLybVx+ijrxaXvft3oP9u5BK+SmkclUFpaOKLURc
	91GN7NTBDbtRmJny6DTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVrB7-0008QM-0T; Wed, 29 May 2019 05:31:09 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVrAy-0008OA-Rj
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 05:31:03 +0000
Received: from epcas1p2.samsung.com (unknown [182.195.41.46])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20190529053056epoutp042b8238d64077c36e749240064024a185~jEFXacdbq1478214782epoutp04e
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 05:30:56 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20190529053056epoutp042b8238d64077c36e749240064024a185~jEFXacdbq1478214782epoutp04e
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1559107856;
 bh=lhXRTVWS6DWGaq4uP/utrGfqkFZLh3nlIdqmxmiwbKI=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=Vu39N45Ojv1FEg8PBF5E/d50agi2r7pIQric2q1tbcSonqOHYyaNZJtHjYmiOVF9V
 dWnR/n+jmhDS5rggknGcxoqTVtoX/WtWWnja1ydpzESH4WNY6ziqCxKZiNNKj5SiiT
 8cAPHFSkKKyNehvkNwnkNrpTfsYaR5d8FYK6QsEM=
Received: from epsmges1p1.samsung.com (unknown [182.195.40.157]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190529053053epcas1p22496fa0618ec2905e4dbc6dc546410bd~jEFUhVD-S3111431114epcas1p2a;
 Wed, 29 May 2019 05:30:53 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 7A.AB.04139.A091EEC5; Wed, 29 May 2019 14:30:50 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20190529053049epcas1p4a6f751b8c1411cd4190f712b3415d433~jEFQzQM0_2274122741epcas1p4B;
 Wed, 29 May 2019 05:30:49 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190529053049epsmtrp21c1dc2b7c31f797dbba5e0c006ed1f9b~jEFQyfBGY1033110331epsmtrp2a;
 Wed, 29 May 2019 05:30:49 +0000 (GMT)
X-AuditID: b6c32a35-973ff7000000102b-f6-5cee190a7426
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 92.28.03662.9091EEC5; Wed, 29 May 2019 14:30:49 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190529053049epsmtip2ee1ffbf70803ebb405a308146a8684bc~jEFQr2_Tc2672926729epsmtip2Y;
 Wed, 29 May 2019 05:30:49 +0000 (GMT)
Subject: Re: [PATCH] clk: samsung: exynos5433: Use of_clk_get_parent_count()
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <2a68376b-32a4-a016-124f-c7fa3b8579bd@samsung.com>
Date: Wed, 29 May 2019 14:32:46 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190525115542.107929-1-wangkefeng.wang@huawei.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Se0hTcRTmt7tdr4/VbWkeR9m8EZTh4zZXMzSsRIQkpAgkBvOilynuxe4m
 +YBGYeUMzFRYk0q0oITSloZFpagp9jLRHo60fBRmPkpJxNLadhf533e+853fOd/5HQKTlOFS
 IldvZk16RkvhAcL7nTtjogLCZlWxtrrNyvLxb5iyr6/JT+kcfytS2vueCJKEqc6GUjz13vVT
 qQvO8HTsRF5CDstksyYZq88yZOfqNYnU4WPqQ2rFnlg6io5X7qVkekbHJlLJaelRKbladzNK
 ls9oLW4qneE4KmZ/gslgMbOyHANnTqRYY7bWGG+M5hgdZ9FrorMMun10bOxuhVuYmZez3P5V
 aOzyP/nDtoSsaNHPhvwJIOOgt/wnZkMBhIRsRWAvGxfywTyChsE5ER8sIphccgn/lbRP3/Op
 HiMYsz7zqeYQ1FbWiTyqjWQatDybxjw4mEyFsfl3yIMx8jA8cjm9GCcjoW3yPe7B68kIeLM0
 7uXF5H54OfhQYEMEISS3w8yCykOHkBnwsbtJxEs2QO/lCe9A/uQB6H7fj/HPh4Jr4pqAx1vh
 TEuN1xuQL3B4ap/BeAfJ8Ge13+dmI0z1NPuWIYWF2cc4j4vgVm8XzhefR9Dc9lrEJ+TQdqPS
 OxxG7oTGhzE8HQEPfl3xeVwHsz8viDwSIMVw/qyEl2yDgU/DAh6HQf25Uvwiohxr7DjWWHCs
 seD436wWCRvQJtbI6TQsRxvptb/tRN5DjFS0oqpXaR2IJBAVJM4Mm1FJREw+V6DrQEBgVLA4
 sWpaJRFnMwWFrMmgNlm0LNeBFO5lV2DSkCyD+6z1ZjWt2C2Xy5Vx9B4FTVOhYnXgkEpCahgz
 m8eyRtb0r05A+EutqKg68vvxT3duTz1KyBhYKXaUOFK6vkQcsDpijk6tL+nRLTVYDmoKj7ha
 BZNDPbLw58Vm7dRyTdWb37LV+oqB3qRd9lsjJrW181JgZnH1rh1a6QuH8+uI6/ToytCifTTj
 XBDTGKps/3B1x+LdpPzlQgF2c/PoiaPT5VuGq0c/ynWfKSGXw9CRmIlj/gKdt4KLngMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrCLMWRmVeSWpSXmKPExsWy7bCSvC6n5LsYg2/39C36H79mtjh/fgO7
 xabH11gtZpzfx+TA4rFpVSebx+Yl9R6fN8kFMEdx2aSk5mSWpRbp2yVwZfw68JKl4Ahnxceu
 H4wNjN/Yuxg5OSQETCQOvNnM0sXIxSEksJtRom3eBCaIhKTEtItHmbsYOYBsYYnDh4tBwkIC
 bxklzp4MBLGFBXwktp56wwxiiwh4SDz6dJ0RxGYW8JbYc2sTI8TMKYwSu69fZwFJsAloSex/
 cYMNxOYXUJS4+uMxWAOvgJ3E2Su7mEB2sQioSrz9HAMSFhWIkDjzfgULRImgxMmZT8BsTgFH
 iWM3LjJD7FKX+DPvEpQtLnHryXwmCFteonnrbOYJjMKzkLTPQtIyC0nLLCQtCxhZVjFKphYU
 56bnFhsWGOWllusVJ+YWl+al6yXn525iBMeFltYOxhMn4g8xCnAwKvHwJki+jRFiTSwrrsw9
 xCjBwawkwms75U2MEG9KYmVValF+fFFpTmrxIUZpDhYlcV75/GORQgLpiSWp2ampBalFMFkm
 Dk6pBsa1mosCF91V2/6jfal/BOfVZ1bn/Pb8domY+ZLzS4m49oLzm0rcn8cvtnybKC95vjPi
 i9vqW7s2mS9/fojltEzUS323yxuks/7PWzh/5r69NmJR0mZvflp1antdcb32ReCYgRPLErut
 e+LvHTKXObD0tVOZbdCt2De7BZfdfh7pVh5sOfW45TsGJZbijERDLeai4kQA22Br4IcCAAA=
X-CMS-MailID: 20190529053049epcas1p4a6f751b8c1411cd4190f712b3415d433
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190525114732epcas5p3f9d8aec51fb32c7e2ca80f0a45afe8a8
References: <CGME20190525114732epcas5p3f9d8aec51fb32c7e2ca80f0a45afe8a8@epcas5p3.samsung.com>
 <20190525115542.107929-1-wangkefeng.wang@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_223101_389942_039EA95E 
X-CRM114-Status: GOOD (  20.19  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAxOS4gNS4gMjUuIOyYpO2bhCA4OjU1LCBLZWZlbmcgV2FuZyB3cm90ZToKPiBVc2Ug
b2ZfY2xrX2dldF9wYXJlbnRfY291bnQoKSBpbnN0ZWFkIG9mIG9wZW4gY29kaW5nLgo+IAo+IFNp
Z25lZC1vZmYtYnk6IEtlZmVuZyBXYW5nIDx3YW5na2VmZW5nLndhbmdAaHVhd2VpLmNvbT4KPiAt
LS0KPiAgZHJpdmVycy9jbGsvc2Ftc3VuZy9jbGstZXh5bm9zNTQzMy5jIHwgNCArKy0tCj4gIDEg
ZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvY2xrL3NhbXN1bmcvY2xrLWV4eW5vczU0MzMuYyBiL2RyaXZlcnMvY2xr
L3NhbXN1bmcvY2xrLWV4eW5vczU0MzMuYwo+IGluZGV4IGRhZTFjOTZkZTkzMy4uMTRlMjUzOTE1
Y2E0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvY2xrL3NhbXN1bmcvY2xrLWV4eW5vczU0MzMuYwo+
ICsrKyBiL2RyaXZlcnMvY2xrL3NhbXN1bmcvY2xrLWV4eW5vczU0MzMuYwo+IEBAIC01NTkwLDgg
KzU1OTAsOCBAQCBzdGF0aWMgaW50IF9faW5pdCBleHlub3M1NDMzX2NtdV9wcm9iZShzdHJ1Y3Qg
cGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAJZGF0YS0+bnJfY2xrX3NhdmUgPSBpbmZvLT5ucl9j
bGtfcmVnczsKPiAgCWRhdGEtPmNsa19zdXNwZW5kID0gaW5mby0+c3VzcGVuZF9yZWdzOwo+ICAJ
ZGF0YS0+bnJfY2xrX3N1c3BlbmQgPSBpbmZvLT5ucl9zdXNwZW5kX3JlZ3M7Cj4gLQlkYXRhLT5u
cl9wY2xrcyA9IG9mX2NvdW50X3BoYW5kbGVfd2l0aF9hcmdzKGRldi0+b2Zfbm9kZSwgImNsb2Nr
cyIsCj4gLQkJCQkJCSAgICAiI2Nsb2NrLWNlbGxzIik7Cj4gKwlkYXRhLT5ucl9wY2xrcyA9IG9m
X2Nsa19nZXRfcGFyZW50X2NvdW50KGRldi0+b2Zfbm9kZSk7Cj4gKwo+ICAJaWYgKGRhdGEtPm5y
X3BjbGtzID4gMCkgewo+ICAJCWRhdGEtPnBjbGtzID0gZGV2bV9rY2FsbG9jKGRldiwgc2l6ZW9m
KHN0cnVjdCBjbGsgKiksCj4gIAkJCQkJICAgZGF0YS0+bnJfcGNsa3MsIEdGUF9LRVJORUwpOwo+
IAoKSXQgdXNlcyB0aGUgaGVscGVyIGZ1bmN0aW9uIGZyb20gQ0NGLiBMb29rcyBnb29kIHRvIG1l
LgoKQWNrZWQtYnk6IENoYW53b28gQ2hvaSA8Y3cwMC5jaG9pQHNhbXN1bmcuY29tPgoKLS0gCkJl
c3QgUmVnYXJkcywKQ2hhbndvbyBDaG9pClNhbXN1bmcgRWxlY3Ryb25pY3MKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
