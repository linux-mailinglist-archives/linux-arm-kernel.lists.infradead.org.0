Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F09E4BE9E2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 03:08:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H8K1XiX5DxGHfxDfg8msouoMKZEWep9fOD/ezg0amhs=; b=F4LiHaiaJJmAK4
	Rz5pMLKU5Pi5CTnOVU0H/jmWCl7/fxDCLYxcBDbk4yfxfUo90jHUGmRcp85UUFCQn50Bi2pF4AzQo
	My0Fk+rseRJ5rrjlwkCNBT4YIS5/ZZePLpe2pfj0Ud3dDWuERXJz91z/IQ0kaPCr6PS8wFk4AMXjk
	g80N/rqK5yE6yj4eCWguI2uZ7gxMPjKM3sMtBFyANAgx55DCOZf+tA8vDmxI58cjO5hrnPVI4/9jA
	fWN6frrEFynk0GNsz/ReiGmrZJqCfTqp3z0vZrzouQINpTmop/jCugE6B6FWWpviXHo2X3x44Ztyf
	eUT69sq8At6MBG2ijKAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDIG5-0003K4-HK; Thu, 26 Sep 2019 01:07:49 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDIFt-0003JU-2u
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 01:07:39 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20190926010733epoutp0392d514c18de434f57caf3e9c9fcea3cc~H15pt8q1B0433904339epoutp03A
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 01:07:33 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20190926010733epoutp0392d514c18de434f57caf3e9c9fcea3cc~H15pt8q1B0433904339epoutp03A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1569460053;
 bh=02LRQzc3zq1yjJmRI4y3xLH0J6Posi4QJAQSb0tVl7s=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=a5f8GKDyMbPxMPVYKN+6/FlkL6zFaQ7ApLWJtuiXO2hl4R92ZW1Ua46vDMTQHV4Nc
 lYsY9q7SShcrCFmy1HK6l5a1dTYqEGCXVaP83J7V9yP/lFcVgTO2mjea9nYOLM2L6O
 3jiT5s4rGRRkausT+5xCrSxcZoQgJqa7iGZYTlQs=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTP id
 20190926010732epcas1p3e4701a99601072a165c1ca9cb15d1407~H15o-PdUe1268112681epcas1p3Y;
 Thu, 26 Sep 2019 01:07:32 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.40.153]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 46dxc22Q7FzMqYkg; Thu, 26 Sep
 2019 01:07:30 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 67.1D.04068.F4F0C8D5; Thu, 26 Sep 2019 10:07:27 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190926010727epcas1p13f39ec7c0046e513397b6e3315d40b7d~H15kJVqen2973229732epcas1p1K;
 Thu, 26 Sep 2019 01:07:27 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190926010727epsmtrp19b8a5e165b7490d088e6ea08ea791861~H15kIWp401337013370epsmtrp1h;
 Thu, 26 Sep 2019 01:07:27 +0000 (GMT)
X-AuditID: b6c32a39-3b9219c000000fe4-90-5d8c0f4fa560
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 1B.5D.04081.F4F0C8D5; Thu, 26 Sep 2019 10:07:27 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190926010727epsmtip212f5f43eda3120dbd64939bc91d5f21f~H15j5WGbu2624026240epsmtip2d;
 Thu, 26 Sep 2019 01:07:27 +0000 (GMT)
Subject: Re: [PATCH v8 5/6] PM / devfreq: Add PM QoS support
To: Leonard Crestez <leonard.crestez@nxp.com>, Matthias Kaehlcke
 <mka@chromium.org>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <5f12931b-92f8-15d8-8498-f02a7c2e999f@samsung.com>
Date: Thu, 26 Sep 2019 10:12:09 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB7023573BA3D5C5D521DB689CEE870@VI1PR04MB7023.eurprd04.prod.outlook.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02TfWwTZRzHfXq9azetPJYhPxbEcgYiMxs9Rscz3IhEJGeYsmgIU1LHsV26
 pa/ptQvIH+swTFYRpsboSowzzkpHJrSMOQnNsq4Op8gYbGMpYKabTohZaWeVlxBoexL33+d5
 7vO77/O9FzWlnWHy1fU2l+i0CRaWyVX2DKwqLNy64KBR3+MvIpHBUyqS+ulHRPwXv0fkk3CI
 IcPDJ1Tk531/qUjMs5QcvZagSWhqnCbeOwGKzL0fRWTuxBQiV5qOMuTY+X6GeCP3GBJM8S9g
 Pj6xX8Uf8Ywo+faQmw91tjD81fEzDH+yo5EPzvYq+P7ZMwr+UHcn4udCyypz3zSX1YlCrejU
 ibYae229zVTObnm9+sVqQ4meK+RKyTpWZxOsYjm7qaKycHO9JV2E1TUIFnd6q1KQJHb1hjKn
 3e0SdXV2yVXOio5ai6PUUSQJVsltMxXV2K3rOb1+jSEt7jTX3QgcohwJfnf7sFfhQR3rvShH
 DXgtBDv8Ki/KVWtxL4J4/A9GXiQR7P+iCWUsLf4HQfCe8+FE55VmhSyFEfx74TotL+IIWu5/
 S2eshbgM7o8lmAzn4W3w9+8XqQxTeB8NyWhDhhlcAH1/TmSdBXg5jN2ayqZp8AbwpyayvhKv
 gMHEQNZZhKsgOTlAy84TMNQ2rcxwDjbCyPF+Wr7/YohNf66Q+Wl459QRKnM4wOMq+KF1RClX
 2ASXj7VRMi+EG2e7VTLnw/XDzf/xXggMRRl5+ACC7r4LtHyhGPq++iidoE4nrILjp1fL28vh
 u7ufITn4cZhNHaQzCmANHGjWysozcGnymkLmJfDluy1MK2J98+r45lXwzavg+z+sHSk70ZOi
 Q7KaRIlzGOa/7RDKfuQFpb1o8HxFBGE1Yh/TwBvvGbW00CDtsUYQqCk2T+Nb6jVqNbXCnrdF
 p73a6baIUgQZ0k/7Ayp/UY09/cvYXNWcYU1xcTFZy5UYOI5drOFNHqMWmwSXaBZFh+h8OKdQ
 5+R70EuHdd6K8ZUnY+GqV0fdergabby942ag7bdv6BWTT21c1ppTEPn47PBAT0N4++zQjHmX
 cac/OEhvZneNCo/ejhke+bCEvrT9ly2Jl1/riuub3gpfTlbFzkW+7to2c67Ru+P5cNdY6vTW
 V54j0ybFs/zETSla0oc+zQskh1aOmos2/soqpTqBK6CckvAAogp0TfoDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrMIsWRmVeSWpSXmKPExsWy7bCSvK4/f0+swbaFYhaHjm1lt/h6+hSj
 xbJLRxktpu/dxGZx/vwGdouzTW/YLW41yFisuPuR1WLT42usFl2/VjJbfO49wmjxecNjRovb
 jSvYLFafO8hm0XXoL5vFxq8eDgIe72+0snvMbrjI4rFgU6nHplWdbB53ru1h89i8pN5j47sd
 TB4H3+1h8ujbsorR4/MmuQCuKC6blNSczLLUIn27BK6MVyv7mAs+elQsON/F1MC4xKqLkZND
 QsBEYtXtNqYuRi4OIYHdjBJ7N/9ihUhISky7eJS5i5EDyBaWOHy4GKLmLaNE06xJbCA1wgI2
 Ev+vfgSzRQRCJf50LmcFKWIWaGKV6Pp+nRGi4xWTxOGLfWBT2QS0JPa/uAHWwS+gKHH1x2NG
 EJtXwE5i2dcbzCA2i4CqxLGPh8FqRAUiJA7vmAVVIyhxcuYTFhCbUyBW4uL6g2AzmQXUJf7M
 u8QMYYtL3HoynwnClpdo3jqbeQKj8Cwk7bOQtMxC0jILScsCRpZVjJKpBcW56bnFhgWGeanl
 esWJucWleel6yfm5mxjBUa2luYPx8pL4Q4wCHIxKPLwHwrpjhVgTy4orcw8xSnAwK4nwzpLp
 ihXiTUmsrEotyo8vKs1JLT7EKM3BoiTO+zTvWKSQQHpiSWp2ampBahFMlomDU6qBccHDJ7zb
 0pJsp5xx3HcicGZJx3yrQ0cn/c/uqP0nsHNP+WmHBt6ZxYX9n1fEPmmbs7Xj7PnnBTlfjW05
 ivf1vN8l+tDMYutj8faJl/q9vnbZBRnsrH98IX/37Vt/ovfZ6iauD54hd9j+ddxE9UlhVcuq
 Q+1cn+qc0Gx6vP/2zEeb6z9eDU/56aPEUpyRaKjFXFScCAAA7bW85gIAAA==
X-CMS-MailID: 20190926010727epcas1p13f39ec7c0046e513397b6e3315d40b7d
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190924101145epcas4p37f7d25b8743c25520b33fa392cd80d45
References: <cover.1569319738.git.leonard.crestez@nxp.com>
 <CGME20190924101145epcas4p37f7d25b8743c25520b33fa392cd80d45@epcas4p3.samsung.com>
 <58fdd2c226a4e76a3d9427baab7dd5c23af842ab.1569319738.git.leonard.crestez@nxp.com>
 <40885624-8f11-4eea-d5bf-d6bb50fa44dd@samsung.com>
 <VI1PR04MB7023573BA3D5C5D521DB689CEE870@VI1PR04MB7023.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_180737_535810_B5C82612 
X-CRM114-Status: GOOD (  29.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

T24gMTkuIDkuIDI2LiDsmKTsoIQgNjoxOCwgTGVvbmFyZCBDcmVzdGV6IHdyb3RlOgo+IE9uIDI1
LjA5LjIwMTkgMDU6MTEsIENoYW53b28gQ2hvaSB3cm90ZToKPj4gT24gMTkuIDkuIDI0LiDsmKTt
m4QgNzoxMSwgTGVvbmFyZCBDcmVzdGV6IHdyb3RlOgo+Pj4gUmVnaXN0ZXIgbm90aWZpZXJzIHdp
dGggdGhlIFBNIFFvUyBmcmFtZXdvcmsgaW4gb3JkZXIgdG8gcmVzcG9uZCB0bwo+Pj4gcmVxdWVz
dHMgZm9yIERFVl9QTV9RT1NfTUlOX0ZSRVFVRU5DWSBhbmQgREVWX1BNX1FPU19NQVhfRlJFUVVF
TkNZLgo+Pj4KPj4+IE5vIG5vdGlmaWVycyBhcmUgYWRkZWQgYnkgdGhpcyBwYXRjaCBidXQgUE0g
UW9TIGNvbnN0cmFpbnRzIGNhbiBiZQo+Pj4gaW1wb3NlZCBleHRlcm5hbGx5IChmb3IgZXhhbXBs
ZSBmcm9tIG90aGVyIGRldmljZXMpLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IExlb25hcmQgQ3Jl
c3RleiA8bGVvbmFyZC5jcmVzdGV6QG54cC5jb20+Cj4+PiBSZXZpZXdlZC1ieTogTWF0dGhpYXMg
S2FlaGxja2UgPG1rYUBjaHJvbWl1bS5vcmc+Cj4+PiAtLS0KPj4+ICAgZHJpdmVycy9kZXZmcmVx
L2RldmZyZXEuYyB8IDc1ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+
Pj4gICBpbmNsdWRlL2xpbnV4L2RldmZyZXEuaCAgIHwgIDUgKysrCj4+PiAgIDIgZmlsZXMgY2hh
bmdlZCwgODAgaW5zZXJ0aW9ucygrKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RldmZy
ZXEvZGV2ZnJlcS5jIGIvZHJpdmVycy9kZXZmcmVxL2RldmZyZXEuYwo+Pj4gaW5kZXggZWVlNDAz
ZTcwYzg0Li43ODRmM2U0MDUzNmEgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2RldmZyZXEvZGV2
ZnJlcS5jCj4+PiArKysgYi9kcml2ZXJzL2RldmZyZXEvZGV2ZnJlcS5jCj4+PiBAQCAtMjIsMTUg
KzIyLDE4IEBACj4+PiAgICNpbmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4KPj4+ICAg
I2luY2x1ZGUgPGxpbnV4L2xpc3QuaD4KPj4+ICAgI2luY2x1ZGUgPGxpbnV4L3ByaW50ay5oPgo+
Pj4gICAjaW5jbHVkZSA8bGludXgvaHJ0aW1lci5oPgo+Pj4gICAjaW5jbHVkZSA8bGludXgvb2Yu
aD4KPj4+ICsjaW5jbHVkZSA8bGludXgvcG1fcW9zLmg+Cj4+PiAgICNpbmNsdWRlICJnb3Zlcm5v
ci5oIgo+Pj4gICAKPj4+ICAgI2RlZmluZSBDUkVBVEVfVFJBQ0VfUE9JTlRTCj4+PiAgICNpbmNs
dWRlIDx0cmFjZS9ldmVudHMvZGV2ZnJlcS5oPgo+Pj4gICAKPj4+ICsjZGVmaW5lIEhaX1BFUl9L
SFoJMTAwMAo+Pj4gKwo+Pj4gICBzdGF0aWMgc3RydWN0IGNsYXNzICpkZXZmcmVxX2NsYXNzOwo+
Pj4gICAKPj4+ICAgLyoKPj4+ICAgICogZGV2ZnJlcSBjb3JlIHByb3ZpZGVzIGRlbGF5ZWQgd29y
ayBiYXNlZCBsb2FkIG1vbml0b3JpbmcgaGVscGVyCj4+PiAgICAqIGZ1bmN0aW9ucy4gR292ZXJu
b3JzIGNhbiB1c2UgdGhlc2Ugb3IgY2FuIGltcGxlbWVudCB0aGVpciBvd24KPj4+IEBAIC0xMDks
MTAgKzExMiwxMSBAQCBzdGF0aWMgdW5zaWduZWQgbG9uZyBmaW5kX2F2YWlsYWJsZV9tYXhfZnJl
cShzdHJ1Y3QgZGV2ZnJlcSAqZGV2ZnJlcSkKPj4+ICAgc3RhdGljIHZvaWQgZ2V0X2ZyZXFfcmFu
Z2Uoc3RydWN0IGRldmZyZXEgKmRldmZyZXEsCj4+PiAgIAkJCSAgIHVuc2lnbmVkIGxvbmcgKm1p
bl9mcmVxLAo+Pj4gICAJCQkgICB1bnNpZ25lZCBsb25nICptYXhfZnJlcSkKPj4+ICAgewo+Pj4g
ICAJdW5zaWduZWQgbG9uZyAqZnJlcV90YWJsZSA9IGRldmZyZXEtPnByb2ZpbGUtPmZyZXFfdGFi
bGU7Cj4+PiArCXVuc2lnbmVkIGxvbmcgcW9zX21pbl9mcmVxLCBxb3NfbWF4X2ZyZXE7Cj4+PiAg
IAo+Pj4gICAJbG9ja2RlcF9hc3NlcnRfaGVsZCgmZGV2ZnJlcS0+bG9jayk7Cj4+PiAgIAo+Pj4g
ICAJLyoKPj4+ICAgCSAqIEluaXQgbWluL21heCBmcmVxdWVuY3kgZnJvbSBmcmVxIHRhYmxlLgo+
Pj4gQEAgLTEyNSwxMCArMTI5LDE4IEBAIHN0YXRpYyB2b2lkIGdldF9mcmVxX3JhbmdlKHN0cnVj
dCBkZXZmcmVxICpkZXZmcmVxLAo+Pj4gICAJfSBlbHNlIHsKPj4+ICAgCQkqbWluX2ZyZXEgPSBm
cmVxX3RhYmxlW2RldmZyZXEtPnByb2ZpbGUtPm1heF9zdGF0ZSAtIDFdOwo+Pj4gICAJCSptYXhf
ZnJlcSA9IGZyZXFfdGFibGVbMF07Cj4+PiAgIAl9Cj4+PiAgIAo+Pj4gKwkvKiBjb25zdHJhaW50
cyBmcm9tIFBNIFFvUyAqLwo+Pgo+PiBBcyBJIGNvbW1lbnRlZCBvbiBwYXRjaDQsCj4+ICdjb25z
dHJhaW50cycgLT4gJ0NvbnN0cmFpbnQnIGJlY2F1c2UgZmlyc3QgdmVyYiBoYXZlIHRvIGJlIHVz
ZWQKPj4gYXMgdGhlIHNpZ3VsYXIgdmVyYnMuCj4gCj4gQWxyZWFkeSBkaXNjdXNzZWQgZm9yIGFu
b3RoZXIgcGF0Y2g7IEkgd2lsbCBtb2RpZnkgdG8gIkFwcGx5IGNvbnN0cmFpbnRzIAo+IGZyb20g
UE0gUW9TIiBpbnN0ZWFkLgoKSSBhZ3JlZSB0aGUgbmV3IGNvbW1lbnQgd2l0aCAnQXBwbHkgY29u
c3RyYWludHMgLi4uICcuCgo+IAo+PiBJIHByZWZlciB0byB1c2UgZm9sbG93aW5nIGNvbW1lbnRz
Ogo+Pgo+PiAJLyogQ29uc3RyYWludCBtaW5pbXVtL21heGltdW0gZnJlcXVlbmN5IGZyb20gUE0g
UW9TIGNvbnN0cmFpbnRzICovCj4+Cj4+PiArCXFvc19taW5fZnJlcSA9IGRldl9wbV9xb3NfcmVh
ZF92YWx1ZShkZXZmcmVxLT5kZXYucGFyZW50LAo+Pj4gKwkJCQkJICAgICBERVZfUE1fUU9TX01J
Tl9GUkVRVUVOQ1kpOwo+Pj4gKwlxb3NfbWF4X2ZyZXEgPSBkZXZfcG1fcW9zX3JlYWRfdmFsdWUo
ZGV2ZnJlcS0+ZGV2LnBhcmVudCwKPj4+ICsJCQkJCSAgICAgREVWX1BNX1FPU19NSU5fRlJFUVVF
TkNZKTsKPj4+ICsJKm1pbl9mcmVxID0gbWF4KCptaW5fZnJlcSwgSFpfUEVSX0tIWiAqIHFvc19t
aW5fZnJlcSk7Cj4+PiArCSptYXhfZnJlcSA9IG1pbigqbWF4X2ZyZXEsIEhaX1BFUl9LSFogKiBx
b3NfbWF4X2ZyZXEpOwo+Pj4gKwo+Pj4gICAJLyogY29uc3RyYWludHMgZnJvbSBzeXNmcyAqLwo+
Pj4gICAJKm1pbl9mcmVxID0gbWF4KCptaW5fZnJlcSwgZGV2ZnJlcS0+bWluX2ZyZXEpOwo+Pj4g
ICAJKm1heF9mcmVxID0gbWluKCptYXhfZnJlcSwgZGV2ZnJlcS0+bWF4X2ZyZXEpOwo+Pj4gICAK
Pj4+ICAgCS8qIGNvbnN0cmFpbnRzIGZyb20gT1BQIGludGVyZmFjZSAqLwo+Pj4gQEAgLTYwNiwx
MCArNjE4LDQ5IEBAIHN0YXRpYyBpbnQgZGV2ZnJlcV9ub3RpZmllcl9jYWxsKHN0cnVjdCBub3Rp
Zmllcl9ibG9jayAqbmIsIHVuc2lnbmVkIGxvbmcgdHlwZSwKPj4+ICAgCW11dGV4X3VubG9jaygm
ZGV2ZnJlcS0+bG9jayk7Cj4+PiAgIAo+Pj4gICAJcmV0dXJuIHJldDsKPj4+ICAgfQo+Pj4gICAK
Pj4+ICsvKioKPj4+ICsgKiBxb3Nfbm90aWZpZXJfY2FsbCgpIC0gQ29tbW9uIGhhbmRsZXIgZm9y
IFFvUyBjb25zdHJhaW50cy4KPj4+ICsgKiBAZGV2ZnJlcTogICAgdGhlIGRldmZyZXEgaW5zdGFu
Y2UuCj4+PiArICovCj4+PiArc3RhdGljIGludCBxb3Nfbm90aWZpZXJfY2FsbChzdHJ1Y3QgZGV2
ZnJlcSAqZGV2ZnJlcSkKPj4+ICt7Cj4+PiArCWludCBlcnI7Cj4+PiArCj4+PiArCW11dGV4X2xv
Y2soJmRldmZyZXEtPmxvY2spOwo+Pj4gKwllcnIgPSB1cGRhdGVfZGV2ZnJlcShkZXZmcmVxKTsK
Pj4+ICsJbXV0ZXhfdW5sb2NrKCZkZXZmcmVxLT5sb2NrKTsKPj4+ICsJaWYgKGVycikKPj4+ICsJ
CWRldl9lcnIoZGV2ZnJlcS0+ZGV2LnBhcmVudCwKPj4+ICsJCQkJImZhaWxlZCB0byB1cGRhdGUg
ZnJlcXVlbmN5IGZvciBQTSBRb1MgY29uc3RyYWludHMgKCVkKVxuIiwKPj4KPj4gSXMgaXQgbm90
IG92ZXIgODAgY2hhcj8KPiAKPiBZZXMgYnV0IGNvZGluZyBzdHlsZSBleHBsaWNpdGx5IGZvcmJp
ZHMgYnJlYWtpbmcgc3RyaW5ncy4KPiAKPj4+ICsJCQkJZXJyKTsKPj4+ICsKPj4+ICsJcmV0dXJu
IE5PVElGWV9PSzsKPj4+ICt9Cj4+PiArCj4+PiArLyoqCj4+PiArICogcW9zX21pbl9ub3RpZmll
cl9jYWxsKCkgLSBDYWxsYmFjayBmb3IgUW9TIG1pbl9mcmVxIGNoYW5nZXMuCj4+PiArICogQG5i
OgkJU2hvdWxkIGJlIGRldmZyZXEtPm5iX21pbgo+Pj4gKyAqLwo+Pj4gK3N0YXRpYyBpbnQgcW9z
X21pbl9ub3RpZmllcl9jYWxsKHN0cnVjdCBub3RpZmllcl9ibG9jayAqbmIsCj4+PiArCQkJCQkg
dW5zaWduZWQgbG9uZyB2YWwsIHZvaWQgKnB0cikKPj4+ICt7Cj4+PiArCXJldHVybiBxb3Nfbm90
aWZpZXJfY2FsbChjb250YWluZXJfb2YobmIsIHN0cnVjdCBkZXZmcmVxLCBuYl9taW4pKTsKPj4+
ICt9Cj4+PiArCj4+PiArLyoqCj4+PiArICogcW9zX21heF9ub3RpZmllcl9jYWxsKCkgLSBDYWxs
YmFjayBmb3IgUW9TIG1heF9mcmVxIGNoYW5nZXMuCj4+PiArICogQG5iOgkJU2hvdWxkIGJlIGRl
dmZyZXEtPm5iX21heAo+Pj4gKyAqLwo+Pj4gK3N0YXRpYyBpbnQgcW9zX21heF9ub3RpZmllcl9j
YWxsKHN0cnVjdCBub3RpZmllcl9ibG9jayAqbmIsCj4+PiArCQkJCQkgdW5zaWduZWQgbG9uZyB2
YWwsIHZvaWQgKnB0cikKPj4+ICt7Cj4+PiArCXJldHVybiBxb3Nfbm90aWZpZXJfY2FsbChjb250
YWluZXJfb2YobmIsIHN0cnVjdCBkZXZmcmVxLCBuYl9tYXgpKTsKPj4+ICt9Cj4+PiArCj4+PiAg
IC8qKgo+Pj4gICAgKiBkZXZmcmVxX2Rldl9yZWxlYXNlKCkgLSBDYWxsYmFjayBmb3Igc3RydWN0
IGRldmljZSB0byByZWxlYXNlIHRoZSBkZXZpY2UuCj4+PiAgICAqIEBkZXY6CXRoZSBkZXZmcmVx
IGRldmljZQo+Pj4gICAgKgo+Pj4gICAgKiBSZW1vdmUgZGV2ZnJlcSBmcm9tIHRoZSBsaXN0IGFu
ZCByZWxlYXNlIGl0cyByZXNvdXJjZXMuCj4+PiBAQCAtNjIwLDEwICs2NzEsMTUgQEAgc3RhdGlj
IHZvaWQgZGV2ZnJlcV9kZXZfcmVsZWFzZShzdHJ1Y3QgZGV2aWNlICpkZXYpCj4+PiAgIAo+Pj4g
ICAJbXV0ZXhfbG9jaygmZGV2ZnJlcV9saXN0X2xvY2spOwo+Pj4gICAJbGlzdF9kZWwoJmRldmZy
ZXEtPm5vZGUpOwo+Pj4gICAJbXV0ZXhfdW5sb2NrKCZkZXZmcmVxX2xpc3RfbG9jayk7Cj4+PiAg
IAo+Pj4gKwlkZXZfcG1fcW9zX3JlbW92ZV9ub3RpZmllcihkZXZmcmVxLT5kZXYucGFyZW50LCAm
ZGV2ZnJlcS0+bmJfbWF4LAo+Pj4gKwkJCURFVl9QTV9RT1NfTUFYX0ZSRVFVRU5DWSk7Cj4+PiAr
CWRldl9wbV9xb3NfcmVtb3ZlX25vdGlmaWVyKGRldmZyZXEtPmRldi5wYXJlbnQsICZkZXZmcmVx
LT5uYl9taW4sCj4+PiArCQkJREVWX1BNX1FPU19NSU5fRlJFUVVFTkNZKTsKPj4+ICsKPj4KPj4g
SnVzdCBwcmludCBlcnJvciB3aXRoIGRldl9lcnIoKSB3aXRob3V0IHN0b3BwaW5nIHRoZSByZWxl
YXNlIHN0ZXAuCj4+Cj4+IEkgcHJlZmVyIHRvIGhhbmRsZSB0aGUgcmV0dXJuIHZhbHVlIGlmIGtl
cm5lbCBBUEkgcHJvdmlkZXMKPj4gdGhlIGVycm9yIGNvZGUuCgpIb3cgYWJvdXQ/Cgo+Pgo+Pj4g
ICAJaWYgKGRldmZyZXEtPnByb2ZpbGUtPmV4aXQpCj4+PiAgIAkJZGV2ZnJlcS0+cHJvZmlsZS0+
ZXhpdChkZXZmcmVxLT5kZXYucGFyZW50KTsKPj4+ICAgCj4+PiAgIAlrZnJlZShkZXZmcmVxLT50
aW1lX2luX3N0YXRlKTsKPj4+ICAgCWtmcmVlKGRldmZyZXEtPnRyYW5zX3RhYmxlKTsKPj4+IEBA
IC03MzMsMTAgKzc4OSwyOCBAQCBzdHJ1Y3QgZGV2ZnJlcSAqZGV2ZnJlcV9hZGRfZGV2aWNlKHN0
cnVjdCBkZXZpY2UgKmRldiwKPj4+ICAgCWlmIChlcnIpIHsKPj4+ICAgCQlwdXRfZGV2aWNlKCZk
ZXZmcmVxLT5kZXYpOwo+Pj4gICAJCWdvdG8gZXJyX291dDsKPj4+ICAgCX0KPj4+ICAgCj4+PiAr
CS8qCj4+PiArCSAqIFJlZ2lzdGVyIG5vdGlmaWVycyBmb3IgdXBkYXRlcyB0byBtaW4vbWF4X2Zy
ZXEgYWZ0ZXIgZGV2aWNlIGlzCj4+PiArCSAqIGluaXRpYWxpemVkIChhbmQgd2UgY2FuIGhhbmRs
ZSBub3RpZmljYXRpb25zKSBidXQgYmVmb3JlIHRoZQo+Pj4gKwkgKiBnb3Zlcm5vciBpcyBzdGFy
dGVkICh3aGljaCBzaG91bGQgZG8gYW4gaW5pdGlhbCBlbmZvcmNlbWVudCBvZgo+Pj4gKwkgKiBj
b25zdHJhaW50cykuCj4+PiArCSAqLwo+Pgo+PiBNeSBwcmV2aW91cyBjb21tZW50IGlzIG5vdCBl
bm91Z2ggd2h5IEkgcHJlZmVyIHRvIHJlbW92ZSBpdC4gU29ycnkuCj4+IEFjdHVhbGx5LCB1bnRp
bCBub3csIHRoZSBkZXZmcmVxX2FkZF9kZXZpY2UoKSBkb24ndCBoYXZlIHRoZSBkZXRhaWxlZAo+
PiBjb21tZW50cyBiZWNhdXNlIHRoZSBsaW5lIGNvZGUgaXMgbm90IHRvbyBsb25nLiBCdXQsIGF0
IHRoZSBwcmVzZW50IHRpbWUsCj4+IGRldmZyZXFfYWRkX2RldmljZSgpIGlzIHRvbyBsb25nLiBJ
dCBtZWFucyB0aGF0IHRoZSBkZXRhaWxlZCBjb21tZW50Cj4+IGFyZSBuZWNlc3NhcnkuCj4+Cj4+
IFNvLCBJJ2xsIGFkZCB0aGUgZGV0YWlsZWQgY29tbWVudCBmb3IgZWFjaCBzdGVwIG9mIGRldmZy
ZXFfYWRkX2RldmljZSgpCj4+IG9uIHNlcGFyYXRlIHBhdGNoIHRvIGtlZXAgdGhlIHNhbWUgc3R5
bGUuIEknbGwgc2VuZCB0aGUgcGF0Y2ggdG8geW91Cj4+IGZvciB0aGUgcmV2aWV3Lgo+IAo+IFRo
aXMgaXMgdmVyeSBsaWtlbHkgdG8gcmVzdWx0IGluIG1lcmdlIGNvbmZsaWN0cywgbWF5YmUgd2Fp
dCBmb3IgbXkgCj4gc2VyaWVzIHRvIGdvIGluIGZpcnN0PwoKSSdsbCBzZW5kIHRoZSBzZXBhcmF0
ZSBwYXRjaCBhZnRlciBmaW5pc2hlZCB0aGUgcmV2aWV3IG9mIHRoZXNlIHBhdGNoZXMuClNvLCBp
ZiB5b3UgYWdyZWUsIHBsZWFzZSByZW1vdmUgdGhpcyBjb21tZW50IG9uIHRoaXMgcGF0Y2guCgpZ
b3UgY2FuIHJldmlldyB0aGUgZGV0YWlsZWQgY29tbWVudHMgb24gc2VwYXJhdGUgcGF0Y2ggd2hl
biBJIHNlbmQuCgo+IAo+Pj4gKwlkZXZmcmVxLT5uYl9taW4ubm90aWZpZXJfY2FsbCA9IHFvc19t
aW5fbm90aWZpZXJfY2FsbDsKPj4+ICsJZXJyID0gZGV2X3BtX3Fvc19hZGRfbm90aWZpZXIoZGV2
ZnJlcS0+ZGV2LnBhcmVudCwgJmRldmZyZXEtPm5iX21pbiwKPj4+ICsJCQkJICAgICAgREVWX1BN
X1FPU19NSU5fRlJFUVVFTkNZKTsKPj4+ICsJaWYgKGVycikKPj4+ICsJCWdvdG8gZXJyX2RldmZy
ZXE7Cj4+PiArCj4+PiArCWRldmZyZXEtPm5iX21heC5ub3RpZmllcl9jYWxsID0gcW9zX21heF9u
b3RpZmllcl9jYWxsOwo+Pj4gKwllcnIgPSBkZXZfcG1fcW9zX2FkZF9ub3RpZmllcihkZXZmcmVx
LT5kZXYucGFyZW50LCAmZGV2ZnJlcS0+bmJfbWF4LAo+Pj4gKwkJCQkgICAgICBERVZfUE1fUU9T
X01BWF9GUkVRVUVOQ1kpOwo+Pj4gKwlpZiAoZXJyKQo+Pj4gKwkJZ290byBlcnJfZGV2ZnJlcTsK
Pj4+ICsKPj4+ICAgCW11dGV4X2xvY2soJmRldmZyZXFfbGlzdF9sb2NrKTsKPj4+ICAgCj4+PiAg
IAlnb3Zlcm5vciA9IHRyeV90aGVuX3JlcXVlc3RfZ292ZXJub3IoZGV2ZnJlcS0+Z292ZXJub3Jf
bmFtZSk7Cj4+PiAgIAlpZiAoSVNfRVJSKGdvdmVybm9yKSkgewo+Pj4gICAJCWRldl9lcnIoZGV2
LCAiJXM6IFVuYWJsZSB0byBmaW5kIGdvdmVybm9yIGZvciB0aGUgZGV2aWNlXG4iLAo+Pj4gQEAg
LTc2MCwxMCArODM0LDExIEBAIHN0cnVjdCBkZXZmcmVxICpkZXZmcmVxX2FkZF9kZXZpY2Uoc3Ry
dWN0IGRldmljZSAqZGV2LAo+Pj4gICAKPj4+ICAgCXJldHVybiBkZXZmcmVxOwo+Pj4gICAKPj4+
ICAgZXJyX2luaXQ6Cj4+PiAgIAltdXRleF91bmxvY2soJmRldmZyZXFfbGlzdF9sb2NrKTsKPj4+
ICtlcnJfZGV2ZnJlcToKPj4+ICAgCWRldmZyZXFfcmVtb3ZlX2RldmljZShkZXZmcmVxKTsKPj4+
ICAgCXJldHVybiBFUlJfUFRSKGVycik7Cj4+PiAgIAo+Pj4gICBlcnJfZGV2Ogo+Pj4gICAJLyoK
Pj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RldmZyZXEuaCBiL2luY2x1ZGUvbGludXgv
ZGV2ZnJlcS5oCj4+PiBpbmRleCBjM2NiYzE1ZmRmMDguLmRhYzBkZmZlYWJiNCAxMDA2NDQKPj4+
IC0tLSBhL2luY2x1ZGUvbGludXgvZGV2ZnJlcS5oCj4+PiArKysgYi9pbmNsdWRlL2xpbnV4L2Rl
dmZyZXEuaAo+Pj4gQEAgLTEzNCwxMCArMTM0LDEyIEBAIHN0cnVjdCBkZXZmcmVxX2Rldl9wcm9m
aWxlIHsKPj4+ICAgICogQHRvdGFsX3RyYW5zOglOdW1iZXIgb2YgZGV2ZnJlcSB0cmFuc2l0aW9u
cwo+Pj4gICAgKiBAdHJhbnNfdGFibGU6CVN0YXRpc3RpY3Mgb2YgZGV2ZnJlcSB0cmFuc2l0aW9u
cwo+Pj4gICAgKiBAdGltZV9pbl9zdGF0ZToJU3RhdGlzdGljcyBvZiBkZXZmcmVxIHN0YXRlcwo+
Pj4gICAgKiBAbGFzdF9zdGF0X3VwZGF0ZWQ6CVRoZSBsYXN0IHRpbWUgc3RhdCB1cGRhdGVkCj4+
PiAgICAqIEB0cmFuc2l0aW9uX25vdGlmaWVyX2xpc3Q6IGxpc3QgaGVhZCBvZiBERVZGUkVRX1RS
QU5TSVRJT05fTk9USUZJRVIgbm90aWZpZXIKPj4+ICsgKiBAbmJfbWluOgkJTm90aWZpZXIgYmxv
Y2sgZm9yIERFVl9QTV9RT1NfTUlOX0ZSRVFVRU5DWQo+Pj4gKyAqIEBuYl9tYXg6CQlOb3RpZmll
ciBibG9jayBmb3IgREVWX1BNX1FPU19NQVhfRlJFUVVFTkNZCj4+PiAgICAqCj4+PiAgICAqIFRo
aXMgc3RydWN0dXJlIHN0b3JlcyB0aGUgZGV2ZnJlcSBpbmZvcm1hdGlvbiBmb3IgYSBnaXZlIGRl
dmljZS4KPj4+ICAgICoKPj4+ICAgICogTm90ZSB0aGF0IHdoZW4gYSBnb3Zlcm5vciBhY2Nlc3Nl
cyBlbnRyaWVzIGluIHN0cnVjdCBkZXZmcmVxIGluIGl0cwo+Pj4gICAgKiBmdW5jdGlvbnMgZXhj
ZXB0IGZvciB0aGUgY29udGV4dCBvZiBjYWxsYmFja3MgZGVmaW5lZCBpbiBzdHJ1Y3QKPj4+IEBA
IC0xNzYsMTAgKzE3OCwxMyBAQCBzdHJ1Y3QgZGV2ZnJlcSB7Cj4+PiAgIAl1bnNpZ25lZCBpbnQg
KnRyYW5zX3RhYmxlOwo+Pj4gICAJdW5zaWduZWQgbG9uZyAqdGltZV9pbl9zdGF0ZTsKPj4+ICAg
CXVuc2lnbmVkIGxvbmcgbGFzdF9zdGF0X3VwZGF0ZWQ7Cj4+PiAgIAo+Pj4gICAJc3RydWN0IHNy
Y3Vfbm90aWZpZXJfaGVhZCB0cmFuc2l0aW9uX25vdGlmaWVyX2xpc3Q7Cj4+PiArCj4+PiArCXN0
cnVjdCBub3RpZmllcl9ibG9jayBuYl9taW47Cj4+PiArCXN0cnVjdCBub3RpZmllcl9ibG9jayBu
Yl9tYXg7Cj4+PiAgIH07Cj4+PiAgIAo+Pj4gICBzdHJ1Y3QgZGV2ZnJlcV9mcmVxcyB7Cj4+PiAg
IAl1bnNpZ25lZCBsb25nIG9sZDsKPj4+ICAgCXVuc2lnbmVkIGxvbmcgbmV3Owo+Pj4KPj4KPj4K
PiAKCgotLSAKQmVzdCBSZWdhcmRzLApDaGFud29vIENob2kKU2Ftc3VuZyBFbGVjdHJvbmljcwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
