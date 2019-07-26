Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 117747662A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 14:47:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eeNfdIqDtJHeCK7lxVyxlPMj8dFbdTyWSyYgm4twMTI=; b=FreOxwHQJS7eyC
	IWsHzI2VQxMC03liB/FpvsALJqx2e4cx+L5KnOvmlaZ67MEjutG8y8HXpoaY8TL+IRFLyUJIy0GCd
	PQWK0km3mEXOR2peJt5eLZSFGLa5u47i4yg/apePWgfpztO1psBWrT1NtQmGgaPUzlDaRarQL7bj0
	dSpT8PI1DaRbpisqRBPYTtkyTnI1vQcuZPfjfh6JkMOq27E3mZ9kOKfPnqPRXab8dEqi3FtSLPITf
	ylDTSS+u5QAYII87qFzx/vkKK5nVbEoMPTs7cQqVU1qobw+78FXSlkW9tNPcTAWcteBGRA9+CiQzm
	XowWoUCCTapBw7Bzxrow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqzdG-0003ok-Qg; Fri, 26 Jul 2019 12:47:34 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqzcY-0003NI-BS
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 12:46:53 +0000
Received: by mail-wr1-x444.google.com with SMTP id c2so51104014wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 05:46:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HLxaMsYCZ3/jXkIVQkw/a8MrmWzCu04lpfPSyYLHWrs=;
 b=mUsF1imLERCFTkg2/Uzs7hmT38m2Kw7AJTfPDinEzNaaUZiuZV0l7wgIMCBRiIpBLB
 sA2L6wbnAkNjgyxnvt+9CUZas/y2tN3c+yW9Z/i0K7FMw8zz3ahtIQ92Uc0Cq6vWSNLW
 b9iiTR5A8Nj+kKSFXN4cp60DhKL8YPrrTBsjy2J73V2t/u15peL4eIha+TsgPDuiMVqX
 R09H5zAiMSUYAAQp+OJQo5RAcr+JIVtweRBbU5unW8uZIaYHUdvP2ANTxyy3VlJFZ94a
 VPttMRsEIV69Jbf0DBp5gHwDaBz8ET5XSc1LefOqoVZFYXZ3XRW9z1IFjgCVwUcGHSUM
 Rb6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HLxaMsYCZ3/jXkIVQkw/a8MrmWzCu04lpfPSyYLHWrs=;
 b=Vbsd4nTOCI/9qrbkYQnJwkCzMn+mT3WUZ2eSKp7e9MEVuuWGFAjES/UTBeMNWG7m9K
 XkhT3sv3WNEuTgC2hot/wyK6f+4OulZuigDtgB34LSfuxTJfC8Ocixmq1nWw+XWxeH6a
 eoaG8IPKwT7t50/R3Nr56vu748Ae+dE+EpHWOUe8xkuR1PtbLTFpWNlZBXwSh70tl38z
 3KzzVrgVC0GoetVN6ys3ZsytfW0IBVjVCTsnakbNzt0esvWT834Mn3i291ZxpRzWfN1O
 n1r6CkGp6KglK7jqZEHhi2VC6n2tKfSdmcH1aW6s5ggN/6RHUQrEqDEbV3Wg0y9+IX9M
 GNmQ==
X-Gm-Message-State: APjAAAVzgXdmYOLe+pTkZ8zGRJzNkmL2azVl0kqD9YG7vcFJyqmDZkAk
 upKY0oqccqmB1Fv3uu5BeomlEw==
X-Google-Smtp-Source: APXvYqxm1YKS+4DrGIxchn3QR4y65WJgjEHqXNZSjIdrgVVETjxtNhl4GAnKHur+0BraxsIAcY0zmA==
X-Received: by 2002:adf:fb8e:: with SMTP id a14mr7232715wrr.263.1564145208209; 
 Fri, 26 Jul 2019 05:46:48 -0700 (PDT)
Received: from mjourdan-pc.numericable.fr (abo-99-183-68.mtp.modulonet.fr.
 [85.68.183.99])
 by smtp.gmail.com with ESMTPSA id x16sm39090124wmj.4.2019.07.26.05.46.47
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 26 Jul 2019 05:46:47 -0700 (PDT)
From: Maxime Jourdan <mjourdan@baylibre.com>
To: Kevin Hilman <khilman@baylibre.com>
Subject: [PATCH 0/3] arm64: dts: meson: add the video decoder nodes
Date: Fri, 26 Jul 2019 14:46:36 +0200
Message-Id: <20190726124639.7713-1-mjourdan@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_054650_460608_F0A35289 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds the dts nodes for the Amlogic video decoder for the
GXBB (S905), GXL (S905X) and GXM (S912) SoCs.

It also includes two misc. fixes for the bindings documentation:
a missing generic compatible and changing the example node's type
to something more conventional.

Maxime Jourdan (3):
  dt-bindings: media: amlogic,vdec: add default compatible
  arm64: dts: meson-gx: add video decoder entry
  arm64: dts: meson: add video decoder entries

 .../devicetree/bindings/media/amlogic,vdec.txt     |  5 +++--
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi          | 14 ++++++++++++++
 arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi        | 11 +++++++++++
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi         | 11 +++++++++++
 arch/arm64/boot/dts/amlogic/meson-gxm.dtsi         |  4 ++++
 5 files changed, 43 insertions(+), 2 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
