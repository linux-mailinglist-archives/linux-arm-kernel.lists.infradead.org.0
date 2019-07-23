Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 477B671828
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 14:22:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yyR+KDhewaDRSIAi5lA3zzKRt2A3UEK5zzIz3RB20nU=; b=NkmoOspiOcCxaX
	2JR9U+G9mhoGagrTHXfgqDPxoAZ5XOL4oDSWLbF/Tf7Q4pR80JnG4dkt+p8nnMOS5CR7fWtLpaK02
	vSl8Dy4P5pUzPxTlzz0oB7DmHSyDb+55rjfoOfmMKHgV8cLVlMemVNekveX4qu2k9eE1u+1cjraSz
	ikDDJZ4KoO8wH7pDmU52AlLnOxZYQcr3N8gHhZ2kODzcO9UtNSCwrp2aW4a3GH1QIlnBvYwit/4h8
	CzhP0Yt7V23HF6oS/oFf+vQyvIVJ6bidVsRL4eNh5xXU/ilSW7qsqXbhGbdveZmMRVkNnBCYhHpZg
	TBGYMYi4nobjYw9Bqtpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpto7-00032V-O3; Tue, 23 Jul 2019 12:22:15 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hptmQ-0001mc-39
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 12:20:34 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190723122026euoutp012fe5f054f1af2bd15a623abb87fbc91f~0CJmZGJ2T2875428754euoutp01U
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 12:20:26 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190723122026euoutp012fe5f054f1af2bd15a623abb87fbc91f~0CJmZGJ2T2875428754euoutp01U
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563884426;
 bh=mB6tpYvVSphzP6A9Pn9b/zTWKGneiQ3HT+TMiqcj+Qc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Zfcl13mcfhl4DkWxNKL9IxrK35MS46FUmKWJFRcKpuyz1v5Z5rqSxnnlwCSE/DCaX
 lbNe8luIiA6gkWMM57wZVdBuUyrjcvMqTdNSLYzrqMRPlnc2/SykW4P+O/D5BBnrw4
 q+wseNgX/G5EU8wQC3xz4U557c+ihT/SUfC3LjnM=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190723122025eucas1p1d47c9b6838304eb0f9bbe1d7b4db9a7a~0CJl_YmjL0316803168eucas1p1Y;
 Tue, 23 Jul 2019 12:20:25 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 69.0C.04377.98BF63D5; Tue, 23
 Jul 2019 13:20:25 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190723122024eucas1p25a480ccddaa69ee1d0f1a07960ca3f22~0CJlDr9J02753327533eucas1p2N;
 Tue, 23 Jul 2019 12:20:24 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190723122024eusmtrp18e1c2b5fc07da399501cd94295ab0ccd~0CJk5GeSX2491824918eusmtrp1X;
 Tue, 23 Jul 2019 12:20:24 +0000 (GMT)
X-AuditID: cbfec7f4-113ff70000001119-ab-5d36fb89f5e6
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id DA.D8.04140.88BF63D5; Tue, 23
 Jul 2019 13:20:24 +0100 (BST)
Received: from AMDC3555.DIGITAL.local (unknown [106.120.51.67]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190723122024eusmtip2b8e737d5f88e4f720f9c1534dba52c25~0CJkSC1HV1668716687eusmtip27;
 Tue, 23 Jul 2019 12:20:24 +0000 (GMT)
From: =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: [RFC PATCH 04/11] devfreq: exynos-bus: Clean up code
Date: Tue, 23 Jul 2019 14:20:09 +0200
Message-Id: <20190723122016.30279-5-a.swigon@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190723122016.30279-1-a.swigon@partner.samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrIKsWRmVeSWpSXmKPExsWy7djPc7qdv81iDfpe61gcOraV3WLjjPWs
 Fte/PGe1mH/kHKvFla/v2Sym793EZjHp/gQWi/PnN7BbbHp8jdXi8q45bBafe48wWsw4v4/J
 Yu2Ru+wWtxtXsFnMmPySzYHfY9OqTjaPO9f2sHnc7z7O5LF5Sb3HwXd7mDz6tqxi9Pi8SS6A
 PYrLJiU1J7MstUjfLoErY/qfNqaCJ2oVcz5tYGxg/CjXxcjJISFgInHk/CG2LkYuDiGBFYwS
 M/7sZIRwvjBK3Gw6zQrhfGaUODh1OxtMy4KWFqiW5YwSHV0tLHAtL+7dZwepYhPwlOiZuAOs
 XUTgCKPE5AXvwaqYBVYBOd+3MYJUCQvYSsw+exusg0VAVaJ36mOwOK+Ao8StD3MYIfbJS6ze
 cIAZxOYUcJLoOtrOBlEjKHFy5hMWEJsZqKZ562xmkAUSAi/ZJRbP6WCHaHaRuL7sETOELSzx
 6vgWqLiMxOnJPSwQdrHE0533WSGaGxglNi07AtVgLXH4+EWgBAfQBk2J9bv0IcKOEv2rloCF
 JQT4JG68FYS4gU9i0rbpzBBhXomONiEIU0tiwe9oiEYJiabV16Bme0jM67jNOIFRcRaSZ2Yh
 eWYWwtoFjMyrGMVTS4tz01OLjfJSy/WKE3OLS/PS9ZLzczcxAhPa6X/Hv+xg3PUn6RCjAAej
 Eg/vhj2msUKsiWXFlbmHGCU4mJVEeAMbzGKFeFMSK6tSi/Lji0pzUosPMUpzsCiJ81YzPIgW
 EkhPLEnNTk0tSC2CyTJxcEo1MBa0Tjv4dtljnyWuHbOiIj81z3Z9va3N+Jdd/k8er9nr7aZ8
 cvZ8VbWd57dpIm+ZZXdWzgQ32aAupcmivHqdsn0SadVMh84IhDi92jx/k+xZLe6Tc/oPGyu1
 fT7QX/t2bpmwnYhLTtqjKhtN01fZ27adW1T4+0+SwclcnsK9TQc+p+zTUy+bqcRSnJFoqMVc
 VJwIAL+PyC5kAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrGIsWRmVeSWpSXmKPExsVy+t/xe7odv81iDfr361kcOraV3WLjjPWs
 Fte/PGe1mH/kHKvFla/v2Sym793EZjHp/gQWi/PnN7BbbHp8jdXi8q45bBafe48wWsw4v4/J
 Yu2Ru+wWtxtXsFnMmPySzYHfY9OqTjaPO9f2sHnc7z7O5LF5Sb3HwXd7mDz6tqxi9Pi8SS6A
 PUrPpii/tCRVISO/uMRWKdrQwkjP0NJCz8jEUs/Q2DzWyshUSd/OJiU1J7MstUjfLkEvY/qf
 NqaCJ2oVcz5tYGxg/CjXxcjJISFgIrGgpYWti5GLQ0hgKaPEhJbXLBAJCYmP62+wQtjCEn+u
 dUEVfWKUON5wkBkkwSbgKdEzcQcrSEJE4BSjxNbl58CqmAU2MUrcPT6RHaRKWMBWYvbZ22A2
 i4CqRO/Ux4wgNq+Ao8StD3MYIVbIS6zecABsKqeAk0TX0XY2EFsIqGbb9tdQ9YISJ2c+ATqP
 A2iBusT6eUIgYWag1uats5knMArOQlI1C6FqFpKqBYzMqxhFUkuLc9Nzi430ihNzi0vz0vWS
 83M3MQLjdNuxn1t2MHa9Cz7EKMDBqMTDu2GPaawQa2JZcWXuIUYJDmYlEd7ABrNYId6UxMqq
 1KL8+KLSnNTiQ4ymQK9NZJYSTc4HppC8knhDU0NzC0tDc2NzYzMLJXHeDoGDMUIC6Yklqdmp
 qQWpRTB9TBycUg2Ml9iFergsQ6T35vznkKq8xfk9WfSkSKaM7a+DKzJ/1MTZuunqxhwo1/Cv
 fpYdKV1YvenZhNM7fsUtKM2KzbrwT5H72wTzYy4P+DRy9W5WyquF221qa3i8U+LK5V8bXoio
 V3OrHqwt7sj1XKWU55K4+Av/QxY5xvshfVUClcYi/js1+OVzNZVYijMSDbWYi4oTAe17qm/p
 AgAA
X-CMS-MailID: 20190723122024eucas1p25a480ccddaa69ee1d0f1a07960ca3f22
X-Msg-Generator: CA
X-RootMTR: 20190723122024eucas1p25a480ccddaa69ee1d0f1a07960ca3f22
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190723122024eucas1p25a480ccddaa69ee1d0f1a07960ca3f22
References: <20190723122016.30279-1-a.swigon@partner.samsung.com>
 <CGME20190723122024eucas1p25a480ccddaa69ee1d0f1a07960ca3f22@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_052030_280440_EEFA8D1D 
X-CRM114-Status: GOOD (  17.25  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: sw0312.kim@samsung.com, krzk@kernel.org, inki.dae@samsung.com,
 cw00.choi@samsung.com, myungjoo.ham@samsung.com, georgi.djakov@linaro.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBwYXRjaCBhZGRzIG1pbm9yIGltcHJvdmVtZW50cyB0byB0aGUgZXh5bm9zLWJ1cyBkcml2
ZXIuCgpTaWduZWQtb2ZmLWJ5OiBBcnR1ciDFmndpZ2/FhCA8YS5zd2lnb25AcGFydG5lci5zYW1z
dW5nLmNvbT4KLS0tCiBkcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jIHwgNDkgKysrKysrKysr
KysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjIgaW5zZXJ0aW9u
cygrKSwgMjcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kZXZmcmVxL2V4eW5v
cy1idXMuYyBiL2RyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMKaW5kZXggNGJiODNiOTQ1YmY3
Li40MTI1MTFjYTc3MDMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMK
KysrIGIvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYwpAQCAtMTUsMTEgKzE1LDEwIEBACiAj
aW5jbHVkZSA8bGludXgvZGV2aWNlLmg+CiAjaW5jbHVkZSA8bGludXgvZXhwb3J0Lmg+CiAjaW5j
bHVkZSA8bGludXgvbW9kdWxlLmg+Ci0jaW5jbHVkZSA8bGludXgvb2ZfZGV2aWNlLmg+CisjaW5j
bHVkZSA8bGludXgvb2YuaD4KICNpbmNsdWRlIDxsaW51eC9wbV9vcHAuaD4KICNpbmNsdWRlIDxs
aW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4KICNpbmNsdWRlIDxsaW51eC9yZWd1bGF0b3IvY29uc3Vt
ZXIuaD4KLSNpbmNsdWRlIDxsaW51eC9zbGFiLmg+CiAKICNkZWZpbmUgREVGQVVMVF9TQVRVUkFU
SU9OX1JBVElPCTQwCiAjZGVmaW5lIERFRkFVTFRfVk9MVEFHRV9UT0xFUkFOQ0UJMgpAQCAtMjU2
LDcgKzI1NSw3IEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wYXJlbnRfcGFyc2Vfb2Yoc3RydWN0
IGRldmljZV9ub2RlICpucCwKIAkJCQkJc3RydWN0IGV4eW5vc19idXMgKmJ1cykKIHsKIAlzdHJ1
Y3QgZGV2aWNlICpkZXYgPSBidXMtPmRldjsKLQlpbnQgaSwgcmV0LCBjb3VudCwgc2l6ZTsKKwlp
bnQgaSwgcmV0LCBjb3VudDsKIAogCS8qIEdldCB0aGUgcmVndWxhdG9yIHRvIHByb3ZpZGUgZWFj
aCBidXMgd2l0aCB0aGUgcG93ZXIgKi8KIAlidXMtPnJlZ3VsYXRvciA9IGRldm1fcmVndWxhdG9y
X2dldChkZXYsICJ2ZGQiKTsKQEAgLTI4Myw4ICsyODIsNyBAQCBzdGF0aWMgaW50IGV4eW5vc19i
dXNfcGFyZW50X3BhcnNlX29mKHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAsCiAJfQogCWJ1cy0+ZWRl
dl9jb3VudCA9IGNvdW50OwogCi0Jc2l6ZSA9IHNpemVvZigqYnVzLT5lZGV2KSAqIGNvdW50Owot
CWJ1cy0+ZWRldiA9IGRldm1fa3phbGxvYyhkZXYsIHNpemUsIEdGUF9LRVJORUwpOworCWJ1cy0+
ZWRldiA9IGRldm1fa2NhbGxvYyhkZXYsIGNvdW50LCBzaXplb2YoKmJ1cy0+ZWRldiksIEdGUF9L
RVJORUwpOwogCWlmICghYnVzLT5lZGV2KSB7CiAJCXJldCA9IC1FTk9NRU07CiAJCWdvdG8gZXJy
X3JlZ3VsYXRvcjsKQEAgLTM4OCw3ICszODYsNyBAQCBzdGF0aWMgaW50IGV4eW5vc19idXNfcHJv
ZmlsZV9pbml0KHN0cnVjdCBleHlub3NfYnVzICpidXMsCiAJb25kZW1hbmRfZGF0YSA9IGRldm1f
a3phbGxvYyhkZXYsIHNpemVvZigqb25kZW1hbmRfZGF0YSksIEdGUF9LRVJORUwpOwogCWlmICgh
b25kZW1hbmRfZGF0YSkgewogCQlyZXQgPSAtRU5PTUVNOwotCQlnb3RvIGVycjsKKwkJZ290byBv
dXQ7CiAJfQogCW9uZGVtYW5kX2RhdGEtPnVwdGhyZXNob2xkID0gNDA7CiAJb25kZW1hbmRfZGF0
YS0+ZG93bmRpZmZlcmVudGlhbCA9IDU7CkBAIC00MDAsMTQgKzM5OCwxNCBAQCBzdGF0aWMgaW50
IGV4eW5vc19idXNfcHJvZmlsZV9pbml0KHN0cnVjdCBleHlub3NfYnVzICpidXMsCiAJaWYgKElT
X0VSUihidXMtPmRldmZyZXEpKSB7CiAJCWRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIGFkZCBkZXZm
cmVxIGRldmljZVxuIik7CiAJCXJldCA9IFBUUl9FUlIoYnVzLT5kZXZmcmVxKTsKLQkJZ290byBl
cnI7CisJCWdvdG8gb3V0OwogCX0KIAogCS8qIFJlZ2lzdGVyIG9wcF9ub3RpZmllciB0byBjYXRj
aCB0aGUgY2hhbmdlIG9mIE9QUCAgKi8KIAlyZXQgPSBkZXZtX2RldmZyZXFfcmVnaXN0ZXJfb3Bw
X25vdGlmaWVyKGRldiwgYnVzLT5kZXZmcmVxKTsKIAlpZiAocmV0IDwgMCkgewogCQlkZXZfZXJy
KGRldiwgImZhaWxlZCB0byByZWdpc3RlciBvcHAgbm90aWZpZXJcbiIpOwotCQlnb3RvIGVycjsK
KwkJZ290byBvdXQ7CiAJfQogCiAJLyoKQEAgLTQxNywxNiArNDE1LDE2IEBAIHN0YXRpYyBpbnQg
ZXh5bm9zX2J1c19wcm9maWxlX2luaXQoc3RydWN0IGV4eW5vc19idXMgKmJ1cywKIAlyZXQgPSBl
eHlub3NfYnVzX2VuYWJsZV9lZGV2KGJ1cyk7CiAJaWYgKHJldCA8IDApIHsKIAkJZGV2X2Vycihk
ZXYsICJmYWlsZWQgdG8gZW5hYmxlIGRldmZyZXEtZXZlbnQgZGV2aWNlc1xuIik7Ci0JCWdvdG8g
ZXJyOworCQlnb3RvIG91dDsKIAl9CiAKIAlyZXQgPSBleHlub3NfYnVzX3NldF9ldmVudChidXMp
OwogCWlmIChyZXQgPCAwKSB7CiAJCWRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIHNldCBldmVudCB0
byBkZXZmcmVxLWV2ZW50IGRldmljZXNcbiIpOwotCQlnb3RvIGVycjsKKwkJZ290byBvdXQ7CiAJ
fQogCi1lcnI6CitvdXQ6CiAJcmV0dXJuIHJldDsKIH0KIApAQCAtNDQ2LDI3ICs0NDQsMjggQEAg
c3RhdGljIGludCBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdF9wYXNzaXZlKHN0cnVjdCBleHlub3Nf
YnVzICpidXMsCiAJcGFyZW50X2RldmZyZXEgPSBkZXZmcmVxX2dldF9kZXZmcmVxX2J5X3BoYW5k
bGUoZGV2LCAwKTsKIAlpZiAoSVNfRVJSKHBhcmVudF9kZXZmcmVxKSkgewogCQlyZXQgPSAtRVBS
T0JFX0RFRkVSOwotCQlnb3RvIGVycjsKKwkJZ290byBvdXQ7CiAJfQogCiAJcGFzc2l2ZV9kYXRh
ID0gZGV2bV9remFsbG9jKGRldiwgc2l6ZW9mKCpwYXNzaXZlX2RhdGEpLCBHRlBfS0VSTkVMKTsK
IAlpZiAoIXBhc3NpdmVfZGF0YSkgewogCQlyZXQgPSAtRU5PTUVNOwotCQlnb3RvIGVycjsKKwkJ
Z290byBvdXQ7CiAJfQogCXBhc3NpdmVfZGF0YS0+cGFyZW50ID0gcGFyZW50X2RldmZyZXE7CiAK
IAkvKiBBZGQgZGV2ZnJlcSBkZXZpY2UgZm9yIGV4eW5vcyBidXMgd2l0aCBwYXNzaXZlIGdvdmVy
bm9yICovCi0JYnVzLT5kZXZmcmVxID0gZGV2bV9kZXZmcmVxX2FkZF9kZXZpY2UoZGV2LCBwcm9m
aWxlLCBERVZGUkVRX0dPVl9QQVNTSVZFLAorCWJ1cy0+ZGV2ZnJlcSA9IGRldm1fZGV2ZnJlcV9h
ZGRfZGV2aWNlKGRldiwgcHJvZmlsZSwKKwkJCQkJCURFVkZSRVFfR09WX1BBU1NJVkUsCiAJCQkJ
CQlwYXNzaXZlX2RhdGEpOwogCWlmIChJU19FUlIoYnVzLT5kZXZmcmVxKSkgewogCQlkZXZfZXJy
KGRldiwKIAkJCSJmYWlsZWQgdG8gYWRkIGRldmZyZXEgZGV2IHdpdGggcGFzc2l2ZSBnb3Zlcm5v
clxuIik7CiAJCXJldCA9IFBUUl9FUlIoYnVzLT5kZXZmcmVxKTsKLQkJZ290byBlcnI7CisJCWdv
dG8gb3V0OwogCX0KIAotZXJyOgorb3V0OgogCXJldHVybiByZXQ7CiB9CiAKQEAgLTQ4NCwxMSAr
NDgzLDExIEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2
aWNlICpwZGV2KQogCQlyZXR1cm4gLUVJTlZBTDsKIAl9CiAKLQlidXMgPSBkZXZtX2t6YWxsb2Mo
JnBkZXYtPmRldiwgc2l6ZW9mKCpidXMpLCBHRlBfS0VSTkVMKTsKKwlidXMgPSBkZXZtX2t6YWxs
b2MoZGV2LCBzaXplb2YoKmJ1cyksIEdGUF9LRVJORUwpOwogCWlmICghYnVzKQogCQlyZXR1cm4g
LUVOT01FTTsKIAltdXRleF9pbml0KCZidXMtPmxvY2spOwotCWJ1cy0+ZGV2ID0gJnBkZXYtPmRl
djsKKwlidXMtPmRldiA9IGRldjsKIAlwbGF0Zm9ybV9zZXRfZHJ2ZGF0YShwZGV2LCBidXMpOwog
CiAJLyogUGFyc2UgdGhlIGRldmljZS10cmVlIHRvIGdldCB0aGUgcmVzb3VyY2UgaW5mb3JtYXRp
b24gKi8KQEAgLTUwMiw3ICs1MDEsNyBAQCBzdGF0aWMgaW50IGV4eW5vc19idXNfcHJvYmUoc3Ry
dWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAkJZ290byBlcnI7CiAJfQogCi0Jbm9kZSA9IG9m
X3BhcnNlX3BoYW5kbGUoZGV2LT5vZl9ub2RlLCAiZGV2ZnJlcSIsIDApOworCW5vZGUgPSBvZl9w
YXJzZV9waGFuZGxlKG5wLCAiZGV2ZnJlcSIsIDApOwogCWlmIChub2RlKSB7CiAJCW9mX25vZGVf
cHV0KG5vZGUpOwogCQlyZXQgPSBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdF9wYXNzaXZlKGJ1cywg
cHJvZmlsZSk7CkBAIC01NDcsMTIgKzU0NiwxMCBAQCBzdGF0aWMgaW50IGV4eW5vc19idXNfcmVz
dW1lKHN0cnVjdCBkZXZpY2UgKmRldikKIAlpbnQgcmV0OwogCiAJcmV0ID0gZXh5bm9zX2J1c19l
bmFibGVfZWRldihidXMpOwotCWlmIChyZXQgPCAwKSB7CisJaWYgKHJldCA8IDApCiAJCWRldl9l
cnIoZGV2LCAiZmFpbGVkIHRvIGVuYWJsZSB0aGUgZGV2ZnJlcS1ldmVudCBkZXZpY2VzXG4iKTsK
LQkJcmV0dXJuIHJldDsKLQl9CiAKLQlyZXR1cm4gMDsKKwlyZXR1cm4gcmV0OwogfQogCiBzdGF0
aWMgaW50IGV4eW5vc19idXNfc3VzcGVuZChzdHJ1Y3QgZGV2aWNlICpkZXYpCkBAIC01NjEsMTIg
KzU1OCwxMCBAQCBzdGF0aWMgaW50IGV4eW5vc19idXNfc3VzcGVuZChzdHJ1Y3QgZGV2aWNlICpk
ZXYpCiAJaW50IHJldDsKIAogCXJldCA9IGV4eW5vc19idXNfZGlzYWJsZV9lZGV2KGJ1cyk7Ci0J
aWYgKHJldCA8IDApIHsKKwlpZiAocmV0IDwgMCkKIAkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8g
ZGlzYWJsZSB0aGUgZGV2ZnJlcS1ldmVudCBkZXZpY2VzXG4iKTsKLQkJcmV0dXJuIHJldDsKLQl9
CiAKLQlyZXR1cm4gMDsKKwlyZXR1cm4gcmV0OwogfQogI2VuZGlmCiAKLS0gCjIuMTcuMQoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
