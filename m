Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ECC5B7CA1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 16:27:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t7foYSr6+rhR1IcTPiCrP1rsIPSE/lx1loC7PzYKz5A=; b=bBZwsCzwTHItFG
	cN9JjHPgCAIR1eirpXlPgHqE53VLTNqNXUY2mISfYi0REGehlG3TWEB3Ya36sxupO3f/FeLupC2eR
	jsmmOWJ4wMTwzOnwHMCZelSEi/1LE8XcxrsjpupImcJYY5Pudb7GEuYKBexaBR8d2rfFeLqT6s6/f
	QaNAzzxpmRklGZU/EbThFKYW0q0DDX8O7rUyU9D9h7eANTLhvh1YqU9Z5k0DNKwJYbY/zjUsFp8MS
	4+ozIHbnPIT2nSkzd68w19m52rcmeVaJ5GLVPGH8ubERG52L/Guzh4CBJbXRk3+iCHuIOqKuZOxo4
	kegAxpxCR8GLQ/MWv8yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAxOu-0000vz-KK; Thu, 19 Sep 2019 14:27:16 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAxLK-0004ew-70
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 14:23:36 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190919142332euoutp01443a44484e1097225fdc3915e2707941~F3PpQhdUg2200122001euoutp01B
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 14:23:32 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190919142332euoutp01443a44484e1097225fdc3915e2707941~F3PpQhdUg2200122001euoutp01B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568903012;
 bh=aqnq76AJ7cEM6iPpck0/T4PBR1c8/aJ2zN+gU2OjO5U=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XHb6t26Bwhlx8ziUSsjIvsiO9CSLGIHg2adTCQXu5puBk5jBGdNYgvxkVJTJZxh/r
 7w29RIN6i14odEBINmhL64gMPHsV6QYEnu2Bv1hTQPCw4r9sLNZVIwDYG/N+ljaY+4
 aCc25or0xD60AfvHnLLBMBweIL+9xBbz+/UT1yow=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190919142332eucas1p1d51a1e7ed38d5ff9cbf66beda86860db~F3Poz8KI31885218852eucas1p1l;
 Thu, 19 Sep 2019 14:23:32 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 65.69.04374.46F838D5; Thu, 19
 Sep 2019 15:23:32 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190919142331eucas1p2107a7cb9ce8b3817ed171c21a8ad5b00~F3Pn_C_-93080630806eucas1p2o;
 Thu, 19 Sep 2019 14:23:31 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190919142331eusmtrp1821b6ff67c64b3c0456b691cd09cb0a8~F3Pn9GMsH0562505625eusmtrp1Q;
 Thu, 19 Sep 2019 14:23:31 +0000 (GMT)
X-AuditID: cbfec7f5-4ddff70000001116-14-5d838f64ce27
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 18.1F.04166.36F838D5; Thu, 19
 Sep 2019 15:23:31 +0100 (BST)
Received: from AMDC3555.digital.local (unknown [106.120.51.67]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190919142330eusmtip18daa369ad8728ac48cc1b4e8d0870d63~F3PnI7tvl3039930399eusmtip1h;
 Thu, 19 Sep 2019 14:23:30 +0000 (GMT)
From: =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@samsung.com>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: [RFC PATCH v2 11/11] drm: exynos: mixer: Add interconnect support
Date: Thu, 19 Sep 2019 16:22:36 +0200
Message-Id: <20190919142236.4071-12-a.swigon@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190919142236.4071-1-a.swigon@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0hTYRju27nsKM2OU/DN0mpkUNBFLPikCwn+OPgjJAm6KLbypCOdsuO1
 kEyz8lLJxNIpJt0UxdSjNbWatYarDFekK0qZZZLZxWwahWK5HUP/Pe9z+d7nhY8hlA7Kn9Fo
 U3mdVp2ooj3Ju91/bBvjLuXFbGkfkGFz9x05dlTnI9xS3kTh15OfKHzV0kvhvqlxGl95INJY
 7yghsc3WLMd1gxMUFoftFH7VWUVj5wULwuU2kww3Wgbl+N3pOhqXl36md3tzYn0BzQ3Y79Oc
 o8gq41pvnOJavrfLuEff78u4i231iHOKgZHMQc8dcXyiJp3Xbd512DPB2f+FTBHXZj77ekae
 g34GFCIPBtitIP6sQYXIk1GydQi6++yENEwisBtb5dLgRPDDVkX/j5Q+yqEloRbBYMvQQqRo
 tBu5XDQbBvqyIXfcl7UgKK0ZJ10DwXbI4EV5I+Fy+bARYH171p0g2SDov10wxzOMgg2F69M6
 ad0qaGh+6LZ7zNGTpqukCytYb3ha8dGNiTlP3p1KdwtgCxhoyP8tk8Lh8OvJ9HxvHxiztskl
 vBJ6SotJCQsw0uGgpHAOAvGWhZCE7fDY+pJyFSLY9dDUuVmiw8B4z0m7aGC94M03b6mDF+jv
 XiEkWgHnzyolqILOCi8pCJDbYJ9/m4MBcwMqQWsMi44xLDrGsLC2BhH1yI9PE5LieSFEy2ds
 EtRJQpo2ftPR5CQRzX27nlnrVDsyzRwxI5ZBqqWK1Rl5MUpKnS5kJZkRMITKV1G1LTdGqYhT
 Z53gdcmxurREXjCjFQyp8lOcXDJ0SMnGq1P54zyfwuv+qzLGwz8HNSc/1wSuCzMWRhf/XVdb
 tF/VG3xtSvyyPPiYIXDP8MxQtj6VeWfvWdaWuld/Lp1bamBM4ptDIzuHozKtoT6xGpv65j6P
 jpEgPLNfm1sX8uPXh7D3nzXVfgeC8+KeGzOqymbHlkdVku2jAZFlIWSX6clERKYxvDg72neW
 vdk1fllFCgnq4A2ETlD/A+fzsd5yAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrMIsWRmVeSWpSXmKPExsVy+t/xu7rJ/c2xBt+mi1scOraV3eL+vFZG
 i40z1rNaXP/ynNVi/pFzrBZXvr5ns5i+dxObxaT7E1gszp/fwG6x4u5HVotNj6+xWlzeNYfN
 4nPvEUaLGef3MVmsPXKX3eJ24wo2ixmTX7I5CHpsWtXJ5nHn2h42j/vdx5k8Ni+p99j4bgeT
 x8F3e5g8+rasYvT4vEkugCNKz6Yov7QkVSEjv7jEVina0MJIz9DSQs/IxFLP0Ng81srIVEnf
 ziYlNSezLLVI3y5BL+Pz1dcsBZtUKk69aWFvYPwk28XIySEhYCIx+WADWxcjF4eQwFJGiaW3
 5jBBJCQkPq6/wQphC0v8udbFBmILCXxilPjy3grEZhNwlJg09QE7SLOIwClGia3Lz4FNYhY4
 zCQx+UEn2CRhAS+J47faGEFsFgFViavrOpm7GDk4eAUsJRb/LoJYIC+xesMBZhCbEyj8Zd98
 FohlFhJzH88Fa+UVEJQ4OfMJC0grs4C6xPp5QiBhZqDW5q2zmScwCs5CUjULoWoWkqoFjMyr
 GEVSS4tz03OLDfWKE3OLS/PS9ZLzczcxAiN427Gfm3cwXtoYfIhRgINRiYdXobw5Vog1say4
 MvcQowQHs5II7xzTplgh3pTEyqrUovz4otKc1OJDjKZAn01klhJNzgcml7ySeENTQ3MLS0Nz
 Y3NjMwslcd4OgYMxQgLpiSWp2ampBalFMH1MHJxSDYzV5VM5QlPcJz3evelj+e9HdUsnNAR8
 UXJV5dab+9U/apWCooCE85PKa7NXlChUSf2bLOL1ddMzP/FLV00OzTe9/6Bx7kaVCQkcpbe3
 z3VwzIqbOWPt4zzPF/yBqtzHAswjeeMltOytZbbelC+ylP/tsTFN/dKqjxKBy37JW7Nl3BUQ
 X5uS36TEUpyRaKjFXFScCACPvzrD9gIAAA==
X-CMS-MailID: 20190919142331eucas1p2107a7cb9ce8b3817ed171c21a8ad5b00
X-Msg-Generator: CA
X-RootMTR: 20190919142331eucas1p2107a7cb9ce8b3817ed171c21a8ad5b00
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190919142331eucas1p2107a7cb9ce8b3817ed171c21a8ad5b00
References: <20190919142236.4071-1-a.swigon@samsung.com>
 <CGME20190919142331eucas1p2107a7cb9ce8b3817ed171c21a8ad5b00@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_072334_443389_C87FC2A5 
X-CRM114-Status: GOOD (  18.73  )
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
 leonard.crestez@nxp.com, georgi.djakov@linaro.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogTWFyZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgoKVGhpcyBw
YXRjaCBhZGRzIGludGVyY29ubmVjdCBzdXBwb3J0IHRvIGV4eW5vcy1taXhlci4gUGxlYXNlIG5v
dGUgdGhhdCB0aGUKbWl4ZXIgd29ya3MgdGhlIHNhbWUgYXMgYmVmb3JlIHdoZW4gQ09ORklHX0lO
VEVSQ09OTkVDVCBpcyAnbicuCgpDby1kZXZlbG9wZWQtYnk6IEFydHVyIMWad2lnb8WEIDxhLnN3
aWdvbkBwYXJ0bmVyLnNhbXN1bmcuY29tPgpTaWduZWQtb2ZmLWJ5OiBNYXJlayBTenlwcm93c2tp
IDxtLnN6eXByb3dza2lAc2Ftc3VuZy5jb20+ClNpZ25lZC1vZmYtYnk6IEFydHVyIMWad2lnb8WE
IDxhLnN3aWdvbkBwYXJ0bmVyLnNhbXN1bmcuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9leHlu
b3MvZXh5bm9zX21peGVyLmMgfCA3MSArKysrKysrKysrKysrKysrKysrKysrKysrLS0KIDEgZmls
ZSBjaGFuZ2VkLCA2NiBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX21peGVyLmMgYi9kcml2ZXJzL2dwdS9kcm0v
ZXh5bm9zL2V4eW5vc19taXhlci5jCmluZGV4IDdiMjQzMzhmYWQzYy4uYTQ0ZjMyODRiMDcxIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19taXhlci5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX21peGVyLmMKQEAgLTEzLDYgKzEzLDcgQEAKICNp
bmNsdWRlIDxsaW51eC9jb21wb25lbnQuaD4KICNpbmNsdWRlIDxsaW51eC9kZWxheS5oPgogI2lu
Y2x1ZGUgPGxpbnV4L2kyYy5oPgorI2luY2x1ZGUgPGxpbnV4L2ludGVyY29ubmVjdC5oPgogI2lu
Y2x1ZGUgPGxpbnV4L2ludGVycnVwdC5oPgogI2luY2x1ZGUgPGxpbnV4L2lycS5oPgogI2luY2x1
ZGUgPGxpbnV4L2tlcm5lbC5oPgpAQCAtOTcsNiArOTgsNyBAQCBzdHJ1Y3QgbWl4ZXJfY29udGV4
dCB7CiAJc3RydWN0IGV4eW5vc19kcm1fY3J0YwkqY3J0YzsKIAlzdHJ1Y3QgZXh5bm9zX2RybV9w
bGFuZQlwbGFuZXNbTUlYRVJfV0lOX05SXTsKIAl1bnNpZ25lZCBsb25nCQlmbGFnczsKKwlzdHJ1
Y3QgaWNjX3BhdGgJCSpzb2NfcGF0aDsKIAogCWludAkJCWlycTsKIAl2b2lkIF9faW9tZW0JCSpt
aXhlcl9yZWdzOwpAQCAtOTMxLDYgKzkzMyw0MCBAQCBzdGF0aWMgdm9pZCBtaXhlcl9kaXNhYmxl
X3ZibGFuayhzdHJ1Y3QgZXh5bm9zX2RybV9jcnRjICpjcnRjKQogCW1peGVyX3JlZ193cml0ZW1h
c2sobWl4ZXJfY3R4LCBNWFJfSU5UX0VOLCAwLCBNWFJfSU5UX0VOX1ZTWU5DKTsKIH0KIAorc3Rh
dGljIHZvaWQgbWl4ZXJfc2V0X21lbW9yeV9iYW5kd2lkdGgoc3RydWN0IGV4eW5vc19kcm1fY3J0
YyAqY3J0YykKK3sKKwlzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZSA9ICZjcnRjLT5iYXNl
LnN0YXRlLT5hZGp1c3RlZF9tb2RlOworCXN0cnVjdCBtaXhlcl9jb250ZXh0ICpjdHggPSBjcnRj
LT5jdHg7CisJdW5zaWduZWQgbG9uZyBidywgYmFuZHdpZHRoID0gMDsKKwlpbnQgaSwgaiwgc3Vi
OworCisJaWYgKCFjdHgtPnNvY19wYXRoKQorCQlyZXR1cm47CisKKwlmb3IgKGkgPSAwOyBpIDwg
TUlYRVJfV0lOX05SOyBpKyspIHsKKwkJc3RydWN0IGRybV9wbGFuZSAqcGxhbmUgPSAmY3R4LT5w
bGFuZXNbaV0uYmFzZTsKKwkJY29uc3Qgc3RydWN0IGRybV9mb3JtYXRfaW5mbyAqZm9ybWF0Owor
CisJCWlmIChwbGFuZS0+c3RhdGUgJiYgcGxhbmUtPnN0YXRlLT5jcnRjICYmIHBsYW5lLT5zdGF0
ZS0+ZmIpIHsKKwkJCWZvcm1hdCA9IHBsYW5lLT5zdGF0ZS0+ZmItPmZvcm1hdDsKKwkJCWJ3ID0g
bW9kZS0+aGRpc3BsYXkgKiBtb2RlLT52ZGlzcGxheSAqCisJCQkJCQkJZHJtX21vZGVfdnJlZnJl
c2gobW9kZSk7CisJCQlpZiAobW9kZS0+ZmxhZ3MgJiBEUk1fTU9ERV9GTEFHX0lOVEVSTEFDRSkK
KwkJCQlidyAvPSAyOworCQkJZm9yIChqID0gMDsgaiA8IGZvcm1hdC0+bnVtX3BsYW5lczsgaisr
KSB7CisJCQkJc3ViID0gaiA/IChmb3JtYXQtPnZzdWIgKiBmb3JtYXQtPmhzdWIpIDogMTsKKwkJ
CQliYW5kd2lkdGggKz0gZm9ybWF0LT5jcHBbal0gKiBidyAvIHN1YjsKKwkJCX0KKwkJfQorCX0K
KworCS8qIGFkZCAyMCUgc2FmZXR5IG1hcmdpbiAqLworCWJhbmR3aWR0aCA9IGJhbmR3aWR0aCAv
IDQgKiA1OworCisJZGV2X2RiZyhjdHgtPmRldiwgImV4eW5vcy1taXhlcjogc2FmZSBiYW5kd2lk
dGggJWxkIEJwc1xuIiwgYmFuZHdpZHRoKTsKKwlpY2Nfc2V0X2J3KGN0eC0+c29jX3BhdGgsIEJw
c190b19pY2MoYmFuZHdpZHRoKSwgMCk7Cit9CisKIHN0YXRpYyB2b2lkIG1peGVyX2F0b21pY19i
ZWdpbihzdHJ1Y3QgZXh5bm9zX2RybV9jcnRjICpjcnRjKQogewogCXN0cnVjdCBtaXhlcl9jb250
ZXh0ICpjdHggPSBjcnRjLT5jdHg7CkBAIC05ODIsNiArMTAxOCw3IEBAIHN0YXRpYyB2b2lkIG1p
eGVyX2F0b21pY19mbHVzaChzdHJ1Y3QgZXh5bm9zX2RybV9jcnRjICpjcnRjKQogCWlmICghdGVz
dF9iaXQoTVhSX0JJVF9QT1dFUkVELCAmbWl4ZXJfY3R4LT5mbGFncykpCiAJCXJldHVybjsKIAor
CW1peGVyX3NldF9tZW1vcnlfYmFuZHdpZHRoKGNydGMpOwogCW1peGVyX2VuYWJsZV9zeW5jKG1p
eGVyX2N0eCk7CiAJZXh5bm9zX2NydGNfaGFuZGxlX2V2ZW50KGNydGMpOwogfQpAQCAtMTAyOSw2
ICsxMDY2LDcgQEAgc3RhdGljIHZvaWQgbWl4ZXJfZGlzYWJsZShzdHJ1Y3QgZXh5bm9zX2RybV9j
cnRjICpjcnRjKQogCWZvciAoaSA9IDA7IGkgPCBNSVhFUl9XSU5fTlI7IGkrKykKIAkJbWl4ZXJf
ZGlzYWJsZV9wbGFuZShjcnRjLCAmY3R4LT5wbGFuZXNbaV0pOwogCisJbWl4ZXJfc2V0X21lbW9y
eV9iYW5kd2lkdGgoY3J0Yyk7CiAJZXh5bm9zX2RybV9waXBlX2Nsa19lbmFibGUoY3J0YywgZmFs
c2UpOwogCiAJcG1fcnVudGltZV9wdXQoY3R4LT5kZXYpOwpAQCAtMTIyMCwxMiArMTI1OCwyMiBA
QCBzdGF0aWMgaW50IG1peGVyX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJ
c3RydWN0IGRldmljZSAqZGV2ID0gJnBkZXYtPmRldjsKIAljb25zdCBzdHJ1Y3QgbWl4ZXJfZHJ2
X2RhdGEgKmRydjsKIAlzdHJ1Y3QgbWl4ZXJfY29udGV4dCAqY3R4OworCXN0cnVjdCBpY2NfcGF0
aCAqcGF0aDsKIAlpbnQgcmV0OwogCisJLyoKKwkgKiBSZXR1cm5zIE5VTEwgaWYgQ09ORklHX0lO
VEVSQ09OTkVDVCBpcyBkaXNhYmxlZC4KKwkgKiBNYXkgcmV0dXJuIEVSUl9QVFIoLUVQUk9CRV9E
RUZFUikuCisJICovCisJcGF0aCA9IG9mX2ljY19nZXQoZGV2LCBOVUxMKTsKKwlpZiAoSVNfRVJS
KHBhdGgpKQorCQlyZXR1cm4gUFRSX0VSUihwYXRoKTsKKwogCWN0eCA9IGRldm1fa3phbGxvYygm
cGRldi0+ZGV2LCBzaXplb2YoKmN0eCksIEdGUF9LRVJORUwpOwogCWlmICghY3R4KSB7CiAJCURS
TV9ERVZfRVJST1IoZGV2LCAiZmFpbGVkIHRvIGFsbG9jIG1peGVyIGNvbnRleHQuXG4iKTsKLQkJ
cmV0dXJuIC1FTk9NRU07CisJCXJldCA9IC1FTk9NRU07CisJCWdvdG8gZXJyOwogCX0KIAogCWRy
diA9IG9mX2RldmljZV9nZXRfbWF0Y2hfZGF0YShkZXYpOwpAQCAtMTIzMyw2ICsxMjgxLDcgQEAg
c3RhdGljIGludCBtaXhlcl9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCWN0
eC0+cGRldiA9IHBkZXY7CiAJY3R4LT5kZXYgPSBkZXY7CiAJY3R4LT5teHJfdmVyID0gZHJ2LT52
ZXJzaW9uOworCWN0eC0+c29jX3BhdGggPSBwYXRoOwogCiAJaWYgKGRydi0+aXNfdnBfZW5hYmxl
ZCkKIAkJX19zZXRfYml0KE1YUl9CSVRfVlBfRU5BQkxFRCwgJmN0eC0+ZmxhZ3MpOwpAQCAtMTI0
MiwxNyArMTI5MSwyOSBAQCBzdGF0aWMgaW50IG1peGVyX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9k
ZXZpY2UgKnBkZXYpCiAJcGxhdGZvcm1fc2V0X2RydmRhdGEocGRldiwgY3R4KTsKIAogCXJldCA9
IGNvbXBvbmVudF9hZGQoJnBkZXYtPmRldiwgJm1peGVyX2NvbXBvbmVudF9vcHMpOwotCWlmICgh
cmV0KQotCQlwbV9ydW50aW1lX2VuYWJsZShkZXYpOworCWlmIChyZXQgPCAwKQorCQlnb3RvIGVy
cjsKKworCXBtX3J1bnRpbWVfZW5hYmxlKGRldik7CisKKwlyZXR1cm4gMDsKKworZXJyOgorCWlj
Y19wdXQocGF0aCk7CiAKIAlyZXR1cm4gcmV0OwogfQogCiBzdGF0aWMgaW50IG1peGVyX3JlbW92
ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogewotCXBtX3J1bnRpbWVfZGlzYWJsZSgm
cGRldi0+ZGV2KTsKKwlzdHJ1Y3QgZGV2aWNlICpkZXYgPSAmcGRldi0+ZGV2OworCXN0cnVjdCBt
aXhlcl9jb250ZXh0ICpjdHggPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKIAotCWNvbXBvbmVudF9k
ZWwoJnBkZXYtPmRldiwgJm1peGVyX2NvbXBvbmVudF9vcHMpOworCXBtX3J1bnRpbWVfZGlzYWJs
ZShkZXYpOworCisJY29tcG9uZW50X2RlbChkZXYsICZtaXhlcl9jb21wb25lbnRfb3BzKTsKKwor
CWljY19wdXQoY3R4LT5zb2NfcGF0aCk7CiAKIAlyZXR1cm4gMDsKIH0KLS0gCjIuMTcuMQoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
