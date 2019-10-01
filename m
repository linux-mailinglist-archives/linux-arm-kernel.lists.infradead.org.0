Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B921C34DB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 14:55:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=b7XP8bLUYn+Eq+0QRW2cifUlRm5TREnW407IcExznRM=; b=Ol
	S9vukV5ZOdut3nXYEpYgWyhmF2blc9rQit3R3jsAxP/4hkgvlKjt9zjSuyzs3H6cJc/0sDtGBYDHo
	UrZeVIuWzhHO8mA4+PERkLTxTi6MZL8OLuXUQ2WLC047ShZE9svWR38fo0syzVgaEKhau6g16XD/7
	jSlK05QEEzBeQg+S51YVxJ8I9x2EvW/w+hWpXjo2MkgYObwr0eMjQhMyaEkkN1+i+cLcouJ/i0t6p
	+hXIj7aQmeont408y6AwRYeD8DkGuclzp18QrWIqeGg0BjRqUpvuWpbA9hUZTllzS79N62qK5vtb1
	T/dt6wV64PNOgnoxXzHjmyJTj2ipahFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFHgB-0006GM-Uz; Tue, 01 Oct 2019 12:55:00 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFHfy-0006F2-Ra
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 12:54:48 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20191001125445euoutp01190395d8bc4e9fb48eb3bce582b31d53~Jhxinmwm62453624536euoutp01J
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  1 Oct 2019 12:54:45 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20191001125445euoutp01190395d8bc4e9fb48eb3bce582b31d53~Jhxinmwm62453624536euoutp01J
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1569934485;
 bh=6fXN0I8y0ZNzn54kQADv6X+qpXd/5P7SQSR8WSIWw/8=;
 h=From:To:Cc:Subject:Date:References:From;
 b=LgD+U1V7WbHJbVwqyyjWyG5f7Vc/lJR7l5OsNL/3bnd+C7OF58bJ0ndA4kTKmkxq8
 1EnKwySVenZhbF7DVWHkBIOrNIbYvzxDKH101Hsk8DCG+zTDBEBK9Sx3fFEZ9LeKcQ
 3U/i8Ra8KENtsDli1nUH+RCxkpOs0IOOHQaqmLgA=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191001125444eucas1p29f1e305772507fe5b01f5e6047a09cd5~JhxiRwXqh2021120211eucas1p2j;
 Tue,  1 Oct 2019 12:54:44 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 3F.EB.04309.49C439D5; Tue,  1
 Oct 2019 13:54:44 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20191001125444eucas1p1c31d1492ed64a9417486f471b97eae8c~Jhxh1ILKG2273622736eucas1p1T;
 Tue,  1 Oct 2019 12:54:44 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191001125444eusmtrp1ae92808de1be854f4db3ddb3dac4b765~Jhxh0NMab1469914699eusmtrp1h;
 Tue,  1 Oct 2019 12:54:44 +0000 (GMT)
X-AuditID: cbfec7f4-afbff700000010d5-65-5d934c9467ae
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id B4.6D.04166.49C439D5; Tue,  1
 Oct 2019 13:54:44 +0100 (BST)
Received: from AMDC3778.digital.local (unknown [106.120.51.20]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191001125443eusmtip1d879ff60059480646f1dd029e9917ff0~JhxhFhv_M2520025200eusmtip1V;
 Tue,  1 Oct 2019 12:54:43 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/4] Exynos5 DMC interrupt mode
Date: Tue,  1 Oct 2019 14:54:32 +0200
Message-Id: <20191001125436.24086-1-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSeUgUURzHezM7h1sb42r5UjNaELJIUypeKJlgNaCJCPWHB7nlpNJ67ai1
 HWiHebDesZllpRbqth6tYmpeqalguVrgkYiWRXgklGaZYjmN4X+f9z3e78fj0bi8iLCmwyNj
 OXWkUqUgpZLazkXT3tveuUH7nqfYo2d5lQQanP9CoIcdvQTKnJjGkclURaE312co9D7RFhkn
 Bgj0ruE+iebSOwDKMzVjqLxjlEJPBvsxNHKtlERJTR0Uap9JJtBC90dwxJw1PDAAtj5/lGKN
 +lSSrX6cwL6cbcTYjBo9YOeMdr6Uv9QthFOFx3Nqp8PB0jDtiz4y+rPs4k+dNBEYNqYBmobM
 fpjS5JgGpLScKQVworWXSANmq4d5AGsKA0VjDsCBxmFSMITCWH0FJholAGb/uLveyGlxFm4l
 GUdYp48RZEumGMCFdn8hjzO1GBzXL/zLWzAusLd56B9LGHtY9H0JE1jGuMPizjEgDtsBn1a1
 4kIZMhUUnMy4iYmGJ6z6nUGIbAGnumookW1hT65WIjIPE9ML1y66AicyC9YyrrC9q58QFsUZ
 B1jZ4CTKHnCgsp8SX2UzHPpqLsj4KubU3sFFWQZTbsnF9C5Yo+1bW2YrLDHo1posnK7DBJQz
 QVBXap0F7PLXJz0CQA+suDg+IpTjXSK5C468MoKPiwx1PBsVYQSrP6dnpWu+DjQsn2kDDA0U
 m2RZk9lBckIZz2si2gCkcYWlzG05J0guC1FqLnHqqNPqOBXHtwEbWqKwkl3eMB4gZ0KVsdx5
 jovm1P9djDazTgQHtxkOfbM54CuR+rh+0iztKV+p/oO2z6uKyattzNEinc4rZrFT9Qp38k7V
 nosJWChoSu9GXiDshsMvn5OwrCD5dbCFxjN/rHpKMeyh1nneMxj7Zo+5j0jK/E6dsEjoO65I
 2mk0C9nSYjZXRppiAvG34X7og9TeaNB2a0gWKSR8mNJ5N67mlX8B9KkYQTUDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrHLMWRmVeSWpSXmKPExsVy+t/xu7pTfCbHGmx6wmGxccZ6VovrX56z
 Wsw/co7Vov/xa2aL8+c3sFucbXrDbnGrQcZi0+NrrBaXd81hs/jce4TRYsb5fUwWa4/cZbdY
 ev0ik8XtxhVsFq17j7BbHH7Tzmrx7cQjRgdBjzXz1jB67Jx1l91j06pONo/NS+o9Dr7bw+TR
 t2UVo8fnTXIB7FF6NkX5pSWpChn5xSW2StGGFkZ6hpYWekYmlnqGxuaxVkamSvp2NimpOZll
 qUX6dgl6GT27L7AVPOWt+D6Nq4FxDXcXIyeHhICJxP2d65hAbCGBpYwSM/bnQ8TFJCbt284O
 YQtL/LnWxdbFyAVU84lRonnvA6AGDg42AT2JHasKQeIiAssZJY6tessM4jALHGGSOLr6GiNI
 t7CAkcS5fTdYQWwWAVWJRZ9+g23jFbCXWHzsPiPEBnmJ1RsOME9g5FnAyLCKUSS1tDg3PbfY
 UK84Mbe4NC9dLzk/dxMjMOy3Hfu5eQfjpY3BhxgFOBiVeHgnvJwYK8SaWFZcmXuIUYKDWUmE
 1+bPpFgh3pTEyqrUovz4otKc1OJDjKZAyycyS4km5wNjMq8k3tDU0NzC0tDc2NzYzEJJnLdD
 4GCMkEB6YklqdmpqQWoRTB8TB6dUA6Py8t6wtXGFaYE/gmSKz+vKsm5TuT0tx9zH5eKLXpag
 zFl/TKUCqkQ3KgkdCC5ZPIM/KW739u6LSpb133nZxMSuPviZlrM3vu/KibS/1QmXPFTKD3zb
 ulX9xaOTJ65adGzYWcv00s/IxuZ7msShxzOalB2nBhg0vwtaabrv2LzQ9869mQ2t7EosxRmJ
 hlrMRcWJAEoWVZORAgAA
X-CMS-MailID: 20191001125444eucas1p1c31d1492ed64a9417486f471b97eae8c
X-Msg-Generator: CA
X-RootMTR: 20191001125444eucas1p1c31d1492ed64a9417486f471b97eae8c
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191001125444eucas1p1c31d1492ed64a9417486f471b97eae8c
References: <CGME20191001125444eucas1p1c31d1492ed64a9417486f471b97eae8c@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_055447_091273_98D2148D 
X-CRM114-Status: GOOD (  13.96  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, willy.mh.wolff.ml@gmail.com, robh+dt@kernel.org,
 b.zolnierkie@samsung.com, krzk@kernel.org,
 Lukasz Luba <l.luba@partner.samsung.com>, cw00.choi@samsung.com,
 kyungmin.park@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com,
 s.nawrocki@samsung.com, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

This is a v2 patch set for the Exynos5 Dynamic Memory Controller
driver which could be found in Krzysztof's tree [1]. It is on top of a
merge of the two branches [1][2].

It adds interrupt mode which does not relay on devfreq polling.
Instead of checking the device state by the framework, driver uses local
performance event counters which could trigger interrupt when overflow.
Thanks to this approach the driver avoids issues present in devfreq framework,
when default polling check does not occur.
The algorithm calculates 'busy_time' and 'total_time' needed for devfreq
governors (simple_ondemand) based on requests transactions traffic.

Changes:
v2:
  changes suggested by Krzysztof
- added interrupt line for the channel 1
- added desription for bindings with interrupt lines
- fixed fallback path in probe function
- added comments, blank lines, removed unneeded dev_dbg() in irq handler

Regards,
Lukasz Luba

[1] https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git/log/?h=for-v5.4-5.5/memory-samsung-dmc
[2] https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git/log/?h=for-v5.4-5.5/memory-samsung-dmc-dt

Lukasz Luba (4):
  dt-bindings: memory-controllers: Add Exynos5422 DMC interrupts
    description
  ARM: dts: exynos: Add interrupt to DMC controller in Exynos5422
  ARM: dts: exynos: map 0x10000 SFR instead of 0x100 in DMC Exynos5422
  memory: samsung: exynos5422-dmc: Add support for interrupt from
    performance counters

 .../memory-controllers/exynos5422-dmc.txt     |  10 +
 arch/arm/boot/dts/exynos5420.dtsi             |   5 +-
 drivers/memory/samsung/exynos5422-dmc.c       | 345 ++++++++++++++++--
 3 files changed, 334 insertions(+), 26 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
