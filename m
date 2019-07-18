Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6426CFE8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 16:33:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hjPK4UJu5jeBq+kV2uvOtFWTk6ngSyVwfqNHqGKuM7w=; b=mXAMnzQtB3cFFYiu6YYu3Ki22+
	aeWRWRtVF9uQVLn5OSpaoGSxgKulT5OYh+lva2IPy0Czkjgk5UxMoxcXNY4XuXE2NXsD2QwDrBWao
	wASRG1vfLPXHPl0t7RvoUxj7ZlMeOuUj3udWizJouieCJ1+GT1WNp41K9SKaltsiwnLovU4E0mH5+
	kQh5npf0d/mzbcrzvA4n75skHacJuyaorIEDOdEI7+JRslYK2CLMSQlj3QqPW+MwpId5V0W15bwyD
	8Q9XTuzL3sMzFtGY0+sWC/jS5UqVjpOo4FjapPmRlpjpabkDQTBkqnkHT+wF99erG3oXXQTQxIoWd
	JxfFu5iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho7TW-0004rl-Ex; Thu, 18 Jul 2019 14:33:38 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho7RZ-0003dr-G2
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 14:31:39 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190718143135euoutp0204dc219f99ade850d6fd602b02eb1327~yhtrsiW5b3112231122euoutp02Q
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 14:31:35 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190718143135euoutp0204dc219f99ade850d6fd602b02eb1327~yhtrsiW5b3112231122euoutp02Q
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563460295;
 bh=wvynLiZIr1HVasfz8zDvk2ugRm4KsiSN6x+CwOH7f9c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=m1EyMKc/X+ol59z2a4U3y1h0WzLJWSlBjv+mpuefZuwk07XobUA5ZZXgn8/E0RvQE
 CBNxr2Ia+prImvg9hXjGsW8blinOWyiimY7QETtNWW3lkppDlYlq7Lewc1ltwf+G+9
 krHq+JPkFGdSCQpHPNR/g0vckjvAhJd3K2H5ztUM=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190718143135eucas1p131fb59e1ffdd05c9b0dc7b1073d0f6f3~yhtrR0ofR0450704507eucas1p1m;
 Thu, 18 Jul 2019 14:31:35 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id FA.20.04325.6C2803D5; Thu, 18
 Jul 2019 15:31:34 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190718143134eucas1p2aed09e2171d0d2d6b916dddac3637017~yhtqjr9S01435514355eucas1p2a;
 Thu, 18 Jul 2019 14:31:34 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190718143134eusmtrp295d8365d05498c53e3713631e6668799~yhtqVniQZ0339203392eusmtrp2H;
 Thu, 18 Jul 2019 14:31:34 +0000 (GMT)
X-AuditID: cbfec7f5-b8fff700000010e5-d9-5d3082c63f2b
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 00.B6.04140.5C2803D5; Thu, 18
 Jul 2019 15:31:33 +0100 (BST)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190718143133eusmtip1278f034bc990c68ea6b254847fe0bcfc~yhtpvl7YE1530515305eusmtip1Q;
 Thu, 18 Jul 2019 14:31:33 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: krzk@kernel.org
Subject: [PATCH v2 6/9] ARM: EXYNOS: Enable exynos-asv driver for ARCH_EXYNOS
Date: Thu, 18 Jul 2019 16:30:41 +0200
Message-Id: <20190718143044.25066-7-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190718143044.25066-1-s.nawrocki@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprMKsWRmVeSWpSXmKPExsWy7djPc7rHmgxiDQ726VlsnLGe1WL+kXOs
 Fv2PXzNbnD+/gd1i0+NrrBaXd81hs/jce4TRYsb5fUwWa4/cZbdYtPULu0Xr3iPsFofftLNa
 bH5wjM2B12PTqk42j81L6j36tqxi9Pi8SS6AJYrLJiU1J7MstUjfLoEr48H7NUwFX1kq7j39
 yNzA2M3SxcjJISFgIvHw3VK2LkYuDiGBFYwSF39+ZoVwvjBKHFnewwjhfGaUaOs+AteyYNU2
 dojEckaJje/ns8G1PPp+hxmkik3AUKL3aB8jiC0iICxxb+lysA5mgXtMEqefnmUCSQgL+Et0
 HbwANJaDg0VAVWJXSxhImFfAWuLZyw1Q2+QlVm84ADaTU8BG4vDdp2AnSQhMZpd4/R3kDA4g
 x0Vi0hNRiHphiVfHt7BD2DIS/3fOZ4Kob2aU6Nl9mx3CmcAocf/4AkaIKmuJw8cvsoIMYhbQ
 lFi/Sx9ipqPExz/WECafxI23giDFzEDmpG3TmSHCvBIdbUIQM1Qkfq+azgRhS0l0P/kPdb2H
 xJ7dLdAQ7WeUODVzBvsERvlZCLsWMDKuYhRPLS3OTU8tNs5LLdcrTswtLs1L10vOz93ECEwq
 p/8d/7qDcd+fpEOMAhyMSjy8AbkGsUKsiWXFlbmHGCU4mJVEeG+/1I8V4k1JrKxKLcqPLyrN
 SS0+xCjNwaIkzlvN8CBaSCA9sSQ1OzW1ILUIJsvEwSnVwGh5UWhSozLPhrl1W/ev6hWpy456
 m34u8XWbT4vVznQzc29rp4rfHjtn6qZOfSXTlz33tPyUeHHN32L7+QJneDPti5yxOPS5avCV
 YrVr1/SLbj+e8UxWSzX6Vpyv1u3yH432Ld4tW2f0HlvMHhbcsOFr7plEs2gmJi3LnIAeE+3q
 tD33kvinKbEUZyQaajEXFScCAGThMngmAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrMLMWRmVeSWpSXmKPExsVy+t/xu7pHmwxiDQ7utLHYOGM9q8X8I+dY
 Lfofv2a2OH9+A7vFpsfXWC0u75rDZvG59wijxYzz+5gs1h65y26xaOsXdovWvUfYLQ6/aWe1
 2PzgGJsDr8emVZ1sHpuX1Hv0bVnF6PF5k1wAS5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJ
 pZ6hsXmslZGpkr6dTUpqTmZZapG+XYJexoP3a5gKvrJU3Hv6kbmBsZuli5GTQ0LARGLBqm3s
 ILaQwFJGiUdzgroYOYDiUhLzW5QgSoQl/lzrYuti5AIq+cQosXDJK0aQBJuAoUTv0T4wWwSo
 6N7S5ewgRcwCr5gkbs/7zwSSEBbwlZjw8Rc7yFAWAVWJXS1hIGFeAWuJZy83QN0gL7F6wwFm
 EJtTwEbi8N2njBD3WEvMfnmNcQIj3wJGhlWMIqmlxbnpucVGesWJucWleel6yfm5mxiBAb7t
 2M8tOxi73gUfYhTgYFTi4Q3INYgVYk0sK67MPcQowcGsJMJ7+6V+rBBvSmJlVWpRfnxRaU5q
 8SFGU6CbJjJLiSbnA6MvryTe0NTQ3MLS0NzY3NjMQkmct0PgYIyQQHpiSWp2ampBahFMHxMH
 p1QDo3xVe8SvVX4++TZTgna912+6XnK4MPyklKmMYcXZyC3fkvcq5eyd23Mg4PP84/c2mX6b
 oyE/ddXfvwsnqlSlxidd2zfV5BCr6e+nqgUsmR/vx08qvWhwY7Kv/gROG+6WILuJVhvTG2PD
 a+6tVgzd85AlyyEgJI792bWQub/mLQo/ntXx6Ei0nhJLcUaioRZzUXEiAMKpY9CGAgAA
X-CMS-MailID: 20190718143134eucas1p2aed09e2171d0d2d6b916dddac3637017
X-Msg-Generator: CA
X-RootMTR: 20190718143134eucas1p2aed09e2171d0d2d6b916dddac3637017
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190718143134eucas1p2aed09e2171d0d2d6b916dddac3637017
References: <20190718143044.25066-1-s.nawrocki@samsung.com>
 <CGME20190718143134eucas1p2aed09e2171d0d2d6b916dddac3637017@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_073137_851984_71D7CC8F 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, pankaj.dubey@samsung.com, b.zolnierkie@samsung.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, kgene@kernel.org,
 Sylwester Nawrocki <s.nawrocki@samsung.com>, vireshk@kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable exynos-asv driver for Exynos 32-bit SoCs.

Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
---
Changes since v1 (RFC):
 - none
---
 arch/arm/mach-exynos/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-exynos/Kconfig b/arch/arm/mach-exynos/Kconfig
index 6fc4af312361..c6ed153c3151 100644
--- a/arch/arm/mach-exynos/Kconfig
+++ b/arch/arm/mach-exynos/Kconfig
@@ -13,6 +13,7 @@ menuconfig ARCH_EXYNOS
 	select ARM_AMBA
 	select ARM_GIC
 	select COMMON_CLK_SAMSUNG
+	select EXYNOS_ASV
 	select EXYNOS_CHIPID
 	select EXYNOS_THERMAL
 	select EXYNOS_PMU
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
