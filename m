Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40717B7C80
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 16:26:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1iESsJZDPORgml6iMdxZRO/oeWRRI1D2xReUsdnMqqE=; b=V30+b/ngb4y0Ju
	0r+jDh+dL4KdPc3n0SpiB/6EDhjF1k1cfrEbjtGrwOeSrNpywIwkfE9dtmL8oqjBlooSgutwnRDO5
	Ye4tjPzwTgoRZnIZBlk2NDT0CAXadrmcXYgK8y8zYJrv1OmGJSouQHxF1I5WnvomhN/ZFBEXu3vuO
	nclbrm9sNB435qUL3pm6VnegsX1SwcgQ64J5cw9nBKBaZFSkezYHsqtTcVad80fRIJedaG0w8JhVZ
	6G30yTMoKyKGKuAcVCiCqwMS/QwBjf/v8rMVTGHZ4+N6tF5gbrs8VI1VRGMqBCg6b3MYtazLJfL2z
	PpgAs3ytC6FGe8svAmpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAxOM-0000Q1-3s; Thu, 19 Sep 2019 14:26:42 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAxLI-0004dG-Mx
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 14:23:34 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190919142331euoutp01561ba68d8a4083f3d3f756a03a2aec07~F3Pn77lNQ2320923209euoutp01I
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 14:23:31 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190919142331euoutp01561ba68d8a4083f3d3f756a03a2aec07~F3Pn77lNQ2320923209euoutp01I
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568903011;
 bh=D6O2vi1XFTzvAfXi4lZNJ+jX68pC4swcd5xtePoIdpw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=UK/iL0muiGT+GRxdvdSeBGK/rRNfLRMhby1to/QFm3AiipSoWizmRDmOAf9k5HDW9
 UAjJ8n7DgqAO+FprFTuCN6QaKXiEVlrnOzMD50bAl/xdWi/Ow8H0uRv8GZ9/pwfiD6
 LSYmprmm75cRuhen9t0HD0BpuHz1iH9K4JBkYxg4=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190919142330eucas1p1dce149e7c648e6ce551fa74f9cb03431~F3PnZ6T9K1889418894eucas1p1S;
 Thu, 19 Sep 2019 14:23:30 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 5C.1B.04309.26F838D5; Thu, 19
 Sep 2019 15:23:30 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190919142329eucas1p2e53992eab9ec6b404f716f955b3c228e~F3Pml-I3T3084730847eucas1p2z;
 Thu, 19 Sep 2019 14:23:29 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190919142329eusmtrp10fc1c968997d1254489c18d3c5a2e802~F3PmXol0x0562505625eusmtrp1L;
 Thu, 19 Sep 2019 14:23:29 +0000 (GMT)
X-AuditID: cbfec7f4-ae1ff700000010d5-61-5d838f62dfa0
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 85.1F.04166.16F838D5; Thu, 19
 Sep 2019 15:23:29 +0100 (BST)
Received: from AMDC3555.digital.local (unknown [106.120.51.67]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190919142328eusmtip1da3ae3dff76a6d3af6177c4e689bea6f~F3Plh4up63272632726eusmtip1m;
 Thu, 19 Sep 2019 14:23:28 +0000 (GMT)
From: =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@samsung.com>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: [RFC PATCH v2 09/11] devfreq: exynos-bus: Add interconnect
 functionality to exynos-bus
Date: Thu, 19 Sep 2019 16:22:34 +0200
Message-Id: <20190919142236.4071-10-a.swigon@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190919142236.4071-1-a.swigon@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0hTYRj2O+fs7CjNzqbVm0Xlwh9JTYuCT4pICDo/utFPQ2rmQSU3Zcdl
 V5qX7GKlboTXUlPTlHIuFRtqOkciiWLWKjUmZGlZWm1RQlTbzqz+Pd9zeZ/3hY8hFU5JGJOi
 zeB1WnWqkg6i2h8vDG1KKMiJj3ZZI7DtcZsUO29dQLilpFmCX7inJbjSPiTBz77N07i4y0Jj
 o7OQwsPDZilueP1Fgi1vHBI8aq2gseuaHeGS4W4C37O/luLxrAYal5je07vknKXxMs1NODpp
 zpnfT3APas9zLXMdBNc710lw11sbEeeyrDnIxAXtSORTU07wuqidR4OSn5qmiPSarSdv5zYT
 BvQu8goKZIDdCu9HDdIrKIhRsA0I6htnKPHhRjDT9NWvuBDkjU9LFyPT1yr9rnoElfX30d/I
 QP53n4tmY8F4Y9IXD2XtCExV874IydYScL18mPS6Qlg1DNb+8GGKjYDcgs+EF8vYGKi2mWmx
 by00mXt8nkAP7+72dns9chgonfJh0uPJaSsnRf8FBozGdBHvhlGTmRBxCHzob/XfsBqemK5S
 Ihbg7UOnxLscsAYEljt2/6Dt0Nc/4hEYT8EGaLZGiXQsDGaPUV4a2GB4+UkurhAMxvZiUqRl
 cClPIUIlWEuDxSBAdpPDP5uD1pwKqhCFl/13S9l/t5T9q61CZCNawesFTRIvbNHymSpBrRH0
 2iTVsTSNBXm+3ZNf/e4OZP2ZYEMsg5RLZOsyc+IVEvUJ4ZTGhoAhlaGyim3Z8QpZovrUaV6X
 dkSnT+UFG1rFUMoVsjMBk4cVbJI6gz/O8+m8blElmMAwA9qT61DVXbRoY6L7ZtwLqubZep2F
 eS4vnTijH3JVVe+19m6eNZ0Pt2bcdaxsmNVkE4bPh1r2ZZ1Lq6mz69fnTvQYlquCl+pf5Y01
 7T+5NGZmID4gYsF4wxXwSRX2O/nm2eeqor6P8/kBGZquZUkbR+LMVw90h7yMrnSF7i2aeCQf
 UVJCsnpzJKkT1H8AkIukJXIDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrKIsWRmVeSWpSXmKPExsVy+t/xu7qJ/c2xBocbNSwOHdvKbnF/Xiuj
 xcYZ61ktrn95zmox/8g5VosrX9+zWUzfu4nNYtL9CSwW589vYLdYcfcjq8Wmx9dYLS7vmsNm
 8bn3CKPFjPP7mCzWHrnLbnG7cQWbxYzJL9kcBD02repk87hzbQ+bx/3u40wem5fUe2x8t4PJ
 4+C7PUwefVtWMXp83iQXwBGlZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRv
 Z5OSmpNZllqkb5egl3Fp8hOmgsUmFYta1jM1MD7T6mLk5JAQMJF43jufpYuRi0NIYCmjxI62
 K+wQCQmJj+tvsELYwhJ/rnWxQRR9YpR4/GgqC0iCTcBRYtLUB+wgCRGBU4wSW5efA6tiFtjA
 JLH86UuwdmGBeIm3v3+CjWURUJVo6f/ABGLzClhKLDy0gQ1ihbzE6g0HmEFsTqD4l33zwTYI
 CVhIzH08lxGiXlDi5MwnQHEOoAXqEuvnCYGEmYFam7fOZp7AKDgLSdUshKpZSKoWMDKvYhRJ
 LS3OTc8tNtQrTswtLs1L10vOz93ECIzibcd+bt7BeGlj8CFGAQ5GJR5ehfLmWCHWxLLiytxD
 jBIczEoivHNMm2KFeFMSK6tSi/Lji0pzUosPMZoCvTaRWUo0OR+YYPJK4g1NDc0tLA3Njc2N
 zSyUxHk7BA7GCAmkJ5akZqemFqQWwfQxcXBKNTAGsU/t97jS78Z25YSqY8CKJiOrbrZ7byac
 mjV/xb6KF2fifrl6Hb/ry7T2+sz3618uMf1y9xLjaxlrCVYxvfY5TwWvfVLbZZW3/WduouNf
 w7jFC01CjjQtCGzeL7Yh8o3cGg5XRksxjlgfpdXvOBPfNT16PNNjry/j4XtsRcuubYiZXx/O
 1TFHiaU4I9FQi7moOBEAjZlCuPgCAAA=
X-CMS-MailID: 20190919142329eucas1p2e53992eab9ec6b404f716f955b3c228e
X-Msg-Generator: CA
X-RootMTR: 20190919142329eucas1p2e53992eab9ec6b404f716f955b3c228e
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190919142329eucas1p2e53992eab9ec6b404f716f955b3c228e
References: <20190919142236.4071-1-a.swigon@samsung.com>
 <CGME20190919142329eucas1p2e53992eab9ec6b404f716f955b3c228e@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_072333_004794_4F28EF55 
X-CRM114-Status: GOOD (  18.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
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
Cc: =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>,
 b.zolnierkie@samsung.com, sw0312.kim@samsung.com, krzk@kernel.org,
 inki.dae@samsung.com, cw00.choi@samsung.com, myungjoo.ham@samsung.com,
 leonard.crestez@nxp.com, georgi.djakov@linaro.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogQXJ0dXIgxZp3aWdvxYQgPGEuc3dpZ29uQHBhcnRuZXIuc2Ftc3VuZy5jb20+CgpUaGlz
IHBhdGNoIGFkZHMgaW50ZXJjb25uZWN0IGZ1bmN0aW9uYWxpdHkgdG8gdGhlIGV4eW5vcy1idXMg
ZGV2ZnJlcQpkcml2ZXIuCgpUaGUgU29DIHRvcG9sb2d5IGlzIGEgZ3JhcGggKG9yLCBtb3JlIHNw
ZWNpZmljYWxseSwgYSB0cmVlKSBhbmQgbW9zdCBvZgppdHMgZWRnZXMgYXJlIHRha2VuIGZyb20g
dGhlIGRldmZyZXEgcGFyZW50LWNoaWxkIGhpZXJhcmNoeSAoY2YuCkRvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9kZXZmcmVxL2V4eW5vcy1idXMudHh0KS4gRHVlIHRvCnVuc3BlY2lm
aWVkIHJlbGF0aXZlIHByb2Jpbmcgb3JkZXIsIC1FUFJPQkVfREVGRVIgbWF5IGJlIHByb3BhZ2F0
ZWQgdG8KZ3VhcmFudGVlIHRoYXQgYSBjaGlsZCBpcyBwcm9iZWQgYmVmb3JlIGl0cyBwYXJlbnQu
CgpFYWNoIGJ1cyBpcyBub3cgYW4gaW50ZXJjb25uZWN0IHByb3ZpZGVyIGFuZCBhbiBpbnRlcmNv
bm5lY3Qgbm9kZSBhcyB3ZWxsCihjZi4gRG9jdW1lbnRhdGlvbi9pbnRlcmNvbm5lY3QvaW50ZXJj
b25uZWN0LnJzdCksIGkuZS4gZXZlcnkgYnVzIHJlZ2lzdGVycwppdHNlbGYgYXMgYSBub2RlLiBO
b2RlIElEcyBhcmUgbm90IGhhcmRjb2RlZCBidXQgcmF0aGVyIGFzc2lnbmVkIGF0CnJ1bnRpbWUs
IGluIHByb2Jpbmcgb3JkZXIgKHN1YmplY3QgdG8gdGhlIGFib3ZlLW1lbnRpb25lZCBleGNlcHRp
b24KcmVnYXJkaW5nIHJlbGF0aXZlIG9yZGVyKS4gVGhpcyBhcHByb2FjaCBhbGxvd3MgZm9yIHVz
aW5nIHRoaXMgZHJpdmVyIHdpdGgKdmFyaW91cyBFeHlub3MgU29Dcy4KCkZyZXF1ZW5jaWVzIHJl
cXVlc3RlZCB2aWEgdGhlIGludGVyY29ubmVjdCBBUEkgZm9yIGEgZ2l2ZW4gbm9kZSBhcmUKcHJv
cGFnYXRlZCB0byBkZXZmcmVxIHVzaW5nIGRldl9wbV9xb3NfdXBkYXRlX3JlcXVlc3QoKS4gUGxl
YXNlIG5vdGUgdGhhdAppdCBpcyBub3QgYW4gZXJyb3Igd2hlbiBDT05GSUdfSU5URVJDT05ORUNU
IGlzICduJywgaW4gd2hpY2ggY2FzZSBhbGwKaW50ZXJjb25uZWN0IEFQSSBmdW5jdGlvbnMgYXJl
IG5vLW9wLgoKU2lnbmVkLW9mZi1ieTogQXJ0dXIgxZp3aWdvxYQgPGEuc3dpZ29uQHBhcnRuZXIu
c2Ftc3VuZy5jb20+Ci0tLQogZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYyB8IDE1MyArKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDE1MyBpbnNl
cnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYyBiL2Ry
aXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMKaW5kZXggOGQ0NDgxMGNhYzY5Li5lMDIzMjIwMjcy
MGQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMKKysrIGIvZHJpdmVy
cy9kZXZmcmVxL2V4eW5vcy1idXMuYwpAQCAtMTQsMTQgKzE0LDE5IEBACiAjaW5jbHVkZSA8bGlu
dXgvZGV2ZnJlcS1ldmVudC5oPgogI2luY2x1ZGUgPGxpbnV4L2RldmljZS5oPgogI2luY2x1ZGUg
PGxpbnV4L2V4cG9ydC5oPgorI2luY2x1ZGUgPGxpbnV4L2lkci5oPgorI2luY2x1ZGUgPGxpbnV4
L2ludGVyY29ubmVjdC1wcm92aWRlci5oPgogI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgogI2lu
Y2x1ZGUgPGxpbnV4L29mLmg+CiAjaW5jbHVkZSA8bGludXgvcG1fb3BwLmg+CisjaW5jbHVkZSA8
bGludXgvcG1fcW9zLmg+CiAjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+CiAjaW5j
bHVkZSA8bGludXgvcmVndWxhdG9yL2NvbnN1bWVyLmg+CiAKICNkZWZpbmUgREVGQVVMVF9TQVRV
UkFUSU9OX1JBVElPCTQwCiAKKyNkZWZpbmUgaWNjX3VuaXRzX3RvX2toeih4KSAoKHgpIC8gOCkK
Kwogc3RydWN0IGV4eW5vc19idXMgewogCXN0cnVjdCBkZXZpY2UgKmRldjsKIApAQCAtMzUsNiAr
NDAsMTIgQEAgc3RydWN0IGV4eW5vc19idXMgewogCXN0cnVjdCBvcHBfdGFibGUgKm9wcF90YWJs
ZTsKIAlzdHJ1Y3QgY2xrICpjbGs7CiAJdW5zaWduZWQgaW50IHJhdGlvOworCisJLyogT25lIHBy
b3ZpZGVyIHBlciBidXMsIG9uZSBub2RlIHBlciBwcm92aWRlciAqLworCXN0cnVjdCBpY2NfcHJv
dmlkZXIgcHJvdmlkZXI7CisJc3RydWN0IGljY19ub2RlICpub2RlOworCisJc3RydWN0IGRldl9w
bV9xb3NfcmVxdWVzdCBxb3NfcmVxOwogfTsKIAogLyoKQEAgLTU5LDYgKzcwLDEzIEBAIGV4eW5v
c19idXNfb3BzX2VkZXYoZW5hYmxlX2VkZXYpOwogZXh5bm9zX2J1c19vcHNfZWRldihkaXNhYmxl
X2VkZXYpOwogZXh5bm9zX2J1c19vcHNfZWRldihzZXRfZXZlbnQpOwogCitzdGF0aWMgaW50IGV4
eW5vc19idXNfbmV4dF9pZCh2b2lkKQoreworCXN0YXRpYyBERUZJTkVfSURBKGV4eW5vc19idXNf
aWNjX2lkYSk7CisKKwlyZXR1cm4gaWRhX2FsbG9jKCZleHlub3NfYnVzX2ljY19pZGEsIEdGUF9L
RVJORUwpOworfQorCiBzdGF0aWMgaW50IGV4eW5vc19idXNfZ2V0X2V2ZW50KHN0cnVjdCBleHlu
b3NfYnVzICpidXMsCiAJCQkJc3RydWN0IGRldmZyZXFfZXZlbnRfZGF0YSAqZWRhdGEpCiB7CkBA
IC0xNzEsNiArMTg5LDM4IEBAIHN0YXRpYyB2b2lkIGV4eW5vc19idXNfcGFzc2l2ZV9leGl0KHN0
cnVjdCBkZXZpY2UgKmRldikKIAljbGtfZGlzYWJsZV91bnByZXBhcmUoYnVzLT5jbGspOwogfQog
CitzdGF0aWMgaW50IGV4eW5vc19idXNfaWNjX3NldChzdHJ1Y3QgaWNjX25vZGUgKnNyYywgc3Ry
dWN0IGljY19ub2RlICpkc3QpCit7CisJc3RydWN0IGV4eW5vc19idXMgKnNyY19idXMgPSBzcmMt
PmRhdGEsICpkc3RfYnVzID0gZHN0LT5kYXRhOworCXMzMiBzcmNfZnJlcSA9IGljY191bml0c190
b19raHooc3JjLT5hdmdfYncpOworCXMzMiBkc3RfZnJlcSA9IGljY191bml0c190b19raHooZHN0
LT5hdmdfYncpOworCisJZGV2X3BtX3Fvc191cGRhdGVfcmVxdWVzdCgmc3JjX2J1cy0+cW9zX3Jl
cSwgc3JjX2ZyZXEpOworCWRldl9wbV9xb3NfdXBkYXRlX3JlcXVlc3QoJmRzdF9idXMtPnFvc19y
ZXEsIGRzdF9mcmVxKTsKKworCXJldHVybiAwOworfQorCitzdGF0aWMgaW50IGV4eW5vc19idXNf
aWNjX2FnZ3JlZ2F0ZShzdHJ1Y3QgaWNjX25vZGUgKm5vZGUsIHUzMiB0YWcsIHUzMiBhdmdfYncs
CisJCQkJICAgIHUzMiBwZWFrX2J3LCB1MzIgKmFnZ19hdmcsIHUzMiAqYWdnX3BlYWspCit7CisJ
KmFnZ19hdmcgKz0gYXZnX2J3OworCSphZ2dfcGVhayA9IG1heCgqYWdnX3BlYWssIHBlYWtfYncp
OworCisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyBzdHJ1Y3QgaWNjX25vZGUgKmV4eW5vc19idXNf
aWNjX3hsYXRlKHN0cnVjdCBvZl9waGFuZGxlX2FyZ3MgKnNwZWMsCisJCQkJCSAgICAgdm9pZCAq
ZGF0YSkKK3sKKwlzdHJ1Y3QgZXh5bm9zX2J1cyAqYnVzID0gZGF0YTsKKworCWlmIChzcGVjLT5u
cCAhPSBidXMtPmRldi0+b2Zfbm9kZSkKKwkJcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7CisKKwly
ZXR1cm4gYnVzLT5ub2RlOworfQorCiBzdGF0aWMgaW50IGV4eW5vc19idXNfcGFyZW50X3BhcnNl
X29mKHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAsCiAJCQkJCXN0cnVjdCBleHlub3NfYnVzICpidXMp
CiB7CkBAIC0zNjYsNiArNDE2LDEwMSBAQCBzdGF0aWMgaW50IGV4eW5vc19idXNfcHJvZmlsZV9p
bml0X3Bhc3NpdmUoc3RydWN0IGV4eW5vc19idXMgKmJ1cywKIAlyZXR1cm4gMDsKIH0KIAorc3Rh
dGljIGludCBleHlub3NfYnVzX2ljY19jb25uZWN0KHN0cnVjdCBleHlub3NfYnVzICpidXMpCit7
CisJc3RydWN0IGRldmljZV9ub2RlICpucCA9IGJ1cy0+ZGV2LT5vZl9ub2RlOworCXN0cnVjdCBk
ZXZmcmVxICpwYXJlbnRfZGV2ZnJlcTsKKwlzdHJ1Y3QgaWNjX25vZGUgKnBhcmVudF9ub2RlID0g
TlVMTDsKKwlzdHJ1Y3Qgb2ZfcGhhbmRsZV9hcmdzIGFyZ3M7CisJaW50IHJldCA9IDA7CisKKwlw
YXJlbnRfZGV2ZnJlcSA9IGRldmZyZXFfZ2V0X2RldmZyZXFfYnlfcGhhbmRsZShidXMtPmRldiwg
MCk7CisJaWYgKCFJU19FUlIocGFyZW50X2RldmZyZXEpKSB7CisJCXN0cnVjdCBleHlub3NfYnVz
ICpwYXJlbnRfYnVzOworCisJCXBhcmVudF9idXMgPSBkZXZfZ2V0X2RydmRhdGEocGFyZW50X2Rl
dmZyZXEtPmRldi5wYXJlbnQpOworCQlwYXJlbnRfbm9kZSA9IHBhcmVudF9idXMtPm5vZGU7CisJ
fSBlbHNlIHsKKwkJLyogTG9vayBmb3IgcGFyZW50IGluIERUICovCisJCWludCBudW0gPSBvZl9j
b3VudF9waGFuZGxlX3dpdGhfYXJncyhucCwgInBhcmVudCIsCisJCQkJCQkgICAgICIjaW50ZXJj
b25uZWN0LWNlbGxzIik7CisJCWlmIChudW0gIT0gMSkKKwkJCWdvdG8gb3V0OyAvKiAncGFyZW50
JyBpcyBvcHRpb25hbCAqLworCisJCXJldCA9IG9mX3BhcnNlX3BoYW5kbGVfd2l0aF9hcmdzKG5w
LCAicGFyZW50IiwKKwkJCQkJCSAiI2ludGVyY29ubmVjdC1jZWxscyIsCisJCQkJCQkgMCwgJmFy
Z3MpOworCQlpZiAocmV0IDwgMCkKKwkJCWdvdG8gb3V0OworCisJCW9mX25vZGVfcHV0KGFyZ3Mu
bnApOworCisJCXBhcmVudF9ub2RlID0gb2ZfaWNjX2dldF9mcm9tX3Byb3ZpZGVyKCZhcmdzKTsK
KwkJaWYgKElTX0VSUihwYXJlbnRfbm9kZSkpIHsKKwkJCS8qIE1heSBiZSAtRVBST0JFX0RFRkVS
ICovCisJCQlyZXQgPSBQVFJfRVJSKHBhcmVudF9ub2RlKTsKKwkJCWdvdG8gb3V0OworCQl9CisJ
fQorCisJcmV0ID0gaWNjX2xpbmtfY3JlYXRlKGJ1cy0+bm9kZSwgcGFyZW50X25vZGUtPmlkKTsK
Kworb3V0OgorCXJldHVybiByZXQ7Cit9CisKK3N0YXRpYyBpbnQgZXh5bm9zX2J1c19pY2NfaW5p
dChzdHJ1Y3QgZXh5bm9zX2J1cyAqYnVzKQoreworCXN0cnVjdCBkZXZpY2UgKmRldiA9IGJ1cy0+
ZGV2OworCXN0cnVjdCBpY2NfcHJvdmlkZXIgKnByb3ZpZGVyID0gJmJ1cy0+cHJvdmlkZXI7CisJ
c3RydWN0IGljY19ub2RlICpub2RlOworCWludCBpZCwgcmV0OworCisJLyogSW5pdGlhbGl6ZSB0
aGUgaW50ZXJjb25uZWN0IHByb3ZpZGVyICovCisJcHJvdmlkZXItPnNldCA9IGV4eW5vc19idXNf
aWNjX3NldDsKKwlwcm92aWRlci0+YWdncmVnYXRlID0gZXh5bm9zX2J1c19pY2NfYWdncmVnYXRl
OworCXByb3ZpZGVyLT54bGF0ZSA9IGV4eW5vc19idXNfaWNjX3hsYXRlOworCXByb3ZpZGVyLT5k
ZXYgPSBkZXY7CisJcHJvdmlkZXItPmRhdGEgPSBidXM7CisKKwlyZXQgPSBpY2NfcHJvdmlkZXJf
YWRkKHByb3ZpZGVyKTsKKwlpZiAocmV0IDwgMCkKKwkJZ290byBvdXQ7CisKKwlyZXQgPSBpZCA9
IGV4eW5vc19idXNfbmV4dF9pZCgpOworCWlmIChyZXQgPCAwKQorCQlnb3RvIGVycl9ub2RlOwor
CisJbm9kZSA9IGljY19ub2RlX2NyZWF0ZShpZCk7CisJaWYgKElTX0VSUihub2RlKSkgeworCQly
ZXQgPSBQVFJfRVJSKG5vZGUpOworCQlnb3RvIGVycl9ub2RlOworCX0KKworCWJ1cy0+bm9kZSA9
IG5vZGU7CisJbm9kZS0+bmFtZSA9IGRldi0+b2Zfbm9kZS0+bmFtZTsKKwlub2RlLT5kYXRhID0g
YnVzOworCWljY19ub2RlX2FkZChub2RlLCBwcm92aWRlcik7CisKKwlyZXQgPSBleHlub3NfYnVz
X2ljY19jb25uZWN0KGJ1cyk7CisJaWYgKHJldCA8IDApCisJCWdvdG8gZXJyX2Nvbm5lY3Q7CisK
KwlyZXQgPSBkZXZfcG1fcW9zX2FkZF9yZXF1ZXN0KGJ1cy0+ZGV2ZnJlcS0+ZGV2LnBhcmVudCwg
JmJ1cy0+cW9zX3JlcSwKKwkJCQkgICAgIERFVl9QTV9RT1NfTUlOX0ZSRVFVRU5DWSwgMCk7CisK
K291dDoKKwlyZXR1cm4gcmV0OworCitlcnJfY29ubmVjdDoKKwlpY2Nfbm9kZV9kZWwobm9kZSk7
CisJaWNjX25vZGVfZGVzdHJveShpZCk7CitlcnJfbm9kZToKKwlpY2NfcHJvdmlkZXJfZGVsKHBy
b3ZpZGVyKTsKKworCXJldHVybiByZXQ7Cit9CisKIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wcm9i
ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogewogCXN0cnVjdCBkZXZpY2UgKmRldiA9
ICZwZGV2LT5kZXY7CkBAIC00MTUsNiArNTYwLDE0IEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19w
cm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCWlmIChyZXQgPCAwKQogCQlnb3Rv
IGVycjsKIAorCS8qCisJICogSW5pdGlhbGl6ZSBpbnRlcmNvbm5lY3QgcHJvdmlkZXIuIEEgcmV0
dXJuIHZhbHVlIG9mIC1FTk9UU1VQUCBtZWFucworCSAqIHRoYXQgQ09ORklHX0lOVEVSQ09OTkVD
VCBpcyBkaXNhYmxlZC4KKwkgKi8KKwlyZXQgPSBleHlub3NfYnVzX2ljY19pbml0KGJ1cyk7CisJ
aWYgKHJldCA8IDAgJiYgcmV0ICE9IC1FTk9UU1VQUCkKKwkJZ290byBlcnI7CisKIAltYXhfc3Rh
dGUgPSBidXMtPmRldmZyZXEtPnByb2ZpbGUtPm1heF9zdGF0ZTsKIAltaW5fZnJlcSA9IChidXMt
PmRldmZyZXEtPnByb2ZpbGUtPmZyZXFfdGFibGVbMF0gLyAxMDAwKTsKIAltYXhfZnJlcSA9IChi
dXMtPmRldmZyZXEtPnByb2ZpbGUtPmZyZXFfdGFibGVbbWF4X3N0YXRlIC0gMV0gLyAxMDAwKTsK
LS0gCjIuMTcuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
