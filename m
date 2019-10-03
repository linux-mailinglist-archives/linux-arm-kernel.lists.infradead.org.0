Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 024DBCB182
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 23:51:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1Ja1XJBYc2rMTJo1j3aWlo4ggxMpTccXfhnANJoFXgY=; b=aIzQ/7XdT4Dm/qBnxRPzUbll2w
	+n6AExDbccfUt23EF39R3wxjN3Y1Apw4+gGY7pruuVEJUqZtMi/llXHhDQ8hfCughA/ul1Tw1OOuw
	MdhrxvxV35qrfTIRGY5ZWD1bXE2jh5w65I6NUHqvoXdC8pXxgd55P2RS4TCGPlqt9mo+0i+/E/wmN
	11Za83+GgoXTvJdukL/nDZOY19RYk1SmkjyvMwU3JHraN2osMq9ct+NQMZWalPOMgC6SrU7+eEvMC
	Gxip1cUJ1f6bIUhuIikgD83hJeX+xmzblFy8fdqxostMpqcn+bhQfyeIAzwRGCFIWjQyNtmnlC5n+
	UXRYljnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG90l-0005J7-3p; Thu, 03 Oct 2019 21:51:47 +0000
Received: from mout.web.de ([212.227.17.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG8zv-0004gv-AV; Thu, 03 Oct 2019 21:50:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1570139445;
 bh=Kn0TuCilrYfaGPMHgSwOwV8cx+fxujsxvbyRlPzXJ8o=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=cmtE0euk/irI14sTr6wSajU7DkGxBMrgNowkeu6VcNZvW3f0N4hhG8ItwhpI0YpTh
 8lzeG8VnZoKFq/TjpSg5uwCrqPWpS10ZdCAyg2gD2AFDHFNrJYOXdAz36LgORPmGbW
 V5MeWcSytSaC+XTNGoV1tvq3jSY9Mv9Bl83T95nw=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from platinum.fritz.box ([89.14.73.200]) by smtp.web.de (mrweb103
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0MfYj1-1iVD2M15x5-00P6D9; Thu, 03
 Oct 2019 23:50:45 +0200
From: Soeren Moch <smoch@web.de>
To: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 2/3] arm64: dts: rockchip: fix RockPro64 sdhci settings
Date: Thu,  3 Oct 2019 23:50:35 +0200
Message-Id: <20191003215036.15023-2-smoch@web.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191003215036.15023-1-smoch@web.de>
References: <20191003215036.15023-1-smoch@web.de>
X-Provags-ID: V03:K1:B7ZztmDbKfGYru8Phbjqw2pez33XX2FSpU8BwevUN/gNPgO8fUz
 Mai6ERMM+Am8U/N9uGjHbwMNeghFPQW7/5jXUjBypLLZwSwWLX/bmfozsCdhRyF473wRV6y
 spAcVmzJIceDsbk8eJUfuek7itb3S1FXU0GIz+J8Kq+NUgmS2uain/rtAWa5uIY4abpsNPZ
 xoT1S8+2Brauk0we7S4Yw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Fx3wTDvJkB4=:V0/tzMx03qqKbK8T7SQOWI
 9oNjxL17k927PeGDNqyW09+kBTsivpZYFEY55iOLZQv/pcGoOi5Xb6AcCBYKMiTRyhraVXwye
 XKQOQIxWQimyx0etxkPkyvp/uyl2YBSavT6nSF+kTgN7t+SgVJNTyrLv+eMPwmzkEkIJQdCU5
 V1mtMudj13veu2CM7XQHE0kPcRVBw26Tay25FSXUsMl40Ha8HuKe+8mnjZQsVgdcSVG8xSVQ3
 jZmjAH1ehBHemYGNbgyMUp4e1f4HcPWsLUuWF7UKPu9TbSACPtxiuV32C66ptioz4kPPQ5siy
 ectJM+L471sJFLXv55j5x/Nkgj3PfaxjEVTdSm+P4K/6H5hfWWRp82n3BenrB1d+6VFEhsO+u
 JnBewMKGVVfdh5O5JtioJ0k+pSM0S42OwzaNZd/cNJ9dAIKjhMH2vyEvbZezZocTcofxDukVp
 gjfr4Mm1dVwDaazXLJEkMEToo5SOcAmmV6FsW/ivupt+fLuexl4Oo6lD4BIV1OKMoVIpr1dBn
 kMgHVJneAh+yrmtQvAzjUwD5AC8O9qu5jZf+j/jmDX+rL6TANZS3ia8aI9JMpxtGKjzii+6iD
 U3WMamIS9EBYCuXWR0fUXwzkylZVpKJj8OLQyl4z4hBJ1mYflKFVTDvqir/+XPgIgMB0W62oA
 jjHIRSmMdnYgJBjR2DmfERbvRA+CoadWdHgQCy9O7RysmAZL++rd9wX+HfiOgKhPho8G66nvR
 mz3xPqQHcPpbLXgz2xr3tF3itCBwtwuC1YVf1AN0cg7UdiskrXLDx2UesrDqApECFUNx3vPYD
 Fknt9SE0EqaerIgseAeXAAJcmIn4pvUio9sTKyC1oKt0ojx0CpOhF2/alKQx9sLCfNJpqSSLx
 Nn0sPBZCgbq0fI3Y+qGctkGUZCbS/yode78mXh4C/fHyf0VA1gJLGVo8R18or9Zpk5asg1hBp
 gLIG+YYUC0a1HSlF0zIeTiYeXkOeLiEBn65QzM0DJSLVcPG5G5HR8/s0AbXXpAsX62BRHA4jk
 yWxcY7I9ZJ8iKPjZgyr1+Q5dqidladBAq1qWsHy7X0xQTJn+CC4y2jrpjxYOsym5sLnj76U90
 CHjUybKWdmPaaENk6I/jdwCrzqRU3MJERrz9IdsxepZZYpwXIWpH6KBrNOX4zm1FINpUtxgdx
 9VajcWzh3pSIG5rAfJiTartXpAvyOMcZeG6dJkNoUWslE74gCsm4LFbqAGrsdx7oExx57Guae
 1ASgkma3Lp4s45yCKgQP7X/0hLVXqE1uQeloYqg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_145055_661636_5577849E 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.11 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (smoch[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rockchip@lists.infradead.org, Soeren Moch <smoch@web.de>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The RockPro64 schematics [1], [2] show that the rk3399 EMMC_STRB pin is
connected to the RESET pin instead of the DATA_STROBE pin of the eMMC module.
So the data strobe cannot be used for its intended purpose on this board,
and so the HS400 eMMC mode is not functional. Limit the controller to HS200.

[1] http://files.pine64.org/doc/rockpro64/rockpro64_v21-SCH.pdf
[2] http://files.pine64.org/doc/rock64/PINE64_eMMC_Module_20170719.pdf

Fixes: e4f3fb490967 ("arm64: dts: rockchip: add initial dts support for Rockpro64")
Signed-off-by: Soeren Moch <smoch@web.de>
---
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
index 845eb070b5b0..2e44dae4865a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
@@ -636,8 +636,7 @@

 &sdhci {
 	bus-width = <8>;
-	mmc-hs400-1_8v;
-	mmc-hs400-enhanced-strobe;
+	mmc-hs200-1_8v;
 	non-removable;
 	status = "okay";
 };
--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
