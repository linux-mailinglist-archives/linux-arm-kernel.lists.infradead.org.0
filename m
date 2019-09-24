Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D31BBBFE1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 04:07:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CtvVee+ZxbHNsYkMeyZc6c1j7EsN+4WpDBdwX9+/yZ0=; b=j2QU6rN6cZtoJV
	s9LmXuOTJ4xDs05AFZk3D2XqMcSL/KgiecNG51b6Jt/6wQRYdKHnCvimEypuB8PbKYLzUSgqL8d6L
	yBL2X0hYYb8G/djnV853htwhtAV6jGQGV/73SMsIf3KIV/YNIr135s1ImYQuDVotvpgeGUbCxud/k
	jFNbsGghNaIl0aVBhJK37yNosGNxbXdVVYChood2ycPmtaNY0egnKvUpHUavXD+ntVhzdOxYBCQ83
	qRmZtsPeDwu3lXmGs3sWpvokoLqIqpYGE4g797QTWet8Y+Uxf3CX32MnmP1gagG0fFHVOUOZ7eVh2
	XrwFPrxtWBQATtmsShhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCaEu-0004ED-Vf; Tue, 24 Sep 2019 02:07:41 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCaEl-0004Db-S7
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 02:07:34 +0000
Received: from epcas1p2.samsung.com (unknown [182.195.41.46])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20190924020726epoutp02abe33fbb133cbd6736bd620a7be7003d~HPbXXl5ur0458704587epoutp02f
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 02:07:26 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20190924020726epoutp02abe33fbb133cbd6736bd620a7be7003d~HPbXXl5ur0458704587epoutp02f
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1569290846;
 bh=7C0ri+T6tbvlvMZb8A8pUAgT6/4070DYa2+5vpNKMiU=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=LswM1JL9cI62cc9Mip7s3z8iMEw9WhGWkTSpQc5CZ5CPWBN1lM4WS4um1mYkvbl8e
 RKsUJc0BStv4qeyyVQx+txQuQq7VaH3sk2gdEYoEp74I872M2Z5TKVTp3MfK4PLzAu
 D9/XT6N1dLwxp1diy0RN8ll9pTPKsswEJ0o7V6Mo=
Received: from epsnrtp6.localdomain (unknown [182.195.42.167]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20190924020726epcas1p41a4b7e2129843522ef4fb95180db2d70~HPbXCHjRx2249022490epcas1p4Y;
 Tue, 24 Sep 2019 02:07:26 +0000 (GMT)
Received: from epsmges1p1.samsung.com (unknown [182.195.40.154]) by
 epsnrtp6.localdomain (Postfix) with ESMTP id 46cl2329kjzMqYkW; Tue, 24 Sep
 2019 02:07:23 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
 epsmges1p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 06.D3.04144.B5A798D5; Tue, 24 Sep 2019 11:07:23 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20190924020722epcas1p469fd11675cb3aba0621799c929546e55~HPbUORCye2250322503epcas1p4m;
 Tue, 24 Sep 2019 02:07:22 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190924020722epsmtrp10f940103cc22c3ea17bfdb74d03460bd~HPbUNd3Nn1456114561epsmtrp1C;
 Tue, 24 Sep 2019 02:07:22 +0000 (GMT)
X-AuditID: b6c32a35-2dfff70000001030-eb-5d897a5b336d
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 52.1F.03889.A5A798D5; Tue, 24 Sep 2019 11:07:22 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190924020722epsmtip1f89493c7c3766b979efb12c01362c164~HPbUDXTty0560505605epsmtip19;
 Tue, 24 Sep 2019 02:07:22 +0000 (GMT)
Subject: Re: [PATCH] PM / devfreq: Lock devfreq in trans_stat_show
To: Leonard Crestez <leonard.crestez@nxp.com>, Matthias Kaehlcke
 <mka@chromium.org>, MyungJoo Ham <myungjoo.ham@samsung.com>, Kyungmin Park
 <kyungmin.park@samsung.com>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <979d107f-0a52-3aa4-a397-acb0ff754a3c@samsung.com>
Date: Tue, 24 Sep 2019 11:11:47 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <714675448e7fbf3c930b0dca6fbe54fa5f87211b.1569256001.git.leonard.crestez@nxp.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrOJsWRmVeSWpSXmKPExsWy7bCmgW50VWeswfwGQYtDx7ayW0zfu4nN
 4vz5DewWZ5vesFvcapCxWHH3I6vFpsfXWC26fq1ktvjce4TR4vOGx4wWtxtXsDlwe8xuuMji
 sWlVJ5vHnWt72Dw2L6n32PhuB5PHwXd7mDz6tqxi9Pi8SS6AIyrbJiM1MSW1SCE1Lzk/JTMv
 3VbJOzjeOd7UzMBQ19DSwlxJIS8xN9VWycUnQNctMwfoTiWFssScUqBQQGJxsZK+nU1RfmlJ
 qkJGfnGJrVJqQUpOgWWBXnFibnFpXrpecn6ulaGBgZEpUGFCdsbDid/ZC66JVlx7WtDAOF2w
 i5GTQ0LAROL1ibWMILaQwA5GiVd3JboYuYDsT4wSDat62SGcb4wS51aeYofp+PXoHDNEYi+j
 RFvfORYI5z2jxJxpn1hBqoQFnCRevXnDBpIQEVjNKDHlxBewWcwCq5gkLlz5DDaLTUBLYv+L
 G2wgNr+AosTVH4/BLuEVsJNovb4HbBKLgKpEx9m3LCC2qECExKcHh1khagQlTs58AhbnFIiT
 WNH8FGwms4C4xK0n85kgbHmJ5q2zwW6VEFjELvHk+Wo2iCdcJO79OM0KYQtLvDq+Beo5KYmX
 /W1QdrXEypNH2CCaOxgltuy/ANVgLLF/6WSgDRxAGzQl1u/ShwgrSuz8PZcRYjGfxLuvPawg
 JRICvBIdbUIQJcoSlx/cZYKwJSUWt3eyTWBUmoXknVlIXpiF5IVZCMsWMLKsYhRLLSjOTU8t
 NiwwRI7uTYzgRKxluoNxyjmfQ4wCHIxKPLwFOzpihVgTy4orcw8xSnAwK4nwbtJqixXiTUms
 rEotyo8vKs1JLT7EaAoM7YnMUqLJ+cAskVcSb2hqZGxsbGFiaGZqaKgkzuuR3hArJJCeWJKa
 nZpakFoE08fEwSnVwLhE6N355s2z89Xn/8r7x/VOx1Tq0vro5cfsN/xUjflbUj3ZtyGFwfLa
 1IhqEa/7MTkTOzZ5bN4VcuhQQeSBlykOD8xirnqcOML2aunfK6JLeGQjtrCxaZzXD9u0ZVNB
 jfFfyZinfwIWOhV9fXfUdeWrS9ovNJV2TVR5v6xv2p6Va0Lm9B/Zt9hKiaU4I9FQi7moOBEA
 tf3A4doDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrIIsWRmVeSWpSXmKPExsWy7bCSnG5UVWeswYajlhaHjm1lt5i+dxOb
 xfnzG9gtzja9Ybe41SBjseLuR1aLTY+vsVp0/VrJbPG59wijxecNjxktbjeuYHPg9pjdcJHF
 Y9OqTjaPO9f2sHlsXlLvsfHdDiaPg+/2MHn0bVnF6PF5k1wARxSXTUpqTmZZapG+XQJXxsOJ
 39kLrolWXHta0MA4XbCLkZNDQsBE4tejc8xdjFwcQgK7GSVmTPnOApGQlJh28ShQggPIFpY4
 fLgYouYto8TeSzOZQGqEBZwkXr15wwZiiwisZpR40+sPUsQssIZJ4mL/IaipGxkl+l7OAati
 E9CS2P/iBpjNL6AocfXHY0YQm1fATqL1+h5WEJtFQFWi4+xbsCtEBSIkDu+YBVUjKHFy5hOw
 OKdAnMSK5qfsIDazgLrEn3mXmCFscYlbT+YzQdjyEs1bZzNPYBSehaR9FpKWWUhaZiFpWcDI
 sopRMrWgODc9t9iwwCgvtVyvODG3uDQvXS85P3cTIzgitbR2MJ44EX+IUYCDUYmHV2JbR6wQ
 a2JZcWXuIUYJDmYlEd5NWm2xQrwpiZVVqUX58UWlOanFhxilOViUxHnl849FCgmkJ5akZqem
 FqQWwWSZODilGhhXZNd0c9rOUsh93cbCLzbhmfrqg0rTJ8+siNhVf+rx+4+HV+u/C2V582tG
 HFedwdU5sV9aZjJe7RZJesmZVHQz+NqhfxPrFK708ocEsM2t4rx+I6XlnG945YbGhtb3V6+x
 t9++nnfb1uOKXmG8/5uMrqIdXRmH2cMiwvRCXvRKOS4U3FtyL12JpTgj0VCLuag4EQCpJrF9
 xAIAAA==
X-CMS-MailID: 20190924020722epcas1p469fd11675cb3aba0621799c929546e55
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190923162736epcas3p2c1db3bf767a07f17b609bc91fbbd9648
References: <CGME20190923162736epcas3p2c1db3bf767a07f17b609bc91fbbd9648@epcas3p2.samsung.com>
 <714675448e7fbf3c930b0dca6fbe54fa5f87211b.1569256001.git.leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_190732_239553_0FBDDB83 
X-CRM114-Status: GOOD (  25.69  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 linux-pm@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Lukasz Luba <l.luba@partner.samsung.com>, NXP Linux Team <linux-imx@nxp.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAxOS4gOS4gMjQuIOyYpOyghCAxOjI3LCBMZW9uYXJkIENyZXN0ZXogd3JvdGU6Cj4g
VGhlcmUgaXMgbm8gbG9ja2luZyBpbiB0aGlzIHN5c2ZzIHNob3cgZnVuY3Rpb24gc28gc3RhdHMg
cHJpbnRpbmcgY2FuCj4gcmFjZSB3aXRoIGEgZGV2ZnJlcV91cGRhdGVfc3RhdHVzIGNhbGxlZCBh
cyBwYXJ0IG9mIGZyZXEgc3dpdGNoaW5nIG9yCj4gd2l0aCBpbml0aWFsaXphdGlvbi4KPiAKPiBB
bHNvIGFkZCBhbiBhc3NlcnQgaW4gZGV2ZnJlcV91cGRhdGVfc3RhdHVzIHRvIG1ha2UgaXQgY2xl
YXIgdGhhdCBsb2NrCj4gbXVzdCBiZSBoZWxkIGJ5IGNhbGxlci4KPiAKPiBTaWduZWQtb2ZmLWJ5
OiBMZW9uYXJkIENyZXN0ZXogPGxlb25hcmQuY3Jlc3RlekBueHAuY29tPgo+IC0tLQo+ICBkcml2
ZXJzL2RldmZyZXEvZGV2ZnJlcS5jIHwgMTMgKysrKysrKysrKy0tLQo+ICAxIGZpbGUgY2hhbmdl
ZCwgMTAgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiAKPiBDaGFuZ2VzIHNpbmNlIHYx
Ogo+ICogU3BsaXQgZnJvbSBzZXJpZXM6IGxvdy1wcmlvcml0eSBidWdmaXggbm90IHN0cmljdGx5
IHJlcXVpcmVkIGZvciBQTSBRb1MKPiAqIE9ubHkga2VlcCBsb2NrIGR1cmluZyB1cGRhdGUsIHJl
bGVhc2UgYmVmb3JlIHNwcmludGYKPiBMaW5rIHRvIHYxOiBodHRwczovL3BhdGNod29yay5rZXJu
ZWwub3JnL3BhdGNoLzExMTQ5NDkzLwo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RldmZyZXEv
ZGV2ZnJlcS5jIGIvZHJpdmVycy9kZXZmcmVxL2RldmZyZXEuYwo+IGluZGV4IDRjNThmYmY3ZDRl
NC4uMDBmYzIzZmVhNWIyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZGV2ZnJlcS9kZXZmcmVxLmMK
PiArKysgYi9kcml2ZXJzL2RldmZyZXEvZGV2ZnJlcS5jCj4gQEAgLTIwNiwxMCArMjA2LDExIEBA
IGludCBkZXZmcmVxX3VwZGF0ZV9zdGF0dXMoc3RydWN0IGRldmZyZXEgKmRldmZyZXEsIHVuc2ln
bmVkIGxvbmcgZnJlcSkKPiAgewo+ICAJaW50IGxldiwgcHJldl9sZXYsIHJldCA9IDA7Cj4gIAl1
bnNpZ25lZCBsb25nIGN1cl90aW1lOwo+ICAKPiAgCWN1cl90aW1lID0gamlmZmllczsKPiArCWxv
Y2tkZXBfYXNzZXJ0X2hlbGQoJmRldmZyZXEtPmxvY2spOwoKSXQgYmV0dGVyIHRvIG1vdmUgbG9j
ayBjaGVja2luZyBiZWZvcmUgJ2N1cl90aW1lID0gamlmZmllcycKaW4gb3JkZXIgdG8gcmVkdWNl
IHRoZSByZWR1bmRhbnQgY29kZSBleGVjdXRpb24uCgo+ICAKPiAgCS8qIEltbWVkaWF0ZWx5IGV4
aXQgaWYgcHJldmlvdXNfZnJlcSBpcyBub3QgaW5pdGlhbGl6ZWQgeWV0LiAqLwo+ICAJaWYgKCFk
ZXZmcmVxLT5wcmV2aW91c19mcmVxKQo+ICAJCWdvdG8gb3V0Owo+ICAKPiBAQCAtMTUwNywxNiAr
MTUwOCwyMiBAQCBzdGF0aWMgc3NpemVfdCB0cmFuc19zdGF0X3Nob3coc3RydWN0IGRldmljZSAq
ZGV2LAo+ICAJc3RydWN0IGRldmZyZXEgKmRldmZyZXEgPSB0b19kZXZmcmVxKGRldik7Cj4gIAlz
c2l6ZV90IGxlbjsKPiAgCWludCBpLCBqOwo+ICAJdW5zaWduZWQgaW50IG1heF9zdGF0ZSA9IGRl
dmZyZXEtPnByb2ZpbGUtPm1heF9zdGF0ZTsKPiAgCj4gLQlpZiAoIWRldmZyZXEtPnN0b3BfcG9s
bGluZyAmJgo+IC0JCQlkZXZmcmVxX3VwZGF0ZV9zdGF0dXMoZGV2ZnJlcSwgZGV2ZnJlcS0+cHJl
dmlvdXNfZnJlcSkpCj4gLQkJcmV0dXJuIDA7Cj4gIAlpZiAobWF4X3N0YXRlID09IDApCj4gIAkJ
cmV0dXJuIHNwcmludGYoYnVmLCAiTm90IFN1cHBvcnRlZC5cbiIpOwo+ICAKPiArCS8qIGxvY2sg
YW5kIHVwZGF0ZSAqLwoKSXQgaXMgbm90IG5lY2Vzc2FyeS4gQW55b25lIGNhbiBrbm93IHRoYXQg
dGhpcyBjb2RlIGlzIHJlbGF0ZWQgdG8gbXV0ZXggbG9jay91bmxvY2suCgo+ICsJbXV0ZXhfbG9j
aygmZGV2ZnJlcS0+bG9jayk7Cj4gKwlpZiAoIWRldmZyZXEtPnN0b3BfcG9sbGluZyAmJgo+ICsJ
CQlkZXZmcmVxX3VwZGF0ZV9zdGF0dXMoZGV2ZnJlcSwgZGV2ZnJlcS0+cHJldmlvdXNfZnJlcSkp
IHsKPiArCQltdXRleF91bmxvY2soJmRldmZyZXEtPmxvY2spOwo+ICsJCXJldHVybiAwOwo+ICsJ
fQo+ICsJbXV0ZXhfdW5sb2NrKCZkZXZmcmVxLT5sb2NrKTsKPiArCj4gIAlsZW4gPSBzcHJpbnRm
KGJ1ZiwgIiAgICAgRnJvbSAgOiAgIFRvXG4iKTsKPiAgCWxlbiArPSBzcHJpbnRmKGJ1ZiArIGxl
biwgIiAgICAgICAgICAgOiIpOwo+ICAJZm9yIChpID0gMDsgaSA8IG1heF9zdGF0ZTsgaSsrKQo+
ICAJCWxlbiArPSBzcHJpbnRmKGJ1ZiArIGxlbiwgIiUxMGx1IiwKPiAgCQkJCWRldmZyZXEtPnBy
b2ZpbGUtPmZyZXFfdGFibGVbaV0pOwo+IAoKQmFzaWNhbGx5LCBpdCBpcyBuZWNlc3NhcnkuIFBs
ZWFzZSBlZGl0IGl0IGJ5IG15IGNvbW1lbnRzLgpBbHNvLCB5b3UgaGF2ZSB0byBhZGQgdGhlIGZv
bGxvd2luZyAnZml4ZXMnIGFzIGZvbGxvd2luZzoKYW5kIHNlbmQgaXQgc3RhYmxlIG1haWxpbmcg
bGlzdC4KCkZpeGVzOiAzOTY4OGNlNmZhY2QgKCJQTSAvIGRldmZyZXE6IGFjY291bnQgc3VzcGVu
ZC9yZXN1bWUgZm9yIHN0YXRzIikKCklmIHlvdSBlZGl0IGl0IGJ5IG15IGNvbW1lbnRzLCBmZWVs
IGZyZWUgdG8gYWRkIG15IHRhZzoKUmV2aWV3ZWQtYnk6IENoYW53b28gQ2hvaSA8Y3cwMC5jaG9p
QHNhbXN1bmcuY29tPgoKCi0tIApCZXN0IFJlZ2FyZHMsCkNoYW53b28gQ2hvaQpTYW1zdW5nIEVs
ZWN0cm9uaWNzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
