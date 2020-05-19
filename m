Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 124C71DA387
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 23:27:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TYFYdtAj+8c+rFjWKP7VbIj+MKH/INmJiKhrgDhLJl0=; b=V4bDKZxHk7s0u4
	as+71YGZSib6y4Zlv3Q29AA6Tdybw9Gbd29xHSInPVj/a95hCi6wpUcANP2EKp+z49luJJIl+rdzD
	Rre6WGKkfcxkfCDLbJG0ZiRX/UoFvmVipdjSz+mnBvPPZTDuhB3YKQEjHUZL/FAATpKKAqsOsH4o6
	iK87/e0QJhjJPmRQtsvn/UoS0KKmYW1wQFNdiAPfV18LKqRif8h89IIt9xxBCvLz7vcA23b2JLv+G
	QSzGE9jh4cmm+OX6rQNplC0JDXlxZIM5zcZVqTJ+MF8mAVk5WgS+dz4ZJBWYKT3RSt76DZ4JdK3aC
	iXpG/5MlmHMRSeG0RCkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb9lY-0005GR-2k; Tue, 19 May 2020 21:27:12 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb9kn-0004on-IQ
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 21:26:28 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200519212622euoutp0215089ff6712e169f4e3a1f4828e872e5~QixMJGOzp2169021690euoutp02K
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 21:26:22 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200519212622euoutp0215089ff6712e169f4e3a1f4828e872e5~QixMJGOzp2169021690euoutp02K
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589923582;
 bh=N/YA46ODGLlxDL+bldxjnjkd6gAUd4l+W7uUZ4+8mjA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=N7IZ1+XSIEc0+62ryPpHUXzd0heipsyVQ0dkcfzgbscuseoNoi/1W6A5OMxygUvoz
 gGVz/VRdDGT5B3uwP1IaPuZLr+xUrMQ5nC1d6xviRxNHBnYuamfvmLEH5irA1yWsCe
 FarzRJ93gzS8dHrHTZikamPUbOyPM+BcVAj/Fui4=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200519212621eucas1p1b01882c9c94ab188151dbd94fe920c74~QixLYgw792659226592eucas1p1d;
 Tue, 19 May 2020 21:26:21 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id EE.EC.60698.DFE44CE5; Tue, 19
 May 2020 22:26:21 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200519212621eucas1p13279db41d930b69e115972463c994a37~QixK7ptMf2557025570eucas1p1X;
 Tue, 19 May 2020 21:26:21 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200519212620eusmtrp274dffa962a5015db7ae6426090390416~QixK4Em2R1118011180eusmtrp2Z;
 Tue, 19 May 2020 21:26:20 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-23-5ec44efdac5c
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id D4.A7.08375.CFE44CE5; Tue, 19
 May 2020 22:26:20 +0100 (BST)
Received: from localhost (unknown [106.120.51.46]) by eusmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20200519212620eusmtip12841b5e28e124c49be41bb02b995206c~QixKt8VyS2107921079eusmtip19;
 Tue, 19 May 2020 21:26:20 +0000 (GMT)
From: =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>
To: Matt Mackall <mpm@selenic.com>, Herbert Xu
 <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Florian Fainelli
 <f.fainelli@gmail.com>, Markus Elfring <elfring@users.sourceforge.net>,
 Matthias Brugger <mbrugger@suse.com>, Stefan Wahren <wahrenst@gmx.net>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, Stephan
 Mueller <smueller@chronox.de>
Subject: [PATCH v2 2/2] hwrng: exynos - Set the quality value
Date: Tue, 19 May 2020 23:25:52 +0200
Message-Id: <20200519212552.11671-3-l.stelmach@samsung.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200519212552.11671-1-l.stelmach@samsung.com>
MIME-Version: 1.0
Organization: Samsung R&D Institute Poland
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa1CMYRTHPfte9q2x9dpKx2pklj5kKGHMY8RgzHi/kNH4YoiVVxptmd2S
 jFEjSmFrQrQqkWZXd1uWLsK2lTS1RrmNS9glMpax20i1Lu27hm+//3n+55z/mXkYQnqcljHx
 icm8KlGRIKe9SWPnD8sC1wZzzMI+3QzsKugU42vn6yhcc6qDxJYcHYHH7GYxziyvo/GJ4SCc
 Z/1EYIulXoyfmfQIG6yPKTz46ocI9zcX0/i8pU2Ey07bKFxm1CD8rqiBxvYqG8Jne2pI3HUv
 h1jlz42PFSBOO9hLc98GBkRck/almCs33KY5450QzlCZQ3O3S6rFXMOVdE7TWIk4zcd6xNU1
 PiK5I/ezKc5hmLXRZ4t35C4+IX4/rwpfucN7T8mDAWLfL/EBZ8uoKAM56VzkxQC7BN5WlVK5
 yJuRsnoE3ZpCQhBOBPWFWrEgHAhKj36h/rYM3jzjcekQtPaeIAUxhKDq7nu3i2ZXQ17FPTf7
 s7UUfK/gJ5lgU+HYG5u77seuAFdRv5tJNgROPhhys4RdDp+uPiaFbcGQrbvhDuvFRoJ5dIQW
 PNOgu8jm9viy86D6yBNSmB8MmdcvEELvAAOajhSB18JEZqHnAj8Y7moUCxwEv5ouinIR84fT
 4XTB0slbgD2JwFg86smwHF70jdGTHoINhbrmcKG8GqqttYTQ6gNPP08TEvhAgfGcpyyB41lS
 wT0XavNaPQNlcGpYj/KRXPvfLdr/8mv/7SpDRCUK5FPUyjhevTiRTw1TK5TqlMS4sNgkpQH9
 +Z89P7tGbqK2iZ0mxDJIPlXytKk9Rkop9qvTlCYEDCH3l+R/MMVIJbsUaQd5VdJ2VUoCrzah
 mQwpD5Qsvvxxm5SNUyTze3l+H6/6+ypivGQZyFcxkTzS/21+uwtFXJ+yIKK4ZaXjudGqdK0/
 nNWUeS3gYZRTP+VutK53c2xDaPx48O7ZO4deZqTroxdpcX/1nPYRxxr7rSjfcFnw9BD7a61t
 nSbGYAn/ujX165qSt/61YfWbQmWX4jrvzDf/dHT4dR+KX7Leao8NWBZlXlVJnUNOOaneo4iY
 R6jUit+0kkicmwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprFKsWRmVeSWpSXmKPExsVy+t/xu7p//I7EGfx/Ymnxd9IxdouNM9az
 WqztPcpicb5zObPFr3dH2C2aF69ns+h+JWPR//g1s8X58xvYLW4eWsFosenxNVaL+/d+Mllc
 3jWHzWLG+X1MFgsmP2G1WLCtj9Hi6czNbBbvVj9htJh6ei2LxfETncwOIh6/f01i9Jh1/yyb
 x6crV5g8ds66y+6xeNN+No9tB1Q9Nq3qZPPYP3cNu8fmJfUefVtWMXr0vdzA6LF+y1UWj6ZT
 7awenzfJBfBF6dkU5ZeWpCpk5BeX2CpFG1oY6RlaWugZmVjqGRqbx1oZmSrp29mkpOZklqUW
 6dsl6GXMvXCFueA/e8WX3T+YGhi/sHUxcnJICJhI3N8xhbmLkYtDSGApo8TNHw8Yuxg5gBJS
 EivnpkPUCEv8udbFBlHzlFHi6IqfLCAJNgFHif6lJ1hBEiICe1gldt/oZAJJMAuUS7Q+fMIK
 YgsL2Er8nXkZzGYRUJXoufAczOYVsJZ4vfIaC8QGeYn25dvBLuIUsJE48uMrmC0kkCsx8c9Z
 qHpBiZMzn7CAHMcsoC6xfp4QSJhfQEtiTdN1Foi18hLNW2czT2AUmoWkYxZCxywkVQsYmVcx
 iqSWFuem5xYb6hUn5haX5qXrJefnbmIEpottx35u3sF4aWPwIUYBDkYlHl6DPYfjhFgTy4or
 cw8xSnAwK4nwTnhxKE6INyWxsiq1KD++qDQntfgQoynQmxOZpUST84GpLK8k3tDU0NzC0tDc
 2NzYzEJJnLdD4GCMkEB6YklqdmpqQWoRTB8TB6dUA6PH9Psbp7Ko73na4mv383qVXmnWwksP
 HlZN3RHTV8/3NpCvM+/dra8t2x/k38pT2/Oi+7D1m7q5xid0EzbtPnPVVfbBAU3WLp+2bk1G
 M7VXq3/5XVqm/8Qo8IJiTEzG/E+O9f1hPw59/3C977TGg+aITov0D0GyO7RPeDWK+q1+qlWY
 tykzwkKJpTgj0VCLuag4EQC9oUcTLQMAAA==
X-CMS-MailID: 20200519212621eucas1p13279db41d930b69e115972463c994a37
X-Msg-Generator: CA
X-RootMTR: 20200519212621eucas1p13279db41d930b69e115972463c994a37
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200519212621eucas1p13279db41d930b69e115972463c994a37
References: <20200514190734.32746-1-l.stelmach@samsung.com>
 <20200519212552.11671-1-l.stelmach@samsung.com>
 <CGME20200519212621eucas1p13279db41d930b69e115972463c994a37@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_142625_755763_32754EB6 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIHZhbHVlIHdhcyBlc3RpbWFkZWQgd2l0aCBlYV9paWRbMV0gdXNpbmcgb24gMTA0ODU3NjAg
Ynl0ZXMgcmVhZCBmcm9tCnRoZSBSTkcgdmlhIC9kZXYvaHdybmcuIFRoZSBtaW4tZW50cm9weSB2
YWx1ZSBjYWxjdWxhdGVkIHVzaW5nIHRoZSBtb3N0CmNvbW1vbiB2YWx1ZSBlc3RpbWF0ZSAoTklT
VCBTUCA4MDAtOTBQWzJdLCBzZWN0aW9uIDYuMy4xKSB3YXMgNy40ODk2MjcuCgpbMV0gaHR0cHM6
Ly9naXRodWIuY29tL3VzbmlzdGdvdi9TUDgwMC05MEJfRW50cm9weUFzc2Vzc21lbnQKWzJdIGh0
dHBzOi8vY3NyYy5uaXN0Lmdvdi9wdWJsaWNhdGlvbnMvZGV0YWlsL3NwLzgwMC05MGIvZmluYWwK
ClNpZ25lZC1vZmYtYnk6IMWBdWthc3ogU3RlbG1hY2ggPGwuc3RlbG1hY2hAc2Ftc3VuZy5jb20+
Ci0tLQogZHJpdmVycy9jaGFyL2h3X3JhbmRvbS9leHlub3MtdHJuZy5jIHwgMSArCiAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2NoYXIvaHdfcmFu
ZG9tL2V4eW5vcy10cm5nLmMgYi9kcml2ZXJzL2NoYXIvaHdfcmFuZG9tL2V4eW5vcy10cm5nLmMK
aW5kZXggOGUxZmUzZjhkZDJkLi4yYTU4OTYxMjIwMDEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvY2hh
ci9od19yYW5kb20vZXh5bm9zLXRybmcuYworKysgYi9kcml2ZXJzL2NoYXIvaHdfcmFuZG9tL2V4
eW5vcy10cm5nLmMKQEAgLTEyMyw2ICsxMjMsNyBAQCBzdGF0aWMgaW50IGV4eW5vc190cm5nX3By
b2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJdHJuZy0+cm5nLmluaXQgPSBleHlu
b3NfdHJuZ19pbml0OwogCXRybmctPnJuZy5yZWFkID0gZXh5bm9zX3RybmdfZG9fcmVhZDsKIAl0
cm5nLT5ybmcucHJpdiA9ICh1bnNpZ25lZCBsb25nKSB0cm5nOworCXRybmctPnJuZy5xdWFsaXR5
ID0gOTAwOwogCiAJcGxhdGZvcm1fc2V0X2RydmRhdGEocGRldiwgdHJuZyk7CiAJdHJuZy0+ZGV2
ID0gJnBkZXYtPmRldjsKLS0gCjIuMjYuMgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
