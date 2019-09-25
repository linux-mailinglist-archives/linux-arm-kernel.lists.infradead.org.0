Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02DADBD625
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 03:40:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u0jxF8ExY2mQuZs5ZnzfKYPqVKxZ6D5tIIS2tcT2qU0=; b=MMY4TH1uV+F8zF
	v8lojj+7tjN97/9VQIRpSlhVee6mBh+9RUo49+HrY1qA8aWJ6ts7Qfl4SjvKCUziVoBrUn+XbUdkz
	hIPKVrlDzDpNGFf5/FjuaQMGVFWusgoVB4wR9evASYPbhQ6s/MlS9e/whMvt8lECLId9zBEMRHroe
	+9DtAz4ZrqyUQMnm0mDngtEMuI8lEpYCk3CRof+U3nHukwtIaYSByfESIXzdWKTOq3+1Vpfp3MvZ3
	gPqraE/V6weRO6JlVb64dI9B0xNP2Ct6lVj2mqdetdkfzJVe0i84X7oAxcoZ7xXDMDxM8RbFT5iAi
	0Iqo0cOVnOqqDZSY4RuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCwI3-0006NW-Cu; Wed, 25 Sep 2019 01:40:23 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCwHq-0006N4-Ec
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 01:40:12 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20190925014007epoutp0462ea126ed3b87c4d6b6d83c988d0b3f8~HiszDTJu52616726167epoutp049
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 01:40:07 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20190925014007epoutp0462ea126ed3b87c4d6b6d83c988d0b3f8~HiszDTJu52616726167epoutp049
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1569375607;
 bh=VlFBabLxsT6pVY5OvbKB1AxeSRnSdAhftzYuJEwPV9s=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=V7Fhkq9fLTh8ORnQb4dXUKrf63yT0usl5gxmXYlZG8EXKLb5hdqlyWxWg88ZVThfp
 Jdp65WcA2MfPKuSDOjSSdzNgAWVMfH4MsXpx/ZxtbT/GJyLnTE74fggvcm+DvQ6Id4
 VHTtf8PlipM+dOGf5JoZQduqicrDITERwHxl7c3E=
Received: from epsnrtp5.localdomain (unknown [182.195.42.166]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190925014006epcas1p16ec69fe9a8e2fa77ee648fa6c986a238~HisybJBGz1145911459epcas1p1B;
 Wed, 25 Sep 2019 01:40:06 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.40.157]) by
 epsnrtp5.localdomain (Postfix) with ESMTP id 46dLN36KCBzMqYkb; Wed, 25 Sep
 2019 01:40:03 +0000 (GMT)
Received: from epcas1p2.samsung.com ( [182.195.41.46]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 A4.18.04068.375CA8D5; Wed, 25 Sep 2019 10:40:03 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTPA id
 20190925014002epcas1p3a664abfe3476208f9a269b6c9b3971c2~Hisuz9FlG1260612606epcas1p3_;
 Wed, 25 Sep 2019 01:40:02 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190925014002epsmtrp2256ef98aaf207af7c02cddbff87d9a0b~HisutpN4u1881918819epsmtrp2D;
 Wed, 25 Sep 2019 01:40:02 +0000 (GMT)
X-AuditID: b6c32a39-f5fff70000000fe4-7d-5d8ac57302ff
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 2B.76.04081.275CA8D5; Wed, 25 Sep 2019 10:40:02 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190925014002epsmtip270c53580d133b51efe825d977f089cd3~HisuVh4S_2174121741epsmtip2c;
 Wed, 25 Sep 2019 01:40:02 +0000 (GMT)
Subject: Re: [PATCH v8 0/6] PM / devfreq: Add dev_pm_qos support
To: Leonard Crestez <leonard.crestez@nxp.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 Matthias Kaehlcke <mka@chromium.org>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <b0cb5290-7b85-b803-2264-89d7d572fd1c@samsung.com>
Date: Wed, 25 Sep 2019 10:44:26 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <cover.1569319738.git.leonard.crestez@nxp.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02TfUwTZxzH8/R6dy3aeRaU3xiZcGQmkvByQtnDJoRlZLlk/EE0JkZD2Aln
 i/Tl0muJbjErcwPsxl6ijlhcJHEYLBqkg6UqBS2IqS8oGkUUA4GaKOMlitVlm9laDjL++zy/
 3/d7v+f7PM9pCP0zKklTZXWIdqtgZqk49e/9mzIz5Cvusuzp+mQcHOymceT6NYRP3bmCcFPA
 R+Fbt87R+OZXMzR+6ErGbY+fk9g3dZ/E7r9OE3ihcQDhhXNTCD+qbaNw+9BlCruDbyjcGeGL
 GH7+wTc03+waVvMtPifv8x6i+LH7PRT/269f8p1zfhV/ea5HxX/f5UX8gu/d0rid1VtMolAp
 2lNEa4WtsspqLGA/3Vb+cbkhL5vL4PLx+2yKVbCIBWxxSWnGJ1XmaBA2pUYwO6OlUkGW2azC
 LXab0yGmmGyyo4AVpUqzlC9lyoJFdlqNmRU2ywdcdvZmQ1T4WbUpEhompMmN+57cqCNdKLTB
 jbQaYHLBe3gcuVGcRs/4EdQ2/EwqixcIrh8bWeq8QuD9J4KWLUP/XlMrjQCCV6EfaGUxj6Dz
 yAwZU8UzRRCOTKhijQSmHcHXrWOLdoIJE9DTsTidYtKh7+kDKsZrmFS49+fUokbHFEJTyyU6
 xmrmPZi9N07EeB2zA15M9JOKZi2EjoXVMdYyH0JT3fL3E+Fh+IRK4Q1wsLuZiG0CmDs0DPTW
 k0qGYrjbe4FQOB6mr3bRCifBwlyAUvgLOB0aoBRzA4KuvttL5hzoaz0cnaCJTtgEHReylHIq
 nP/7l6VNvAVzke/ImAQYHTTU6RVJGtydeKxS+G04WX+I+hGxnhVxPCsieFZE8Pw/rAWpvWi9
 KMkWoyhzkmHlffvQ4jNPz/ejwaGSIGI0iF2tKyLdZXpSqJH3W4IINASboPMkR0u6SmH/56Ld
 Vm53mkU5iAzR0/6JSFpXYYv+NFZHOWfYnJOTg3O5PAPHsYk63ugq0zNGwSFWi6Ik2pd9Ko02
 yYUa6ZaSVuuJP/TPdd8GtKOrEs68M/lIOiAd6Siobno603M8MdB9vOSjYufoSEj7cnJo5+vB
 jEs1+OpRx/go6994FuT+2jS0tXe+baRiNj5kzkUDqdN9hZlrVh+czdu9Nm0y358FjkDekz1H
 20zt24dzx1Rphl1v9o5cfN0cPtloZ9WySeDSCbss/AeD++D4/AMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrAIsWRmVeSWpSXmKPExsWy7bCSvG7R0a5Ygxv90haHjm1lt/h6+hSj
 xbJLRxktpu/dxGZx/vwGdouzTW/YLW41yFisuPuR1WLT42usFl2/VjJbfO49wmjxecNjRovb
 jSvYLFafO8hm0XXoL5vFxq8eDgIe72+0snvMbrjI4rFgU6nHplWdbB53ru1h89i8pN5j47sd
 TB4H3+1h8ujbsorR4/MmuQCuKC6blNSczLLUIn27BK6MrycvMhc8Uqt4eqaNtYHxpHwXIyeH
 hICJxLn/p1i6GLk4hAR2M0rMPvaVBSIhKTHt4lHmLkYOIFtY4vDhYpCwkMBbRomTc9RBbGEB
 B4knXx8wgdgiAmsZJeacdwCxmQWeMUuc2JUGUd/HKLH0PA+IzSagJbH/xQ02EJtfQFHi6o/H
 jCA2r4CdxPQFB9hBbBYBVYm3V+8zg9iiAhESh3fMgqoRlDg58wnYaZwC1hLT2+4wQuxSl/gz
 7xIzhC0ucevJfCYIW16ieets5gmMwrOQtM9C0jILScssJC0LGFlWMUqmFhTnpucWGxYY5qWW
 6xUn5haX5qXrJefnbmIEx7OW5g7Gy0viDzEKcDAq8fA6sHbFCrEmlhVX5h5ilOBgVhLhnSUD
 FOJNSaysSi3Kjy8qzUktPsQozcGiJM77NO9YpJBAemJJanZqakFqEUyWiYNTqoFR1WLD1zym
 0ilLN3YWbC9aV6P7VigozbzxtM6ineW7juqtuCmT/KG/f4tv/gX+mhs9s7y6Ln5ttdt1aLL0
 70ijWaoJvi+V92wUWnXJ//iDDU+a13h4xUd95bd7d+vE9HmKz1/c2H3xWbHs/MCjmvbV82sX
 MZ2JC+wruuipES7/zq230bch3DxIiaU4I9FQi7moOBEAT5I8muMCAAA=
X-CMS-MailID: 20190925014002epcas1p3a664abfe3476208f9a269b6c9b3971c2
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190924101140epcas1p4abeedf42f223e65f58c88a0ddf1e4e56
References: <CGME20190924101140epcas1p4abeedf42f223e65f58c88a0ddf1e4e56@epcas1p4.samsung.com>
 <cover.1569319738.git.leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_184010_743201_5E16F478 
X-CRM114-Status: GOOD (  27.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
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
 linux-pm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Lukasz Luba <l.luba@partner.samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTGVvbmFyZCwKCkJhc2ljYWxseSwgSSB0aGluayB0aGF0IHRoZXNlIHNlcmllcyBhcmUgdmVy
eSBpbXBvcnRhbnQuCgpCdXQsIHlvdSBiZXR0ZXIgdG8gc2VuZCB0aGUgbmV4dCB2ZXJzaW9uIHBh
dGNoCmFmdGVyIGZpbmlzaGluZyB0aGUgcmV2aWV3L2Rpc2N1c3Npb24gb24gcHJldmlvdXMgdmVy
c2lvbi4KCkkgcmV2aWV3ZWQgdGhlIHY3IGFuZCB0aGVuIHlvdSByZXBsaWVkIHlvdXIgY29tbWVu
dC4KSXQgaXMgT0suIEJ1dCwgeW91IGp1c3Qgc2VuZCB2OCB3aXRob3V0IHdhaXRpbmcgbXkgY29t
bWVudApmcm9tIHlvdXIgcmVwbHkuIEl0IGlzIG5vdCBlZmZpY2llbnQgZGlzY3Vzc2lvbiBtZXRo
b2QuCgpJZiB3ZSBmaW5pc2ggdGhlIHJldmlldyBvZiBzb21lIHBvaW50IGluIHRoZSB2NywKaXQg
ZG9lc24ndCBuZWVkIHRvIGRpc2N1c3MgdGhlIHNhbWUgY29tbWVudCBvbiB2OC4gCgpQbGVhc2Ug
d2FpdCB0aGUgcmVwbHkgZm9yIHJldmlldy4gSSB0aGluayB0aGF0Cml0IGNhbiBzYXZlIHRoZSBv
dXIgdGltZSBmb3IgdGhlIHJldmlldyBhbmQgY29udHJpYnV0aW9uLgoKCk9uIDE5LiA5LiAyNC4g
7Jik7ZuEIDc6MTEsIExlb25hcmQgQ3Jlc3RleiB3cm90ZToKPiBBZGQgZGV2X3BtX3FvcyBub3Rp
ZmllcnMgdG8gZGV2ZnJlcSBjb3JlIGluIG9yZGVyIHRvIHN1cHBvcnQgZnJlcXVlbmN5Cj4gbGlt
aXRzIHZpYSBkZXZfcG1fcW9zX2FkZF9yZXF1ZXN0Lgo+IAo+IFVubGlrZSB0aGUgcmVzdCBvZiBk
ZXZmcmVxIHRoZSBkZXZfcG1fcW9zIGZyZXF1ZW5jeSBpcyBtZWFzdXJlZCBpbiBLaHosCj4gdGhp
cyBpcyBjb25zaXN0ZW50IHdpdGggY3VycmVudCBkZXZfcG1fcW9zIHVzYWdlIGZvciBjcHVmcmVx
IGFuZAo+IGFsbG93cyBmcmVxdWVuY2llcyBhYm92ZSAyR2h6IChwbV9xb3MgZXhwcmVzc2VzIGxp
bWl0cyBhcyBzMzIpLgo+IAo+IExpa2Ugd2l0aCBjcHVmcmVxIHRoZSBoYW5kbGluZyBvZiBtaW5f
ZnJlcS9tYXhfZnJlcSBpcyBtb3ZlZCB0byB0aGUKPiBkZXZfcG1fcW9zIG1lY2hhbmlzbS4gQ29u
c3RyYWludHMgZnJvbSB1c2Vyc3BhY2UgYXJlIG5vIGxvbmdlciBjbGFtcGVkIG9uCj4gc3RvcmUs
IGluc3RlYWQgYWxsIHZhbHVlcyBjYW4gYmUgd3JpdHRlbiBhbmQgd2Ugb25seSBjaGVjayBhZ2Fp
bnN0IE9QUHMgaW4gYQo+IG5ldyBkZXZmcmVxX2dldF9mcmVxX3JhbmdlIGZ1bmN0aW9uLiBUaGlz
IGlzIGNvbnNpc3RlbnQgd2l0aCB0aGUgZGVzaWduIG9mCj4gZGV2X3BtX3Fvcy4KPiAKPiBOb3Rp
ZmllcnMgZnJvbSBwbV9xb3MgYXJlIGV4ZWN1dGVkIHVuZGVyIGEgc2luZ2xlIGdsb2JhbCBkZXZf
cG1fcW9zX210eCBhbmQKPiBuZWVkIHRvIHRha2UgZGV2ZnJlcS0+bG9jay4gTm90aWZpZXIgcmVn
aXN0cmF0aW9uIHRha2VzIHRoZSBzYW1lIGRldl9wbV9xb3NfbXR4Cj4gc28gaW4gb3JkZXIgdG8g
cHJldmVudCBsb2NrZGVwIHdhcm5pbmdzIGl0IG11c3QgYmUgZG9uZSBvdXRzaWRlIGRldmZyZXEt
PmxvY2suCj4gQ3VycmVudCBkZXZmcmVxX2FkZF9kZXZpY2UgZG9lcyBhbGwgaW5pdGlhbGl6YXRp
b24gdW5kZXIgZGV2ZnJlcS0+bG9jayBhbmQgdGhhdAo+IG5lZWRzIHRvIGJlIHJlbGF4ZWQuCj4g
Cj4gLS0tCj4gQ2hhbmdlcyBzaW5jZSB2NzoKPiAqIE9ubHkgI2RlZmluZSBIWl9QRVJfS0haIGlu
IHBhdGNoIHdoZXJlIGl0J3MgdXNlZC4KPiAqIERyb3AgZGV2ZnJlcV8gcHJlZml4IGZvciBzb21l
IGludGVybmFsIGZ1bmN0aW9ucy4KPiAqIEltcHJvdmUgcW9zIHVwZGF0ZSBlcnJvciBtZXNzYWdl
Lgo+ICogUmVtb3ZlIHNvbWUgdW5uZWNlc3NhcnkgY29tbWVudHMuCj4gKiBDb2xsZWN0IHJldmll
d3MKPiBMaW5rIHRvIHY3OiBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL2NvdmVyLzExMTU3
NjQ5Lwo+IAo+IENoYW5nZXMgc2luY2UgdjY6Cj4gKiBEb24ndCByZXR1cm4gZXJybm8gZnJvbSBk
ZXZmcmVxX3Fvc19ub3RpZmllcl9jYWxsLCByZXR1cm4gTk9USUZZX0RPTkUKPiBhbmQgcHJpbnQg
dGhlIGVycm9yLgo+ICogTW9yZSBzcGVsbGluZyBhbmQgcHVuY3R1YXRpb24gbml0cwo+IExpbmsg
dG8gdjY6IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvY292ZXIvMTExNTcyMDEvCj4gCj4g
Q2hhbmdlcyBzaW5jZSB2NToKPiAqIERyb3AgcGF0Y2hlcyB3aGljaCBhcmUgbm90IHN0cmljdGx5
IHJlbGF0ZWQgdG8gUE0gUW9TLgo+ICogQWRkIGEgY29tbWVudCBleHBsYWluaW5nIHdoeSBkZXZm
cmVxX2FkZF9kZXZpY2UgbmVlZHMgdHdvIGNsZWFudXAgcGF0aHMuCj4gKiBSZW1vdmUge30gZm9y
IHNpbmdsZSBsaW5lLgo+ICogUmVuYW1lIHttaW4sbWF4fV9mcmVxX3JlcSB0byB1c2VyX3ttaW4s
bWF4fV9mcmVxX3JlcQo+ICogQ29sbGVjdCByZXZpZXdzCj4gTGluayB0byB2NTogaHR0cHM6Ly9w
YXRjaHdvcmsua2VybmVsLm9yZy9jb3Zlci8xMTE0OTQ5Ny8KPiAKPiBTb3JyeSBmb3IgZm9yZ2V0
dGluZyB0byBwcm9wZXJseSBsYWJlbCB2NS4gSSBrbm93IHRoaXMgaXMgaW5zaWRlIHRoZQo+IG1l
cmdlIHdpbmRvdyBidXQgcmV2aWV3IHdvdWxkIHN0aWxsIGJlIGFwcHJlY2lhdGVkLgo+IAo+IENo
YW5nZXMgc2luY2UgdjQ6Cj4gKiBNb3ZlIG1vcmUgZGV2ZnJlcV9hZGRfZGV2aWNlIGluaXQgYWhl
YWQgb2YgZGV2aWNlX3JlZ2lzdGVyLgo+ICogTWFrZSBkZXZmcmVxX2Rldl9yZWxlYXNlIGNsZWFu
dXAgZGV2aWNlcyBub3QgeWV0IGluIGRldmZyZXFfbGlzdC4gVGhpcyBpcwo+IHNpbXBsZXIgdGhh
biBwcmV2aW91cyBhdHRlbXB0IHRvIGFkZCB0byBkZXZmcmVxX2xpc3Qgc29ubmVyLgo+ICogVGFr
ZSBkZXZmcmVxLT5sb2NrIGluIHRyYW5zX3N0YXRfc2hvdwo+ICogUmVnaXN0ZXIgZGV2X3BtX29w
cCBub3RpZmllciBvbiBkZXZmcmVxIHBhcmVudCBkZXYgKHdoaWNoIGhhcyBPUFBzKQo+IExpbmsg
dG8gdjQ6IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvY292ZXIvMTExMTQ2NTcvCj4gCj4g
Q2hhbmdlcyBzaW5jZSB2NDoKPiAqIE1vdmUgbW9yZSBkZXZmcmVxX2FkZF9kZXZpY2UgaW5pdCBh
aGVhZCBvZiBkZXZpY2VfcmVnaXN0ZXIuCj4gKiBNYWtlIGRldmZyZXFfZGV2X3JlbGVhc2UgY2xl
YW51cCBkZXZpY2VzIG5vdCB5ZXQgaW4gZGV2ZnJlcV9saXN0LiBUaGlzIGlzCj4gc2ltcGxlciB0
aGFuIHByZXZpb3VzIGF0dGVtcHQgdG8gYWRkIHRvIGRldmZyZXFfbGlzdCBzb25uZXIuCj4gKiBU
YWtlIGRldmZyZXEtPmxvY2sgaW4gdHJhbnNfc3RhdF9zaG93Cj4gKiBSZWdpc3RlciBkZXZfcG1f
b3BwIG5vdGlmaWVyIG9uIGRldmZyZXEgcGFyZW50IGRldiAod2hpY2ggaGFzIE9QUHMpCj4gTGlr
ZSB0byB2NDogaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9jb3Zlci8xMTExNDY1Ny8KPiAK
PiBDaGFuZ2VzIHNpbmNlIHYzOgo+ICogQ2xlYW51cCBsb2NraW5nIGFuZCBlcnJvci1oYW5kbGlu
ZyBpbiBkZXZmcmVxX2FkZF9kZXZpY2UKPiAqIFJlZ2lzdGVyIG5vdGlmaWVycyBhZnRlciBkZXZp
Y2UgcmVnaXN0cmF0aW9uIGJ1dCBiZWZvcmUgZ292ZXJub3Igc3RhcnQKPiAqIEtlZXAgdGhlIGlu
aXRpYWxpemF0aW9uIG9mIG1pbl9yZXEvbWF4X3JlcSBhaGVhZCBvZiBkZXZpY2VfcmVnaXN0ZXIK
PiBiZWNhdXNlIGl0J3MgdXNlZCBmb3Igc3lzZnMgaGFuZGxpbmcKPiAqIFVzZSBIWl9QRVJfS0ha
IGluc3RlYWQgb2YgMTAwMAo+ICogQWRkIGtlcm5lbC1kb2MgY29tbWVudHMKPiAqIE1vdmUgT1BQ
IG5vdGlmaWVyIHRvIGNvcmUKPiBMaW5rIHRvIHYzOiBodHRwczovL3BhdGNod29yay5rZXJuZWwu
b3JnL2NvdmVyLzExMTA0MDYxLwo+IAo+IENoYW5nZXMgc2luY2UgdjI6Cj4gKiBIYW5kbGUgc3lz
ZnMgdmlhIGRldl9wbV9xb3MgKGluIHNlcGFyYXRlIHBhdGNoKQo+ICogQWRkIGxvY2tpbmcgdG8g
e21pbixtYXh9X2ZyZXFfc2hvdwo+ICogRml4IGNoZWNrcGF0Y2ggaXNzdWVzIChsb25nIGxpbmVz
IGV0YykKPiBMaW5rIHRvIHYyOiBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNoLzEx
MDg0Mjc5Lwo+IAo+IENoYW5nZXMgc2luY2UgdjE6Cj4gKiBBZGQgZG94eWdlbiBjb21tZW50cyBm
b3IgbWluX25iL21heF9uYgo+ICogUmVtb3ZlIG5vdGlmaWVycyBvbiBlcnJvci9jbGVhbnVwIHBh
dGhzLiBLZWVwIGdvdG9zIHNpbXBsZSBieSByZWx5aW5nIG9uCj4gZGV2X3BtX3Fvc19yZW1vdmVf
bm90aWZpZXIgaWdub3Jpbmcgbm90aWZpZXJzIHdoaWNoIHdlcmUgbm90IGFkZGVkLgo+IExpbmsg
dG8gdjE6IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTEwNzg0NzUvCj4gCj4g
TGVvbmFyZCBDcmVzdGV6ICg2KToKPiAgIFBNIC8gZGV2ZnJlcTogRG9uJ3QgZmFpbCBkZXZmcmVx
X2Rldl9yZWxlYXNlIGlmIG5vdCBpbiBsaXN0Cj4gICBQTSAvIGRldmZyZXE6IE1vdmUgbW9yZSBp
bml0aWFsaXphdGlvbiBiZWZvcmUgcmVnaXN0cmF0aW9uCj4gICBQTSAvIGRldmZyZXE6IERvbid0
IHRha2UgbG9jayBpbiBkZXZmcmVxX2FkZF9kZXZpY2UKPiAgIFBNIC8gZGV2ZnJlcTogSW50cm9k
dWNlIGdldF9mcmVxX3JhbmdlIGhlbHBlcgo+ICAgUE0gLyBkZXZmcmVxOiBBZGQgUE0gUW9TIHN1
cHBvcnQKPiAgIFBNIC8gZGV2ZnJlcTogVXNlIFBNIFFvUyBmb3Igc3lzZnMgbWluL21heF9mcmVx
Cj4gCj4gIGRyaXZlcnMvZGV2ZnJlcS9kZXZmcmVxLmMgfCAyNjggKysrKysrKysrKysrKysrKysr
KysrKysrKy0tLS0tLS0tLS0tLS0KPiAgaW5jbHVkZS9saW51eC9kZXZmcmVxLmggICB8ICAxNCAr
LQo+ICAyIGZpbGVzIGNoYW5nZWQsIDE5MSBpbnNlcnRpb25zKCspLCA5MSBkZWxldGlvbnMoLSkK
PiAKCi0tIApCZXN0IFJlZ2FyZHMsCkNoYW53b28gQ2hvaQpTYW1zdW5nIEVsZWN0cm9uaWNzCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
