Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DFE213E91D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 18:36:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L7LFlGCA0ozAw+qUvfDvVbjWF55jNaBy5jXFSIN7p9w=; b=CyZh1CBTsQqNtm
	mvopWFoMFKn78BDeG1RBaLbaLuj+0/wL6wx0sx20Zbi38GDrDjOPs4m9cLdzjMPrvz18M3HJda41W
	FxTYgTvBvesjuqG2COXWWXlmCw/fzj6H393+L5AvmXPcAGn6RbCzfBh5u2sXKO9jcVTapZ0c7N/HO
	OHKDB1iZ9jHGIJTR7SRv1IeHFpqHjpzrvHGZ6M8q/N+Kgq9WiEZy3ovAkc/7WaxyHJctUCoeqdncl
	CNnRpVy8yLdtULIIXH16bPWkNIBUMrh9dGS1IUXb73z714jUpgVOF0HoK2kzNQ1q8zL5FBLvBXXKI
	GGQiWEWsJzHxW9SacBAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is94C-0005pb-3r; Thu, 16 Jan 2020 17:36:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8g0-0004we-MJ
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:11:29 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4173D24684;
 Thu, 16 Jan 2020 17:11:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579194684;
 bh=d7cXhq7vMyyCAAxT+hk59hpaupWElbvnm/AH3qUW6Ww=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=xVtVq4AWHj4KytdFdXivzbIo9YtovVFkcJoROAvLjn6RDuS0/Fimtz49Ol2/PgsmW
 Lq1ZLeUED+WFaDyOCPCbuWTYwthVdQ2LlKFZ5h/mHW9LRT0hMzkApBbMEt8s8ea08A
 sgqCpwfOfV0+tUcP4x3hALsZC7dHWq/9VEpWqTeA=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 528/671] ARM: dts: aspeed-g5: Fixe gpio-ranges
 upper limit
Date: Thu, 16 Jan 2020 12:02:46 -0500
Message-Id: <20200116170509.12787-265-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116170509.12787-1-sashal@kernel.org>
References: <20200116170509.12787-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_091124_818680_6303D25F 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Oscar A Perez <linux@neuralgames.com>, devicetree@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, Sasha Levin <sashal@kernel.org>,
 Andrew Jeffery <andrew@aj.id.au>, Joel Stanley <joel@jms.id.au>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Oscar A Perez <linux@neuralgames.com>

[ Upstream commit 89b97c429e2e77d695b5133572ca12ec256a4ea4 ]

According to the AST2500/AST2520 specs, these SoCs support up to 228 GPIO
pins. However, 'gpio-ranges' value in 'aspeed-g5.dtsi' file is currently
setting the upper limit to 220 which isn't allowing access to all their
GPIOs. The correct upper limit value is 232 (actual number is 228 plus a
4-GPIO hole in GPIOAB). Without this patch, GPIOs AC5 and AC6 do not work
correctly on a AST2500 BMC running Linux Kernel v4.19

Fixes: 2039f90d136c ("ARM: dts: aspeed-g5: Add gpio controller to devicetree")
Signed-off-by: Oscar A Perez <linux@neuralgames.com>
Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
Signed-off-by: Joel Stanley <joel@jms.id.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/aspeed-g5.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/aspeed-g5.dtsi b/arch/arm/boot/dts/aspeed-g5.dtsi
index d107459fc0f8..f2e1015d75ab 100644
--- a/arch/arm/boot/dts/aspeed-g5.dtsi
+++ b/arch/arm/boot/dts/aspeed-g5.dtsi
@@ -247,7 +247,7 @@
 				compatible = "aspeed,ast2500-gpio";
 				reg = <0x1e780000 0x1000>;
 				interrupts = <20>;
-				gpio-ranges = <&pinctrl 0 0 220>;
+				gpio-ranges = <&pinctrl 0 0 232>;
 				clocks = <&syscon ASPEED_CLK_APB>;
 				interrupt-controller;
 			};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
