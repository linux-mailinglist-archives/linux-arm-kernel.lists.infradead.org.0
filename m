Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF0617F50A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 11:28:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IKsnrg3mgsAISMsF+vjTCEgpuI2wERjYh2dKyrqrAFY=; b=rB7hc2J2szWQtv
	qVSyI1GBDyKfKzQwaxmFgHzsAf1SYBJaVOwzEyQlE1/3yZrPRZkhedL5JY6s+8rKZ758Sd2SJJVwG
	K8TVOQc7+Mk8gCZj4oSeIVi/yBXleQK/Fario+wcTHPe59FGLBgnjFhDWa43LiBBTU5DOG1T6J7HW
	sKf/+Ei7WHRj0uQ9RnRzxx9tuvihpYKqPOPD+rvqK1MFwcqvtY5v/qSpwGO0fxvNMumU4Y1WKWC17
	dG/nTLTLsjUNoZE9getqi0/XilJ2rGOuSm7+eE/wsJqi+QtgEh/yb3EwNCOsBrZ+FyMBE/hJxZaz7
	7NeiejcDqk5BW0g/tEWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBc7r-0003Mp-3G; Tue, 10 Mar 2020 10:28:39 +0000
Received: from web0081.zxcs.nl ([2a06:2ec0:1::81])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBc7g-0003MQ-9m
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 10:28:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=pascalroeleven.nl; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id
 :Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HoDOAAuu5g+qc/P5aShbUEJfbz/Uo1silh5yOmrLmWo=; b=w4bjR2mY+UHNrDlRWT8xDR2nu+
 D+QFN+mnGv0mFAAfW2MuFLUOZOwQeaEw0esSVw+YM/7upIRHet2+DCK/pl3y/2EWxVE8og2KBsUCN
 Ngy2aJoTuuoHROOH7z8/h6Bay3E0QEQPaHl6j9qHcbvbjCpdI30OQ4zEKJV0Tcj7j+r2jnh8T6fll
 fNzDsREBfhNwtMMx8l2cKUtPXkswCIpb7uJjj1GcUhMStho2+9n3bo6QjN2yf2plcEBb2TxlrLrD6
 kBD0Lad7/4Yl9VKdSq9YUzmWbs9VWZIL59KwGPCenUWBrlHW2Wy229oBnQ5UghiyBxUfxurM1MIoI
 I2HJqqyQ==;
Received: from ip565b1bc7.direct-adsl.nl ([86.91.27.199]:35430
 helo=localhost.localdomain)
 by web0081.zxcs.nl with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92.3) (envelope-from <dev@pascalroeleven.nl>)
 id 1jBc7U-0017It-N1; Tue, 10 Mar 2020 11:28:16 +0100
From: Pascal Roeleven <dev@pascalroeleven.nl>
To: Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/2] Add support for Topwise A721 tablet
Date: Tue, 10 Mar 2020 11:27:22 +0100
Message-Id: <20200310102725.14591-1-dev@pascalroeleven.nl>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Authenticated-Id: dev@pascalroeleven.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_032829_782186_F4BBCAFF 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-sunxi@googlegroups.com, Pascal Roeleven <dev@pascalroeleven.nl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series add support for the Topwise A721 tablet and it's display.
It is an old tablet (around 2012) but it might be useful as reference
as the devicetree is pretty complete.

Pascal Roeleven (2):
  drm/panel: Add Starry KR070PE2T
  ARM: dts: sun4i: Add support for Topwise A721 tablet

 .../display/panel/starry,kr070pe2t.txt        |   7 +
 arch/arm/boot/dts/Makefile                    |   3 +-
 arch/arm/boot/dts/sun4i-a10-topwise-a721.dts  | 302 ++++++++++++++++++
 drivers/gpu/drm/panel/panel-simple.c          |  26 ++
 4 files changed, 337 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/display/panel/starry,kr070pe2t.txt
 create mode 100644 arch/arm/boot/dts/sun4i-a10-topwise-a721.dts

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
