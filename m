Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89936133A22
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 05:21:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mX+9+XDttft1P6Wgoo7v/+tZIdF/xZwY2+kmkSZV9/8=; b=jdsVk7NVrgyWYy
	NhsX7KB4SN/ioUPdZrZanShfjKiCnvUIcvm8/IcnuTdxVe2b1koMh4r9q1DLUVyaiKfLHUkTejKiL
	AI3+FW0JVoMBaHvtOii+zrnj6obVxNYtBFCNxCqp6GADHCwnTUCI5qz3XFHeEm4qjf/CMD1mVprJy
	LtdiI1v5EdVUIT+YmQv7lRvMyoSrCkwpsz9agGfByO7u+qakQ7hSOFzPGlnYj1Ygg/DvC7UWgMTUT
	jYHJNbuhYG+uO8NZuUo9lECc0fhm3JLyZA3Q5doi/uer8VhabATTyLSWE1lLho43Y5qywY/O+qmCn
	9hEgIdUldRNpoUPXJTVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip2q0-0000Af-OE; Wed, 08 Jan 2020 04:20:56 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip2pr-00009e-Ga
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 04:20:48 +0000
Received: by mail-pf1-x444.google.com with SMTP id z16so957209pfk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 20:20:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=R6pjEykRf/M8VLql5CxvJKoh3iCEvbT8uEFDsuWLP24=;
 b=sxeFKl1KZffKaCvCNbFW1PCiFNWl/lPjmBn/yiaEbVyjJdHwXdlUPCM4WOG6LUmg2I
 Z5R88VjBdn5l23faiyAlSECRsHW6T+Q0zeWOUFJwn2SDzKpwKU1BOj7MxKROVffOX2rP
 7zMBb21aFgt0HVJOYcxFE+2aXNDtzUfR3BJpMOmi2EDRLejdydrYwpA2Ajygg/dp8J7f
 WF1f98RRseokJSMl+RVD2c4it+8Xv7Ur5AfL/wXJlAShO2papwGg37B/K25S6t/4HFiI
 d9vaQPCwKlbJXEgJOeJgBjMHwjS4WJIf9buxRJkv+nYyaP/mnvzRGvRnCagLlLAccwKb
 AkIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=R6pjEykRf/M8VLql5CxvJKoh3iCEvbT8uEFDsuWLP24=;
 b=dXxdiMUxgU9hNnEnQzFQFIxDfkLDEBHOFxWVg+yMdzVubE2IkFI/ulgAAaswus0rWw
 TlUeG153Sk4gKCdQGYqdt52WDWDN5VnFEGi/xjiE3D4SreePf9uYjdt5Z7Bxnm1SOSF9
 qvh3dlDbhLYSoA8mEeyRq6tl2oTlxmye1MpYw0Z1Ji78VPfWbcZOEKrgNQ9EbCKAGWf3
 gqjGW/6awCwZukcCI+M850ReEiLPIdEeHbLYiYkldd7ndhn6kNoXxGO+ez851MkhqUf3
 9Jfg5N8A/a3eAjdxih2XTb9Py06SO3NipGWpI9A9/4Kp6XTsBo6qEamzOx98J2lMAmTm
 ABRQ==
X-Gm-Message-State: APjAAAXopVW191N0GgBEEEPKtDoDyu7xRPgCZZwIQOqPDTrvaYi9fKrC
 PdxniWe+Jjcngy2b7ndpg3A=
X-Google-Smtp-Source: APXvYqz6GiaKZplValKk2M5TCA01KEHjZ/JzrVxvjD/jCcq96NDyr3JNRH4/crq80Mg0AXPYcDPpxQ==
X-Received: by 2002:a63:1f0c:: with SMTP id f12mr3288501pgf.247.1578457246159; 
 Tue, 07 Jan 2020 20:20:46 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id p12sm1133478pjo.5.2020.01.07.20.20.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 20:20:45 -0800 (PST)
From: Vasily Khoruzhick <anarsoul@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH v2 0/4] arm64: allwinner: a64: Enable DVFS on A64
Date: Tue,  7 Jan 2020 20:20:14 -0800
Message-Id: <20200108042018.571251-1-anarsoul@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_202047_582210_B87A45F2 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series introduces new DTSI with operating points for A64,
adds cooling maps and thermal tripping points and enables DVFS
on all the supported A64-based boards

v2: - drop two commits that were merged
    - mention where tripping points and OPP were taken from
    - add new line after each node in OPP table
    - split adding CPU clock and OPP into separate commits
    - put operating points into their own dtsi

Vasily Khoruzhick (4):
  arm64: dts: allwinner: a64: add CPU clock to CPU0-3 nodes
  arm64: dts: allwinner: a64: add cooling maps and thermal tripping
    points
  arm64: dts: allwinner: a64: add dtsi with CPU operating points
  arm64: dts: allwinner: a64: enable DVFS

 .../allwinner/sun50i-a64-amarula-relic.dts    | 17 +++++
 .../dts/allwinner/sun50i-a64-bananapi-m64.dts | 17 +++++
 .../dts/allwinner/sun50i-a64-cpu-opp.dtsi     | 75 +++++++++++++++++++
 .../dts/allwinner/sun50i-a64-nanopi-a64.dts   | 17 +++++
 .../dts/allwinner/sun50i-a64-olinuxino.dts    | 17 +++++
 .../dts/allwinner/sun50i-a64-orangepi-win.dts | 17 +++++
 .../boot/dts/allwinner/sun50i-a64-pine64.dts  | 17 +++++
 .../dts/allwinner/sun50i-a64-pinebook.dts     | 17 +++++
 .../boot/dts/allwinner/sun50i-a64-sopine.dtsi | 17 +++++
 .../boot/dts/allwinner/sun50i-a64-teres-i.dts | 17 +++++
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 52 +++++++++++++
 11 files changed, 280 insertions(+)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-a64-cpu-opp.dtsi

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
