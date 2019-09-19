Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2AA2B7C63
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 16:25:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3QRdDpLZbrllIUa5RHDQv0CSJgO3iaX3KvmpzXoDXTk=; b=cCFdOrFxtYkqQM
	d+W4WpYJXQg27xzrZstf0QovQIyTtzzTJaVX9TcqlQLmtz1qMU1mISYOjUDViQWvRFXNPUB2zjIUb
	mvn1GslyLFOP1FdLqroqWrmP1ayf0AZj5DTGy7VULCAy448ADSUx9hTZG6+wP3mcCNT35/udvM203
	gtGG47WbL96P0aT0MetWg0o42bVGNxbLjVmOZwgwmlWUkqMOIjMqEIFmdyckGOeEC/OJYUTMa531T
	ZG0CDUXkpXbAax2W+MVpL4rjLWejombP4oOCZQTEji9K3NFl57fczE7JZt3LE+go5S9pFAs53z+gW
	vqTt6mxBqRQ4tlaIqG7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAxN0-0006Ds-NN; Thu, 19 Sep 2019 14:25:18 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAxLD-0004Wo-G7
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 14:23:29 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190919142326euoutp0152b3ecd30e6233bc27ad2ae059c107b4~F3Pi9kWJ32191721917euoutp01I
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 14:23:26 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190919142326euoutp0152b3ecd30e6233bc27ad2ae059c107b4~F3Pi9kWJ32191721917euoutp01I
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568903006;
 bh=oOfZ6+laMOXh5GfXFPnoq8LTAumrs8RYsN9+Zezp3sw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DLyi5bDJQ+walUmvREtb0wAd3C6w1I7EMJePoPhlP1/qIs/GayV1YVJVNoI8R3AWM
 VBG53qrz6LkGiUTd6YbRhHMfwD1Yan6OkfkS/LXyFoLZvyOuKG9CM+4efnho2pwfDC
 Js6iiMv9OT4Q+4cs1KVOgZWALy3OCnJNNIiQPmmE=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190919142325eucas1p28da7adeb9a17d92b68ff117af505bb7d~F3Pid87qa3077830778eucas1p22;
 Thu, 19 Sep 2019 14:23:25 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 37.1B.04309.D5F838D5; Thu, 19
 Sep 2019 15:23:25 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190919142324eucas1p1638cec2aafbfcaf03cfdfa7d0189143a~F3PhpKc5N0293102931eucas1p1R;
 Thu, 19 Sep 2019 14:23:24 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190919142324eusmtrp11cbda700507d309e234a9e67168d05e2~F3PhXOw7W0555105551eusmtrp1V;
 Thu, 19 Sep 2019 14:23:24 +0000 (GMT)
X-AuditID: cbfec7f4-ae1ff700000010d5-4f-5d838f5d03ee
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id A0.65.04117.C5F838D5; Thu, 19
 Sep 2019 15:23:24 +0100 (BST)
Received: from AMDC3555.digital.local (unknown [106.120.51.67]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190919142323eusmtip118431cc5357ffe0dbc83832c0e4d758f~F3PgiCxp_3039930399eusmtip1e;
 Thu, 19 Sep 2019 14:23:23 +0000 (GMT)
From: =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@samsung.com>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: [RFC PATCH v2 04/11] devfreq: exynos-bus: Clean up code
Date: Thu, 19 Sep 2019 16:22:29 +0200
Message-Id: <20190919142236.4071-5-a.swigon@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190919142236.4071-1-a.swigon@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0hTYRju29m5KB05HgVfNCoHQRe8FAlfV5L6cSKKgkgwhq08XtBN2VHL
 IlNHZuYllEpdmZKablk6L9kwsbkmYThCMTHNqEQqVGKzC1jWPOvy73mf93me930/PobgJ8lg
 JlmXIep1mlQV5avscnwfClOXGdSRebM8tjk6aTxVcxHhtsoHJH7pniHxbfsQiUcW5il847GF
 wuVTV5XY6WylcdPkZxJb3o2SeNh6k8KuEjvClc5eBW6xT9L4VV4ThSsrPlB7/AWL6TIlTIz2
 UMLUlQGF0F5/QWib61YIT+Z6FEJphwkJLsvqw0ys7854MTU5S9RH7D7hm9Qya0fpXzacsQzG
 5qLJ0CLkwwC3FV4V/1QWIV+G55oQtLcuegs3AvOzW6RcuBDU2T5SRYhZtvQtaGT+LoKZ1uuK
 vw6Dow55cikuGsqvvaE9jUDOjqCidn45l+DqFVBqdBIeVQC3B9xDbtoTq+TWgWHwgIdmOQzX
 Lt+h5QXXgLm1b1nuw20Dd+9tpazxh2dV75cx8Vtj6DQSnnzgLjJQavpByuZ98GKpxhsUAB8H
 Orx4FQxWFCtlLMH0oylSNucisDTaCbmxA/oHXpCe5QhuAzywRsh0NIyMVXufwg/GZv3lHfyg
 vOsGIdMsFBbwMlSBtcpPNgLkm0e92QKUDQ/RV1Fo9X/HVP93TPW/sbWIMKEgMVPSJorSFp14
 OlzSaKVMXWL4qTStBf3+dIM/B9zdyLp40oY4BqlWsmtPG9Q8qcmSsrU2BAyhCmRvRuWreTZe
 k31W1KfF6TNTRcmGQhilKog9t+LNcZ5L1GSIKaKYLur/dBWMT3AuCuloNLiilnadt+tiTAnT
 E0tHnK/pvq0b128aN/P9/k8jChbb7o7npG1v8HOrwhvesfe7Jo4FGC+whWeev/4UY1wsiAmw
 muMKDx2913IwlO0NnOfDmhdqxtd1Zn37EH/JkuN2jAa+bRb3qlNyH+6KpF1fE4xZVVJOzf6C
 lbaSkXqVUkrSbN5I6CXNL+XYu0BwAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrEIsWRmVeSWpSXmKPExsVy+t/xu7ox/c2xBn/mC1ocOraV3eL+vFZG
 i40z1rNaXP/ynNVi/pFzrBZXvr5ns5i+dxObxaT7E1gszp/fwG6x4u5HVotNj6+xWlzeNYfN
 4nPvEUaLGef3MVmsPXKX3eJ24wo2ixmTX7I5CHpsWtXJ5nHn2h42j/vdx5k8Ni+p99j4bgeT
 x8F3e5g8+rasYvT4vEkugCNKz6Yov7QkVSEjv7jEVina0MJIz9DSQs/IxFLP0Ng81srIVEnf
 ziYlNSezLLVI3y5BL2Pt2yOMBd80KzadjmpgvKvYxcjBISFgInHga2IXIxeHkMBSRonT666z
 dDFyAsUlJD6uv8EKYQtL/LnWxQZR9IlR4sybZ2BFbAKOEpOmPmAHSYgInGKU2Lr8HFgVs8AG
 JonlT1+CtQsLOEh8OfeFHWQdi4CqRPNpb5Awr4CFxNTOxewQG+QlVm84wAxicwpYSnzZNx9s
 gRBQzdzHcxkh6gUlTs58wgIyhllAXWL9PCGQMDNQa/PW2cwTGAVnIamahVA1C0nVAkbmVYwi
 qaXFuem5xUZ6xYm5xaV56XrJ+bmbGIHxu+3Yzy07GLveBR9iFOBgVOLhVShvjhViTSwrrsw9
 xCjBwawkwjvHtClWiDclsbIqtSg/vqg0J7X4EKMp0GcTmaVEk/OBqSWvJN7Q1NDcwtLQ3Njc
 2MxCSZy3Q+BgjJBAemJJanZqakFqEUwfEwenVAPjhnNZTNuXh+enLzm47Z7i+Yc1Rw++YH23
 Y7Ox5tmchvenxZ+zvKhkvK91ulBq9TaxPrX+AwsufBSyu1S+RG/nNHWOE97Gx9r0lk5zNAuK
 +iF4tuG+Tu43Rf6JTB8elH0QNr3nqSB5Z8Ga+o0xN3acv6Xd6/IkR2bvVKlNtpEexzenNPN3
 BXSYK7EUZyQaajEXFScCABrO2lX1AgAA
X-CMS-MailID: 20190919142324eucas1p1638cec2aafbfcaf03cfdfa7d0189143a
X-Msg-Generator: CA
X-RootMTR: 20190919142324eucas1p1638cec2aafbfcaf03cfdfa7d0189143a
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190919142324eucas1p1638cec2aafbfcaf03cfdfa7d0189143a
References: <20190919142236.4071-1-a.swigon@samsung.com>
 <CGME20190919142324eucas1p1638cec2aafbfcaf03cfdfa7d0189143a@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_072327_700161_37764219 
X-CRM114-Status: GOOD (  17.97  )
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
IHBhdGNoIGFkZHMgbWlub3IgaW1wcm92ZW1lbnRzIHRvIHRoZSBleHlub3MtYnVzIGRyaXZlci4K
ClNpZ25lZC1vZmYtYnk6IEFydHVyIMWad2lnb8WEIDxhLnN3aWdvbkBwYXJ0bmVyLnNhbXN1bmcu
Y29tPgpSZXZpZXdlZC1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3JnPgot
LS0KIGRyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMgfCA2NiArKysrKysrKysrKysrKy0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCspLCA0MSBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jIGIv
ZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYwppbmRleCA2MGFkNDMxOWZkODAuLjhkNDQ4MTBj
YWM2OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYworKysgYi9kcml2
ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jCkBAIC0xNSwxMSArMTUsMTAgQEAKICNpbmNsdWRlIDxs
aW51eC9kZXZpY2UuaD4KICNpbmNsdWRlIDxsaW51eC9leHBvcnQuaD4KICNpbmNsdWRlIDxsaW51
eC9tb2R1bGUuaD4KLSNpbmNsdWRlIDxsaW51eC9vZl9kZXZpY2UuaD4KKyNpbmNsdWRlIDxsaW51
eC9vZi5oPgogI2luY2x1ZGUgPGxpbnV4L3BtX29wcC5oPgogI2luY2x1ZGUgPGxpbnV4L3BsYXRm
b3JtX2RldmljZS5oPgogI2luY2x1ZGUgPGxpbnV4L3JlZ3VsYXRvci9jb25zdW1lci5oPgotI2lu
Y2x1ZGUgPGxpbnV4L3NsYWIuaD4KIAogI2RlZmluZSBERUZBVUxUX1NBVFVSQVRJT05fUkFUSU8J
NDAKIApAQCAtMTc4LDcgKzE3Nyw3IEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wYXJlbnRfcGFy
c2Vfb2Yoc3RydWN0IGRldmljZV9ub2RlICpucCwKIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSBidXMt
PmRldjsKIAlzdHJ1Y3Qgb3BwX3RhYmxlICpvcHBfdGFibGU7CiAJY29uc3QgY2hhciAqdmRkID0g
InZkZCI7Ci0JaW50IGksIHJldCwgY291bnQsIHNpemU7CisJaW50IGksIHJldCwgY291bnQ7CiAK
IAlvcHBfdGFibGUgPSBkZXZfcG1fb3BwX3NldF9yZWd1bGF0b3JzKGRldiwgJnZkZCwgMSk7CiAJ
aWYgKElTX0VSUihvcHBfdGFibGUpKSB7CkBAIC0yMDEsOCArMjAwLDcgQEAgc3RhdGljIGludCBl
eHlub3NfYnVzX3BhcmVudF9wYXJzZV9vZihzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wLAogCX0KIAli
dXMtPmVkZXZfY291bnQgPSBjb3VudDsKIAotCXNpemUgPSBzaXplb2YoKmJ1cy0+ZWRldikgKiBj
b3VudDsKLQlidXMtPmVkZXYgPSBkZXZtX2t6YWxsb2MoZGV2LCBzaXplLCBHRlBfS0VSTkVMKTsK
KwlidXMtPmVkZXYgPSBkZXZtX2tjYWxsb2MoZGV2LCBjb3VudCwgc2l6ZW9mKCpidXMtPmVkZXYp
LCBHRlBfS0VSTkVMKTsKIAlpZiAoIWJ1cy0+ZWRldikgewogCQlyZXQgPSAtRU5PTUVNOwogCQln
b3RvIGVycl9yZWd1bGF0b3I7CkBAIC0zMDEsMTAgKzI5OSw5IEBAIHN0YXRpYyBpbnQgZXh5bm9z
X2J1c19wcm9maWxlX2luaXQoc3RydWN0IGV4eW5vc19idXMgKmJ1cywKIAlwcm9maWxlLT5leGl0
ID0gZXh5bm9zX2J1c19leGl0OwogCiAJb25kZW1hbmRfZGF0YSA9IGRldm1fa3phbGxvYyhkZXYs
IHNpemVvZigqb25kZW1hbmRfZGF0YSksIEdGUF9LRVJORUwpOwotCWlmICghb25kZW1hbmRfZGF0
YSkgewotCQlyZXQgPSAtRU5PTUVNOwotCQlnb3RvIGVycjsKLQl9CisJaWYgKCFvbmRlbWFuZF9k
YXRhKQorCQlyZXR1cm4gLUVOT01FTTsKKwogCW9uZGVtYW5kX2RhdGEtPnVwdGhyZXNob2xkID0g
NDA7CiAJb25kZW1hbmRfZGF0YS0+ZG93bmRpZmZlcmVudGlhbCA9IDU7CiAKQEAgLTMxNCw4ICsz
MTEsNyBAQCBzdGF0aWMgaW50IGV4eW5vc19idXNfcHJvZmlsZV9pbml0KHN0cnVjdCBleHlub3Nf
YnVzICpidXMsCiAJCQkJCQlvbmRlbWFuZF9kYXRhKTsKIAlpZiAoSVNfRVJSKGJ1cy0+ZGV2ZnJl
cSkpIHsKIAkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gYWRkIGRldmZyZXEgZGV2aWNlXG4iKTsK
LQkJcmV0ID0gUFRSX0VSUihidXMtPmRldmZyZXEpOwotCQlnb3RvIGVycjsKKwkJcmV0dXJuIFBU
Ul9FUlIoYnVzLT5kZXZmcmVxKTsKIAl9CiAKIAkvKgpAQCAtMzI1LDE2ICszMjEsMTMgQEAgc3Rh
dGljIGludCBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdChzdHJ1Y3QgZXh5bm9zX2J1cyAqYnVzLAog
CXJldCA9IGV4eW5vc19idXNfZW5hYmxlX2VkZXYoYnVzKTsKIAlpZiAocmV0IDwgMCkgewogCQlk
ZXZfZXJyKGRldiwgImZhaWxlZCB0byBlbmFibGUgZGV2ZnJlcS1ldmVudCBkZXZpY2VzXG4iKTsK
LQkJZ290byBlcnI7CisJCXJldHVybiByZXQ7CiAJfQogCiAJcmV0ID0gZXh5bm9zX2J1c19zZXRf
ZXZlbnQoYnVzKTsKLQlpZiAocmV0IDwgMCkgeworCWlmIChyZXQgPCAwKQogCQlkZXZfZXJyKGRl
diwgImZhaWxlZCB0byBzZXQgZXZlbnQgdG8gZGV2ZnJlcS1ldmVudCBkZXZpY2VzXG4iKTsKLQkJ
Z290byBlcnI7Ci0JfQogCi1lcnI6CiAJcmV0dXJuIHJldDsKIH0KIApAQCAtMzQ0LDcgKzMzNyw2
IEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wcm9maWxlX2luaXRfcGFzc2l2ZShzdHJ1Y3QgZXh5
bm9zX2J1cyAqYnVzLAogCXN0cnVjdCBkZXZpY2UgKmRldiA9IGJ1cy0+ZGV2OwogCXN0cnVjdCBk
ZXZmcmVxX3Bhc3NpdmVfZGF0YSAqcGFzc2l2ZV9kYXRhOwogCXN0cnVjdCBkZXZmcmVxICpwYXJl
bnRfZGV2ZnJlcTsKLQlpbnQgcmV0ID0gMDsKIAogCS8qIEluaXRpYWxpemUgdGhlIHN0cnVjdCBw
cm9maWxlIGFuZCBnb3Zlcm5vciBkYXRhIGZvciBwYXNzaXZlIGRldmljZSAqLwogCXByb2ZpbGUt
PnRhcmdldCA9IGV4eW5vc19idXNfdGFyZ2V0OwpAQCAtMzUyLDMwICszNDQsMjYgQEAgc3RhdGlj
IGludCBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdF9wYXNzaXZlKHN0cnVjdCBleHlub3NfYnVzICpi
dXMsCiAKIAkvKiBHZXQgdGhlIGluc3RhbmNlIG9mIHBhcmVudCBkZXZmcmVxIGRldmljZSAqLwog
CXBhcmVudF9kZXZmcmVxID0gZGV2ZnJlcV9nZXRfZGV2ZnJlcV9ieV9waGFuZGxlKGRldiwgMCk7
Ci0JaWYgKElTX0VSUihwYXJlbnRfZGV2ZnJlcSkpIHsKLQkJcmV0ID0gLUVQUk9CRV9ERUZFUjsK
LQkJZ290byBlcnI7Ci0JfQorCWlmIChJU19FUlIocGFyZW50X2RldmZyZXEpKQorCQlyZXR1cm4g
LUVQUk9CRV9ERUZFUjsKIAogCXBhc3NpdmVfZGF0YSA9IGRldm1fa3phbGxvYyhkZXYsIHNpemVv
ZigqcGFzc2l2ZV9kYXRhKSwgR0ZQX0tFUk5FTCk7Ci0JaWYgKCFwYXNzaXZlX2RhdGEpIHsKLQkJ
cmV0ID0gLUVOT01FTTsKLQkJZ290byBlcnI7Ci0JfQorCWlmICghcGFzc2l2ZV9kYXRhKQorCQly
ZXR1cm4gLUVOT01FTTsKKwogCXBhc3NpdmVfZGF0YS0+cGFyZW50ID0gcGFyZW50X2RldmZyZXE7
CiAKIAkvKiBBZGQgZGV2ZnJlcSBkZXZpY2UgZm9yIGV4eW5vcyBidXMgd2l0aCBwYXNzaXZlIGdv
dmVybm9yICovCi0JYnVzLT5kZXZmcmVxID0gZGV2bV9kZXZmcmVxX2FkZF9kZXZpY2UoZGV2LCBw
cm9maWxlLCBERVZGUkVRX0dPVl9QQVNTSVZFLAorCWJ1cy0+ZGV2ZnJlcSA9IGRldm1fZGV2ZnJl
cV9hZGRfZGV2aWNlKGRldiwgcHJvZmlsZSwKKwkJCQkJCURFVkZSRVFfR09WX1BBU1NJVkUsCiAJ
CQkJCQlwYXNzaXZlX2RhdGEpOwogCWlmIChJU19FUlIoYnVzLT5kZXZmcmVxKSkgewogCQlkZXZf
ZXJyKGRldiwKIAkJCSJmYWlsZWQgdG8gYWRkIGRldmZyZXEgZGV2IHdpdGggcGFzc2l2ZSBnb3Zl
cm5vclxuIik7Ci0JCXJldCA9IFBUUl9FUlIoYnVzLT5kZXZmcmVxKTsKLQkJZ290byBlcnI7CisJ
CXJldHVybiBQVFJfRVJSKGJ1cy0+ZGV2ZnJlcSk7CiAJfQogCi1lcnI6Ci0JcmV0dXJuIHJldDsK
KwlyZXR1cm4gMDsKIH0KIAogc3RhdGljIGludCBleHlub3NfYnVzX3Byb2JlKHN0cnVjdCBwbGF0
Zm9ybV9kZXZpY2UgKnBkZXYpCkBAIC0zOTMsMTggKzM4MSwxOCBAQCBzdGF0aWMgaW50IGV4eW5v
c19idXNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAkJcmV0dXJuIC1FSU5W
QUw7CiAJfQogCi0JYnVzID0gZGV2bV9remFsbG9jKCZwZGV2LT5kZXYsIHNpemVvZigqYnVzKSwg
R0ZQX0tFUk5FTCk7CisJYnVzID0gZGV2bV9remFsbG9jKGRldiwgc2l6ZW9mKCpidXMpLCBHRlBf
S0VSTkVMKTsKIAlpZiAoIWJ1cykKIAkJcmV0dXJuIC1FTk9NRU07CiAJbXV0ZXhfaW5pdCgmYnVz
LT5sb2NrKTsKLQlidXMtPmRldiA9ICZwZGV2LT5kZXY7CisJYnVzLT5kZXYgPSBkZXY7CiAJcGxh
dGZvcm1fc2V0X2RydmRhdGEocGRldiwgYnVzKTsKIAogCXByb2ZpbGUgPSBkZXZtX2t6YWxsb2Mo
ZGV2LCBzaXplb2YoKnByb2ZpbGUpLCBHRlBfS0VSTkVMKTsKIAlpZiAoIXByb2ZpbGUpCiAJCXJl
dHVybiAtRU5PTUVNOwogCi0Jbm9kZSA9IG9mX3BhcnNlX3BoYW5kbGUoZGV2LT5vZl9ub2RlLCAi
ZGV2ZnJlcSIsIDApOworCW5vZGUgPSBvZl9wYXJzZV9waGFuZGxlKG5wLCAiZGV2ZnJlcSIsIDAp
OwogCWlmIChub2RlKSB7CiAJCW9mX25vZGVfcHV0KG5vZGUpOwogCQlwYXNzaXZlID0gdHJ1ZTsK
QEAgLTQ2MSwxMiArNDQ5LDEwIEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19yZXN1bWUoc3RydWN0
IGRldmljZSAqZGV2KQogCWludCByZXQ7CiAKIAlyZXQgPSBleHlub3NfYnVzX2VuYWJsZV9lZGV2
KGJ1cyk7Ci0JaWYgKHJldCA8IDApIHsKKwlpZiAocmV0IDwgMCkKIAkJZGV2X2VycihkZXYsICJm
YWlsZWQgdG8gZW5hYmxlIHRoZSBkZXZmcmVxLWV2ZW50IGRldmljZXNcbiIpOwotCQlyZXR1cm4g
cmV0OwotCX0KIAotCXJldHVybiAwOworCXJldHVybiByZXQ7CiB9CiAKIHN0YXRpYyBpbnQgZXh5
bm9zX2J1c19zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikKQEAgLTQ3NSwxMiArNDYxLDEwIEBA
IHN0YXRpYyBpbnQgZXh5bm9zX2J1c19zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikKIAlpbnQg
cmV0OwogCiAJcmV0ID0gZXh5bm9zX2J1c19kaXNhYmxlX2VkZXYoYnVzKTsKLQlpZiAocmV0IDwg
MCkgeworCWlmIChyZXQgPCAwKQogCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBkaXNhYmxlIHRo
ZSBkZXZmcmVxLWV2ZW50IGRldmljZXNcbiIpOwotCQlyZXR1cm4gcmV0OwotCX0KIAotCXJldHVy
biAwOworCXJldHVybiByZXQ7CiB9CiAjZW5kaWYKIAotLSAKMi4xNy4xCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
