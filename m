Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF18CB9058
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 15:07:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EYkXNI+O6Tr7NK63KKGT8K3NsleRNI/oseruSG4XLvM=; b=dNeiD9WVWMhKbgqSnUevMvS7y6
	w4AGmL1J5yffvA1/qy+mgtfCtLmK+eNybNqihI9DZbCK0EOep+fI5Iegsh+9HgkgdVMRoktAuLyhG
	GG8oCpgpA9IWZ5bqrajH5IbSFB3rVa8SU9IrzTAik47CK5rwtMSd8/+OiWQ2Y8ywwmOXgfSYcbPRR
	jRkx5d1gYSJeq9W5UJoeW32ZBAhox6r0PhK/JwD6NzH3w2Juhpm/15HkPERfPy5x5IlENW+6mO9mk
	1AnS/IBzOiR0iasV/ZDxrw5MIa3S4ArakMIYDArdc+f81Q16/cffbNik87FtK9FO044SoGTACNO7p
	KTQxZQ6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBId8-0007BI-9e; Fri, 20 Sep 2019 13:07:22 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBId0-0007AN-O7
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 13:07:16 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190920130713euoutp0225a1ea1656c6a2dba1249c150c3d97f8~GJ2SUg_An2626226262euoutp028
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Sep 2019 13:07:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190920130713euoutp0225a1ea1656c6a2dba1249c150c3d97f8~GJ2SUg_An2626226262euoutp028
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568984833;
 bh=RBnORndzl0r5DR9rLoc1/OmKlMa2JITIDuEsjCDUmJM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=mhtJSnGD9ALbAFp6MhBMMaI6gsS1jOMd8H4j+Gi3dpedHWYbq18P+f7B4SLMXKtHi
 qdUNtK/0O5As1V4ID3CsIyjKh6LvB1zIjcCOaI/0mQFLAraGRSX20KqbEgYu2n4sB6
 vbuk8pGZrVUtC0ZqWM2rFF2gKcCFB0JTk2nA3/KM=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190920130712eucas1p225301468b166f458d2b9fbc914c69e6b~GJ2RtZ7nS0795407954eucas1p2w;
 Fri, 20 Sep 2019 13:07:12 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 40.1B.04374.00FC48D5; Fri, 20
 Sep 2019 14:07:12 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190920130711eucas1p29497b40981e4e0a24769ced4e06be208~GJ2QyD4141017610176eucas1p2k;
 Fri, 20 Sep 2019 13:07:11 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190920130711eusmtrp21e270937a7a286a63d5c1254caba0674~GJ2QbmfsK1249212492eusmtrp25;
 Fri, 20 Sep 2019 13:07:11 +0000 (GMT)
X-AuditID: cbfec7f5-4f7ff70000001116-02-5d84cf00da5d
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 6D.91.04117.EFEC48D5; Fri, 20
 Sep 2019 14:07:10 +0100 (BST)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190920130710eusmtip2e93b81b07e4cab6c4af2ada6403edf60~GJ2PvEbAU1601916019eusmtip2X;
 Fri, 20 Sep 2019 13:07:10 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: broonie@kernel.org, krzk@kernel.org
Subject: [PATCH v2 10/10] ARM: exynos_defconfig: Enable Arndale audio driver
Date: Fri, 20 Sep 2019 15:07:02 +0200
Message-Id: <20190920130702.529-1-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190920130218.32690-2-s.nawrocki@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSfUgTYRz2vdvtbqvJNQVfVmYMJQz8orKLLJJqHBhoRUGJ1WqHWtuUnZpa
 kM2vpaarCEWkiUXKotQp5gdazumSoackIYmZZh+z8iMtiMzlvFn/Pb/f8zy/5+HlJVBpLSYj
 krVpjE6rVMuFYkFL3y8uxIvLSwgfLhZRI8NWhGqsqMeoe5PTQmok3wIok20QoziuAad+jhgQ
 yvL+NUZVcF0I9cQ2jlOLc88xKr/ThlM9XwsxarhuCTnoTTcs6oV0W+U4TlvMN4V008PrdHmV
 C9ClzWZAL1q2xuFnxFEqRp2cwejCDpwXJz2qcuGpnVhmbv8CkgM+CYqAiIDkLrjS1CwsAmJC
 StYBOFbfB/hhCcCy6WUPswjgjVETvm65P9DiIWoB/OwoQf9ZxgxO1K0SkhHwVm8pcGNfcjuc
 qNBjbhFKOhFo7H2KuAkf8ih88NG0eoogBGQQ/F6T5F5LyL1wfqpdyKcFwMcNL9ZuisgoqG/q
 WkuGZAsO5+yznkqHodNShvDYB87Ymz37LdDVZkJ4Qy6AJR1jOD8YAZywVwNetQ/22IcxdwuU
 DIb17WFuCMlo+Gc+iIfecPTbJrcYXYV3WspRfi2BhgIpfyMQ/jaXexrIYPG0S8BLaOhq9eWf
 pwzA3slG3AgCKv9HVQNgBn5MOqtJZNidWuZKKKvUsOnaxNCLKRoLWP0+jhX7j1bQtXzBCkgC
 yDdK6L68BCmmzGCzNFYACVTuK6narU+QSlTKrGxGl3JOl65mWCvYTAjkfpKrXu/ipWSiMo25
 zDCpjG6dRQiRLAfEdx7x9r/bMSC+xMVmWn1Oc+yJN0Wu23H5Z18avjh6Mo6Xa8wd/nsORSkC
 p4audS40M7HZMyGywqGaZT9zZEc0zoUrshTdsWpLcMysf0rMK8184CFVzGCk4UNhwdvkUnFq
 FWlzDW1QMUXR3f3HnA6j37Pg/QpLjL445VTQyW1yAZukjNiB6ljlX3HmpJU6AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupgkeLIzCtJLcpLzFFi42I5/e/4Pd1/51piDT7vsbG4cvEQk8XGGetZ
 LaY+fMJmcaV1E6PF/CPnWC3On9/AbvHtSgeTxabH11gtZpzfx2Sx9shddovP7/ezWrTuPcJu
 cfhNO6vFxRVfmBz4PDZ8bmLz2DnrLrvHplWdbB6bl9R7TJ/zn9Gjb8sqRo/Pm+QC2KP0bIry
 S0tSFTLyi0tslaINLYz0DC0t9IxMLPUMjc1jrYxMlfTtbFJSczLLUov07RL0MpbN+c9esJe1
 ovnkR6YGxucsXYycHBICJhLzzm5j62Lk4hASWMooMWXbbqYuRg6ghJTE/BYliBphiT/XuqBq
 PjFKHP4xlwkkwSZgKNF7tI8RxBYR0JTomHebFaSIWeA7k8SBxyeZQRLCAj4Si5/NZwMZyiKg
 KvFpUQZImFfAUuLDo11sEAvkJVZvOABWzilgI9G0eR9YXEjAWmLa3BbmCYx8CxgZVjGKpJYW
 56bnFhvpFSfmFpfmpesl5+duYgTGwrZjP7fsYOx6F3yIUYCDUYmH1+NYS6wQa2JZcWXuIUYJ
 DmYlEd45pk2xQrwpiZVVqUX58UWlOanFhxhNgW6ayCwlmpwPjNO8knhDU0NzC0tDc2NzYzML
 JXHeDoGDMUIC6YklqdmpqQWpRTB9TBycUg2Mh98uE59xquh/8uPNaS4buSdPmXbl3RW12ye1
 nV+9X/D8n4zagUlXpmp+4y9NZfpRW/P1PUvqb+s3e2wUzVNdisu9Ov92al45mlH8zZlPffuD
 KRdfBvAcPhjsaJiinpcSq/F/Z5nZ/V0NF3YGvWqU9MsynBGxKuDOxX4xhwtreRiiwrcfXTw1
 XYmlOCPRUIu5qDgRAFXHQuibAgAA
X-CMS-MailID: 20190920130711eucas1p29497b40981e4e0a24769ced4e06be208
X-Msg-Generator: CA
X-RootMTR: 20190920130711eucas1p29497b40981e4e0a24769ced4e06be208
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190920130711eucas1p29497b40981e4e0a24769ced4e06be208
References: <20190920130218.32690-2-s.nawrocki@samsung.com>
 <CGME20190920130711eucas1p29497b40981e4e0a24769ced4e06be208@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_060714_921045_340DECAD 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-samsung-soc@vger.kernel.org, ckeepax@opensource.cirrus.com,
 b.zolnierkie@samsung.com, sbkim73@samsung.com, patches@opensource.cirrus.com,
 lgirdwood@gmail.com, robh+dt@kernel.org,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable audio driver for Exynos5250 based Arndale boards to improve
testing coverage.

Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
---
 arch/arm/configs/exynos_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/exynos_defconfig b/arch/arm/configs/exynos_defconfig
index 2e6a863d25aa..8d4d6bb5c47b 100644
--- a/arch/arm/configs/exynos_defconfig
+++ b/arch/arm/configs/exynos_defconfig
@@ -227,6 +227,7 @@ CONFIG_SND_SOC_SAMSUNG_SMDK_WM8994=y
 CONFIG_SND_SOC_SMDK_WM8994_PCM=y
 CONFIG_SND_SOC_SNOW=y
 CONFIG_SND_SOC_ODROID=y
+CONFIG_SND_SOC_ARNDALE=y
 CONFIG_SND_SIMPLE_CARD=y
 CONFIG_USB=y
 CONFIG_USB_ANNOUNCE_NEW_DEVICES=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
