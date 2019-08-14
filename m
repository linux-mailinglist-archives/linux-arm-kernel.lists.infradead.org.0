Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D5C8C577
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 03:14:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kEa340jPhXt5QcHFDTPC4Gz1cKrxGHeNopYTKt9RM1M=; b=jeLfFT7MNeWLSF
	dW/aZcBGxcrmAsAGxGRGNh8aywCItdEKltpbjNDXq2FSiXzfteVQhFcWqlADQfduFNYL4mZf9VvFi
	t4saIhrTD1qenA6vST29Sw5kRZF/bOn3z9Xrkjy/abs8cDHignZeyqWI7p+GQwMZRwgFBqbfIa7wB
	d2vCUuPkdwtKfLueJNztUOxgj/pcXVT6oti9uw9qbbyIvuw7UyRzlrYATu+l+chCSrMPMwdO8MnuI
	B1z4wX/N+Ra/jElWxXlukbKuGf/O+pP0qUsKCrNvn1iMcNOtlppJCObqE3ADK4KL0fSAjX+Dp2Ect
	ztBlujkqlkqHKdYuQwuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxhrw-0005RZ-FD; Wed, 14 Aug 2019 01:14:28 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxhri-0005R9-NK
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 01:14:17 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20190814011404epoutp0365902e2e62a0627dc53d948915cbbb31~6pQEuksNH1125211252epoutp03T
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 01:14:04 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20190814011404epoutp0365902e2e62a0627dc53d948915cbbb31~6pQEuksNH1125211252epoutp03T
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1565745245;
 bh=SQHsqDV4uJ+abV41RKfiRD79x2YaVt8hGdI7wb3HQeE=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=RxTqE3qcjuzu2hKtFnh69ApdBVZnQ+S0RVw7Gkw/BMr7aVrM/i0DY0AmfUPXyWTn/
 CDPTaVY5gCoNdrrJhjuvjuzS5F0+GVlAaeyx3ArL1ad13UyhXcp8ZhqkyDHpbNE40L
 nKWlGI+W5nO0BnSWFgf66gFoIWqdb5OVIdRnfkmo=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20190814011404epcas1p4eedfacd32c69fadd8a14ed06c60c53e3~6pQD9I1Dw0470904709epcas1p4E;
 Wed, 14 Aug 2019 01:14:04 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.40.154]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 467WnP0fpxzMqYlp; Wed, 14 Aug
 2019 01:14:01 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 FF.14.04085.850635D5; Wed, 14 Aug 2019 10:14:00 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190814011400epcas1p14db429c8ea6174570187e7c2ddfd74ef~6pQAWeeQa2757727577epcas1p1U;
 Wed, 14 Aug 2019 01:14:00 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190814011400epsmtrp1ca64f510bfd75378b990ee2ac910bc4c~6pQAVi1ao0552905529epsmtrp1I;
 Wed, 14 Aug 2019 01:14:00 +0000 (GMT)
X-AuditID: b6c32a39-cebff70000000ff5-c6-5d536058d9e0
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 7C.72.03638.850635D5; Wed, 14 Aug 2019 10:14:00 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190814011400epsmtip291ec905882919c5be9af03a9f5644f27~6pQAJDJZH2067720677epsmtip2P;
 Wed, 14 Aug 2019 01:14:00 +0000 (GMT)
Subject: Re: [PATCHv2] PM / devfreq: Add dev_pm_qos support
From: Chanwoo Choi <cw00.choi@samsung.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, Viresh Kumar
 <viresh.kumar@linaro.org>, Saravana Kannan <saravanak@google.com>
Organization: Samsung Electronics
Message-ID: <195bef25-5235-4c24-cc7a-48d368da3bbd@samsung.com>
Date: Wed, 14 Aug 2019 10:17:45 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <a9328230-96f3-6bab-826a-bb199de4ad48@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrLJsWRmVeSWpSXmKPExsWy7bCmgW5EQnCswb511haHjm1lt/h6+hSj
 xctDmhbT925iszh/fgO7xdmmN+wWtxpkLFbc/chqsenxNVaLz71HGC1uN65gszhz+hKrRdeh
 v2wWG796OPB5vL/Ryu6xYFOpx6ZVnWwed67tYfPYvKTeY+O7HUweB9/tYfLYcrWdxaNvyypG
 j8+b5AK4orJtMlITU1KLFFLzkvNTMvPSbZW8g+Od403NDAx1DS0tzJUU8hJzU22VXHwCdN0y
 c4CuV1IoS8wpBQoFJBYXK+nb2RTll5akKmTkF5fYKqUWpOQUWBboFSfmFpfmpesl5+daGRoY
 GJkCFSZkZ8ybfoO1YKtyRe/dVYwNjCdkuhg5OCQETCQedHp1MXJxCAnsYJSY1tDIDOF8YpRo
 nDGRBcL5xihx7fxCoAwnWMeyD9uhqvYySnRt3wLlvGeUeHzkCStIlbCAtcSyj7PAOtgEtCT2
 v7jBBmKLCNRL/Nj8F6yBWWAFi8SkiWvYQRL8AooSV388ZgSxeQXsJL5O6AdrYBFQlXj/ZCPY
 UFGBCIlPDw6zQtQISpyc+YQFxOYUsJdYc3ExE4jNLCAucevJfChbXqJ562ywZRICh9gldryY
 D/WDi8Sv+dvYIWxhiVfHt0DZUhIv+9ug7GqJlSePsEE0dzBKbNl/gRUiYSyxf+lkJlDwMQto
 SqzfpQ8RVpTY+XsuI4TNK9Gw8Tc7xBF8Eu++9rBCQptXoqNNCKJEWeLyg7tMExiVZyF5ZxaS
 F2YheWEWwrIFjCyrGMVSC4pz01OLDQtMkaN7EyM4aWtZ7mA8ds7nEKMAB6MSD2/AlqBYIdbE
 suLK3EOMEhzMSiK8Ey4ChXhTEiurUovy44tKc1KLDzGaAkN7IrOUaHI+MKPklcQbmhoZGxtb
 mBiamRoaKonzLvxhESskkJ5YkpqdmlqQWgTTx8TBKdXAuDavqtCmR79iiVG5rfx0nbWN9iJu
 T5c/Ktat5W6ftzRm8t35nHE2bJNrpt4v2b7fluvRb92imHey9bJq029/04lyqJnZeGKHLP/m
 N2r77xR9M/x8uocvYOp7/4tyDgnTLr9OY2X7ZfvUqf0j//p1lZo6q/jOzrqk90jEV/qWQr12
 aNXym5EZSizFGYmGWsxFxYkAysa1z/ADAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrJIsWRmVeSWpSXmKPExsWy7bCSvG5EQnCswYoZPBaHjm1lt/h6+hSj
 xctDmhbT925iszh/fgO7xdmmN+wWtxpkLFbc/chqsenxNVaLz71HGC1uN65gszhz+hKrRdeh
 v2wWG796OPB5vL/Ryu6xYFOpx6ZVnWwed67tYfPYvKTeY+O7HUweB9/tYfLYcrWdxaNvyypG
 j8+b5AK4orhsUlJzMstSi/TtErgy5k2/wVqwVbmi9+4qxgbGEzJdjJwcEgImEss+bGfuYuTi
 EBLYzShx4MljRoiEpMS0i0eBEhxAtrDE4cPFEDVvGSUWbTjJBlIjLGAtsezjLGYQm01AS2L/
 ixtsIEUiAo2MEoefrwCbyiywjkWi/9Badoj2d0wSX+a/AmvhF1CUuPoDYh2vgJ3E1wn9YGNZ
 BFQl3j/ZyApiiwpESBzeMQuqRlDi5MwnLCA2p4C9xJqLi5lAbGYBdYk/8y4xQ9jiEreezIeK
 y0s0b53NPIFReBaS9llIWmYhaZmFpGUBI8sqRsnUguLc9NxiwwKjvNRyveLE3OLSvHS95Pzc
 TYzgCNbS2sF44kT8IUYBDkYlHt6ALUGxQqyJZcWVuYcYJTiYlUR4J1wECvGmJFZWpRblxxeV
 5qQWH2KU5mBREueVzz8WKSSQnliSmp2aWpBaBJNl4uCUamBU4NHeuPBBhezOjzF7uhpk/Oz/
 r+m9ZNPadnB7h8Gf37kBv+9dEP3jfq7h4xVjjh2Mn9lORVz6fG+V3fJj5SLONqG/6/Y+nJv1
 bUnn3c/CBxkLxGd82eMscTBu+8UimZSb9Wcr7VZvmdSl0Wkofc+Ta+Ulse1LBNXm/r588MXi
 iwsbJp/9tV6RXYmlOCPRUIu5qDgRAGDiLZTcAgAA
X-CMS-MailID: 20190814011400epcas1p14db429c8ea6174570187e7c2ddfd74ef
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
X-CPGSPASS: Y
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190808143919epcas4p33c93a5a3d4df1032fa84ddad9110a160
References: <CGME20190808143919epcas4p33c93a5a3d4df1032fa84ddad9110a160@epcas4p3.samsung.com>
 <e45c28528ff941abb1f72fdb1eedf65fb3345c5a.1565274802.git.leonard.crestez@nxp.com>
 <b3941b19-f0aa-87a6-d50a-299d07a26532@samsung.com>
 <VI1PR04MB7023EB13BB2DE94814B38477EED20@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <a9328230-96f3-6bab-826a-bb199de4ad48@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_181415_157143_9112E82A 
X-CRM114-Status: GOOD (  30.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
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
Cc: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Krzysztof Kozlowski <krzk@kernel.org>,
 Lukasz Luba <l.luba@partner.samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 "cpgs \(cpgs@samsung.com\)" <cpgs@samsung.com>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTkuIDguIDE0LiDsmKTsoIQgMTA6MDYsIENoYW53b28gQ2hvaSB3cm90ZToKPiBIaSwKPiAK
PiBPbiAxOS4gOC4gMTMuIOyYpO2bhCA4OjI3LCBMZW9uYXJkIENyZXN0ZXogd3JvdGU6Cj4+IE9u
IDEzLjA4LjIwMTkgMDk6MTAsIENoYW53b28gQ2hvaSB3cm90ZToKPj4+IEluIGNhc2Ugb2YgY3B1
ZnJlcSwgY3B1ZnJlcS5jIHJlcGxhY2UgdGhlIGJvZHkgb2Ygc3RvcmVfbWluX2ZyZXEoKQo+Pj4g
YW5kIHN0b3JlX21heF9mcmVxKCkgYnkgdXNpbmcgc3RydWN0IGRldl9wbV9xb3NfcmVxdWVzdCBp
bnN0YW5jY2UKPj4+IHdpdGggZGV2X3BtX3Fvc191cGRhdGVfcmVxdWVzdCgpLgo+Pj4KPj4+IElm
IHlvdSB1c2UgdGhlIG5ldyB3YXkgd2l0aCBkZXZfcG1fcW9zX3VwZGF0ZV9yZXF1ZXN0KCkgZm9y
Cj4+PiBtaW5fZnJlcV9zdG9yZSgpIGFuZCBtYXhfZnJlcV9zdG9yZSgpLCBpdCBkb2Vzbid0IG5l
ZWQgdG8KPj4+IGdldCB0aGUgZmluYWwgZnJlcXVlbmN5IGZyb20gdGhyZWUgY2FuZGlkYXRlIGZy
ZXF1ZW5jaWVzLgo+Pgo+PiBZZXMsIEkgc2F3IHRoYXQgYnV0IGRpZG4ndCBpbXBsZW1lbnQgdGhl
IGVxdWl2YWxlbnQgZm9yIGRldmZyZXEgYmVjYXVzZSAKPj4gaXQncyBub3QgY2xlYXIgd2hhdCB0
aGVyZSBpcyB0byBnYWluLgo+IAo+IEkgdGhpbmsgdGhhdCBpdCBpcyBjbGVhci4gSnVzdCB1c2Ug
dGhlIGRldl9wbV9xb3NfcmVxdWVzdCBpbnRlcmZhY2UKPiBmb3IgYm90aCB1c2VyIGlucHV0IHRo
cm91Z2ggc3lzZnMgYW5kIGRldmljZSBpbnB1dCB3aXRoIHFvcyByZXF1ZXN0Lgo+IEFscmVhZHkg
UE1fUU9TIGhhcyB0aGUgZmVhdHVyZSB0byBnZXQgdGhlIGZpbmFsIGZyZXVlbmN5IGFtb25nCj4g
dGhlIG11bHRpcGxlIHJlcXVlc3QuIFdoZW4gdXNlIHRoZSBkZXZfcG1fcW9zIHJlcXVlc3QsIHRo
ZSBkZXZmcmVxCj4gZG9lc24ndCBuZWVkIHRvIGNvbXBhcmUgYmV0d2VlbiB1c2VyIGlucHV0IGFu
ZCBkZXZpY2UgaW5wdXQgd2l0aCBxb3MuCj4gSXQgbWFrZSBkZXZmcmVxIGNvcmUgbW9yZSBjbGVh
ciBhbmQgc2ltcGxlCj4gCj4+Cj4+IFNpbmNlIGRldl9wbV9xb3MgaXMgbWVhc3VyZWQgaW4ga2h6
IGl0IG1lYW5zIHRoYXQgbWluX2ZyZXEvbWF4X3JlcSBvbiAKPj4gc3lzZnEgd291bGQgbG9zZSAz
IHNpZ25pZmljYW50IGRpZ2l0cywgaG93ZXZlciB0aG9zZSBkaWdpdHMgYXJlIHByb2JhYmx5IAo+
PiB1c2VsZXNzIGFueXdheS4KPiAKPiBJIHRoaW5rIHRoYXQgaXQgZG9lc24ndCBtYXR0ZXIuIFRo
aXMgcGF0Y2ggYWxyZWFkeSBjb25zaWRlcnMgdGhlIHRoaXMgaXNzdWUKPiBieSB1c2luZyAnKiAx
MDAwJy4gV2UgY2FuIGdldCBlaXRoZXIgS0h6IG9yIE1IeiB3aXRoIGFkZGl0aW9uYWwgb3BlcmF0
aW9uLgo+IEkgdGhpbmsgdGhhdCBpdCBpcyBub3QgcHJvYmxlbS4KPiAKPj4KPj4+IEluIHJlc3Vs
dCwgV2Ugb25seSBjb25zaWRlciB0aGUgZm9sbG93aW5nIHR3byBjYW5kaWRhdGUgZnJlcXVlbmNp
ZXMKPj4+IGFzIGZvbGxvd2luZzoKPj4+IDEuICJkZXZmcmVxLT5zY2FsaW5nX21pbl9mcmVxIiB3
aWxsIGNvbnRhaW4gdGhlIHJlcXVpcmVtZW50Cj4+PiAgICAgZnJvbSBkZXZmcmVxIHRoZXJtYWwg
dGhyb3R0bGluZyBieSBPUFAgaW50ZXJmYWNlLgo+Pgo+PiBJdCdzIGEgYml0IGF3a3dhcmQgdGhh
dCB0aGUgT1BQcyBlbmFibGUvZGlzYWJsZSBBUEkgaXMgbm90IG9idmlvdXNseSAKPj4gc3BlY2lm
aWMgdG8gInRoZXJtYWwiLgo+IAo+IGRyaXZlci90aGVybWFsL2RldmZyZXFfY29vbGluZy5jIHVz
ZXMgdGhlIE9QUCBpbnRlcmZhY2UgdG8gZW5hYmxlL2Rpc2FibGUKPiB0aGUgT1BQIGVudHJpZXMg
YWNjb3JkaW5nIHRvIHRoZSB0aGVybWFsIHRocm90dGxpbmcgcG9saWN5LiAKPiAKPj4KPj4+IDIu
ICJkZXZmcmVxLT5taW5fZnJlcSIgd2lsbCBjb250YWluIHRoZSByZXF1aXJlbWVudHMKPj4+ICAg
ICBmcm9tIGJvdGggdXNlciBpbnB1dCB0aHJvdWdoIHN5c2ZzIGFuZCB0aGUgZGV2X3BtX3Fvc19y
ZXF1ZXN0Lgo+PiBBY2NvcmRpbmcgdG8gYSBjb21tZW50IG9uIGEgcHJldmlvdXMgdmVyc2lvbiBp
dCB3b3VsZCBiZSB1c2VmdWwgdG8gaGF2ZSAKPj4gYSBzZXBhcmF0ZSBmaWxlcyBmb3IgImNvbnN0
cmFpbnQgbWluL21heCBmcmVxIiBhbmQgInVzZXIgbWluL21heCBmcmVxIjoKPj4KPj4gICAgICBo
dHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNoLzExMDc4NDc1LyMyMjgwNTM3OQo+IAo+
IEFjdHVhbGx5LCBJIHRoaW5rIHRoYXQgSSB3YW50IHRvIHVzZSB0aGUgb25seSBkZXZfcG1fcW9z
X3JlcXVlc3QKPiBmb3IgYWxsIGV4dGVybmFsIHJlcXVlc3QgbGlrZSBkZXZmcmVxIGNvb2xpbmcg
b2YgdGhlcm1hbCwKPiB1c2VyIGlucHV0IHRocm91Z2ggc3lzZnMgYW5kIGRldmljZSByZXF1ZXN0
IHdpdGggZGV2X3BtX3Fvc19yZXF1ZXN0Lgo+IAo+IEFscmVhZHksIGRldl9wbV9xb3NfcmVxdWVz
dCBpcyBkZXNpZ25lZCB0byBjb25zaWRlciB0aGUgbXVsdGlwbGUgcmVxdWlyZW1lbnRzLgo+IFdl
IGRvbid0IG5lZWQgdG8gdXNlIHRoZSB2YXJpb3VzIG1ldGhvZCAoT1BQIGludGVyZmFjZSwgc3lz
ZnMgaW5wdXQsIGRldl9wbV9xb3MpCj4gYmVjYXVzZSBtYWtlIGl0IG1vcmUgc2ltcGxlIGFuZCBl
YXN5Lgo+IAo+IEkgdGhpbmsgdGhhdCBhZnRlciBmaW5pc2hlZCB0aGUgcmV2aWV3IG9mIHRoaXMg
cGF0Y2gsIEkgd2lsbCBkbyByZWZhY3RvciB0aGUgZGV2ZnJlcV9jb29saW5nLmMKPiBieSB1c2lu
ZyB0aGUgZGV2X3BtX3Fvc19yZXF1ZXN0LiBPciwgaWYgdGhlcmUgYXJlIHNvbWUgdm9sdW50ZWVl
ciwKClNvcnJ5LCBJIHdvdWxkIHdpdGhkcmF3IHRoZSB0aGlzIG9waW5pb24gYWJvdXQgcmVwbGFj
aW5nCnRoZSBPUFAgZW5hYmxlL2Rpc2FibGUgaW50ZXJmYWNlIHdpdGggdGhlIGRldl9wbV9xb3Nf
cmVxdWVzdApiZWNhdXNlIGV2ZW4gaWYgZGV2ZnJlcS1jb29saW5nLmMgbmVlZHMgdGhlICdkZXYn
IGluc3RhbmNlCnRvIHVzZSB0aGUgZGV2X3BtX3Fvc19yZXF1ZXN0IG1ldGhvZCwgaXQgaXMgbm90
IGNsZWFyIHVudGlsIG5vdy4KSXQgbmVlZHMgaG93IHRvIGdldCB0aGUgZGV2aWNlIGluc3RhbmNl
IG9mIGRldmZyZXEgb24gZGV2aWNlLXRyZWUuCgpLZWVwIGRpc2N1c3Npbmcgd2l0aG91dCBpdC4g
Cgo+IAo+Pgo+PiBDb21iaW5pbmcgbWluL21heCByZXF1ZXN0cyBmcm9tIGRldl9wbV9xb3MgYW5k
IHN5c2ZzIHdvdWxkIG1ha2UgdGhpcyAKPj4gaGFyZGVyIHRvIGltcGxlbWVudC4gSSBndWVzcyB1
c2VyX21pbl9mcmVxIGNvdWxkIGJlIGltcGxlbWVudGVkIGJ5IAo+IAo+IEkgdGhpbmsgdGhhdCBp
dCBpcyBub3QgZGlmZmljdWx0LiBKdXN0IG1ha2UgdGhlIGRpZmZlcmVudCBkZXZfcG1fcW9zX3Jl
cXVlc3QKPiBpbnN0YW5jZXMuIFdoZW4gcW9zIGhhcyB0aGUgbXVsdGlwbGUgcmVxdWVzdCBmcm9t
IG9uZSBtb3JlIGRldl9wbV9xb3NfcmVxdWVzdCwKPiBqdXN0IGdldCB0aGUgdmFsdWUgYnkgdXNp
bmcgZGV2X3BtX3Fvc19yZWFkX3ZhbHVlKCkuCj4gLSBhIGRldl9wbV9xb3NfcmVxdWVzdCBmb3Ig
dXNlciBpbnB1dAo+IC0gYiBkZXZfcG1fcW9zX3JlcXVlc3QgZm9yIGRldmljZSByZXF1ZXN0IG9u
IG90aGVyIGRldmljZSBkcml2ZXIKPiAKPiAKPj4gcmVhZGluZyBiYWNrIHRoZSBkZXZfcG1fcW9z
IHJlcXVlc3QgYnV0IHRoZXJlIHdvdWxkIGJlIG5vIHdheSB0byAKPj4gaW1wbGVtZW50IGEgcW9z
X21pbl9mcmVxIGVudHJ5Lgo+IAo+IEkgZG9uJ3QgdW5kZXJzdGFuZC4gSnVzdCBkZXZmcmVxIHNo
b3cgdGhlIG1pbiBmcmVxIGZyb20gZGV2X3BtX3Fvc19yZXF1ZXN0Cj4gd2hpY2ggY29udGFpbnMg
dGhlIGFsbCByZXF1aXJlbWVudCBvZiBtaW5pbXVtIGZyZXF1ZW5jeS4KPiAKPiBJZiB0aGVyZSBh
cmUgbm8gYW55IHJlcXVlc3QgdG8gZGV2X3BtX3Fvc19yZXF1ZXN0LCB3ZSBjYW4ganVzdAo+IGdl
dCB0aGUgbWluaW11bSBmcmVxdWVuY3kgZnJvbSBkZXZfcG1fcW9zX3JlcXVlc3QgYmVjYXVzZSAK
PiB0aGUgZGV2ZnJlcSBkZXZpY2Ugd291bGQgY2FsbCB0aGUgZGV2X3BtX3Fvc191cGRhdGVfcmVx
dWVzdCguLi4sIG1pbl9mcmVxKQo+IG9uIHRoZSBwcm9iZSB0aW1lLgo+IAo+IElmIEkga25vdyB0
aGUgd3JvbmcgaW5mb3JtYXRpb24sIHBsZWFzZSBsZXQgbWUga25vdy4KPiAKPiAKPj4KPj4+PiAr
c3RhdGljIGludCBkZXZmcmVxX3Fvc19taW5fbm90aWZpZXJfY2FsbChzdHJ1Y3Qgbm90aWZpZXJf
YmxvY2sgKm5iLCB1bnNpZ25lZCBsb25nIHZhbCwgdm9pZCAqcHRyKQo+Pj4KPj4+IFBsZWFzZSBr
ZWVwIHRoZSB1bmRlciA4MCBsaW5lIGlmIHRoZXJlIGFyZSBubyBhbnkgc3BlY2lhbCByZWFzb24u
Cj4+Cj4+IE9LLCB3aWxsIGNoZWNrLgo+Pgo+Pgo+IAo+IAoKCi0tIApCZXN0IFJlZ2FyZHMsCkNo
YW53b28gQ2hvaQpTYW1zdW5nIEVsZWN0cm9uaWNzCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
