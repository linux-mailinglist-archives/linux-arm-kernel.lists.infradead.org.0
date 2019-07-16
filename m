Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 315846A442
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 10:51:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QxRuCuQoDhCV/dEQ9JXBPwsmoF3WH/na/CEBFtDDRTc=; b=tBFM4Qhm968qca
	d2vnqTd+268mx2cpOnx1/jvZ0995SWCk9IXWwBd/k723/VnDbeJ3S+1UN8zbouD/iIzjgRP63zBnj
	YmulStz0aUdvMDUHle2dRY0d1vfn4bftS770m902iH8kzqdQQENWmY8MT4nT/umDXDbv7On3jQeqW
	jBOII+j617PbYj+Wf0S7d0x9teUdFhSrua0m7rqq6EeyF815mjLIouDR3J9hmSbZXUUAVEDTmd/4A
	HgiVet28my9lgALjT38+4MD4LLrIyOkASnX37IgcPgHwBh/Z2TOtg4zO1SR/KW4d3br2NRBZ6cfjI
	z9/PreBc/Ws7M8N0cuzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnJBL-0003Dw-9c; Tue, 16 Jul 2019 08:51:31 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnJB7-0003D1-BI
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 08:51:19 +0000
Received: from epcas1p2.samsung.com (unknown [182.195.41.46])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20190716085113epoutp038ff12618aefc54418f98f1439acf42be~x1x8Jfr081670216702epoutp03U
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 08:51:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20190716085113epoutp038ff12618aefc54418f98f1439acf42be~x1x8Jfr081670216702epoutp03U
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563267074;
 bh=ACmg7AjJRbmv8mGq5gKa0bJFXDdGLqITjtTawvIlASk=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=GCZq5KFIPo4mvLcEvanLtpAMSJvbHRzu71cmhopmN7nTdJ4PofBtMcknOsoauPPTo
 LkhzYjkevzg3gVYcmrYM91FNpWVnMLNYojp6fWIYaj8xgJJorbnAmRr7sv+HzsdD7v
 SZE8aqqkXT+JN6SeEpF6OrmBOJoMlnYIhUSSnIlA=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190716085113epcas1p212a4f08e0086b5c591090dd472431915~x1x7i9__D1067710677epcas1p26;
 Tue, 16 Jul 2019 08:51:13 +0000 (GMT)
Received: from epsmges1p2.samsung.com (unknown [182.195.40.154]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 45nvJF6VyjzMqYlp; Tue, 16 Jul
 2019 08:51:09 +0000 (GMT)
Received: from epcas1p2.samsung.com ( [182.195.41.46]) by
 epsmges1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 44.7C.04075.BFF8D2D5; Tue, 16 Jul 2019 17:51:07 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20190716085106epcas1p4e767ed3858ed9cb3fa631460a2cdd7f5~x1x1evSBQ3230832308epcas1p4Q;
 Tue, 16 Jul 2019 08:51:06 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190716085106epsmtrp2c953c1719788d049c8c59073b2b2ad00~x1x1dwKIU0187301873epsmtrp2i;
 Tue, 16 Jul 2019 08:51:06 +0000 (GMT)
X-AuditID: b6c32a36-b61ff70000000feb-96-5d2d8ffb8d9f
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 02.A3.03638.AFF8D2D5; Tue, 16 Jul 2019 17:51:06 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190716085106epsmtip1074ab7b2b284a61a7b4ff2438f449579~x1x1BTOw-2378423784epsmtip1-;
 Tue, 16 Jul 2019 08:51:06 +0000 (GMT)
Subject: Re: [PATCH v2 4/4] dt-bindings: devfreq: exynos-bus: remove unused
 property
To: Kamil Konieczny <k.konieczny@partner.samsung.com>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <dd74212e-a422-13ab-8237-fcaf372ab3eb@samsung.com>
Date: Tue, 16 Jul 2019 17:54:12 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715120416.3561-5-k.konieczny@partner.samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrAJsWRmVeSWpSXmKPExsWy7bCmnu7vft1Yg4uXRCw2zljPajH/yDlW
 i759/xkt+h+/ZrY4f34Du8XZpjfsFpseX2O1uLxrDpvF594jjBYzzu9jslh75C67xdLrF5ks
 bjeuYLN48+Msk0Xr3iPsFv+ubWSx2PzgGJuDoMeaeWsYPTat6mTz2Lyk3uPguz1MHn1bVjF6
 HL+xncnj8ya5APaobJuM1MSU1CKF1Lzk/JTMvHRbJe/geOd4UzMDQ11DSwtzJYW8xNxUWyUX
 nwBdt8wcoA+UFMoSc0qBQgGJxcVK+nY2RfmlJakKGfnFJbZKqQUpOQWWBXrFibnFpXnpesn5
 uVaGBgZGpkCFCdkZz/r3Mxe856yY1bqAqYFxOUcXIyeHhICJxLrZC5i7GLk4hAR2MEp09k9h
 hHA+ATmrz7FBON8YJeb+eMMG03Jl/zx2iMReRok3S48xgiSEBN4zSrRfKQSxhQXCJG7OPswO
 YosImEo8Wt3ACtLALHCZRWLao0msIAk2AS2J/S9ugE3lF1CUuPrjMdggXgE7if2bngIdxcHB
 IqAq8e9DIEhYVCBC4tSReSwQJYISJ2c+AbM5BVwkfndfBRvJLCAucevJfCYIW16ieetssN8k
 BE6xS3xe2QH1gYvEql9/mSBsYYlXx7ewQ9hSEp/f7YWqqZZYefIIG0RzB6PElv0XWCESxhL7
 l05mAjmOWUBTYv0ufYiwosTO33MZIRbzSbz72sMKUiIhwCvR0SYEUaIscfnBXai1khKL2zvZ
 JjAqzULyziwkL8xC8sIshGULGFlWMYqlFhTnpqcWGxYYIcf2JkZw6tYy28G46JzPIUYBDkYl
 Hl6F/TqxQqyJZcWVuYcYJTiYlUR4bb9qxwrxpiRWVqUW5ccXleakFh9iNAUG9kRmKdHkfGBe
 ySuJNzQ1MjY2tjAxNDM1NFQS5533RzNWSCA9sSQ1OzW1ILUIpo+Jg1OqgXGXb9C7ZZ6GfFnB
 5u0sYcY9F8seia2NzvUxWRP3Jt5KPac5fd2x3zGHG91Dt99umLF3Qen/p0cOXnJz8nTjYrUS
 bzvy/LqpRlLJhYlRmyUNp7PtizzwYiuTVvGFd0LtU3v2J19m77rQa+Kxqs+goeTNLIfcpFmG
 CxZkh68+Uf4mvjtO9tDWbCWW4oxEQy3mouJEAOWvWCDzAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrNIsWRmVeSWpSXmKPExsWy7bCSnO6vft1Yg+3vNSw2zljPajH/yDlW
 i759/xkt+h+/ZrY4f34Du8XZpjfsFpseX2O1uLxrDpvF594jjBYzzu9jslh75C67xdLrF5ks
 bjeuYLN48+Msk0Xr3iPsFv+ubWSx2PzgGJuDoMeaeWsYPTat6mTz2Lyk3uPguz1MHn1bVjF6
 HL+xncnj8ya5APYoLpuU1JzMstQifbsEroxn/fuZC95zVsxqXcDUwLico4uRk0NCwETiyv55
 7F2MXBxCArsZJf4/n8AKkZCUmHbxKHMXIweQLSxx+HAxRM1bRolJOxezg9QIC4RJ3Jx9GMwW
 ETCVeLS6gRWkiFngKovE+Y1z2CA6LjJK7Dp0Emwqm4CWxP4XN9hAbH4BRYmrPx4zgti8AnYS
 +zc9BdvGIqAq8e9DIEhYVCBCYtK1nSwQJYISJ2c+AbM5BVwkfndfBRvJLKAu8WfeJWYIW1zi
 1pP5TBC2vETz1tnMExiFZyFpn4WkZRaSlllIWhYwsqxilEwtKM5Nzy02LDDKSy3XK07MLS7N
 S9dLzs/dxAiOYi2tHYwnTsQfYhTgYFTi4T2xRydWiDWxrLgy9xCjBAezkgiv7VftWCHelMTK
 qtSi/Pii0pzU4kOM0hwsSuK88vnHIoUE0hNLUrNTUwtSi2CyTBycUg2MUnc55mkrTz69/eq/
 uZ9k+9/OY3SYdOeYhJzpc4ZtRf9/zi/x/qvjvevH66BvTXxTZPXXHHLa87WI2ZLj+WPRbV+Z
 rtax3j1WLx/LbdHkyLYg+3roRsfmSpGCdQz/MoxD/e7OPM35K6bKIkNnMqNpi+hx/mrvA4IJ
 GiaR9pt2/+E4zta7QDdWiaU4I9FQi7moOBEAUbNLAd4CAAA=
X-CMS-MailID: 20190716085106epcas1p4e767ed3858ed9cb3fa631460a2cdd7f5
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190715120433eucas1p26681c5c2d87423253b651d88446c538c
References: <20190715120416.3561-1-k.konieczny@partner.samsung.com>
 <CGME20190715120433eucas1p26681c5c2d87423253b651d88446c538c@eucas1p2.samsung.com>
 <20190715120416.3561-5-k.konieczny@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_015117_634075_3DC90A4C 
X-CRM114-Status: GOOD (  22.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Stephen Boyd <sboyd@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, devicetree@vger.kernel.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAxOS4gNy4gMTUuIOyYpO2bhCA5OjA0LCBLYW1pbCBLb25pZWN6bnkgd3JvdGU6Cj4g
UmVtb3ZlIHVudXNlZCBEVCBwcm9wZXJ0eSAiZXh5bm9zLHZvbHRhZ2UtdG9sZXJhbmNlIi4KPiAK
PiBTaWduZWQtb2ZmLWJ5OiBLYW1pbCBLb25pZWN6bnkgPGsua29uaWVjem55QHBhcnRuZXIuc2Ft
c3VuZy5jb20+Cj4gLS0tCj4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kZXZm
cmVxL2V4eW5vcy1idXMudHh0IHwgMiAtLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBkZWxldGlvbnMo
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rl
dmZyZXEvZXh5bm9zLWJ1cy50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
ZGV2ZnJlcS9leHlub3MtYnVzLnR4dAo+IGluZGV4IGY4ZTk0NjQ3MWE1OC4uZTcxZjc1MmNjMThm
IDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kZXZmcmVx
L2V4eW5vcy1idXMudHh0Cj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L2RldmZyZXEvZXh5bm9zLWJ1cy50eHQKPiBAQCAtNTAsOCArNTAsNiBAQCBSZXF1aXJlZCBwcm9w
ZXJ0aWVzIG9ubHkgZm9yIHBhc3NpdmUgYnVzIGRldmljZToKPiAgT3B0aW9uYWwgcHJvcGVydGll
cyBvbmx5IGZvciBwYXJlbnQgYnVzIGRldmljZToKPiAgLSBleHlub3Msc2F0dXJhdGlvbi1yYXRp
bzogdGhlIHBlcmNlbnRhZ2UgdmFsdWUgd2hpY2ggaXMgdXNlZCB0byBjYWxpYnJhdGUKPiAgCQkJ
dGhlIHBlcmZvcm1hbmNlIGNvdW50IGFnYWluc3QgdG90YWwgY3ljbGUgY291bnQuCj4gLS0gZXh5
bm9zLHZvbHRhZ2UtdG9sZXJhbmNlOiB0aGUgcGVyY2VudGFnZSB2YWx1ZSBmb3IgYnVzIHZvbHRh
Z2UgdG9sZXJhbmNlCj4gLQkJCXdoaWNoIGlzIHVzZWQgdG8gY2FsY3VsYXRlIHRoZSBtYXggdm9s
dGFnZS4KPiAgCj4gIERldGFpbGVkIGNvcnJlbGF0aW9uIGJldHdlZW4gc3ViLWJsb2NrcyBhbmQg
cG93ZXIgbGluZSBhY2NvcmRpbmcgdG8gRXh5bm9zIFNvQzoKPiAgLSBJbiBjYXNlIG9mIEV4eW5v
czMyNTAsIHRoZXJlIGFyZSB0d28gcG93ZXIgbGluZSBhcyBmb2xsb3dpbmc6Cj4gCgpBY2tlZC1i
eTogQ2hhbndvbyBDaG9pIDxjdzAwLmNob2lAc2Ftc3VuZy5jb20+CgotLSAKQmVzdCBSZWdhcmRz
LApDaGFud29vIENob2kKU2Ftc3VuZyBFbGVjdHJvbmljcwoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
