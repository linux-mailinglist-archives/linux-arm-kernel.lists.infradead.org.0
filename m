Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A3D5FF9C4
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 14:01:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6un5aIASuQOZzCkapODq8jgay8zQ+3kGgS7AQ/346R4=; b=g03t/sE7dAlbiu
	Kv8tiw+Juho4Fm5JSN9VXod9raxP+1AA0LFCI7A8DEI1i+hnFelTpJnT3gtAK8AfWhVgjAz08pKiR
	GhEo/kRPXGACsHxP7YCY9DBzw76yDhBkBvg0BtzAz84eMFPFmaWRV73kkUuYi1luy7letcisSYUe5
	xhrejIjD+qChPeN8bIbFPgEpCGkxrv7eUyexJIwxuzd8qMn8znQrVSXrLNSC69Qv7NJ8KIAJmgEov
	jse4BCL+nfrLgTzO/LGvN0kuDY2h7ZBLHNNe8u3XLdOadBOJY/fhfbzhjE6yMksfOcTJQ+anzs7Fx
	ZhOV6zPe3fcvcUzAoSrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWKB9-0007b8-Jw; Sun, 17 Nov 2019 13:01:23 +0000
Received: from mailoutvs31.siol.net ([185.57.226.222] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWKAu-0007Zx-1e
 for linux-arm-kernel@lists.infradead.org; Sun, 17 Nov 2019 13:01:10 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 0B4B9523780;
 Sun, 17 Nov 2019 14:01:05 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id baLIesOeibEY; Sun, 17 Nov 2019 14:01:04 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id BD1B7522BA0;
 Sun, 17 Nov 2019 14:01:04 +0100 (CET)
Received: from localhost.localdomain (cpe-86-58-102-7.static.triera.net
 [86.58.102.7]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 663B4523A9E;
 Sun, 17 Nov 2019 14:01:04 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH v2 0/2] sunxi: dts: tanix-tx6: Add rc map
Date: Sun, 17 Nov 2019 14:00:56 +0100
Message-Id: <20191117130058.1341989-1-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_050108_251398_E8A41934 
X-CRM114-Status: UNSURE (   7.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.222 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [185.57.226.222 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds "rc-tanix-tx5max" to rc bindings and to Tanix TX6 dts.

Superseeds https://lore.kernel.org/patchwork/patch/1143781/

Best regards,
Jernej

Changes from v1:
- add entry to rc.yaml

Jernej Skrabec (2):
  media: dt-bindings: media: add new rc map name
  arm64: dts: allwinner: h6: tanix-tx6: Add IR remote mapping

 Documentation/devicetree/bindings/media/rc.yaml       | 1 +
 arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts | 1 +
 2 files changed, 2 insertions(+)

-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
