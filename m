Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 215AB647E8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 16:14:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XqV0khuWfEpRagzEUvwLLngW5svbnr2Vi1pO5lyaKQ0=; b=vBlxmq/esJGQgj
	c2Bqq20DP6oj8aTNbrBcJEYQ8b+q6KK3xzhw0J5jnPngfPOk1bGaHZ1zs4wHBcMBGVxm75NejYswS
	zG+/YXsr1JifbYmwVC2dYvsfTans+TwsaoIAkhuS46rvPMjMpnUd6xcljGi6eTkhYDtbI63qmCOq1
	PChfB+YzGDsNy4wAP4mgILi6ffhN1zXk91FcGvKA3HVI2CulS6QNNVAKmR49QWNZzMkHx7kPG2RI9
	vdHdjYVWPjAcoN5x9op50EZKpIkYmM7jd40WB2A1fMQUOQCxm20/oclgX1dSWHKhMzQr5Ha5TmcvP
	m1VZ4WZhuYj4tIal/uGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlDMv-00075e-CF; Wed, 10 Jul 2019 14:14:49 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlDLs-0006P4-Hb
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 14:13:46 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id D47BF22116;
 Wed, 10 Jul 2019 10:13:43 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 10 Jul 2019 10:13:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=59zr7ar3J2+Mb
 Uw+g9i3S5rctQUpSiUdlC6O+B+OKrU=; b=S3pX6hE3bn5MBplfmjzefPLZID+uY
 PFlJ4EI7EX4/3kyQG4Bbd2YbXm2LlgO7VjeEj1GLq6De4txUfNDOvtk3YSo6Xv8z
 AU+BZXLQpkBLpV9X9KG9fgYhrc20gU2tYSM5boVxyu5bT7dO6yQj7ovflss6+4Vc
 3y7mZxg6pQT/YM8xk6cjyJZp3gJsmQXm4rRqL7JWMXztPoPJh1U1kShcKqsMJxjv
 wFihh6y+ZUdkANIqFS9hkZ5SwuXoMdjdZv68cVl60gI/dAVY/9oJQ9brkc2uz1Fy
 D9HPQer6D95bngJ2SCc9cn28jZWdnYpuJU7KoUn4y1hqDNnqyb3tExoNw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=59zr7ar3J2+MbUw+g9i3S5rctQUpSiUdlC6O+B+OKrU=; b=H1b1O1tj
 Ep36ro92b9PTugCl9A4Wb+t/dd6jzm1np4XSq27K309m4oNjF/bWnd2LKskrnGs/
 wn+xV0rsQUFpEwSOqD0Nnp2Q43iL54xy3diQNln5thWOXJxP2lL2HDnP1dOahVda
 CEomX8fVZlpyxqW4h6qfJspJv67V/q8LUpT8OP8qvo/ir7tNiGY0VnkhFJGXXza/
 FeGE/At4QwsMPdM8Xgz2xHIoYftrP0jthVu40CZVn2X2FWdAC6RFM9yMEIeEANOn
 mP1pvvCuVTYYzIH32OLpitiNyV50dkNLtyTUvx2l2DBxV4Jt6LR446Z+3jro61He
 400mgrleJik8mw==
X-ME-Sender: <xms:l_IlXTyUs-Re8Kv_0Du6OnYYS7xXNDyUErM0adjKB3sC-0EF3J8sDw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrgeeigdejhecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomheptehnughrvgif
 ucflvghffhgvrhihuceorghnughrvgifsegrjhdrihgurdgruheqnecukfhppedugedrvd
 drkeehrddvvdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgu
 rdgruhenucevlhhushhtvghrufhiiigvpedu
X-ME-Proxy: <xmx:l_IlXXnynii_CsXIeNcZv6pZrz-TdTk4O-FPEZzbG6lSlT_gYCx6tA>
 <xmx:l_IlXQH9EJ6Jf2i_MwULNw6yXZTg-l43TgsrRM2Kp13MdQ554SdoXQ>
 <xmx:l_IlXfU-CoQqEQCjIwS_tv-GbvCeOWgLfD4p_LkFLuybsg0_uXRjSA>
 <xmx:l_IlXYpTKuec_2edicKj8pgHylHEasU-KlfdoRIJzS6BbgeGGsUnaA>
Received: from localhost.localdomain
 (ppp14-2-85-22.adl-apt-pir-bras31.tpg.internode.on.net [14.2.85.22])
 by mail.messagingengine.com (Postfix) with ESMTPA id 0EFD5380074;
 Wed, 10 Jul 2019 10:13:40 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [PATCH 3/3] ARM: config: aspeed-g5: Enable EXT4, VFAT
Date: Wed, 10 Jul 2019 23:43:25 +0930
Message-Id: <20190710141325.20888-4-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190710141325.20888-1-andrew@aj.id.au>
References: <20190710141325.20888-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_071344_777350_52B8A4AA 
X-CRM114-Status: UNSURE (   7.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andrew Jeffery <andrew@aj.id.au>, ryanchen.aspeed@gmail.com,
 Joel Stanley <joel@jms.id.au>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Joel Stanley <joel@jms.id.au>

Popular filesystems now that we have eMMC support.

Signed-off-by: Joel Stanley <joel@jms.id.au>
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 arch/arm/configs/aspeed_g5_defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/configs/aspeed_g5_defconfig b/arch/arm/configs/aspeed_g5_defconfig
index 9cb3cfd35a59..13db73e15539 100644
--- a/arch/arm/configs/aspeed_g5_defconfig
+++ b/arch/arm/configs/aspeed_g5_defconfig
@@ -217,8 +217,11 @@ CONFIG_FSI_MASTER_HUB=y
 CONFIG_FSI_MASTER_AST_CF=y
 CONFIG_FSI_SCOM=y
 CONFIG_FSI_SBEFIFO=y
+CONFIG_EXT4_FS=y
 CONFIG_FANOTIFY=y
 CONFIG_OVERLAY_FS=y
+CONFIG_VFAT_FS=y
+CONFIG_FAT_DEFAULT_UTF8=y
 CONFIG_TMPFS=y
 CONFIG_JFFS2_FS=y
 # CONFIG_JFFS2_FS_WRITEBUFFER is not set
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
