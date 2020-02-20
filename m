Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD8C71667DD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 21:01:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=762BrbO3BXsckqYiAT9gupd7X396ItHvZ591+2gQdzk=; b=PKf
	VNJRmoHgBF4CgBEbyiIgjvCkHCNiB3A0aBUzZf/U7Uvvnd0DI2+01SEh9ba3aQ+bPGGZvdByt8Y3u
	iSiuaN9MoSymsTq85rvd18UNQfh87KmVPcdu7K8qGKF7nxnydP1A3fjz269v7789zABsAWXGjXI+y
	7PPb1svfadAAdwP0OMtLZH1g5Cu3AxqmlFM+uH1szxFiQlHu7Wr7kQaFPWvd9SiHiN2ziraqeHMxZ
	BDOuOxQXT4jU7b8Ea9D3SDG+Uo8HK0q9t5Gg0pXGy/8FlzPLiL06ea1d4HnSGnozImPKueY3PeLLV
	pRn8ln0/LSSvK8aHVb05JB52wZHnNrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4s0P-0003FQ-UC; Thu, 20 Feb 2020 20:01:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4s0H-0003Eq-6t
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 20:00:58 +0000
Received: from localhost.localdomain (cpe-70-114-128-244.austin.res.rr.com
 [70.114.128.244])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2E365206EF;
 Thu, 20 Feb 2020 20:00:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582228856;
 bh=hGmXjSHP1Os7jRX1Fcct9AimNImDCMeEs+rkfEIpQfY=;
 h=From:To:Cc:Subject:Date:From;
 b=jtCGjYKgHS0uTOT8pYEW+MAmFqcn3xLV1YpADA9hFCIjZoK+zDYltstTs21h0Ws6m
 UOFI+4i8SVscWYIbWO+Wt13Iafa8MQ38+OwR7PY+JZ47sbkqrU3cDf5UzNBfy9HkT3
 S0oO0pfJKkfbTX/uzxm+jYz2QaZ55hp/okog/j4I=
From: Dinh Nguyen <dinguyen@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: socfpga_defconfig: Add back DEBUG_FS
Date: Thu, 20 Feb 2020 14:00:52 -0600
Message-Id: <20200220200052.4693-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_120057_266445_990643F2 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dinguyen@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit 0e4a459f56c3 ("tracing: Remove unnecessary DEBUG_FS dependency")
removed select for DEBUG_FS but we still need it for development purposes.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm/configs/socfpga_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/socfpga_defconfig b/arch/arm/configs/socfpga_defconfig
index fe2e1e82e233..e73c97b0f5b0 100644
--- a/arch/arm/configs/socfpga_defconfig
+++ b/arch/arm/configs/socfpga_defconfig
@@ -157,6 +157,7 @@ CONFIG_NLS_ISO8859_1=y
 CONFIG_PRINTK_TIME=y
 CONFIG_DEBUG_INFO=y
 CONFIG_MAGIC_SYSRQ=y
+CONFIG_DEBUG_FS=y
 CONFIG_DETECT_HUNG_TASK=y
 # CONFIG_SCHED_DEBUG is not set
 CONFIG_FUNCTION_TRACER=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
