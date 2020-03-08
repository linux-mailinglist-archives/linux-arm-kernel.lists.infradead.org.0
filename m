Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D411617D4F2
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 17:49:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZV3hi/JC2hzOkGTsLvqJBMQE74b2rwSkLEOzaLScrpY=; b=no9wN70HoEaRpA
	l7+KcsSIOlTRhNHP7Lw8aIMHFzqMdaXoHVF2QrinepgnsNrHeLYwyjb77eQs9sfJVpRAZLh8Hy1wN
	eTlYcbKcx2voM71rfvB44H1vEVUfPUktrMBYUJnlhiJ9l0Sj0J2tPGLYlvDdSfd9FA2NERjNG0mMz
	esZVrLoTi5apuvAE+KN5xldrwZlVEKRcIQsTryZqJvovtA2/x0DKtcEiII4bQkgDkAcg0q6HcXVJx
	ysU1PwJUaGmhuqEztti/fVPE1LDTtXYJGB3ztoAYmpIvM5M0n5Y/Xd3Y5vfXCJxkiFjfMi+b0e/tZ
	P5L48EYMFmPuF93EELWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAz7B-0000Sy-5y; Sun, 08 Mar 2020 16:49:21 +0000
Received: from mailoutvs43.siol.net ([185.57.226.234] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAz6o-0000Hu-5U
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 16:48:59 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTP id 965575220C8;
 Sun,  8 Mar 2020 17:48:48 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta12.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta12.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id v2jujWa3tyxe; Sun,  8 Mar 2020 17:48:48 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTPS id 4F3D952200D;
 Sun,  8 Mar 2020 17:48:48 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Zimbra) with ESMTPSA id C9FB1521FDF;
 Sun,  8 Mar 2020 17:48:47 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH 0/2] arm64: dts: allwinner: h6: orangepi-one-plus: ethernet
 and HDMI
Date: Sun,  8 Mar 2020 17:48:38 +0100
Message-Id: <20200308164840.110747-1-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_094858_358121_60D0C0C4 
X-CRM114-Status: UNSURE (   5.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.234 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 robh+dt@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This short series enables ethernet on OrangePi One Plus and HDMI output on
OrangePi One Plus and OrangePi Lite 2 (shared DTSI).

Note that patch 2 (HDMI) is based on top of:
http://lists.infradead.org/pipermail/linux-arm-kernel/2020-March/716661.html

Marcus Cooper (2):
  arm64: dts: allwinner: h6: orangepi-one-plus: Enable ethernet
  arm64: dts: allwinner: h6: orangepi: Enable HDMI

 .../allwinner/sun50i-h6-orangepi-one-plus.dts | 33 +++++++++++++++++++
 .../dts/allwinner/sun50i-h6-orangepi.dtsi     | 26 +++++++++++++++
 2 files changed, 59 insertions(+)

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
