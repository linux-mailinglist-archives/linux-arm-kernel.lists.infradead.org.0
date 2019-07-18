Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 274096C8B3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 07:22:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WkFPnfCxsokAzem1icZ8cTnlQ8fxywTeXzASYFlaGPY=; b=NCIlMl8dm5r1OO
	LU0TZb8sa3KD698UX2KRZ4M9UrNc5xv7W4Pi3F8GMocJbRLjcEGP5QpSKwk/RNKePS1My0PpQCHGF
	XoNp8mRj+gPVdDZATNWW4JQNLRiTnA7x3azwaJpUiJ6piFpoHFNggJAu9YemERcUlsfl5resPyLgk
	WjKxJlZt92p6C2bZUHJvj0GHeJJHfRRVQjnmX+sFIhdbXOkvaV/lhF3wYP8pWic9qY/dCBtG2fR+5
	42cSPCuWYft2OfMLWpQmXfgnIEpKQ3W7T0wHjEvktLfy6xoSKk3lA13qGz47GaGrnjKIzMuAkei+4
	taFDC1vI737L1o7+48xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnyrZ-0007r1-Qf; Thu, 18 Jul 2019 05:21:53 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnyr4-0007d3-0I
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 05:21:23 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190718052120euoutp02c6a7ef45138fd25872aab7873a8cf4a7~yaNPrhYaZ2361123611euoutp02P
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 05:21:20 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190718052120euoutp02c6a7ef45138fd25872aab7873a8cf4a7~yaNPrhYaZ2361123611euoutp02P
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563427280;
 bh=MQTJaLsZa5Z66qa56b/K0ThCfRuud/sV++lFtcHn7bo=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=MlWN+kyKvzlswni5jp/idLYT7ZkJegZoblk6lvPuqjyhRhSysZsegMeJV98DCNZHe
 CfeWEk09iD0RovdLNiK4pVHNwOkkQOmkNCQ4cUNhfML1MAaeLWdz2htVE+BUyOjbz2
 jNxB+lJAGMchG1cj6jk6PmCgrYLMYr+NsVzKdhCU=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190718052119eucas1p271934bc88edfaa452cc04b4072bc434a~yaNPBnsLk0210602106eucas1p2S;
 Thu, 18 Jul 2019 05:21:19 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 5A.FE.04377.FC1003D5; Thu, 18
 Jul 2019 06:21:19 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190718052118eucas1p1499dc82caad876ea9a565b37772298ab~yaNOQD0nU2247022470eucas1p1c;
 Thu, 18 Jul 2019 05:21:18 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190718052118eusmtrp2c76a9532ac52a829d0a52eb9812b3dd2~yaNOB7YKO1144111441eusmtrp2J;
 Thu, 18 Jul 2019 05:21:18 +0000 (GMT)
X-AuditID: cbfec7f4-12dff70000001119-2c-5d3001cf3cc4
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 67.FC.04146.EC1003D5; Thu, 18
 Jul 2019 06:21:18 +0100 (BST)
Received: from [106.120.51.20] (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190718052117eusmtip20608f0bdd2d164fa2f4a0bca6c120207~yaNNKA1vF1072010720eusmtip2k;
 Thu, 18 Jul 2019 05:21:17 +0000 (GMT)
Subject: Re: [PATCH v1 04/50] clk: samsung: add IDs to manage aclk400_mscl
 in Exynos5420
To: Chanwoo Choi <cw00.choi@samsung.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org
From: Lukasz Luba <l.luba@partner.samsung.com>
Message-ID: <00a88d56-92e6-3924-4e50-cb2871758b3e@partner.samsung.com>
Date: Thu, 18 Jul 2019 07:21:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <ce268a6e-b450-c405-6fd0-4b4bc93def45@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0iTYRj13XfdcvU6Kx80KgaCBWpFP95KMqPLfghFQpQhtexDJZ21z9kV
 2jJrDcuwMvtKzcq0ZZZLU2dWXmrZxSV2ESUxFKJUolzCMCznZ+S/85xz3vM8B16e0nxmgvkU
 Q4ZgNOhTtayKfvjc6w53oyUJS7znKNJd2c6QqoJ7DPno+cKQ4taJMbd/kCJu932OvDk+xBFH
 /weG/MjpZUin8ypLCtyPFeRu6yeOlH7sUJCOl+tJj6WcJdmNrRxpGTrFkPEPVfQaja6iqALp
 vndlczqH/TSre3DzmO5stR3pRhzzN7Pxqqg9QmpKpmCMXL1LlVz77A63bzTwoO1FG21GjdiG
 lDzg5TDa7kI+rMHlCLJ6t9iQagJ7ELxyNjGyMILAaVn870Feq1khm8oQ2EprKXkYRuBqOsH5
 XIE4HoaaRzifMBu/RGDpsyl8AoXzFSAVzbEhnmdxBNTZ9/toNd4AJW01kxYah0L9n9e0D8/B
 26Cz2olkTwC0XR6Y5JU4Gsp+vafkyCDoHiieil8AWTVXJg8CnM3D9cYGzrcL8DoYHwqVGwTC
 N1c1J+N58KdefgtYBPOZEiTjo9CfWzjlWQUtrg7GF0PhRXDPGSnTMVBpPc/K6TOhazhAvmAm
 5D28RMm0GqwnNbI7DKpz3k4tmgtlFfncOaSVpvWSpnWRpnWR/u+9hmg7ChJMYlqSIC4zCAci
 RH2aaDIkRSSmpznQxMd7Ne7y1CHn793NCPNI6682L4xM0DD6TPFQWjMCntLOVvd8naDUe/SH
 DgvG9J1GU6ogNqMQntYGqY/49e3Q4CR9hrBXEPYJxn+qglcGm1H4YGLTyiZVfz6b3tBu8FyE
 rt9jVde6XSm2Gxv7MpWVHu8K59YLtxxbNr1j7TVjflZTgTc2eKQy6mmYyTp8JzfD4eESfj7p
 vDuj583ol1mWWZJ/SwntTIiRMrLiFkS/8EMb4hILVVROb2yPVfkIha3oW7u5TJL8Q+bfjlvW
 vl1Li8n6pYspo6j/C0S5Mlx0AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrBIsWRmVeSWpSXmKPExsVy+t/xe7rnGA1iDZZO57O4te4cq8XGGetZ
 La5/ec5qMf8IkNv/+DWzxfnzG9gtzja9YbfY9Pgaq8XHnnusFpd3zWGzmHF+H5PF2iN32S2W
 Xr/IZHHxlKvF7cYVbBate4+wWxx+085q8e/aRhYHIY8189Ywery/0crusWlVJ5vH5iX1Hn1b
 VjF6fN4kF8AWpWdTlF9akqqQkV9cYqsUbWhhpGdoaaFnZGKpZ2hsHmtlZKqkb2eTkpqTWZZa
 pG+XoJex/ehq9oJvwhVdJ06yNDDuFehi5OSQEDCRmHSkgamLkYtDSGApo8SW29vZIRJiEpP2
 wdjCEn+udbFBFL1mlHg9ewFYQlggSuLYupvsIAkRgVOMEt2PFrOBJJgFpjFJnFjPDNHxh1Hi
 //rNLF2MHBxsAnoSO1YVgtTwCrhJLDy5lQnEZhFQldj5/wwLiC0qECHR1zabDaJGUOLkzCdg
 cU4Be4nlX68yQ8w3k5i3+SGULS5x68l8JghbXqJ562zmCYxCs5C0z0LSMgtJyywkLQsYWVYx
 iqSWFuem5xYb6hUn5haX5qXrJefnbmIExvq2Yz8372C8tDH4EKMAB6MSD+8NJf1YIdbEsuLK
 3EOMEhzMSiK8t18ChXhTEiurUovy44tKc1KLDzGaAj03kVlKNDkfmIbySuINTQ3NLSwNzY3N
 jc0slMR5OwQOxggJpCeWpGanphakFsH0MXFwSjUwzpRUVVp01djzV/3xxNf/fnyYvlvOkXlt
 3+6FZZK8SjOFRepY2g/ND3kq3TmTl+fsicMlK2Kbcl15uJIezuxpOPqtOUpxw4wanQiev2Gr
 2jwevpB0PTbz1AW2kzsb+pavzX/8Pswrb5b63x1t17jkupT4/deF5OcxfT1S/fKNjedflZ25
 p2ouKrEUZyQaajEXFScCAJCbXS0LAwAA
X-CMS-MailID: 20190718052118eucas1p1499dc82caad876ea9a565b37772298ab
X-Msg-Generator: CA
X-RootMTR: 20190715124437eucas1p1827d7b5d7196f060799e5df6c27d29ad
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124437eucas1p1827d7b5d7196f060799e5df6c27d29ad
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124437eucas1p1827d7b5d7196f060799e5df6c27d29ad@eucas1p1.samsung.com>
 <20190715124417.4787-5-l.luba@partner.samsung.com>
 <ce268a6e-b450-c405-6fd0-4b4bc93def45@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_222122_177236_836D10F2 
X-CRM114-Status: GOOD (  17.12  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, b.zolnierkie@samsung.com, sboyd@kernel.org,
 mturquette@baylibre.com, krzk@kernel.org, a.hajda@samsung.com,
 robh+dt@kernel.org, kyungmin.park@samsung.com, kgene@kernel.org,
 myungjoo.ham@samsung.com, s.nawrocki@samsung.com, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQ2hhbndvbywKCk9uIDcvMTYvMTkgMTE6MTcgQU0sIENoYW53b28gQ2hvaSB3cm90ZToKPiBI
aSwKPiAKPiBUaGUgcGF0Y2g0fnBhdGNoNyBqdXN0IGFkZCB0aGUgSUQgdG8gY29udHJvbCB0aGUg
Y2xvY2sgZnJvbSBEVC4KPiBZb3UgY2FuIHNxdWFzaCB0aGVtIHRvIG9uZSBwYXRjaCBpbnN0ZWFk
IG9mIHNwbGl0dGluZyBvdXQgYWNjb3JkaW5nIHRvCj4gdGhlIHR5cGUgb2YgY2xvY2suClRoYW5r
IHlvdSBmb3IgdGhlIHJldmlldy4gWWVzLCB5b3UgYXJlIHJpZ2h0IGl0IG5lZWRzIHRvIGJlIHNx
dWFzaGVkLgoKUmVnYXJkcywKTHVrYXN6Cj4gCj4gT24gMTkuIDcuIDE1LiDsmKTtm4QgOTo0Mywg
THVrYXN6IEx1YmEgd3JvdGU6Cj4+IEFkZCBuZWVkZWQgSURzIHRvIE1VWGVzIHdoaWNoIGFyZSB1
c2VkIGZyb20gRFQgdG8gcHJvcGVybHkgc2V0IGNsb2NrCj4+IGhpZXJhcmNoeS4KPj4KPj4gU2ln
bmVkLW9mZi1ieTogTHVrYXN6IEx1YmEgPGwubHViYUBwYXJ0bmVyLnNhbXN1bmcuY29tPgo+PiAt
LS0KPj4gICBkcml2ZXJzL2Nsay9zYW1zdW5nL2Nsay1leHlub3M1NDIwLmMgfCAxMCArKysrKyst
LS0tCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkK
Pj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL3NhbXN1bmcvY2xrLWV4eW5vczU0MjAuYyBi
L2RyaXZlcnMvY2xrL3NhbXN1bmcvY2xrLWV4eW5vczU0MjAuYwo+PiBpbmRleCAzNjFlZTUzZmM5
ZmMuLjhmMWQzOWNiMmYxZSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9jbGsvc2Ftc3VuZy9jbGst
ZXh5bm9zNTQyMC5jCj4+ICsrKyBiL2RyaXZlcnMvY2xrL3NhbXN1bmcvY2xrLWV4eW5vczU0MjAu
Ywo+PiBAQCAtNDYyLDcgKzQ2Miw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgc2Ftc3VuZ19maXhl
ZF9mYWN0b3JfY2xvY2sKPj4gICAKPj4gICBzdGF0aWMgY29uc3Qgc3RydWN0IHNhbXN1bmdfbXV4
X2Nsb2NrIGV4eW5vczU4MDBfbXV4X2Nsa3NbXSBfX2luaXRjb25zdCA9IHsKPj4gICAJTVVYKDAs
ICJtb3V0X2FjbGs0MDBfaXNwIiwgbW91dF9ncm91cDNfNTgwMF9wLCBTUkNfVE9QMCwgMCwgMyks
Cj4+IC0JTVVYKDAsICJtb3V0X2FjbGs0MDBfbXNjbCIsIG1vdXRfZ3JvdXAzXzU4MDBfcCwgU1JD
X1RPUDAsIDQsIDMpLAo+PiArCU1VWChDTEtfTU9VVF9BQ0xLNDAwX01TQ0wsICJtb3V0X2FjbGs0
MDBfbXNjbCIsIG1vdXRfZ3JvdXAzXzU4MDBfcCwKPj4gKwkJCVNSQ19UT1AwLCA0LCAzKSwKPj4g
ICAJTVVYKENMS19NT1VUX0FDTEs0MDBfV0NPUkUsICJtb3V0X2FjbGs0MDBfd2NvcmUiLCBtb3V0
X2dyb3VwMl81ODAwX3AsCj4+ICAgCQkJU1JDX1RPUDAsIDE2LCAzKSwKPj4gICAJTVVYKDAsICJt
b3V0X2FjbGsxMDBfbm9jIiwgbW91dF9ncm91cDFfNTgwMF9wLCBTUkNfVE9QMCwgMjAsIDIpLAo+
PiBAQCAtNTQ4LDcgKzU0OSw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgc2Ftc3VuZ19tdXhfY2xv
Y2sgZXh5bm9zNTQyMF9tdXhfY2xrc1tdIF9faW5pdGNvbnN0ID0gewo+PiAgIAkJCQlUT1BfU1BB
UkUyLCA0LCAxKSwKPj4gICAKPj4gICAJTVVYKDAsICJtb3V0X2FjbGs0MDBfaXNwIiwgbW91dF9n
cm91cDFfcCwgU1JDX1RPUDAsIDAsIDIpLAo+PiAtCU1VWCgwLCAibW91dF9hY2xrNDAwX21zY2wi
LCBtb3V0X2dyb3VwMV9wLCBTUkNfVE9QMCwgNCwgMiksCj4+ICsJTVVYKENMS19NT1VUX0FDTEs0
MDBfTVNDTCwgIm1vdXRfYWNsazQwMF9tc2NsIiwgbW91dF9ncm91cDFfcCwKPj4gKwkJCVNSQ19U
T1AwLCA0LCAyKSwKPj4gICAJTVVYKENMS19NT1VUX0FDTEs0MDBfV0NPUkUsICJtb3V0X2FjbGs0
MDBfd2NvcmUiLCBtb3V0X2dyb3VwMV9wLAo+PiAgIAkJCVNSQ19UT1AwLCAxNiwgMiksCj4+ICAg
CU1VWCgwLCAibW91dF9hY2xrMTAwX25vYyIsIG1vdXRfZ3JvdXAxX3AsIFNSQ19UT1AwLCAyMCwg
MiksCj4+IEBAIC02NzAsOCArNjcyLDggQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBzYW1zdW5nX211
eF9jbG9jayBleHlub3M1eF9tdXhfY2xrc1tdIF9faW5pdGNvbnN0ID0gewo+PiAgIAo+PiAgIAlN
VVgoMCwgIm1vdXRfc3dfYWNsazQwMF9pc3AiLCBtb3V0X3N3X2FjbGs0MDBfaXNwX3AsCj4+ICAg
CQkJU1JDX1RPUDEwLCAwLCAxKSwKPj4gLQlNVVgoMCwgIm1vdXRfc3dfYWNsazQwMF9tc2NsIiwg
bW91dF9zd19hY2xrNDAwX21zY2xfcCwKPj4gLQkJCVNSQ19UT1AxMCwgNCwgMSksCj4+ICsJTVVY
KENMS19NT1VUX1NXX0FDTEs0MDBfTVNDTCwgIm1vdXRfc3dfYWNsazQwMF9tc2NsIiwKPj4gKwkJ
CW1vdXRfc3dfYWNsazQwMF9tc2NsX3AsCVNSQ19UT1AxMCwgNCwgMSksCj4+ICAgCU1VWChDTEtf
TU9VVF9TV19BQ0xLMjAwLCAibW91dF9zd19hY2xrMjAwIiwgbW91dF9zd19hY2xrMjAwX3AsCj4+
ICAgCQkJU1JDX1RPUDEwLCA4LCAxKSwKPj4gICAJTVVYKDAsICJtb3V0X3N3X2FjbGsyMDBfZnN5
czIiLCBtb3V0X3N3X2FjbGsyMDBfZnN5czJfcCwKPj4KPiAKPiAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
