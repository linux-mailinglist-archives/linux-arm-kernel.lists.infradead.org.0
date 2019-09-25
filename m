Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6046ABD656
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 04:13:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UiGa33Z2B41/eUe60qQ23GD3FMlD9WndF4frcJtJ3lU=; b=WP8JQQpzPr8SRB
	AqEJN55i1QiMCfmF3eP6tiCGojOj/R3tcbcLITAaBJobmZ7OCBs1lBqJ3mecoum7qY9ETidFm6jZw
	cyYjRrtoakKOwRmdP0thKFntvSn2Gb1XgEny4ZVyYy9DdxInun59+4qljsipDqijFCP8gmKpM3/fJ
	xtDctXHpDWd9fcGEXAbvLHAve4/YmVMmXIOCep5qhaBQzYRFH6evxKbxRi9AvBNCgsX8pdaH0tbae
	0xKRcjmS5NUUnICr3wINxdJrBAkL1yGdKmILIpk73VZ4zwHSP6Y/XxU+612CWdlHoXn3yPSpkjlIS
	NcTmU7Wn93CuvITQnDgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCwoI-0001tT-0x; Wed, 25 Sep 2019 02:13:42 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCwo3-0001t0-9Q
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 02:13:28 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20190925021322epoutp021efa66df162595389f9658e7ca8301e5~HjJ1eIPY53147331473epoutp02y
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 02:13:22 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20190925021322epoutp021efa66df162595389f9658e7ca8301e5~HjJ1eIPY53147331473epoutp02y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1569377602;
 bh=ZsAfpqk5E1HRlS/OA77q+He4oFUDuv8j0tzTi9pvCcM=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=MLlcc5VO2C7pvQ0y7oJzcXHUdAqZmob1QvozOcpxrVTohjDd+O+pCeF03uU9lGe6w
 HLZJJoWrhQnSVd/lIWSl8OkvXVhFVSwY5PwJ9bEArfKnDjH+mYbZgPyCxKKI9cxor0
 +71adOkWTtC6UixNF7TU7P/Hoq0mHkR3nhO/NfmY=
Received: from epsnrtp6.localdomain (unknown [182.195.42.167]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190925021322epcas1p15a2c9ac35b2d4f89ca090f12bcb2f6a8~HjJ1BW2zW0208802088epcas1p1E;
 Wed, 25 Sep 2019 02:13:22 +0000 (GMT)
Received: from epsmges1p4.samsung.com (unknown [182.195.40.157]) by
 epsnrtp6.localdomain (Postfix) with ESMTP id 46dM6R2Fd1zMqYkk; Wed, 25 Sep
 2019 02:13:19 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 11.04.04224.E3DCA8D5; Wed, 25 Sep 2019 11:13:19 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190925021318epcas1p2f5145aa74ebfc55d2ea3bea604c94818~HjJxqaI7e0776107761epcas1p2H;
 Wed, 25 Sep 2019 02:13:18 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190925021318epsmtrp1212215fbadb50eaaa7308fe1b3093040~HjJxm1rj-1832418324epsmtrp1a;
 Wed, 25 Sep 2019 02:13:18 +0000 (GMT)
X-AuditID: b6c32a38-d5bff70000001080-aa-5d8acd3ea12c
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 BF.98.03889.E3DCA8D5; Wed, 25 Sep 2019 11:13:18 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190925021318epsmtip1dc6807582dc707642fad7a8d26f6297e~HjJxSfWeb2273922739epsmtip1P;
 Wed, 25 Sep 2019 02:13:18 +0000 (GMT)
Subject: Re: [PATCH v8 5/6] PM / devfreq: Add PM QoS support
To: Leonard Crestez <leonard.crestez@nxp.com>, Matthias Kaehlcke
 <mka@chromium.org>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <080027a2-d807-5fa4-f148-4469678ce849@samsung.com>
Date: Wed, 25 Sep 2019 11:17:42 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB7023034123415F86CC045CCDEE840@VI1PR04MB7023.eurprd04.prod.outlook.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrBJsWRmVeSWpSXmKPExsWy7bCmrq792a5Yg4VTBS0OHdvKbvH19ClG
 i2WXjjJaTN+7ic3i/PkN7BZnm96wW9xqkLFYcfcjq8Wmx9dYLbp+rWS2+Nx7hNHi84bHjBa3
 G1ewWaw+d5DNouvQXzaLjV89HAQ83t9oZfeY3XCRxWPBplKPTas62TzuXNvD5rF5Sb3Hxnc7
 mDwOvtvD5NG3ZRWjx+dNcgFcUdk2GamJKalFCql5yfkpmXnptkrewfHO8aZmBoa6hpYW5koK
 eYm5qbZKLj4Bum6ZOUCPKCmUJeaUAoUCEouLlfTtbIryS0tSFTLyi0tslVILUnIKLAv0ihNz
 i0vz0vWS83OtDA0MjEyBChOyM1acfcdY8Eas4uu6cywNjOuFuhg5OSQETCQmz+xk7mLk4hAS
 2MEoMX3TYUYI5xOjxIa7x9ggnG+MEnPPd7PCtHQ+WwZVtZdR4mL/DxYI5z2jxO05+8GqhAVs
 JP5f/cgGYosIhEp8eXqJGcRmFmhilfh0pAzEZhPQktj/4gZYDb+AosTVH48ZQWxeATuJ1qX/
 wOIsAqoS7aevg9miAhESnx4cZoWoEZQ4OfMJC4jNKRArMW/mBnaI+eISt57MZ4Kw5SWat84G
 e05C4BK7xJImiEESAi4S/081MEPYwhKvjm9hh7ClJF72t0HZ1RIrTx5hg2juYJTYsv8C1P/G
 EvuXTgbawAG0QVNi/S59iLCixM7fcxkhFvNJvPvawwpSIiHAK9HRBg1sZYnLD+4yQdiSEovb
 O9kmMCrNQvLOLCQvzELywiyEZQsYWVYxiqUWFOempxYbFpggR/cmRnAq17LYwbjnnM8hRgEO
 RiUeXgfWrlgh1sSy4srcQ4wSHMxKIryzZIBCvCmJlVWpRfnxRaU5qcWHGE2BoT2RWUo0OR+Y
 Z/JK4g1NjYyNjS1MDM1MDQ2VxHk90htihQTSE0tSs1NTC1KLYPqYODilGhi1z771KOqZnPzU
 y9Oz7dGkJa4LJUQKvEpNPhUH2514evOjRd1ZC7cHhnGzfDxPCZ+duyTi+ryw/7YHk8s7q/2D
 j/CbVp3ITTvn0al2v3jXEqdPonvVYpRV7Xe88fBlDdG6wOxwx2ymzJROwYy3LowT7hrFR77N
 YnJPT/FZGHirXOf4oX6rh0osxRmJhlrMRcWJAADWf8n7AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrAIsWRmVeSWpSXmKPExsWy7bCSnK7d2a5Yg97JshaHjm1lt/h6+hSj
 xbJLRxktpu/dxGZx/vwGdouzTW/YLW41yFisuPuR1WLT42usFl2/VjJbfO49wmjxecNjRovb
 jSvYLFafO8hm0XXoL5vFxq8eDgIe72+0snvMbrjI4rFgU6nHplWdbB53ru1h89i8pN5j47sd
 TB4H3+1h8ujbsorR4/MmuQCuKC6blNSczLLUIn27BK6MFWffMRa8Eav4uu4cSwPjeqEuRk4O
 CQETic5nyxhBbCGB3YwSczs5IOKSEtMuHmXuYuQAsoUlDh8u7mLkAip5yygx+XIrK0iNsICN
 xP+rH9lAbBGBUIk/nctZQYqYBZpYJbq+X2eE6LjDJPF691ywKjYBLYn9L26A2fwCihJXfzwG
 28wrYCfRuvQfWJxFQFWi/fR1MFtUIELi8I5ZUDWCEidnPmEBsTkFYiXmzdzADnIds4C6xPp5
 YM8wC4hL3HoynwnClpdo3jqbeQKj8Cwk3bMQOmYh6ZiFpGMBI8sqRsnUguLc9NxiwwKjvNRy
 veLE3OLSvHS95PzcTYzgeNbS2sF44kT8IUYBDkYlHl4H1q5YIdbEsuLK3EOMEhzMSiK8s2SA
 QrwpiZVVqUX58UWlOanFhxilOViUxHnl849FCgmkJ5akZqemFqQWwWSZODilGhibTzjYuRxd
 rKczf44Gr8VtA11Pw6dpQcpOl4KXPMkze/12f72ryjFf4y9z9rmuaJukInZ9+gteoVyLubcz
 f6pzB6qUP+Xx9ihMk7lnGqq1oc7Jn0Esb3EzpxX7jdXNi711VtzdoXrxWPOjIwb6k7euc4/V
 0z7Cduz6qpIu0SUa2m+sOcW2hyixFGckGmoxFxUnAgAUbK504wIAAA==
X-CMS-MailID: 20190925021318epcas1p2f5145aa74ebfc55d2ea3bea604c94818
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190924192429epcas3p196a7de011d3e78508d1e643efd27e717
References: <cover.1569319738.git.leonard.crestez@nxp.com>
 <58fdd2c226a4e76a3d9427baab7dd5c23af842ab.1569319738.git.leonard.crestez@nxp.com>
 <20190924191124.GJ133864@google.com>
 <CGME20190924192429epcas3p196a7de011d3e78508d1e643efd27e717@epcas3p1.samsung.com>
 <VI1PR04MB7023034123415F86CC045CCDEE840@VI1PR04MB7023.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_191327_502597_FC8C75B1 
X-CRM114-Status: GOOD (  19.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, dl-linux-imx <linux-imx@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Lukasz Luba <l.luba@partner.samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTkuIDkuIDI1LiDsmKTsoIQgNDoyMiwgTGVvbmFyZCBDcmVzdGV6IHdyb3RlOgo+IE9uIDI0
LjA5LjIwMTkgMjI6MTEsIE1hdHRoaWFzIEthZWhsY2tlIHdyb3RlOgo+PiBPbiBUdWUsIFNlcCAy
NCwgMjAxOSBhdCAwMToxMToyOVBNICswMzAwLCBMZW9uYXJkIENyZXN0ZXogd3JvdGU6Cj4+PiBS
ZWdpc3RlciBub3RpZmllcnMgd2l0aCB0aGUgUE0gUW9TIGZyYW1ld29yayBpbiBvcmRlciB0byBy
ZXNwb25kIHRvCj4+PiByZXF1ZXN0cyBmb3IgREVWX1BNX1FPU19NSU5fRlJFUVVFTkNZIGFuZCBE
RVZfUE1fUU9TX01BWF9GUkVRVUVOQ1kuCj4+Pgo+Pj4gTm8gbm90aWZpZXJzIGFyZSBhZGRlZCBi
eSB0aGlzIHBhdGNoIGJ1dCBQTSBRb1MgY29uc3RyYWludHMgY2FuIGJlCj4+PiBpbXBvc2VkIGV4
dGVybmFsbHkgKGZvciBleGFtcGxlIGZyb20gb3RoZXIgZGV2aWNlcykuCj4+Pgo+Pj4gU2lnbmVk
LW9mZi1ieTogTGVvbmFyZCBDcmVzdGV6IDxsZW9uYXJkLmNyZXN0ZXpAbnhwLmNvbT4KPj4+IFJl
dmlld2VkLWJ5OiBNYXR0aGlhcyBLYWVobGNrZSA8bWthQGNocm9taXVtLm9yZz4KPj4+IC0tLQo+
Pj4gICBkcml2ZXJzL2RldmZyZXEvZGV2ZnJlcS5jIHwgNzUgKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrCj4+PiAgIGluY2x1ZGUvbGludXgvZGV2ZnJlcS5oICAgfCAgNSAr
KysKPj4+ICAgMiBmaWxlcyBjaGFuZ2VkLCA4MCBpbnNlcnRpb25zKCspCj4+Pgo+Pj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZGV2ZnJlcS9kZXZmcmVxLmMgYi9kcml2ZXJzL2RldmZyZXEvZGV2ZnJl
cS5jCj4+PiBpbmRleCBlZWU0MDNlNzBjODQuLjc4NGYzZTQwNTM2YSAxMDA2NDQKPj4+IC0tLSBh
L2RyaXZlcnMvZGV2ZnJlcS9kZXZmcmVxLmMKPj4+ICsrKyBiL2RyaXZlcnMvZGV2ZnJlcS9kZXZm
cmVxLmMKPj4+IEBAIC0yMiwxNSArMjIsMTggQEAKPj4+ICAgI2luY2x1ZGUgPGxpbnV4L3BsYXRm
b3JtX2RldmljZS5oPgo+Pj4gICAjaW5jbHVkZSA8bGludXgvbGlzdC5oPgo+Pj4gICAjaW5jbHVk
ZSA8bGludXgvcHJpbnRrLmg+Cj4+PiAgICNpbmNsdWRlIDxsaW51eC9ocnRpbWVyLmg+Cj4+PiAg
ICNpbmNsdWRlIDxsaW51eC9vZi5oPgo+Pj4gKyNpbmNsdWRlIDxsaW51eC9wbV9xb3MuaD4KPj4+
ICAgI2luY2x1ZGUgImdvdmVybm9yLmgiCj4+PiAgIAo+Pj4gICAjZGVmaW5lIENSRUFURV9UUkFD
RV9QT0lOVFMKPj4+ICAgI2luY2x1ZGUgPHRyYWNlL2V2ZW50cy9kZXZmcmVxLmg+Cj4+PiAgIAo+
Pj4gKyNkZWZpbmUgSFpfUEVSX0tIWgkxMDAwCj4+PiArCj4+PiAgIHN0YXRpYyBzdHJ1Y3QgY2xh
c3MgKmRldmZyZXFfY2xhc3M7Cj4+PiAgIAo+Pj4gICAvKgo+Pj4gICAgKiBkZXZmcmVxIGNvcmUg
cHJvdmlkZXMgZGVsYXllZCB3b3JrIGJhc2VkIGxvYWQgbW9uaXRvcmluZyBoZWxwZXIKPj4+ICAg
ICogZnVuY3Rpb25zLiBHb3Zlcm5vcnMgY2FuIHVzZSB0aGVzZSBvciBjYW4gaW1wbGVtZW50IHRo
ZWlyIG93bgo+Pj4gQEAgLTEwOSwxMCArMTEyLDExIEBAIHN0YXRpYyB1bnNpZ25lZCBsb25nIGZp
bmRfYXZhaWxhYmxlX21heF9mcmVxKHN0cnVjdCBkZXZmcmVxICpkZXZmcmVxKQo+Pj4gICBzdGF0
aWMgdm9pZCBnZXRfZnJlcV9yYW5nZShzdHJ1Y3QgZGV2ZnJlcSAqZGV2ZnJlcSwKPj4+ICAgCQkJ
ICAgdW5zaWduZWQgbG9uZyAqbWluX2ZyZXEsCj4+PiAgIAkJCSAgIHVuc2lnbmVkIGxvbmcgKm1h
eF9mcmVxKQo+Pj4gICB7Cj4+PiAgIAl1bnNpZ25lZCBsb25nICpmcmVxX3RhYmxlID0gZGV2ZnJl
cS0+cHJvZmlsZS0+ZnJlcV90YWJsZTsKPj4+ICsJdW5zaWduZWQgbG9uZyBxb3NfbWluX2ZyZXEs
IHFvc19tYXhfZnJlcTsKPj4+ICAgCj4+PiAgIAlsb2NrZGVwX2Fzc2VydF9oZWxkKCZkZXZmcmVx
LT5sb2NrKTsKPj4+ICAgCj4+PiAgIAkvKgo+Pj4gICAJICogSW5pdCBtaW4vbWF4IGZyZXF1ZW5j
eSBmcm9tIGZyZXEgdGFibGUuCj4+PiBAQCAtMTI1LDEwICsxMjksMTggQEAgc3RhdGljIHZvaWQg
Z2V0X2ZyZXFfcmFuZ2Uoc3RydWN0IGRldmZyZXEgKmRldmZyZXEsCj4+PiAgIAl9IGVsc2Ugewo+
Pj4gICAJCSptaW5fZnJlcSA9IGZyZXFfdGFibGVbZGV2ZnJlcS0+cHJvZmlsZS0+bWF4X3N0YXRl
IC0gMV07Cj4+PiAgIAkJKm1heF9mcmVxID0gZnJlcV90YWJsZVswXTsKPj4+ICAgCX0KPj4+ICAg
Cj4+PiArCS8qIGNvbnN0cmFpbnRzIGZyb20gUE0gUW9TICovCj4+PiArCXFvc19taW5fZnJlcSA9
IGRldl9wbV9xb3NfcmVhZF92YWx1ZShkZXZmcmVxLT5kZXYucGFyZW50LAo+Pj4gKwkJCQkJICAg
ICBERVZfUE1fUU9TX01JTl9GUkVRVUVOQ1kpOwo+Pj4gKwlxb3NfbWF4X2ZyZXEgPSBkZXZfcG1f
cW9zX3JlYWRfdmFsdWUoZGV2ZnJlcS0+ZGV2LnBhcmVudCwKPj4+ICsJCQkJCSAgICAgREVWX1BN
X1FPU19NSU5fRlJFUVVFTkNZKTsgPgo+PiBUaGlzIG5lZWRzIHRvIGJlIERFVl9QTV9RT1NfTUFY
X0ZSRVFVRU5DWS4gSSBtaXNzZWQgdGhpcyBpbiB0aGUgZWFybGllcgo+PiByZXZpZXdzLCBidXQg
c3R1bWJsZWQgYWNyb3NzIGl0IHdoZW4gdGVzdGluZy4KPj4KPj4gIVJldmlld2VkLWJ5OiBNYXR0
aGlhcyBLYWVobGNrZSA8bWthQGNocm9taXVtLm9yZz4KPiAKPiBJIGJyb2tlIGl0IGluIHY4IHdo
aWxlIHByb2Nlc3NpbmcgY29tbWVudHMuIFRoYW5rcyBmb3IgY2F0Y2hpbmcgaXQuCgpEaWQgeW91
IHRlc3QgdGhpcyBwYXRjaHNldCB3aXRoIHY4PwpNYXliZSBpdCBpcyBub3Qgd29ya2luZyB3aXRo
IHRoaXMgbWlzdGFrZS4KCj4gCj4gLS0KPiBSZWdhcmRzLAo+IExlb25hcmQKPiAKPiAKCgotLSAK
QmVzdCBSZWdhcmRzLApDaGFud29vIENob2kKU2Ftc3VuZyBFbGVjdHJvbmljcwoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
