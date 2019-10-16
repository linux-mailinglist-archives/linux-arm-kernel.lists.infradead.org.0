Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6876D949A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 16:59:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7yIlvBumMlab46qfZkoLajmfL13evdwopMeB/9qu5Uc=; b=iCbP/D2cBsM5NSiDShCvsKQ3jz
	h467mhlAHdT7l+wfLOnvC4+zqdlRnsR5CDISCrt47OqTzAqBJmuh0+kZQVC7Wd6iHqfrowd3il6bF
	2LoAxuXOMKYzkp1U+/C6x2fmMYgoIDd0fcS3+we2b+KsN3N0KPGAgxUMFVkD7aFLMpmL4mctkqUjU
	mGQDyD5XrdPltrCZeHGX+bjUVRHrkKnVfwuID/+CrAR943/6jI3PsGnuPlkADgHWhWMpLcAyPlF4l
	fPJ+vXd9bwFoqWv+LF6vozq80Iwp4pMdloNiJTvqTd0vGfXOHyKgRukWHYF/7S/fELosDeQp3rgDN
	M9+vgFFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKklk-000638-O1; Wed, 16 Oct 2019 14:59:20 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKkki-0005Ix-Vo
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 14:58:18 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20191016145815euoutp018a43305af22569052f511d2914cfeffc~OKIqPTO922498824988euoutp01Q
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 14:58:15 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20191016145815euoutp018a43305af22569052f511d2914cfeffc~OKIqPTO922498824988euoutp01Q
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1571237895;
 bh=mvXJGAa/sROCmXNX3W9XG8ie5vO3G5aWnbMGSADFAsc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MUcl/P7GIe7rUPGZZ5v0Xtd0URpqKNmk6uskkuhkJE6xfdeGtW2j4W0MxTTgsDBai
 WG2uLzE9ql+3QgMxLgr+jn4LuooYpHIr7tdO9iBpglX/zMQ6nK2H36EbLBUSELNYZn
 nlTLzDQVMlX6UtNDwXtfRmnY7B3GVPHJLio23pUM=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191016145815eucas1p190572899b52b0d1ccc2c3782c2642daf~OKIp50kFn2429324293eucas1p1U;
 Wed, 16 Oct 2019 14:58:15 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 58.30.04374.70037AD5; Wed, 16
 Oct 2019 15:58:15 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20191016145814eucas1p10d50d438abb850fd82f622122b223196~OKIprQsxC2429324293eucas1p1T;
 Wed, 16 Oct 2019 14:58:14 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191016145814eusmtrp20428acf3acabc120ce9c09c8ea5e0f80~OKIpqmLvx2387823878eusmtrp2i;
 Wed, 16 Oct 2019 14:58:14 +0000 (GMT)
X-AuditID: cbfec7f5-4f7ff70000001116-58-5da730078f5a
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id A5.0E.04166.60037AD5; Wed, 16
 Oct 2019 15:58:14 +0100 (BST)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191016145814eusmtip2408da62f7fa498f4db3ac74bb309c465~OKIpFyC640671206712eusmtip2i;
 Wed, 16 Oct 2019 14:58:14 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: krzk@kernel.org, vireshk@kernel.org, robh+dt@kernel.org
Subject: [PATCH v5 4/4] ARM: EXYNOS: Enable exynos-asv driver for ARCH_EXYNOS
Date: Wed, 16 Oct 2019 16:57:56 +0200
Message-Id: <20191016145756.16004-5-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191016145756.16004-1-s.nawrocki@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSfyyUcRzue++9P1zOXkf5TmK7pcWWH9PqbazF+uP+I/2hlOUtbwjH7kVk
 li3lVzjK3MhOKHUYdwwnP8JxWc3NmGztlsWsCY0LE0f341X/Pc/zeZ49n332IRBRFepOJErT
 GZmUThZjAn73+M7kWTygOSZgynyUUivaUUqpm0Qpg6EDpzQLsyhlKtUBSmEY5FFtOiNOPRnQ
 4dT0ghqjRlcKUGp/Vs2nOufHscuOEo2qCJN0Nj2S5E8M8SVlXSogMWk8I9BoQUgck5yYycj8
 L8UKEuoWzHjaOj+rzryD5oFCfjFwICB5Dm61llmwgBCRbwHsN+p4dvIbwOk/e7idmACsm1Eg
 h5E2+To3aAZQ2zCI/ovUVm1gVhdGBsLSsTJQDAjClQyGGxPHrR6ErODBH7XFuNXjQobD+c1d
 G+aT3nBztcSGhRb/ytgQbm/zgi0dH2zNDmQIVLxste0HyWocqivNwG66AvOblrmAC1zWd3HY
 Ax5olVzgMYDP3n/F7UQO4Dd9PZcOhqP6KdS6KkL6wPY+f7scCjuNHxGrDEknOLfqbJURC6zs
 ruZkISx8KrK7T8FdVTXPjt1hyeIBd2AJ7FnSctcqB7Bxex+TA6+a/2X1AKiAG5PBpsQzbJCU
 eeDH0ilshjTe725qigZYnuXTvn6zFwzu3RkBJAHEjkI5aI4RoXQmm50yAiCBiF2FyvymGJEw
 js5+yMhSb8sykhl2BJwg+GI3Yc6R+ZsiMp5OZ5IYJo2RHU55hIN7HjgWtnXjfOFar9OWR27p
 vZ9RvhdK3rUpjVLlm0g6J7zi+eLFgsr48uirt2hD0peWuTNrec7Xx04LW7HIqOCaJdO174NF
 3lOfPavq7ndMjuZtZLU2nBzQvuhObMwFYU5Bm3ozHRrQ/zo21tyzFjBT8KpP3T4RsU2Otg8P
 ExO/mn3WxXw2gQ70RWQs/Re5LxZfKAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrCLMWRmVeSWpSXmKPExsVy+t/xe7psBstjDXYvMrfYOGM9q8X8I+dY
 Lc6f38BusenxNVaLz71HGC1mnN/HZLH2yF12i9a9R9gtLj/eyGZx+E07q8W/axtZLDY/OMbm
 wOOxaVUnm8fmJfUeLSf3s3j0bVnF6PF5k1wAa5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJ
 pZ6hsXmslZGpkr6dTUpqTmZZapG+XYJextzHf9kLPrJUzP37k7WBsYOli5GTQ0LARGLthI/s
 XYxcHEICSxklJuz4ytzFyAGUkJKY36IEUSMs8edaFxtEzSdGidYf5xlBEmwChhK9R/sYQepF
 BOwltn8TAalhFpjNJHHmVy8rSI2wgK/Eg+a9YMtYBFQlvr7tZgexeQWsJd4c3c8OsUBeYvWG
 A8wgNqeAjcSMOWuYQGwhoJrTl1awTmDkW8DIsIpRJLW0ODc9t9hQrzgxt7g0L10vOT93EyMw
 xLcd+7l5B+OljcGHGAU4GJV4eCcwLo8VYk0sK67MPcQowcGsJMI7v2VJrBBvSmJlVWpRfnxR
 aU5q8SFGU6CjJjJLiSbnA+MvryTe0NTQ3MLS0NzY3NjMQkmct0PgYIyQQHpiSWp2ampBahFM
 HxMHp1QDY6rwdfG7nUfCH60QuPF78YMdJXtsiyp2X5dLzJo783p1edvsOU8q2wTmOPL8b4t4
 zMj7dWqfx7tT9o9P7O9a8eh27aOpYl8TLHbJGvTsCipiVVpbG3mVf/J1Qamgq083Nm11bPF1
 qWtV+MN3+dau6pePLPR2i4RPm5hi15zf+bAhreKb2rdjc5VYijMSDbWYi4oTAebe24yHAgAA
X-CMS-MailID: 20191016145814eucas1p10d50d438abb850fd82f622122b223196
X-Msg-Generator: CA
X-RootMTR: 20191016145814eucas1p10d50d438abb850fd82f622122b223196
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191016145814eucas1p10d50d438abb850fd82f622122b223196
References: <20191016145756.16004-1-s.nawrocki@samsung.com>
 <CGME20191016145814eucas1p10d50d438abb850fd82f622122b223196@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_075817_192664_7A775E75 
X-CRM114-Status: GOOD (  10.14  )
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, sboyd@kernel.org, b.zolnierkie@samsung.com,
 roger.lu@mediatek.com, Sylwester Nawrocki <s.nawrocki@samsung.com>,
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

 arch/arm/mach-exynos/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-exynos/Kconfig b/arch/arm/mach-exynos/Kconfig
index 9dab1f50a02f..4ef56571145b 100644
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
