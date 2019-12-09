Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C1C116B7B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 11:51:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LdUK2vJVDMxfeO/0eO9ukh3GsBMOGkR6++M4a5pXtgA=; b=iQCrDv+WKeFu3s
	vBi57AyEfFLDvmj1quUtUoZtYlqB8uILm+NyWoHY55w1kzT/TYwCQiRH5LsePTaVElGz1w4xeCQiY
	sdEoqzsRhKm2VGdvfj6kaV9CWXU/NaArSOSp5QGVoCPVJ4kchZJVz39PMFcGAdaTZgeajpbXDjJ3N
	ezNvXdOr+m/jCFcjbkUpQ7fFscyeT6jA7nQGiFgdOawWnFl6dFPOTSYFV/YL8lQ5iS0e1bF801/bE
	P3zOupQaCP8jflFMEoQXqZgEWOpOkegCEkKFCeDg5UB5QwsA4MAZvKL7azGvEKfzIIB/vczGQ6yEK
	fleUM0fN4Hq7nJpCNeHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieGdo-00049O-Uv; Mon, 09 Dec 2019 10:51:48 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieGcd-0003FV-Oo
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 10:50:39 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20191209105033euoutp02a1f79af62ac763ce07ecd2d4b7216d0f~erlzS-2373098730987euoutp02Z
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  9 Dec 2019 10:50:33 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20191209105033euoutp02a1f79af62ac763ce07ecd2d4b7216d0f~erlzS-2373098730987euoutp02Z
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1575888633;
 bh=bQfaK3H9O2avQYC2R28z2VtVDLkeXfgJH5IcB1mxqe0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RYLJ8a3hTe/OOoTe9JbniNjFuPGeqCDInx4ulNCXQskG8JPUZhidChrlGvVvHItRH
 X6y/jgZe/IbCvZa7Buog2RzLUnI0hVijeDUBrTEcUojHmcp5s1IuT4Gz/JOeQHtshx
 VRu1DwU93/nf9Q+x5kv1Dmci3vWwV6EgGDsI9low=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191209105033eucas1p1dfa9ba65a240fe8b871e8e8727ddba22~erlzCvAJH0954309543eucas1p1k;
 Mon,  9 Dec 2019 10:50:33 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 2B.34.60698.8F62EED5; Mon,  9
 Dec 2019 10:50:33 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20191209105032eucas1p13fa6c46a1e80cdda68ab4bac3e008b8f~erlypQkhy0955109551eucas1p1f;
 Mon,  9 Dec 2019 10:50:32 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191209105032eusmtrp16fb547a39e6f6d1b5dd5f8f55890489b~erlyokVPQ2125621256eusmtrp1X;
 Mon,  9 Dec 2019 10:50:32 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-87-5dee26f8fddd
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id A1.D7.07950.8F62EED5; Mon,  9
 Dec 2019 10:50:32 +0000 (GMT)
Received: from AMDC3555.digital.local (unknown [106.120.51.67]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191209105031eusmtip185d18721653d060ac1dedd6a86189480~erlx1udGa2957929579eusmtip1n;
 Mon,  9 Dec 2019 10:50:31 +0000 (GMT)
From: =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@samsung.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org
Subject: [PATCH v3 2/4] devfreq: exynos-bus: Extract
 exynos_bus_profile_init_passive()
Date: Mon,  9 Dec 2019 11:49:00 +0100
Message-Id: <20191209104902.11904-3-a.swigon@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191209104902.11904-1-a.swigon@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0hTYRj229nZjquN41R8s1AbZCWklUVfGpERtiJIoigsqZkHFa/tqGV/
 Mk0xb3nB3CxNTJdpeZkXVEhjWt6SYYYZpossvOXEdJUSlvNo+e95n8v7fC98FCHtIe2p4PAo
 RhmuCJUJRPyG1wv6XQvORr/dxZ7YUJiIcI2qisTv58dInG3I5OOi7yoS3xudIrBeXy3EvfHf
 hLhseJbE2tEBEvc3PxTgufR2hFX6Fh5+3j4sxEO3ywRYlTMhOELLteV3BfLaklvyGmMjT55R
 V47kc1oHH9JXdCiACQ2OYZRuh6+IgipHpgWRcZtuLKVX8+NQl00KsqSA3gemcQ1KQSJKSpch
 yNclkNwwj2BCl8vjhjkEyWU6Yi2S+uLdauQJgvqcFt6/yLNFAzK7BLQXZOd+EpoFGzoRQZ/+
 A2EeCLqbB+NJ8aTZZU1fgM7WSZ4Z8+ltYDLOrXSI6YNQOvRWyPU5QkX1yxXekvaAWU2vkPNY
 QZf6C9+MiWVPQv2DlQKgJ4Qw83gYceFjUFs4RnLYGiY76laXboGenDQ+h1n42mQguXAcAq2m
 ffVST2jr6FsWqOWGnVDV7MbRXjDYkYXMNNASGJy24t4ggeyGPIKjxZCcJOWgDJrVEi4IEF8x
 sLpbDsaCAiITbc1fd0z+umPy/9cWIaIc2THRbFggw7qHM9ddWUUYGx0e6Ho1IkyLlr9Yz1KH
 qRG1/PbXIZpCso1iJ49pPympiGFjw3QIKEJmIy7JmvSTigMUsTcZZcRlZXQow+rQZoovsxO7
 F0/4SelARRQTwjCRjHJN5VGW9nEolcB/ks/Z1ZVGJgRYRNk692obkx45Nu2wkMSqCk+aND62
 p5ReRYuakdnjLg3y+wm5ToyoPz4lVVytvSTqlj0ddTrftn9pw9m9hEuM90W1RCT59SojpDNw
 5gSv0lv5+dpQlr86cXvrgTtHsdF3yeFNmvuPMz/ztKd9Kp0/To0PZMr4bJBijwuhZBV/AfBy
 b5VeAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrPIsWRmVeSWpSXmKPExsVy+t/xu7o/1N7FGvQsVLS4P6+V0WLjjPWs
 Fte/PGe1mHR/AovFgk8zWC36H79mtjh/fgO7xdmmN+wWK+5+ZLXY9Pgaq8XlXXPYLD73HmG0
 mHF+H5PF2iN32S1uN65gs5gx+SWbg4DHplWdbB6bl9R7bHy3g8mjb8sqRo/Pm+QCWKP0bIry
 S0tSFTLyi0tslaINLYz0DC0t9IxMLPUMjc1jrYxMlfTtbFJSczLLUov07RL0Mtbde8tW0CBZ
 8a93A0sD40mRLkZODgkBE4nuvVcYQWwhgaWMEg3zCyHiEhIf199ghbCFJf5c62LrYuQCqvnE
 KHF00nwmkASbgKPEpKkP2EESIgKdjBLrl01nAnGYBW4wSTRtecfSxcjBISwQJnF3nw9IA4uA
 qsTXd5+ZQWxeAUuJpbcvsUNskJdYveEAWJxTwEri47Kz7BAXWUrMXbiaBaJeUOLkzCdgI5kF
 1CXWzxMCCTMDtTZvnc08gVFwFpKqWQhVs5BULWBkXsUoklpanJueW2ykV5yYW1yal66XnJ+7
 iREYmduO/dyyg7HrXfAhRgEORiUeXgWrt7FCrIllxZW5hxglOJiVRHiXTHwVK8SbklhZlVqU
 H19UmpNafIjRFOi1icxSosn5wKSRVxJvaGpobmFpaG5sbmxmoSTO2yFwMEZIID2xJDU7NbUg
 tQimj4mDU6qB8eCxv2fCVuqu5T5WK6gglbzh5NHihW5l/8w5jn1cYhs88+r2DJmSC9q/Pnpm
 nT+Yeni1Y7XoDkOZliSBEJnGs6f3zY64nVDr9FK6oXmdhEpt4XTbF0xP67affxY1+5gI19Yj
 PeoqnT+bPuhpzd22NLIyqCR8uUigyUZl9T6+qV7iR2YK2zy+p8RSnJFoqMVcVJwIADIpCafi
 AgAA
X-CMS-MailID: 20191209105032eucas1p13fa6c46a1e80cdda68ab4bac3e008b8f
X-Msg-Generator: CA
X-RootMTR: 20191209105032eucas1p13fa6c46a1e80cdda68ab4bac3e008b8f
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191209105032eucas1p13fa6c46a1e80cdda68ab4bac3e008b8f
References: <20191209104902.11904-1-a.swigon@samsung.com>
 <CGME20191209105032eucas1p13fa6c46a1e80cdda68ab4bac3e008b8f@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_025035_957068_082E1548 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: b.zolnierkie@samsung.com, k.konieczny@samsung.com, sw0312.kim@samsung.com,
 =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@samsung.com>, krzk@kernel.org,
 inki.dae@samsung.com, cw00.choi@samsung.com, kyungmin.park@samsung.com,
 kgene@kernel.org, myungjoo.ham@samsung.com, leonard.crestez@nxp.com,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBwYXRjaCBhZGRzIGEgbmV3IHN0YXRpYyBmdW5jdGlvbiwgZXh5bm9zX2J1c19wcm9maWxl
X2luaXRfcGFzc2l2ZSgpLApleHRyYWN0ZWQgZnJvbSBleHlub3NfYnVzX3Byb2JlKCkuCgpTaWdu
ZWQtb2ZmLWJ5OiBBcnR1ciDFmndpZ2/FhCA8YS5zd2lnb25Ac2Ftc3VuZy5jb20+Ci0tLQogZHJp
dmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYyB8IDcwICsrKysrKysrKysrKysrKysrKysrKy0tLS0t
LS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQyIGluc2VydGlvbnMoKyksIDI4IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMgYi9kcml2ZXJz
L2RldmZyZXEvZXh5bm9zLWJ1cy5jCmluZGV4IGI4Y2E2YjlmNGI4Mi4uMTlkOWY5ZjhjZWQyIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jCisrKyBiL2RyaXZlcnMvZGV2
ZnJlcS9leHlub3MtYnVzLmMKQEAgLTM0NSwxMyArMzQ1LDUxIEBAIHN0YXRpYyBpbnQgZXh5bm9z
X2J1c19wcm9maWxlX2luaXQoc3RydWN0IGV4eW5vc19idXMgKmJ1cywKIAlyZXR1cm4gcmV0Owog
fQogCitzdGF0aWMgaW50IGV4eW5vc19idXNfcHJvZmlsZV9pbml0X3Bhc3NpdmUoc3RydWN0IGV4
eW5vc19idXMgKmJ1cywKKwkJCQkJICAgc3RydWN0IGRldmZyZXFfZGV2X3Byb2ZpbGUgKnByb2Zp
bGUpCit7CisJc3RydWN0IGRldmljZSAqZGV2ID0gYnVzLT5kZXY7CisJc3RydWN0IGRldmZyZXFf
cGFzc2l2ZV9kYXRhICpwYXNzaXZlX2RhdGE7CisJc3RydWN0IGRldmZyZXEgKnBhcmVudF9kZXZm
cmVxOworCWludCByZXQgPSAwOworCisJLyogSW5pdGlhbGl6ZSB0aGUgc3RydWN0IHByb2ZpbGUg
YW5kIGdvdmVybm9yIGRhdGEgZm9yIHBhc3NpdmUgZGV2aWNlICovCisJcHJvZmlsZS0+dGFyZ2V0
ID0gZXh5bm9zX2J1c190YXJnZXQ7CisJcHJvZmlsZS0+ZXhpdCA9IGV4eW5vc19idXNfcGFzc2l2
ZV9leGl0OworCisJLyogR2V0IHRoZSBpbnN0YW5jZSBvZiBwYXJlbnQgZGV2ZnJlcSBkZXZpY2Ug
Ki8KKwlwYXJlbnRfZGV2ZnJlcSA9IGRldmZyZXFfZ2V0X2RldmZyZXFfYnlfcGhhbmRsZShkZXYs
IDApOworCWlmIChJU19FUlIocGFyZW50X2RldmZyZXEpKSB7CisJCXJldCA9IC1FUFJPQkVfREVG
RVI7CisJCWdvdG8gZXJyOworCX0KKworCXBhc3NpdmVfZGF0YSA9IGRldm1fa3phbGxvYyhkZXYs
IHNpemVvZigqcGFzc2l2ZV9kYXRhKSwgR0ZQX0tFUk5FTCk7CisJaWYgKCFwYXNzaXZlX2RhdGEp
IHsKKwkJcmV0ID0gLUVOT01FTTsKKwkJZ290byBlcnI7CisJfQorCXBhc3NpdmVfZGF0YS0+cGFy
ZW50ID0gcGFyZW50X2RldmZyZXE7CisKKwkvKiBBZGQgZGV2ZnJlcSBkZXZpY2UgZm9yIGV4eW5v
cyBidXMgd2l0aCBwYXNzaXZlIGdvdmVybm9yICovCisJYnVzLT5kZXZmcmVxID0gZGV2bV9kZXZm
cmVxX2FkZF9kZXZpY2UoZGV2LCBwcm9maWxlLCBERVZGUkVRX0dPVl9QQVNTSVZFLAorCQkJCQkJ
cGFzc2l2ZV9kYXRhKTsKKwlpZiAoSVNfRVJSKGJ1cy0+ZGV2ZnJlcSkpIHsKKwkJZGV2X2Vycihk
ZXYsCisJCQkiZmFpbGVkIHRvIGFkZCBkZXZmcmVxIGRldiB3aXRoIHBhc3NpdmUgZ292ZXJub3Jc
biIpOworCQlyZXQgPSBQVFJfRVJSKGJ1cy0+ZGV2ZnJlcSk7CisJCWdvdG8gZXJyOworCX0KKwor
ZXJyOgorCXJldHVybiByZXQ7Cit9CisKIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wcm9iZShzdHJ1
Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogewogCXN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2
LT5kZXY7CiAJc3RydWN0IGRldmljZV9ub2RlICpucCA9IGRldi0+b2Zfbm9kZSwgKm5vZGU7CiAJ
c3RydWN0IGRldmZyZXFfZGV2X3Byb2ZpbGUgKnByb2ZpbGU7Ci0Jc3RydWN0IGRldmZyZXFfcGFz
c2l2ZV9kYXRhICpwYXNzaXZlX2RhdGE7Ci0Jc3RydWN0IGRldmZyZXEgKnBhcmVudF9kZXZmcmVx
OwogCXN0cnVjdCBleHlub3NfYnVzICpidXM7CiAJaW50IHJldCwgbWF4X3N0YXRlOwogCXVuc2ln
bmVkIGxvbmcgbWluX2ZyZXEsIG1heF9mcmVxOwpAQCAtMzk3LDMzICs0MzUsOSBAQCBzdGF0aWMg
aW50IGV4eW5vc19idXNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAogCWdv
dG8gb3V0OwogcGFzc2l2ZToKLQkvKiBJbml0aWFsaXplIHRoZSBzdHJ1Y3QgcHJvZmlsZSBhbmQg
Z292ZXJub3IgZGF0YSBmb3IgcGFzc2l2ZSBkZXZpY2UgKi8KLQlwcm9maWxlLT50YXJnZXQgPSBl
eHlub3NfYnVzX3RhcmdldDsKLQlwcm9maWxlLT5leGl0ID0gZXh5bm9zX2J1c19wYXNzaXZlX2V4
aXQ7Ci0KLQkvKiBHZXQgdGhlIGluc3RhbmNlIG9mIHBhcmVudCBkZXZmcmVxIGRldmljZSAqLwot
CXBhcmVudF9kZXZmcmVxID0gZGV2ZnJlcV9nZXRfZGV2ZnJlcV9ieV9waGFuZGxlKGRldiwgMCk7
Ci0JaWYgKElTX0VSUihwYXJlbnRfZGV2ZnJlcSkpIHsKLQkJcmV0ID0gLUVQUk9CRV9ERUZFUjsK
KwlyZXQgPSBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdF9wYXNzaXZlKGJ1cywgcHJvZmlsZSk7CisJ
aWYgKHJldCA8IDApCiAJCWdvdG8gZXJyOwotCX0KLQotCXBhc3NpdmVfZGF0YSA9IGRldm1fa3ph
bGxvYyhkZXYsIHNpemVvZigqcGFzc2l2ZV9kYXRhKSwgR0ZQX0tFUk5FTCk7Ci0JaWYgKCFwYXNz
aXZlX2RhdGEpIHsKLQkJcmV0ID0gLUVOT01FTTsKLQkJZ290byBlcnI7Ci0JfQotCXBhc3NpdmVf
ZGF0YS0+cGFyZW50ID0gcGFyZW50X2RldmZyZXE7Ci0KLQkvKiBBZGQgZGV2ZnJlcSBkZXZpY2Ug
Zm9yIGV4eW5vcyBidXMgd2l0aCBwYXNzaXZlIGdvdmVybm9yICovCi0JYnVzLT5kZXZmcmVxID0g
ZGV2bV9kZXZmcmVxX2FkZF9kZXZpY2UoZGV2LCBwcm9maWxlLCBERVZGUkVRX0dPVl9QQVNTSVZF
LAotCQkJCQkJcGFzc2l2ZV9kYXRhKTsKLQlpZiAoSVNfRVJSKGJ1cy0+ZGV2ZnJlcSkpIHsKLQkJ
ZGV2X2VycihkZXYsCi0JCQkiZmFpbGVkIHRvIGFkZCBkZXZmcmVxIGRldiB3aXRoIHBhc3NpdmUg
Z292ZXJub3JcbiIpOwotCQlyZXQgPSBQVFJfRVJSKGJ1cy0+ZGV2ZnJlcSk7Ci0JCWdvdG8gZXJy
OwotCX0KIAogb3V0OgogCW1heF9zdGF0ZSA9IGJ1cy0+ZGV2ZnJlcS0+cHJvZmlsZS0+bWF4X3N0
YXRlOwotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
