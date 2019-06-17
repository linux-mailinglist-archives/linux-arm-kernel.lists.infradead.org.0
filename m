Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE00D4884B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 18:04:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UVkjL10MjOP6btVgD4RhyPf1ynW7zhsbITkF2DkaR0A=; b=gpEokHV/0A5ws8
	DmbMI6DtvyjcybUaizGFE9raC/8/JL5IOntIwHShOz3Kw4lrhASCmUmU4FRnAbJgOM7QC9SHneK6f
	LDDGztaRvszY+on95qFEgpa4pupSUG5HAQZnMFNEAbVGzHa4hl6iyM+HSyA0jE/VnAC1NfVAJfAGj
	lWIsSfH58NUjS++I8yYuEeCCj7I4RI4ID913xaDmU04c4psp3tqmxWjv3DGxGa5jyPHSfrYwBThYZ
	fN4ZaxPnXNNqXhVqx/TYRiWYtzWwFVO723kp1Apga5osT1Cz/0oL38nKDVKLeyQiz7wn1kWaahOO3
	c7a4xk2GbqUHsFxWO6Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcu7k-0005FS-5g; Mon, 17 Jun 2019 16:04:48 +0000
Received: from malenstwo.juszkiewicz.com.pl ([37.187.99.30])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hcu7S-0005DM-Fy
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 16:04:32 +0000
Received: from localhost (localhost [127.0.0.1])
 by malenstwo.juszkiewicz.com.pl (Postfix) with ESMTP id 1EFBCC0067;
 Mon, 17 Jun 2019 18:04:27 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at juszkiewicz.com.pl
Received: from malenstwo.juszkiewicz.com.pl ([127.0.0.1])
 by localhost (mail.juszkiewicz.com.pl [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RqpB2fmFkFY1; Mon, 17 Jun 2019 18:04:25 +0200 (CEST)
Received: from puchatek.local.com.pl (89-67-26-161.dynamic.chello.pl
 [89.67.26.161])
 by malenstwo.juszkiewicz.com.pl (Postfix) with ESMTPSA id 08245C0441;
 Mon, 17 Jun 2019 18:04:24 +0200 (CEST)
From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
To: arm@kernel.org
Subject: [PATCH 2/3] arm64 defconfig: enable MPT3 SAS and BNX2X drivers
Date: Mon, 17 Jun 2019 18:04:10 +0200
Message-Id: <20190617160411.24329-2-marcin.juszkiewicz@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190617160411.24329-1-marcin.juszkiewicz@linaro.org>
References: <20190617160411.24329-1-marcin.juszkiewicz@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_090430_676264_8B3A2AAD 
X-CRM114-Status: UNSURE (   6.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [37.187.99.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ThunderX2 server requires both to provide storage and network.

05:00.0 Ethernet controller [0200]: Broadcom Limited BCM57840 NetXtreme II 10 Gigabit Ethernet [14e4:16a1] (rev 11)
05:00.1 Ethernet controller [0200]: Broadcom Limited BCM57840 NetXtreme II 10 Gigabit Ethernet [14e4:16a1] (rev 11)
8d:00.0 Serial Attached SCSI controller [0107]: LSI Logic / Symbios Logic SAS3224 PCI-Express Fusion-MPT SAS-3 [1000:00c4] (rev 01)

Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
---
 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 864800307e2f..a3b311ea3f13 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -215,6 +215,7 @@ CONFIG_BLK_DEV_SD=y
 CONFIG_SCSI_SAS_ATA=y
 CONFIG_SCSI_HISI_SAS=y
 CONFIG_SCSI_HISI_SAS_PCI=y
+CONFIG_SCSI_MPT3SAS=m
 CONFIG_SCSI_UFSHCD=y
 CONFIG_SCSI_UFSHCD_PLATFORM=y
 CONFIG_SCSI_UFS_QCOM=m
@@ -244,6 +245,7 @@ CONFIG_VIRTIO_NET=y
 CONFIG_AMD_XGBE=y
 CONFIG_NET_XGENE=y
 CONFIG_ATL1C=m
+CONFIG_BNX2X=m
 CONFIG_MACB=y
 CONFIG_THUNDER_NIC_PF=y
 CONFIG_FEC=y
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
