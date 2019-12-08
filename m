Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08176116354
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Dec 2019 19:06:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GvH2HfROvCZW2r8NQ7br3fqOH86xLOGDPkkV3zQN1gI=; b=uXrnJNrUozjj7T
	ag3sL7PoutYB0i5tGkQZ1hxJY8N8GietsRcuBWD8L++GeXQ15crBWxAzYWIvXZFiyYxLUKfLSaxvu
	hU4in8j3iLMktJnJxkCK+7bGtaoU2A2YLkDsLpwQ0gMiOPdX9h118fJph4BsDhZH4ZOZVBDy7Mi0K
	sJURA+9xhF+/jQCEQdUBXBONuJKeK1Zgfcv7iR8okbVwd2N7eOmStvLnpRaCRE9CjT75zwLHuj5OJ
	mbcEpLZrrlnSrYPRhMLQt/RLlxR0Wwd3FPEAXyrseZpt2Wu1gRqz6quMIiGtZSIEbt5tF3BQC8PEF
	uNRNf5ebYupKyqpVxHGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ie0wy-0003xl-Md; Sun, 08 Dec 2019 18:06:32 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ie0wE-0003J3-Cc; Sun, 08 Dec 2019 18:05:47 +0000
Received: by mail-wr1-x444.google.com with SMTP id w15so13521688wru.4;
 Sun, 08 Dec 2019 10:05:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lrbyKEPUyhJODwpL6MZk6uOXEO7AfKjtrzxgQThGJVE=;
 b=tOtvps2xdgPd/1jyKlCLBio5DsXVEy3vnppk0Yv/f9a3OJdDHkwvYpDVY5qbjyvXVl
 ZYvaKRXUqKo5flNBkkKapRk46BE25YUTqqqwoh/s8Ax+2iJjbyoOQ/aXwKCFiuGUZvUs
 VDjSZfIJI+ndzu6URsxwSuNzc7nmD6Cy6Hw/77UV0OTpKVMy10Kx/3qn7e83fIt8v9jm
 1j6aJURXBrU0Wi0kP5I81DZ4Qk2g/Gwreb1Tgm4putx11K8ElxKiftuFRuCpUsorAduP
 dFZjdyw01P4z/hG+iC/jCQAgGyeRIdTBLlQmQ9+hDEdN9G4gYmQLkwq3RngID9NkuybZ
 GxHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lrbyKEPUyhJODwpL6MZk6uOXEO7AfKjtrzxgQThGJVE=;
 b=rf3TU5n7mRMwjm1+pZHs3jP5k1Blo3+gv/pOG2QFbuvzMGfMrWcvRqb4kVCf6Lj8dm
 oftprBRUTmnXaTD8ao2anduy8poKnQRecmjrXbysRhNfQcAFyaUrkqv/ZIX5YA3y+IXt
 BLL4+GVtJN+SO4VftrNexdedy5ozhbiMZ2llr0CSz1+bGPNdvdR2vy7zYm2LtdVr/wsu
 480YjkOThjxuMWPaZFsLbR9OkgQwbR+k5UF7DVae9U/285YCxjsy3d67nupyUBtoASpw
 FQvRWQ5ijpM16W2P0efp9CAKrrGSkwuy03Lz53E+KJ2p7/ce/Xq17vy2EXy4F3P0xqzb
 xHOA==
X-Gm-Message-State: APjAAAVlOPXfIJHc8V+ljyrKBbaHXeXxReXwJyYTkTidownbNARe0AL7
 lXYK0iInEl5O2AJMWloILeYgMs7U
X-Google-Smtp-Source: APXvYqz9wd7kfXtCdLV1zh29Di2rYYLEmHEcb9PsQ0KjiqQTKyoqQa9+1756o6yKsX1N8clbMXTGtA==
X-Received: by 2002:a5d:44ca:: with SMTP id z10mr28615833wrr.266.1575828341552; 
 Sun, 08 Dec 2019 10:05:41 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1371AD700428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:371a:d700:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id a64sm11797687wmc.18.2019.12.08.10.05.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 Dec 2019 10:05:40 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, khilman@baylibre.com,
 jbrunet@baylibre.com
Subject: [PATCH 0/3] ARM: dts: meson: clock updates
Date: Sun,  8 Dec 2019 19:05:22 +0100
Message-Id: <20191208180525.1076152-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_100546_424676_14A315BC 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series moves the XTAL clock out of the main (HHI) clock controller
because it's an actual dedicated crystal on the PCBs.

The last two patches add the DDR clock controller whose output is used
as input for some of the audio clocks.


Dependencies:
- patch #1 has a runtime dependency on my other series:
  "provide the XTAL clock via OF on Meson8/8b/8m2" [0]
  Jerome has already queued this for v5.6
- patches #2 and #3 have a compile time dependency on my other series:
  "add the DDR clock controller on Meson8 and Meson8b" [1]
  Jerome has already queued this for v5.6, but you need an immutable
  tag for the dt-bindings


Jerome: can you please rebase the v5.6/dt branch tomorrow on top of
v5.6-rc1 and provide a tag so Kevin can apply this series?


[0] https://patchwork.kernel.org/cover/11248377/
[1] https://patchwork.kernel.org/cover/11248423/


Martin Blumenstingl (3):
  ARM: dts: meson: provide the XTAL clock using a fixed-clock
  ARM: dts: meson8: add the DDR clock controller
  ARM: dts: meson8b: add the DDR clock controller

 arch/arm/boot/dts/meson.dtsi           |  7 +++++++
 arch/arm/boot/dts/meson6.dtsi          |  7 -------
 arch/arm/boot/dts/meson8.dtsi          | 24 +++++++++++++++++-------
 arch/arm/boot/dts/meson8b-ec100.dts    |  2 +-
 arch/arm/boot/dts/meson8b-mxq.dts      |  2 +-
 arch/arm/boot/dts/meson8b-odroidc1.dts |  2 +-
 arch/arm/boot/dts/meson8b.dtsi         | 24 +++++++++++++++++-------
 7 files changed, 44 insertions(+), 24 deletions(-)

-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
