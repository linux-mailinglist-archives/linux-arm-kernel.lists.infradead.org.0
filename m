Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE298116B79
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 11:51:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/8vYse2+jkdKQ5HhnFHI7bGlWvfccRrsqgEG8sKfT/g=; b=ms2ZqPKsAY/ptB
	sAQnMm2+PkLWiZ5e8oiCOzH1/NhyyUJHABVlI5PqMXtQl6xXufyWWyQJg23Ib4xL8yTfiXavUbGV+
	I8/ZU1ziRNvTTtuitSjFIoNit18hIAj0c6oN9dO2o6WHRbVpITs87PCPVCi5T7in8jDudtMb9aRaf
	S5W9cugAVCbGLZCy6zdI9V/cAu0f3RbuGS9PV1RtMT/W4zjoSxEOBMHewozcfCyTS17UmYtn2BHF/
	VsRvj8QzUaOpdKN/sVXMhtrxqcBx/cuX+soOK/zxQ+RurElPt9Aw1qutim4PjjFFGvtzpytW5lPMr
	cA+LwYylpxGlH4DAShvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieGdN-0003gt-Fa; Mon, 09 Dec 2019 10:51:21 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieGcd-0003Fa-Oo
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 10:50:38 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20191209105034euoutp02cb2ca7bffcdb8e952459f1d972b876c4~erl0Q7zYb3015230152euoutp02h
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  9 Dec 2019 10:50:34 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20191209105034euoutp02cb2ca7bffcdb8e952459f1d972b876c4~erl0Q7zYb3015230152euoutp02h
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1575888634;
 bh=XF8b5+RnbnhvUODeVp5HfzGOMbNt2Uj0dVL4oFNxQD8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BWuHDXSkim8+164MbWhbz+opMZdTxOfFu62PmTn06xVW3RQ9Km//65hFf9Co1Navd
 dpvJWW2E0LfBD/pMTChFTmyTpzfm6OJBaYEoHpgRs/uuuWNp9I4tMbfHdNnXhSaBpg
 Usx5qE4Ic6fd3gOibvLho/KDC1WHv/SvI8PcSdTQ=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191209105034eucas1p182d3b8056147576e49af062c3919dc42~erlz9utCS1563615636eucas1p1G;
 Mon,  9 Dec 2019 10:50:34 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 74.2E.60679.9F62EED5; Mon,  9
 Dec 2019 10:50:34 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191209105033eucas1p21ee8064e1d6917b403c06ee59a97421d~erlzZV7pJ1406714067eucas1p2_;
 Mon,  9 Dec 2019 10:50:33 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191209105033eusmtrp1b10bcfaaad3446502feccb2d4131fc53~erlzYiNOv2135321353eusmtrp1f;
 Mon,  9 Dec 2019 10:50:33 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-53-5dee26f9056f
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 62.D6.08375.9F62EED5; Mon,  9
 Dec 2019 10:50:33 +0000 (GMT)
Received: from AMDC3555.digital.local (unknown [106.120.51.67]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191209105032eusmtip1b54a778cfa047ee0e5a7c514ea187ef6~erlyoGs7e3003930039eusmtip1i;
 Mon,  9 Dec 2019 10:50:32 +0000 (GMT)
From: =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@samsung.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org
Subject: [PATCH v3 3/4] devfreq: exynos-bus: Change goto-based logic to
 if-else logic
Date: Mon,  9 Dec 2019 11:49:01 +0100
Message-Id: <20191209104902.11904-4-a.swigon@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191209104902.11904-1-a.swigon@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02SfUhTURjGO7u7291odp2Wr1pWCwXFND+om0kkFIwoqb8KwWrpTSWntutH
 VpAaikqZKaWuUqupQ8mPZX6SqalDxebMtLIxSSW/ZU2INCq3a+V/zznv8/zO+8AhMHEP7kRE
 xcTTihhZtIQn5Db0/Hi7d8VtMXRfSQBlLE5HVF1hDU6NLn/FqTxjLpcq/VaIU3cn5jBKp6vl
 UwNp83xKbTDhlGZiBKfetTziUeY7XYgq1LVxqOddBj41lqrmUYX5M7wjpFRTmcWTvlDdlNYt
 NnGkOfWVSGrWuJzCQ4SB4XR0VCKt8D58QRg5MHsjbkZwdXq1gZOCjPxsJCCA9AdDzSCWjYSE
 mFQjaMg1rx+WEbSXjeIWl5g0Ixgu8clGhDXR/TmW9VQgyJyv5/4LLGXMWbE8Mgjy7o/zLQN7
 Mh2BXvfRisXIPg5MZ6RZsXbkGSj7YuJZsFzSFZZWkOVaRB4ElekBh91vJ1TVtmMWLSADwFQ+
 wGc9ttBbNMm1aGzNc+vlQysfyBk+dCirERs+Cip9Ac5qO5jV1q+X3g79+be5rGZgqtmIs+EU
 BJryLowdHII3Wj1uWQ4j3aGmxZutHwStJndW2sCHBVt2BRvIayjA2GsRZGaIWSmBliIbFgeQ
 VjWyjpaC9tUkykW7lRu6KDd0Uf5/tRRhlciBTmDkETTjG0MneTEyOZMQE+EVFivXoLXf1f9L
 u9yEWn5e7EQkgSSbRbsCFkLFuCyRSZZ3IiAwib1IdW82VCwKlyVfoxWx5xUJ0TTTiZwJrsRB
 5Pd0JlRMRsji6cs0HUcr/k45hMApBQmj1cE5j+2Lf59z7H/dO6Y8bq9TrVZecTVuC9qqV2e4
 7ndxbvQ/eyLyUvhwUlvW0MCz4KW4vj3dvXKzs54WnIwoIn2QIKzvxNSQvqd78vv1uE0Hqp8Y
 Aj+lat+HtPb6jy6nmXSezX7ZVWZPF8eK4o7GgNO+41hqzTG/3C1uHoM7JFwmUubjgSkY2R/1
 FE8vWQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrHIsWRmVeSWpSXmKPExsVy+t/xu7o/1d7FGiz9J25xf14ro8XGGetZ
 La5/ec5qMen+BBaLBZ9msFr0P37NbHH+/AZ2i7NNb9gtVtz9yGqx6fE1VovLu+awWXzuPcJo
 MeP8PiaLtUfuslvcblzBZjFj8ks2BwGPTas62Tw2L6n32PhuB5NH35ZVjB6fN8kFsEbp2RTl
 l5akKmTkF5fYKkUbWhjpGVpa6BmZWOoZGpvHWhmZKunb2aSk5mSWpRbp2yXoZZx9VVPwkrPi
 xe9tTA2M99m7GDk4JARMJI7eye9i5OIQEljKKPFv5SPmLkZOoLiExMf1N1ghbGGJP9e62CCK
 PjFKTJryCqyITcBRYtLUB+wgCRGBTkaJ9cumM4E4zAI3mCSatrxjAakSFgiV6GleyQayjkVA
 VeL9L0aQMK+ApcSSj9OYIDbIS6zecABsKKeAlcTHZWfZQWwhoJq5C1ezQNQLSpyc+YQFZAyz
 gLrE+nlCIGFmoNbmrbOZJzAKzkJSNQuhahaSqgWMzKsYRVJLi3PTc4sN9YoTc4tL89L1kvNz
 NzEC43LbsZ+bdzBe2hh8iFGAg1GJh7fC5m2sEGtiWXFl7iFGCQ5mJRHeJRNfxQrxpiRWVqUW
 5ccXleakFh9iNAX6bCKzlGhyPjBl5JXEG5oamltYGpobmxubWSiJ83YIHIwREkhPLEnNTk0t
 SC2C6WPi4JRqYBQ+XHVDQtbJ1/GQRlGntNbH7/X7pH/Uh2qun3XtonACm0v9kZRZhU4Hp5ZU
 cTmKqVVnfzA7wfylwJddsGja26fl1Qm7N0pdub3NajNbNFPBLUH5I/oFk+WWy+od8NjHLzJf
 ZaLS7H2l+strVNdzBC5W/ZE15WS3zjqdfYfDVKqiDtqcvdaoosRSnJFoqMVcVJwIAExjXRTh
 AgAA
X-CMS-MailID: 20191209105033eucas1p21ee8064e1d6917b403c06ee59a97421d
X-Msg-Generator: CA
X-RootMTR: 20191209105033eucas1p21ee8064e1d6917b403c06ee59a97421d
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191209105033eucas1p21ee8064e1d6917b403c06ee59a97421d
References: <20191209104902.11904-1-a.swigon@samsung.com>
 <CGME20191209105033eucas1p21ee8064e1d6917b403c06ee59a97421d@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_025035_949750_2E54C51B 
X-CRM114-Status: GOOD (  13.63  )
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

VGhpcyBwYXRjaCBpbXByb3ZlcyBjb2RlIHJlYWRhYmlsaXR5IGJ5IGNoYW5naW5nIHRoZSBmb2xs
b3dpbmcgY29uc3RydWN0OgoKPiAgICBpZiAoY29uZCkKPiAgICAgICAgZ290byBwYXNzaXZlOwo+
ICAgIGZvbygpOwo+ICAgIGdvdG8gb3V0Owo+IHBhc3NpdmU6Cj4gICAgYmFyKCk7Cj4gb3V0OgoK
aW50byB0aGlzOgoKPiAgICBpZiAoY29uZCkKPiAgICAgICAgYmFyKCk7Cj4gICAgZWxzZQo+ICAg
ICAgICBmb28oKTsKClNpZ25lZC1vZmYtYnk6IEFydHVyIMWad2lnb8WEIDxhLnN3aWdvbkBzYW1z
dW5nLmNvbT4KLS0tCiBkcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jIHwgMTIgKysrLS0tLS0t
LS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMgYi9kcml2ZXJzL2RldmZyZXEv
ZXh5bm9zLWJ1cy5jCmluZGV4IDE5ZDlmOWY4Y2VkMi4uMGI1NTdkZjYzNjY2IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jCisrKyBiL2RyaXZlcnMvZGV2ZnJlcS9leHlu
b3MtYnVzLmMKQEAgLTQyNywxOSArNDI3LDEzIEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wcm9i
ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCQlnb3RvIGVycl9yZWc7CiAKIAlpZiAo
cGFzc2l2ZSkKLQkJZ290byBwYXNzaXZlOworCQlyZXQgPSBleHlub3NfYnVzX3Byb2ZpbGVfaW5p
dF9wYXNzaXZlKGJ1cywgcHJvZmlsZSk7CisJZWxzZQorCQlyZXQgPSBleHlub3NfYnVzX3Byb2Zp
bGVfaW5pdChidXMsIHByb2ZpbGUpOwogCi0JcmV0ID0gZXh5bm9zX2J1c19wcm9maWxlX2luaXQo
YnVzLCBwcm9maWxlKTsKIAlpZiAocmV0IDwgMCkKIAkJZ290byBlcnI7CiAKLQlnb3RvIG91dDsK
LXBhc3NpdmU6Ci0JcmV0ID0gZXh5bm9zX2J1c19wcm9maWxlX2luaXRfcGFzc2l2ZShidXMsIHBy
b2ZpbGUpOwotCWlmIChyZXQgPCAwKQotCQlnb3RvIGVycjsKLQotb3V0OgogCW1heF9zdGF0ZSA9
IGJ1cy0+ZGV2ZnJlcS0+cHJvZmlsZS0+bWF4X3N0YXRlOwogCW1pbl9mcmVxID0gKGJ1cy0+ZGV2
ZnJlcS0+cHJvZmlsZS0+ZnJlcV90YWJsZVswXSAvIDEwMDApOwogCW1heF9mcmVxID0gKGJ1cy0+
ZGV2ZnJlcS0+cHJvZmlsZS0+ZnJlcV90YWJsZVttYXhfc3RhdGUgLSAxXSAvIDEwMDApOwotLSAK
Mi4xNy4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
