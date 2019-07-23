Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F2D71800
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 14:20:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w7yrvw4YSVzyvVnF4dGEFj/p35X2qGd2ZvuE/nFOqNo=; b=OYZThgPXTpNUak
	JSUAZSLXfLgq8dIOEOv62ZSFLnllNphOQJIDDOdLMxSaNTsUrXowzO8bISOI1Fqk0JyMoxOljcFfj
	6nbyGj4FPqaxYC7epLyRXoYTsAg73AgEdqEz1GAavoL/HYMo0mW7WUDfSQBkopvI9B559HZxCOYd1
	ogeQDAS+UmGHSsDPiu87J7nQXBoIryB6dzEynuwh9EUWpsvMSbIUP3yA/zCnfOI6hrNyPqzhY41D+
	j0JaVgowpLP5aQpdI7atf0XJcZwhJbO664PVUrpULqeYa1cYXJ6BIdg9PfAd5lRaqOK4TA8C09wmB
	gsg74x6oyaiz5V1IVauQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hptme-0001qd-No; Tue, 23 Jul 2019 12:20:44 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hptmQ-0001mZ-1o
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 12:20:32 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190723122025euoutp02f511f420d6f61aee4618d6a97f4e0ee3~0CJluegFG3163531635euoutp02v
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 12:20:25 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190723122025euoutp02f511f420d6f61aee4618d6a97f4e0ee3~0CJluegFG3163531635euoutp02v
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563884425;
 bh=acZs1C2PRXwgbejpkVZ0Vnfcq1LUt8CLhBHrsSuxE7M=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bX7wFcfx5NUSBYQhVLs/QbIJFXdyxKVOYVo4VWrMZmJtYiEGHc024I31M0hi56c9b
 scmOX1QseG5IPTlABKDVvx3WavUfZRYNACLiippBPKXDo/mVnYKCiVqbsMYbfcGCb5
 Uu7LCBqDbSj45xVpQ2MS60KmrSXlIvJxA+a6E+b4=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190723122024eucas1p26984f8d4bb6c97f37d8fc6535c0a4820~0CJlDQ9ta1104811048eucas1p2X;
 Tue, 23 Jul 2019 12:20:24 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 51.5B.04298.88BF63D5; Tue, 23
 Jul 2019 13:20:24 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190723122024eucas1p1ff060d072132bfbc8a8a1d10fa1f90f8~0CJkXbnIu0081400814eucas1p1U;
 Tue, 23 Jul 2019 12:20:24 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190723122024eusmtrp18f9c48318e32cff566cc8092b45ff466~0CJkWtNwe2491824918eusmtrp1V;
 Tue, 23 Jul 2019 12:20:24 +0000 (GMT)
X-AuditID: cbfec7f2-f2dff700000010ca-7a-5d36fb888d8f
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 19.41.04146.88BF63D5; Tue, 23
 Jul 2019 13:20:24 +0100 (BST)
Received: from AMDC3555.DIGITAL.local (unknown [106.120.51.67]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190723122023eusmtip253ad15b0f5b4c58cad1e29511fa48b91~0CJjqaCxF1612616126eusmtip2J;
 Tue, 23 Jul 2019 12:20:23 +0000 (GMT)
From: =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: [RFC PATCH 03/11] devfreq: exynos-bus: Change goto-based logic to
 if-else logic
Date: Tue, 23 Jul 2019 14:20:08 +0200
Message-Id: <20190723122016.30279-4-a.swigon@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190723122016.30279-1-a.swigon@partner.samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0hTYRj281x2Zi6P0/LFwmggqOCNTA9lF0Nh0h/7UeRMaulhijptx0tq
 kGXZNCsvkWY3kVCbeGleUNOotWZhOXRlkqmBhTdMzUuUWG0eLf89z/s8z/e8L3wUJjYSzlSs
 MplVKeXxEtIGbzH87PFUL/tH+rRNeDI6Q7OAeVxaTzAfFsYI5oG+h2DeLc6QTEmnlmSKRgpw
 xmhsEDDa0X6CMbXfJZn5a3rElBqfWjO1+iEBM3ihmmRKiyfIg3ZSrSaXlH7q7yClI1e7rKWN
 D89Ln3/rsJZeb9Ig6bzWJUwgswmMZuNjU1mV9/5TNjF1tWN40tyms+//dGJZqEKYh4QU0H4w
 XdUgyEM2lJiuRvCmaArxZAHByPIzjCfzCHpKpsj1yOyrFsKCxXQVArXW5V+ic+4RsggkHQr5
 ha2ERXCk9QiKy2dwC8FojZn8aFl1OdAyGB6tWsU47QqagaVVLKKDYOh+DeLrdkBNg2UPISWk
 D0Heyysk77GH17e/4BaMmT3ZzXdWdwV6TgDLw7MYHw4Gg+bX2kMOMNnVJODxduguzsd5zMHX
 thGCD2ch0Fbq18J74UVXr1mgzA3uUN/uzY+DoK+1DVnGQG+GgWl7fofNUNRSgvFjEahzxDz0
 gPLlCD4IcLGmf80hhZu5AQVoZ9mGW8o23FL2v7UcYRrkxKZwCQqW81WyaV6cPIFLUSq8ohIT
 tMj8zbp/d31vRYt9p3WIppDEVtTQsTtSTMhTufQEHQIKkziKjmT5R4pF0fL0DFaVeFKVEs9y
 OrSNwiVOokyrzxFiWiFPZuNYNolVravWlNA5C9mq4wfDSEPAZP/RxZAxU3pOXezKvcqorQo2
 XF3v8FZUWPNkOlhmFXhM5rY4kd0Z55M57+qxZ1AXZT9q59bbdElHXa7KMH084H9mX1ruDdu5
 E7sOj40vxVITfopmujCgdCVkS2NF6C2qaDwj3K/MYTjMxGVKZuzOqa1K3I8XBJskOBcj9/XA
 VJz8LzM4s0RiAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrGIsWRmVeSWpSXmKPExsVy+t/xe7odv81iDa5vZrM4dGwru8XGGetZ
 La5/ec5qMf/IOVaLK1/fs1lM37uJzWLS/QksFufPb2C32PT4GqvF5V1z2Cw+9x5htJhxfh+T
 xdojd9ktbjeuYLOYMfklmwO/x6ZVnWwed67tYfO4332cyWPzknqPg+/2MHn0bVnF6PF5k1wA
 e5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJpZ6hsXmslZGpkr6dTUpqTmZZapG+XYJexrq1
 z1kKPnJXXP2/l7mBcRFnFyMnh4SAicSHE9tYuxi5OIQEljJKHO0+wwqRkJD4uP4GlC0s8eda
 FxtE0SdGiT8bb7KAJNgEPCV6Ju4A6xYROMUosXX5ObAqZoFNjBJ3j09kB6kSFoiQWDHhCxuI
 zSKgKrHqxjdGEJtXwFHi7rzVjBAr5CVWbzjADGJzCjhJdB1tB6sXAqrZtv01VL2gxMmZT4A2
 cwAtUJdYP08IJMwM1Nq8dTbzBEbBWUiqZiFUzUJStYCReRWjSGppcW56brGhXnFibnFpXrpe
 cn7uJkZgnG479nPzDsZLG4MPMQpwMCrx8G7YYxorxJpYVlyZe4hRgoNZSYQ3sMEsVog3JbGy
 KrUoP76oNCe1+BCjKdBrE5mlRJPzgSkkryTe0NTQ3MLS0NzY3NjMQkmct0PgYIyQQHpiSWp2
 ampBahFMHxMHp1QD40J270zhP5F3Ih6rqEmlTFN+d1r/W96jebfNpZyPf/45l2neRx67t76H
 2fIez09cE9IVFKHiPvHtC9MJJV9snt+Oy/TfwHaozmzy7C0bLybzf2Ao+fayZvGGORzamXkT
 r08K1XsZ93Vmw/vAeCs9rb7sjOvf7kyfJvl6U+Y2g1ua70Uuh76/FaLEUpyRaKjFXFScCACJ
 jdHh6QIAAA==
X-CMS-MailID: 20190723122024eucas1p1ff060d072132bfbc8a8a1d10fa1f90f8
X-Msg-Generator: CA
X-RootMTR: 20190723122024eucas1p1ff060d072132bfbc8a8a1d10fa1f90f8
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190723122024eucas1p1ff060d072132bfbc8a8a1d10fa1f90f8
References: <20190723122016.30279-1-a.swigon@partner.samsung.com>
 <CGME20190723122024eucas1p1ff060d072132bfbc8a8a1d10fa1f90f8@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_052030_246977_F8576E22 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
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

VGhpcyBwYXRjaCBpbXByb3ZlcyBjb2RlIHJlYWRhYmlsaXR5IGJ5IGNoYW5naW5nIHRoZSBmb2xs
b3dpbmcgY29uc3RydWN0OgoKPiAgICBpZiAoY29uZCkKPiAgICAgICAgZ290byBwYXNzaXZlOwo+
ICAgIGZvbygpOwo+ICAgIGdvdG8gb3V0Owo+cGFzc2l2ZToKPiAgICBiYXIoKTsKPm91dDoKCmlu
dG8gdGhpczoKCj4gICAgaWYgKGNvbmQpCj4gICAgICAgIGJhcigpOwo+ICAgIGVsc2UKPiAgICAg
ICAgZm9vKCk7CgpTaWduZWQtb2ZmLWJ5OiBBcnR1ciDFmndpZ2/FhCA8YS5zd2lnb25AcGFydG5l
ci5zYW1zdW5nLmNvbT4KLS0tCiBkcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jIHwgMjQgKysr
KysrKysrLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAx
NSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5j
IGIvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYwppbmRleCBjZjZmNmNiZDBmNTUuLjRiYjgz
Yjk0NWJmNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYworKysgYi9k
cml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jCkBAIC01MDUsMjUgKzUwNSwxOSBAQCBzdGF0aWMg
aW50IGV4eW5vc19idXNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAlub2Rl
ID0gb2ZfcGFyc2VfcGhhbmRsZShkZXYtPm9mX25vZGUsICJkZXZmcmVxIiwgMCk7CiAJaWYgKG5v
ZGUpIHsKIAkJb2Zfbm9kZV9wdXQobm9kZSk7Ci0JCWdvdG8gcGFzc2l2ZTsKKwkJcmV0ID0gZXh5
bm9zX2J1c19wcm9maWxlX2luaXRfcGFzc2l2ZShidXMsIHByb2ZpbGUpOworCQlpZiAocmV0IDwg
MCkKKwkJCWdvdG8gZXJyOwogCX0gZWxzZSB7CiAJCXJldCA9IGV4eW5vc19idXNfcGFyZW50X3Bh
cnNlX29mKG5wLCBidXMpOworCQlpZiAocmV0IDwgMCkKKwkJCWdvdG8gZXJyOworCisJCXJldCA9
IGV4eW5vc19idXNfcHJvZmlsZV9pbml0KGJ1cywgcHJvZmlsZSk7CisJCWlmIChyZXQgPCAwKQor
CQkJZ290byBlcnI7CiAJfQogCi0JaWYgKHJldCA8IDApCi0JCWdvdG8gZXJyOwotCi0JcmV0ID0g
ZXh5bm9zX2J1c19wcm9maWxlX2luaXQoYnVzLCBwcm9maWxlKTsKLQlpZiAocmV0IDwgMCkKLQkJ
Z290byBlcnI7Ci0KLQlnb3RvIG91dDsKLXBhc3NpdmU6Ci0JcmV0ID0gZXh5bm9zX2J1c19wcm9m
aWxlX2luaXRfcGFzc2l2ZShidXMsIHByb2ZpbGUpOwotCWlmIChyZXQgPCAwKQotCQlnb3RvIGVy
cjsKLQotb3V0OgogCW1heF9zdGF0ZSA9IGJ1cy0+ZGV2ZnJlcS0+cHJvZmlsZS0+bWF4X3N0YXRl
OwogCW1pbl9mcmVxID0gKGJ1cy0+ZGV2ZnJlcS0+cHJvZmlsZS0+ZnJlcV90YWJsZVswXSAvIDEw
MDApOwogCW1heF9mcmVxID0gKGJ1cy0+ZGV2ZnJlcS0+cHJvZmlsZS0+ZnJlcV90YWJsZVttYXhf
c3RhdGUgLSAxXSAvIDEwMDApOwotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
