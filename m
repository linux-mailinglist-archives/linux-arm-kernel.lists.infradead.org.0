Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4046F1F3C5F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 15:27:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=z1m/CwF5FLzUhKNgqEUSqrVPRqJzdTvxPOYUODlnIdM=; b=Rk3
	ZQLUglcC3OvWu2+/y8VSXXuTOvMUDetw/c5YUohf5j/+Gd+6bTu39/uyDpR8jBfcNCwtTZdcFF7MV
	SbwzKuxhh0zyh0bdEQwBdPOuwOQjyOKzmShz0b/ea+Onl0fSJdj6crojjPG+MHcxUD8Oojrddx4Rf
	70juO2GOSaqFjGcE2FfMtASPyrBwHV2vsg3frslZcgIv/7pfEa1ADODVr1mIHDIjApX16XjslSKlV
	rhj+U+sjATquyQ817TbEv6QXov0iWmzhOCMCLeLEfp5lxM0BRWmRp104+rM70/3EUSoTnbO5xyAfX
	7m4c6kvWJwlaHYZmjSXbk3wOviv+rnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jieHk-000314-02; Tue, 09 Jun 2020 13:27:24 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jieHC-0002iC-Qs
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 13:26:55 +0000
Received: by mail-pj1-x1041.google.com with SMTP id ga6so1408806pjb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 06:26:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=PjgYBNZkkJ+Dumdoc0Hlqfs0IRx7oFITY6Yyd4osHSM=;
 b=qlWkEznIMn5JbwERE/cmdiBazioDv1eZrG6VG5S/M5gPRqhS99hbVPE22TkTnN1d0B
 bPEUEE+QfHcp3rG0vk4cBhQPyULjAXBoN6eZ3vInSBQZezYpO5OH662IVjbDHdDQM7Pn
 hmVlApyWWPV1Dl8fQYMK/0ztzObKC+hDYu9Ag2iLsHAuBxtuWYIHEIhsIWkNJL8TJyVS
 POwrnx2FsVRGqPFILSnEylscqhuiYMuobqB9oqpHXUK3qclRlF+NY1rIXG1iMyB92duk
 u7KGuZae9lhXYVh0uHWA2njeca95MdeTGBxNOa8HjxQPyGiPRzC+kLtVRj3zigIKaTS8
 sLNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=PjgYBNZkkJ+Dumdoc0Hlqfs0IRx7oFITY6Yyd4osHSM=;
 b=HCAILO83TFhoUrv2CPir0qmreqb843UBsWiY7QkrIC6r1cMaOYpbfxlVVEkvxIURKw
 xOHGc4gLwVpAlC6BDMfOrGfO98lyqSmXl2LI7cLdQgMq/R2QGdg+qL8PZ4gLD/+x8yfD
 SLmiP9/tN+ie6Pj37EyGy9yL0cS/6QuUQYKXnMBZaMFHcmJnEFFZdU1wHwa4BYBrR9+X
 XIuKRUJQq1CCOHY5U/B/K5jlxhaI2CM3F/SZS4vc0QFkVmfdgnIa1m5KtG/5o4g598Zd
 zzOQf4FQ5SMFswLpRNsarAY/+HX535TROIj37HvGTJPdBTLAVxKZXEsuGBzJwg/7AqXq
 cBNg==
X-Gm-Message-State: AOAM530M01zo/m5DksedGXRyLiiwSX/yYMwWc03KeutvKC9LjlGKOc8Y
 nGiz6RLKAd73/CX6vsWQAOE=
X-Google-Smtp-Source: ABdhPJxxfhUMGVH6Bs+zE9AXCufQP4t+CEN0WSM3o76ybXzA0BlMm1MQxbpCBPvFTgA2PHmmY4X1tQ==
X-Received: by 2002:a17:902:aa4a:: with SMTP id
 c10mr3469848plr.0.1591709209326; 
 Tue, 09 Jun 2020 06:26:49 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.191.42])
 by smtp.gmail.com with ESMTPSA id b5sm2624348pjz.34.2020.06.09.06.26.45
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jun 2020 06:26:48 -0700 (PDT)
From: dillon.minfei@gmail.com
To: robh+dt@kernel.org, mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 p.zabel@pengutronix.de, pierre-yves.mordret@st.com,
 philippe.schenker@toradex.com
Subject: [PATCH v4 0/4] Enable stmpe811 touch screen on stm32f429-disco board
Date: Tue,  9 Jun 2020 21:26:39 +0800
Message-Id: <1591709203-12106-1-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_062650_956906_2382FE41 
X-CRM114-Status: UNSURE (   7.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, dillon min <dillon.minfei@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

This patchset is intend to enable stmpe811 touch screen on stm32f429-disco
board with three dts and one i2c driver changes.

has been validated by ts_print tool

Changes log:
V4: indroduce 'IIC_LAST_BYTE_POS' to compatible with xipkernel boot

V3: just add change log in [PATCH V3 3/4] below ---

V2: remove id, blocks, irq-trigger from stmpe811 dts

V1:
ARM: dts: stm32: add I2C3 support on STM32F429 SoC
ARM: dts: stm32: Add pin map for I2C3 controller on stm32f4
ARM: dts: stm32: enable stmpe811 on stm32429-disco board
i2c: stm32f4: Fix stmpe811 get xyz data timeout issue

dillon min (4):
  ARM: dts: stm32: add I2C3 support on STM32F429 SoC
  ARM: dts: stm32: Add pin map for I2C3 controller on stm32f4
  ARM: dts: stm32: enable stmpe811 on stm32429-disco board
  i2c: stm32f4: Fix stmpe811 get xyz data timeout issue

 arch/arm/boot/dts/stm32f4-pinctrl.dtsi | 12 +++++++++
 arch/arm/boot/dts/stm32f429-disco.dts  | 47 ++++++++++++++++++++++++++++++++++
 arch/arm/boot/dts/stm32f429.dtsi       | 12 +++++++++
 drivers/i2c/busses/i2c-stm32f4.c       | 12 ++++++---
 4 files changed, 80 insertions(+), 3 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
