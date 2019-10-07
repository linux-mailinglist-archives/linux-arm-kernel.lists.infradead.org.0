Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12938CEECC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 00:06:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8kpNsbO4YvXS4t+CuXfxwJRYkiZYBzThPZGbMIE9JWQ=; b=Y+J
	ex/89PYFduzJa831u7bnK9fhfKpqIqIu26Qcy1OmMVKkHa5HQ9IYb/gW+piCQAs7QSiv3sZbubynH
	jRxNmJqLHpaFk4X+5McGTFChMXcjbNgeoyfiaAlnA8RiDOgpc9jVz0SL2zgI6/Eavxf/j3Gv/s7XE
	k6EMEl7YZ8P5qK5Tcx5AK9VC8nCtE3vRshnMmhdKY5EsDg51j24c6ANa9NoFhGTcV8HvsVpGLttrq
	1YB6T+Np9I+F4n0/krfYJzihbCHQ72zsbRvfSlziNLCvx6RqD8QavV3sGNNkAz35UJUz2xeuRx++2
	Leg4raQDHCcBII7ZU6FCgFi7P7HlIXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHb8w-0007O7-NX; Mon, 07 Oct 2019 22:06:14 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHb8o-0007NN-Nd
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 22:06:08 +0000
Received: by mail-io1-xd44.google.com with SMTP id b19so32237759iob.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 15:06:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Twc3gHw5x4Wog7YioRFdt2DRj3Idc7+bXpqT/1hf/GA=;
 b=BwM8IGAfFvBfdef2Lcn9ilsr9qhBSudW05V5D/5vmlL2JjGCQk2t+E007puOLkLE7G
 Pp5/W7p0ju/W6fAg03miaqEwbkUBKCqgFwjXyPzq4zju0sBDr2wXJez9kBrUGQM1RmGO
 NbWuGpgxjri/wex9sXDdFblIWVIBCNxKkHulrPOLKfArSDCJFkGIDVo11FwKfJsq25x/
 PvYE1waz2dwmul3X+yfxXxEr5oLSwcJc38hW6ZWMBawSqyVyp7iFw9UJmWmrbYoRQwci
 T9wcYEUFER4gcVvkpiPLjqYHScwZHwzgKihWISU8TPKiSrUCQAdZMmvg4MmBgudqVvSK
 e/yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Twc3gHw5x4Wog7YioRFdt2DRj3Idc7+bXpqT/1hf/GA=;
 b=EBt/wWGTzqaPLQtVqnjSMspiScMGD32pg9UNcUYU032K4xdjxANzk2Tt82+Y5S/Xzu
 SyuxoAgkeJ/Dl75DAv8hmVuc7BQaIFRNaf19IBdbWFiOfrLs6kVAT+DmjW1TdakG5B6M
 UgMSt1ttHBQKdi6f86OYLW2fhlYwerZ+f4pgHi8xh4X9SgPpdJHWOsPykBtZRAKUA7gw
 66lK9mxTrJ2Tq+g5mIzwVQyHbQCXFnm+el8VYIwEQkvYjPz2aP/9Gd+OZNXX8k1925gA
 L747S/MPVDFLV9We1Ft1Ukfd9YQBT6Ml2AO7Wyxhd8ZR4Ae2Szx00ln2ycYzcCmDPHjY
 xDmw==
X-Gm-Message-State: APjAAAU+6/zy8Jllld60ef9+Cx00DtRRh7Atx+jd8KBnIL90t8QUc6Hg
 XIP2NitsNunPdUk6yhZ85S0=
X-Google-Smtp-Source: APXvYqyVAqPt1YZkaEVl6jWaSrNlk0N+4BwSkrrhVDjCjtrmc7NlXfQbwe77w3FKpa5DV52V1cNtMg==
X-Received: by 2002:a6b:8e0f:: with SMTP id q15mr25463674iod.186.1570485964958; 
 Mon, 07 Oct 2019 15:06:04 -0700 (PDT)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id m14sm6479874ild.3.2019.10.07.15.06.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2019 15:06:03 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 1/2] configs: ARM: omap2plus: Enable OMAP3_THERMAL
Date: Mon,  7 Oct 2019 17:05:39 -0500
Message-Id: <20191007220540.30690-1-aford173@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_150606_816284_774E221B 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Tony Lindgren <tony@atomide.com>, hns@goldelico.com,
 Russell King <linux@armlinux.org.uk>, adam.ford@logicpd.com,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
 Adam Ford <aford173@gmail.com>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The some in the OMAP3 family have a bandgap thermal sensor, but
omap2plus has it disabled.

This patch enables the OMAP3_THERMAL by default like the rest of
the OMAP family.

Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/arch/arm/configs/omap2plus_defconfig b/arch/arm/configs/omap2plus_defconfig
index 8f1c2b6f9e56..7e14a8c8bb29 100644
--- a/arch/arm/configs/omap2plus_defconfig
+++ b/arch/arm/configs/omap2plus_defconfig
@@ -292,6 +292,7 @@ CONFIG_THERMAL_GOV_FAIR_SHARE=y
 CONFIG_THERMAL_GOV_USER_SPACE=y
 CONFIG_CPU_THERMAL=y
 CONFIG_TI_THERMAL=y
+CONFIG_OMAP3_THERMAL=y
 CONFIG_OMAP4_THERMAL=y
 CONFIG_OMAP5_THERMAL=y
 CONFIG_DRA752_THERMAL=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
