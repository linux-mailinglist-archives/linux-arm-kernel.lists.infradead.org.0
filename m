Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD077182D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 14:23:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fJvmhBvPRXsqiwv+fWWwbYpFhKpuy8GlyycfhZzAsZc=; b=HM4x8rJXpocb32
	OOC3l5QOqs/GZTalgdnvi80Rw6wQLU+Sqv4bxfbVjwpnui9YSjt5ufY1pHeZiHNgJ13qPvj1Itgfo
	KtjO+1lfpsB6rn3pnaOyQQcmH8tMjgqSrec6UGtwqjqLHeZNWdF0U6FqmuLTEWPlrix/xuADKw0C2
	HYevntS46POLMtNGdBzBOjFMLTWxBuqnInGBIQQa5S/ugPAiHtVPxnF4ZsmSsMuyOSUskU6t8SHSF
	WruhS88iZqJTVIDW+6xECokm93NP9zzSh+SXGrZ92YdlFWkV5rnGI4p44bPuHdU+FM3GXiPvdVjPw
	OUH2Wed1ds1v+O8zprfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hptpV-0004F3-CZ; Tue, 23 Jul 2019 12:23:41 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hptmT-0001pt-RF
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 12:20:37 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190723122030euoutp02db3a34c519c2d430e206c5bf2389013b~0CJqmzqOf3176431764euoutp02e
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 12:20:30 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190723122030euoutp02db3a34c519c2d430e206c5bf2389013b~0CJqmzqOf3176431764euoutp02e
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563884430;
 bh=chTAxkeOxeztbYhH5EwlVhyZmCCDjcZAKWEH2LV9Maw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=rleaq17IOn6LXO3dqLLYMRO8+vXNQup7jMx9RSLtukmDMA2El0Y8wlDEOAuitkGgX
 Qw22sB2WuxT38Xu9AXonRaNxJqsYrTMGF6WiGUrb4BtWrsdPCHx6hM/W2iFUTI5ixp
 o0yMzViDnsQb84depabskz28vCBYGCZI+CYub9V8=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190723122030eucas1p1526085231fac50d83e0c3f4e901d27ac~0CJqHQ6G11172511725eucas1p1s;
 Tue, 23 Jul 2019 12:20:30 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id BA.75.04325.E8BF63D5; Tue, 23
 Jul 2019 13:20:30 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190723122029eucas1p2915f536d9ef43a7bd043a878a553439f~0CJpcU7GT2749027490eucas1p2e;
 Tue, 23 Jul 2019 12:20:29 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190723122029eusmtrp1a31f44e38dd0815908164fafed0ac103~0CJpbZEWS2543625436eusmtrp1M;
 Tue, 23 Jul 2019 12:20:29 +0000 (GMT)
X-AuditID: cbfec7f5-b75ff700000010e5-b1-5d36fb8eb2a1
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 44.51.04146.D8BF63D5; Tue, 23
 Jul 2019 13:20:29 +0100 (BST)
Received: from AMDC3555.DIGITAL.local (unknown [106.120.51.67]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190723122028eusmtip253d509d660fc46b60b3b91f389d18d83~0CJozTE0j1733017330eusmtip2k;
 Tue, 23 Jul 2019 12:20:28 +0000 (GMT)
From: =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: [RFC PATCH 11/11] drm: exynos: mixer: Add interconnect support
Date: Tue, 23 Jul 2019 14:20:16 +0200
Message-Id: <20190723122016.30279-12-a.swigon@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190723122016.30279-1-a.swigon@partner.samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01SfSyUcRzvd8/LPY7jccR3va5b14tNekG/lVrJ1rX+kH8z6YknWlx2D0r9
 EbmQMLkaIaxaOBMOV3lbXYdarVtLspWpYdFW8hojdeeh/Pf5fl5+n+93+zGEwkqtYs5o4nmt
 hotR0jLS1DHzxjtn1j9su6FEhs0djVJcV1BD4Q8TXylcanlD4a7JERrntxppnNeXS2KrtVaK
 jf3dFH7XVEzj8WwLwgXWNgmutvRK8ceUChoX6IfpAy5qo+Earf7U3UKr+653StT19y+rn/1o
 kahzGgxIPW5cd0x6XBYQycecSeS1PvtPyqINbbVUnG7jhbSB92Qysq7NRA4MsL4wr5uSZiIZ
 o2ArEKS2TknsgoKdQFBQuVIUxhG8uJpKLyXufX+6mChHMDCcjv4lUpqd7Jhmj0DWjceU3eTO
 WhDoy0ZI+0CwBtvwy7SQcGMPw5e8koU+klXBwHQdZcdyNhD+lBeTYt16qKp9Stixg43PbE+n
 RY8rvLw9sOAhbJ7UxiLCXgDsqBTu/PotEcNBUN6vQyJ2g2+dDVIRr4FX+qzFAgEGn/RRYjgZ
 gfGBhRCFvfC8861NYGwNW6GmyUekD0KlTi+108A6Q893V3EHZ8gz5RMiLYeMNIUIvaBsNlQM
 Alyp6l58Ww0/sk1ELtpQuOyYwmXHFP6vLUOEAXnyCUJsFC/s0vDntwlcrJCgidoWcS7WiGzf
 7NV85+Rj1DZ3yoxYBimd5LUtfmEKiksUkmLNCBhC6S4PSfYPU8gjuaSLvPZcuDYhhhfMaDVD
 Kj3ll1Z8DlWwUVw8f5bn43jtkiphHFYlI7cOt6aStLbR6ZtRJxwDEnUzXv6e2wOD5h0te5/I
 VeZ281A6F2GuPx2wp3yznm7mPT14zU+ozrjVM+Y7GK7yaD6aFsx1DQ/t9CnCvTE5ZKlXUuK+
 Ht3W7LG84BNVma8f7lZVqra0z2W3HsLeNcQjV5Ozi59qrDIg4W7IplRdtZIUorkdXoRW4P4C
 Bh55rGIDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrGIsWRmVeSWpSXmKPExsVy+t/xe7q9v81iDX7fU7U4dGwru8XGGetZ
 La5/ec5qMf/IOVaLK1/fs1lM37uJzWLS/QksFufPb2C32PT4GqvF5V1z2Cw+9x5htJhxfh+T
 xdojd9ktbjeuYLOYMfklmwO/x6ZVnWwed67tYfO4332cyWPzknqPg+/2MHn0bVnF6PF5k1wA
 e5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJpZ6hsXmslZGpkr6dTUpqTmZZapG+XYJexqp9
 G1gLWlQq2p5cZWlgPC/bxcjJISFgIrH47QH2LkYuDiGBpYwSN8//YINISEh8XH+DFcIWlvhz
 rYsNougTo8SWE7eZQRJsAp4SPRN3sIIkRAROMUpsXX4OrIpZYBOjxN3jE9lBqoQF3CUeTprH
 BGKzCKhKPPmxEWwsr4CTxP/lc1ggVshLrN5wAGwqJ1C862g72BlCAo4S27a/ZoSoF5Q4OfMJ
 UD0H0AJ1ifXzhEDCzECtzVtnM09gFJyFpGoWQtUsJFULGJlXMYqklhbnpucWG+oVJ+YWl+al
 6yXn525iBMbptmM/N+9gvLQx+BCjAAejEg/vhj2msUKsiWXFlbmHGCU4mJVEeAMbzGKFeFMS
 K6tSi/Lji0pzUosPMZoCvTaRWUo0OR+YQvJK4g1NDc0tLA3Njc2NzSyUxHk7BA7GCAmkJ5ak
 ZqemFqQWwfQxcXBKNTC6lT5elvdbzu0Th+GCz/3v7ljmGXv11Ul6/uSfl+xZ0HRI737Xy/rC
 iZe/Lv4wX/5IxrvOztrDz7YpdEXN5/CNjjs0ad313b4VLz5eLjlhGmzwOTR9fubniX2BX9Vn
 3NvV32UgEXz0t+rc0tRPzov3xgXtfzsloFRVcT/PxBD3iNfftr+d4OuvxFKckWioxVxUnAgA
 zexhSukCAAA=
X-CMS-MailID: 20190723122029eucas1p2915f536d9ef43a7bd043a878a553439f
X-Msg-Generator: CA
X-RootMTR: 20190723122029eucas1p2915f536d9ef43a7bd043a878a553439f
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190723122029eucas1p2915f536d9ef43a7bd043a878a553439f
References: <20190723122016.30279-1-a.swigon@partner.samsung.com>
 <CGME20190723122029eucas1p2915f536d9ef43a7bd043a878a553439f@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_052034_016300_817234A8 
X-CRM114-Status: GOOD (  18.78  )
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

RnJvbTogTWFyZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgoKVGhpcyBw
YXRjaCBhZGRzIGludGVyY29ubmVjdCBzdXBwb3J0IHRvIGV4eW5vcy1taXhlci4gUGxlYXNlIG5v
dGUgdGhhdCB0aGUKbWl4ZXIgd29ya3MgdGhlIHNhbWUgYXMgYmVmb3JlIHdoZW4gQ09ORklHX0lO
VEVSQ09OTkVDVCBpcyAnbicuCgpDby1kZXZlbG9wZWQtYnk6IEFydHVyIMWad2lnb8WEIDxhLnN3
aWdvbkBwYXJ0bmVyLnNhbXN1bmcuY29tPgpTaWduZWQtb2ZmLWJ5OiBBcnR1ciDFmndpZ2/FhCA8
YS5zd2lnb25AcGFydG5lci5zYW1zdW5nLmNvbT4KU2lnbmVkLW9mZi1ieTogTWFyZWsgU3p5cHJv
d3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9leHlu
b3MvZXh5bm9zX21peGVyLmMgfCA2OCArKysrKysrKysrKysrKysrKysrKysrKysrLS0KIDEgZmls
ZSBjaGFuZ2VkLCA2MyBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX21peGVyLmMgYi9kcml2ZXJzL2dwdS9kcm0v
ZXh5bm9zL2V4eW5vc19taXhlci5jCmluZGV4IDdiMjQzMzhmYWQzYy4uZmI3NjM4NTRiMzAwIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19taXhlci5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX21peGVyLmMKQEAgLTEzLDYgKzEzLDcgQEAKICNp
bmNsdWRlIDxsaW51eC9jb21wb25lbnQuaD4KICNpbmNsdWRlIDxsaW51eC9kZWxheS5oPgogI2lu
Y2x1ZGUgPGxpbnV4L2kyYy5oPgorI2luY2x1ZGUgPGxpbnV4L2ludGVyY29ubmVjdC5oPgogI2lu
Y2x1ZGUgPGxpbnV4L2ludGVycnVwdC5oPgogI2luY2x1ZGUgPGxpbnV4L2lycS5oPgogI2luY2x1
ZGUgPGxpbnV4L2tlcm5lbC5oPgpAQCAtOTcsNiArOTgsNyBAQCBzdHJ1Y3QgbWl4ZXJfY29udGV4
dCB7CiAJc3RydWN0IGV4eW5vc19kcm1fY3J0YwkqY3J0YzsKIAlzdHJ1Y3QgZXh5bm9zX2RybV9w
bGFuZQlwbGFuZXNbTUlYRVJfV0lOX05SXTsKIAl1bnNpZ25lZCBsb25nCQlmbGFnczsKKwlzdHJ1
Y3QgaWNjX3BhdGgJCSpzb2NfcGF0aDsKIAogCWludAkJCWlycTsKIAl2b2lkIF9faW9tZW0JCSpt
aXhlcl9yZWdzOwpAQCAtOTMxLDYgKzkzMywzNyBAQCBzdGF0aWMgdm9pZCBtaXhlcl9kaXNhYmxl
X3ZibGFuayhzdHJ1Y3QgZXh5bm9zX2RybV9jcnRjICpjcnRjKQogCW1peGVyX3JlZ193cml0ZW1h
c2sobWl4ZXJfY3R4LCBNWFJfSU5UX0VOLCAwLCBNWFJfSU5UX0VOX1ZTWU5DKTsKIH0KIAorc3Rh
dGljIHZvaWQgbWl4ZXJfc2V0X21lbW9yeV9iYW5kd2lkdGgoc3RydWN0IGV4eW5vc19kcm1fY3J0
YyAqY3J0YykKK3sKKwlzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZSA9ICZjcnRjLT5iYXNl
LnN0YXRlLT5hZGp1c3RlZF9tb2RlOworCXN0cnVjdCBtaXhlcl9jb250ZXh0ICpjdHggPSBjcnRj
LT5jdHg7CisJdW5zaWduZWQgbG9uZyBidywgYmFuZHdpZHRoID0gMDsKKwlpbnQgaSwgaiwgc3Vi
OworCisJZm9yIChpID0gMDsgaSA8IE1JWEVSX1dJTl9OUjsgaSsrKSB7CisJCXN0cnVjdCBkcm1f
cGxhbmUgKnBsYW5lID0gJmN0eC0+cGxhbmVzW2ldLmJhc2U7CisJCWNvbnN0IHN0cnVjdCBkcm1f
Zm9ybWF0X2luZm8gKmZvcm1hdDsKKworCQlpZiAocGxhbmUtPnN0YXRlICYmIHBsYW5lLT5zdGF0
ZS0+Y3J0YyAmJiBwbGFuZS0+c3RhdGUtPmZiKSB7CisJCQlmb3JtYXQgPSBwbGFuZS0+c3RhdGUt
PmZiLT5mb3JtYXQ7CisJCQlidyA9IG1vZGUtPmhkaXNwbGF5ICogbW9kZS0+dmRpc3BsYXkgKgor
CQkJCQkJCWRybV9tb2RlX3ZyZWZyZXNoKG1vZGUpOworCQkJaWYgKG1vZGUtPmZsYWdzICYgRFJN
X01PREVfRkxBR19JTlRFUkxBQ0UpCisJCQkJYncgLz0gMjsKKwkJCWZvciAoaiA9IDA7IGogPCBm
b3JtYXQtPm51bV9wbGFuZXM7IGorKykgeworCQkJCXN1YiA9IGogPyAoZm9ybWF0LT52c3ViICog
Zm9ybWF0LT5oc3ViKSA6IDE7CisJCQkJYmFuZHdpZHRoICs9IGZvcm1hdC0+Y3BwW2pdICogYncg
LyBzdWI7CisJCQl9CisJCX0KKwl9CisKKwkvKiBhZGQgMjAlIHNhZmV0eSBtYXJnaW4gKi8KKwli
YW5kd2lkdGggPSA1VUwgKiBiYW5kd2lkdGggLyA0OworCisJcHJfaW5mbygiZXh5bm9zLW1peGVy
OiBzYWZlIGJhbmR3aWR0aCAlbGQgQnBzXG4iLCBiYW5kd2lkdGgpOworCWljY19zZXRfYncoY3R4
LT5zb2NfcGF0aCwgMCwgQnBzX3RvX2ljYyhiYW5kd2lkdGgpKTsKK30KKwogc3RhdGljIHZvaWQg
bWl4ZXJfYXRvbWljX2JlZ2luKHN0cnVjdCBleHlub3NfZHJtX2NydGMgKmNydGMpCiB7CiAJc3Ry
dWN0IG1peGVyX2NvbnRleHQgKmN0eCA9IGNydGMtPmN0eDsKQEAgLTk4Miw2ICsxMDE1LDcgQEAg
c3RhdGljIHZvaWQgbWl4ZXJfYXRvbWljX2ZsdXNoKHN0cnVjdCBleHlub3NfZHJtX2NydGMgKmNy
dGMpCiAJaWYgKCF0ZXN0X2JpdChNWFJfQklUX1BPV0VSRUQsICZtaXhlcl9jdHgtPmZsYWdzKSkK
IAkJcmV0dXJuOwogCisJbWl4ZXJfc2V0X21lbW9yeV9iYW5kd2lkdGgoY3J0Yyk7CiAJbWl4ZXJf
ZW5hYmxlX3N5bmMobWl4ZXJfY3R4KTsKIAlleHlub3NfY3J0Y19oYW5kbGVfZXZlbnQoY3J0Yyk7
CiB9CkBAIC0xMDI5LDYgKzEwNjMsNyBAQCBzdGF0aWMgdm9pZCBtaXhlcl9kaXNhYmxlKHN0cnVj
dCBleHlub3NfZHJtX2NydGMgKmNydGMpCiAJZm9yIChpID0gMDsgaSA8IE1JWEVSX1dJTl9OUjsg
aSsrKQogCQltaXhlcl9kaXNhYmxlX3BsYW5lKGNydGMsICZjdHgtPnBsYW5lc1tpXSk7CiAKKwlt
aXhlcl9zZXRfbWVtb3J5X2JhbmR3aWR0aChjcnRjKTsKIAlleHlub3NfZHJtX3BpcGVfY2xrX2Vu
YWJsZShjcnRjLCBmYWxzZSk7CiAKIAlwbV9ydW50aW1lX3B1dChjdHgtPmRldik7CkBAIC0xMjIw
LDEyICsxMjU1LDIyIEBAIHN0YXRpYyBpbnQgbWl4ZXJfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rl
dmljZSAqcGRldikKIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSAmcGRldi0+ZGV2OwogCWNvbnN0IHN0
cnVjdCBtaXhlcl9kcnZfZGF0YSAqZHJ2OwogCXN0cnVjdCBtaXhlcl9jb250ZXh0ICpjdHg7CisJ
c3RydWN0IGljY19wYXRoICpwYXRoOwogCWludCByZXQ7CiAKKwkvKgorCSAqIFJldHVybnMgTlVM
TCBpZiBDT05GSUdfSU5URVJDT05ORUNUIGlzIGRpc2FibGVkLgorCSAqIE1heSByZXR1cm4gRVJS
X1BUUigtRVBST0JFX0RFRkVSKS4KKwkgKi8KKwlwYXRoID0gb2ZfaWNjX2dldChkZXYsIE5VTEwp
OworCWlmIChJU19FUlIocGF0aCkpCisJCXJldHVybiBQVFJfRVJSKHBhdGgpOworCiAJY3R4ID0g
ZGV2bV9remFsbG9jKCZwZGV2LT5kZXYsIHNpemVvZigqY3R4KSwgR0ZQX0tFUk5FTCk7CiAJaWYg
KCFjdHgpIHsKIAkJRFJNX0RFVl9FUlJPUihkZXYsICJmYWlsZWQgdG8gYWxsb2MgbWl4ZXIgY29u
dGV4dC5cbiIpOwotCQlyZXR1cm4gLUVOT01FTTsKKwkJcmV0ID0gLUVOT01FTTsKKwkJZ290byBl
cnI7CiAJfQogCiAJZHJ2ID0gb2ZfZGV2aWNlX2dldF9tYXRjaF9kYXRhKGRldik7CkBAIC0xMjMz
LDYgKzEyNzgsNyBAQCBzdGF0aWMgaW50IG1peGVyX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZp
Y2UgKnBkZXYpCiAJY3R4LT5wZGV2ID0gcGRldjsKIAljdHgtPmRldiA9IGRldjsKIAljdHgtPm14
cl92ZXIgPSBkcnYtPnZlcnNpb247CisJY3R4LT5zb2NfcGF0aCA9IHBhdGg7CiAKIAlpZiAoZHJ2
LT5pc192cF9lbmFibGVkKQogCQlfX3NldF9iaXQoTVhSX0JJVF9WUF9FTkFCTEVELCAmY3R4LT5m
bGFncyk7CkBAIC0xMjQyLDE3ICsxMjg4LDI5IEBAIHN0YXRpYyBpbnQgbWl4ZXJfcHJvYmUoc3Ry
dWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAlwbGF0Zm9ybV9zZXRfZHJ2ZGF0YShwZGV2LCBj
dHgpOwogCiAJcmV0ID0gY29tcG9uZW50X2FkZCgmcGRldi0+ZGV2LCAmbWl4ZXJfY29tcG9uZW50
X29wcyk7Ci0JaWYgKCFyZXQpCi0JCXBtX3J1bnRpbWVfZW5hYmxlKGRldik7CisJaWYgKHJldCA8
IDApCisJCWdvdG8gZXJyOworCisJcG1fcnVudGltZV9lbmFibGUoZGV2KTsKKworCXJldHVybiAw
OworCitlcnI6CisJaWNjX3B1dChwYXRoKTsKIAogCXJldHVybiByZXQ7CiB9CiAKIHN0YXRpYyBp
bnQgbWl4ZXJfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiB7Ci0JcG1fcnVu
dGltZV9kaXNhYmxlKCZwZGV2LT5kZXYpOworCXN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5k
ZXY7CisJc3RydWN0IG1peGVyX2NvbnRleHQgKmN0eCA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwog
Ci0JY29tcG9uZW50X2RlbCgmcGRldi0+ZGV2LCAmbWl4ZXJfY29tcG9uZW50X29wcyk7CisJcG1f
cnVudGltZV9kaXNhYmxlKGRldik7CisKKwljb21wb25lbnRfZGVsKGRldiwgJm1peGVyX2NvbXBv
bmVudF9vcHMpOworCisJaWNjX3B1dChjdHgtPnNvY19wYXRoKTsKIAogCXJldHVybiAwOwogfQot
LSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
