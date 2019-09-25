Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65142BE260
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 18:20:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=OzsfVba6VeBLRTcPrcjyLoidLIsIsnuQxOlSyRYiLM0=; b=t1
	aV1dtrZuEHFy+xKNYrtKUqzU12Wqlhnuozt0CGJrGlVdwA00vL85NX0pG3jFhauNMIM17Pj1DGwgq
	yLfWsJnxWuKq4Pt+3dnj7CdYPRG3m9f+7PNJAN2Y4tjyDGzRIneHWw2sMeacXLLHlj9ADnhb9fnz5
	sj727MAqVKdsNhSCJKIz6sZsAWJ+I9LD9/x9EorDX5wJUbnbZxklodZcyPnXgxYjXC/9XW6o/mQC8
	OKL50rUiUNj8vy14PSHVkj7w/8TuVJd+QTM6Mnxji1tIzRDiJTKZNhpm6zDPPsTF+5V/ygioAJMsJ
	a3E2GsWyyyHDax3V4Zo6NGk5JbhnjURA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDA1w-0002KC-QG; Wed, 25 Sep 2019 16:20:41 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDA06-0008J0-M0
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 16:18:49 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190925161842euoutp02b6b71aa08726e2692bb34cf795f8b861~Hur6QXgj42001920019euoutp02P
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 16:18:42 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190925161842euoutp02b6b71aa08726e2692bb34cf795f8b861~Hur6QXgj42001920019euoutp02P
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1569428322;
 bh=GJ2JYe91tiktd/VxnZuJnaG+1pIfLSV9zQO8Jvu5d3A=;
 h=From:To:Cc:Subject:Date:References:From;
 b=sTdQlW45/ezR4mctqAgDPOc4sOPtpkLqcIU9J/dZAw8rYzQ6OGG5mRrvE6MXUHyQJ
 FnPmsF78n260I5CVHMQujbYfSNPdI35Pys1MbwIYoleGy2TIp0ly9Q6nYmT0HxY01O
 2Qdsfc/BHcicuSnbr3sqaIitfyna5i4n6+zh3EOE=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190925161842eucas1p18415a023b311015917339ade86f44d2b~Hur52uevd1835318353eucas1p1s;
 Wed, 25 Sep 2019 16:18:42 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 2F.EC.04469.2639B8D5; Wed, 25
 Sep 2019 17:18:42 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190925161841eucas1p12b3b798020b3493e9a4804d98b422f17~Hur5W1Hmf1838118381eucas1p1k;
 Wed, 25 Sep 2019 16:18:41 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190925161841eusmtrp1d4c1091df9e457d14fbdaabc0a0e93d0~Hur5Vv2fv0531705317eusmtrp1k;
 Wed, 25 Sep 2019 16:18:41 +0000 (GMT)
X-AuditID: cbfec7f2-569ff70000001175-2e-5d8b93629b61
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 1E.14.04166.1639B8D5; Wed, 25
 Sep 2019 17:18:41 +0100 (BST)
Received: from AMDC3778.digital.local (unknown [106.120.51.20]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190925161841eusmtip1e43577fed3704a1419143924fac90f79~Hur4priT50494304943eusmtip1K;
 Wed, 25 Sep 2019 16:18:41 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/3] Exynos5 DMC interrupt mode
Date: Wed, 25 Sep 2019 18:18:10 +0200
Message-Id: <20190925161813.21117-1-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0iTURjGO9/d1eJzWp5MbQy6k5eoOFBURsL+yIggKUV06pdabto+tSyj
 WVZrXhZKabIuWqbM5WWK2LxfSkVtmqJhCZpRWLMgbSVF5vys/vu9z/O85zwHDoNLikl3JlaV
 yKlVijgZJSJqn89Zt0XkZoT63rrugqryK0g0MvuBRPc7XpBIP/kJR1ZrJY36LttoNKrxQObJ
 YRINWgwUmsnqACjf2oShJx1jNCoeGcDQ67RSCl1t7KBRu+06iexdb8F+Z7npngnInxaM0XKz
 8QYlr350Sd76uQGTZ9cYgXzG7HWEDhbtieLiYpM5tc/ecFGMsTGHTugVnbO32nANmGZ0gGYg
 uwNqxTogYiRsKYCP+/txYZgFMKfIQgjDDIAztXO0DjCLC7l9AYJeAqD5jp76tzE83Uw4QhTr
 DeuMZ3TAiXFlHwJobw92ZHC2FoPjRjvpMFxYH3hlJA13MMGuh6Y5C+ZgMbsPZnZpFhmy62BZ
 ZctiJciaaWhuMhCCcRD+asnGBXaBHztraIE9YE9u5lKGh5qsQiBwKpzU313K7IbtnQOkoyjO
 boYVFh9B9ofNuS2k8MiV8NW0s0PGFzCnNg8XZDHUXpMI6U2wJrN/qeVqWGK6vXS4HDZMVS0W
 k7Ch8H3+G+wm8Cr4f9cDAIzAjUvildEc76fiznrzCiWfpIr2joxXmsHC5+n53fm1Dnx7GdEG
 WAbIVohbgjJCJaQimU9RtgHI4DJXcYGHLlQijlKknOfU8WHqpDiObwNrGULmJr6wbDxEwkYr
 ErnTHJfAqf+6GOPkrgGi/Iryn/FFG046PxudL0/rLtzq6jzYGtB9QLrRd9CVstdPZJ/SDJRp
 wrDvhp02f8MavXZ5ntJwsfpEWqNme2oIjDRQhyKLWj2PeUqJ9Amf9EDt5Je8QKxXrw2Plw7t
 knirGj2J+aPHqxt0VHF9kCnZauOmfwxZ2qbUqw5L38kIPkbhtwVX84o/uWsjrDgDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrPLMWRmVeSWpSXmKPExsVy+t/xu7qJk7tjDTbt1LfYOGM9q8X1L89Z
 LeYfOcdq0f/4NbPF+fMb2C3ONr1ht7jVIGOx6fE1VovLu+awWXzuPcJoMeP8PiaLtUfuslss
 vX6RyeJ24wo2i9a9R9gtDr9pZ7X4duIRo4Ogx5p5axg9ds66y+6xaVUnm8fmJfUeB9/tYfLo
 27KK0ePzJrkA9ig9m6L80pJUhYz84hJbpWhDCyM9Q0sLPSMTSz1DY/NYKyNTJX07m5TUnMyy
 1CJ9uwS9jFV7J7EXnOGq+HbwDXMD41uOLkYODgkBE4nJZ127GLk4hASWMkpcaV/A1MXICRQX
 k5i0bzs7hC0s8edaFxtE0SdGict3u1hBmtkE9CR2rCoEiYsILGeUOLbqLTOIwyxwhEni6Opr
 jCDdwgL6Es3XG5lBbBYBVYk1P3eBbeAVsJfoOdEAtU1eYvWGA8wTGHkWMDKsYhRJLS3OTc8t
 NtQrTswtLs1L10vOz93ECAz8bcd+bt7BeGlj8CFGAQ5GJR7eA2HdsUKsiWXFlbmHGCU4mJVE
 eGfJdMUK8aYkVlalFuXHF5XmpBYfYjQFWj6RWUo0OR8YlXkl8YamhuYWlobmxubGZhZK4rwd
 AgdjhATSE0tSs1NTC1KLYPqYODilGhjnWl4QdPk9Y5GnzJQFxk+laq8efT1v6d239q3izlW1
 U/RzOdb/j7kRbnvcNUDv+40HEyIDfIoUrSQ7o/Krlq06MmkSl0Fd2yu9gP881fb7VE+w9H78
 khfWYdTqt3W6ef3UtjgJphMLb38pCfW/HGaxW09T1VogwFB/j1nvntzit/t9Qjdf81JiKc5I
 NNRiLipOBAC8i8PpkgIAAA==
X-CMS-MailID: 20190925161841eucas1p12b3b798020b3493e9a4804d98b422f17
X-Msg-Generator: CA
X-RootMTR: 20190925161841eucas1p12b3b798020b3493e9a4804d98b422f17
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190925161841eucas1p12b3b798020b3493e9a4804d98b422f17
References: <CGME20190925161841eucas1p12b3b798020b3493e9a4804d98b422f17@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_091847_142739_FB6E53D9 
X-CRM114-Status: GOOD (  12.59  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

This is a patch set for the Exynos5 Dynamic Memory Controller
driver which could be found in Krzysztof's tree [1]. It is on top of a
merge of the two branches [1][2].

It adds interrupt mode which does not relay on devfreq polling.
Instead of checking the device state by the framework, driver uses local
performance events counters which could trigger interrupt when overflow.
Thanks to this approach the driver avoids issues present in devfreq framework,
when default polling check does not occur.
The algorithm calculates 'busy_time' and 'total_time' needed for devfreq
governors (simple_ondemand) based on requests transactions traffic.

Regards,
Lukasz Luba

[1] https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git/log/?h=for-v5.4-5.5/memory-samsung-dmc
[2] https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git/log/?h=for-v5.4-5.5/memory-samsung-dmc-dt

Lukasz Luba (3):
  ARM: dts: exynos: Add interrupt to DMC controller in Exynos5422
  ARM: dts: exynos: map 0x10000 SFR instead of 0x100 in DMC Exynos5422
  memory: samsung: exynos5422-dmc: Add support for interrupt from
    performance counters

 arch/arm/boot/dts/exynos5420.dtsi       |   4 +-
 drivers/memory/samsung/exynos5422-dmc.c | 297 ++++++++++++++++++++++--
 2 files changed, 275 insertions(+), 26 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
