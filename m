Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0268910CBC7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 16:34:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gl71b/2GZM80I6bXV6KH+AecdQzni0kGFnuCoI7IN2s=; b=oiBcJ8+ojthGCO
	j7c0UUOjKnt6XxX+H+QKSZki5EubEIbj6T2I8GOZdUaU7kFiCmgqvGqluG+2qBKdcLWNl25klSK9j
	9qNpMld/UjEn+dRwKfqWSjkWnTrq1cTpcIy1xd+wlSm9YlMP5qK1tYFbqjkY6BiaTe5FAf3Zf9NqG
	/oGxAXoNGtkJKEKeooftnIOAmV+Ampe/ez5sYT27yHoOHizaQeH+sdewCT8jdr3PrGZt9ndo+t9lO
	LEyUbro6Ow0dWBOfkB32GYXvJMqrJfvnus+XPzqNExDpomnXGBVf7ZDjlbgook9tZTmvYQyjavVMc
	MLL6fE1aTSHicMna6XeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLoK-0007E3-CK; Thu, 28 Nov 2019 15:34:28 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLn5-0006hW-3W
 for linux-arm-kernel@bombadil.infradead.org; Thu, 28 Nov 2019 15:33:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+/uGhuZC6bGDe/vY5pHErjTk2s243PKPkhdUERJxYak=; b=LZiEHRF/rTeUvz0+fHEn5vgksP
 JVoYso1Rm40TOPUSWU56XtPG0hBUSV6BZRNHjzRE/6ml66QPGD8//UtW6A6A+fC+d06IrresF/DZD
 jUmNmh7D70JzdrLgv8pO9IbBYpY6x+umNHx8kMCA8aPgt87fVgtWyS6yuMA4rIhQngKtbKSE8jrOQ
 K74+cZxfjzNk61lY3Iws2JosBY6puxF8CxGKig2yblLsu8UfoQ9Sgyf31aMyakAkzYLFZnSns0geB
 hemW/WBxv1MyEiG7AbIIAVCySkBs/ab73go2th2yuIm1v9q4eBIV0rJN5TNOJvXPWaTfKGpHZ2KrN
 QO1TiEvw==;
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLEl-0002u4-Tk
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:57:44 +0000
Received: by mail-lf1-x143.google.com with SMTP id f16so20274597lfm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 06:57:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+/uGhuZC6bGDe/vY5pHErjTk2s243PKPkhdUERJxYak=;
 b=DA9W24cKzldoyLYNRJ2Y6/1zVnkA1lJTOnZNVCGLnBtLy9SDw6v1MH1Lm6m8gUytky
 c/CaDP3iN1dNJBfmYpol42g9n5EFLkk812cLsAvU7B2qNvOG91C4+6uQAfeMnsMVXDe4
 rOJD9KS0Hi/+zmyHdu2abRIo6OPt5+3pur4ws=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+/uGhuZC6bGDe/vY5pHErjTk2s243PKPkhdUERJxYak=;
 b=mzM8Sg4MfrVHzhbexsqt5vB9glhS2ZtYIQ1Z+tHoZbVUi+oRP/4jo72ka14V4iDgx5
 PoHiKBh07t1pJvV7PSilX2bL0lyYiNXGNVl3lF+ocxtgB3H8D4wVmxS/q0HKPkNbtmYt
 ukmR6XxYzQ+HHDzFEsYwC/P2G8vLTdZA05iK/o2W6NWV8TiOhSvSpumiQlhOYJfhkdwI
 E59etAaVygfef6OkI+rWfi0EXNGBDV0NxUG1fMzPI0m1/QPQNPJI/JkHsHFFgXU6bcOt
 cESS6QpAcZ/HmdY87/IihgE582AdYh4wUH3n4N7Ds21gitucahKDCVIoYV1Sis4dj0VV
 AJrA==
X-Gm-Message-State: APjAAAU1aKt/p7zkyMDIjFXmo/e9Vh08OO2Qf1YhZvNbfyNbr2HosDqq
 ViMLAVAtDkKygW/hu6JUGyasLQ==
X-Google-Smtp-Source: APXvYqzw/jYuIoVJsHxaPiDPkjZLXx2+FnqCB2evJQRnfVYU2j3q8zmQHgBLElskKwZbaunbylGJGw==
X-Received: by 2002:a19:756:: with SMTP id 83mr6610746lfh.173.1574953061494;
 Thu, 28 Nov 2019 06:57:41 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id u2sm2456803lfl.18.2019.11.28.06.57.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 06:57:41 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v6 28/49] serial: ucc_uart: explicitly include soc/fsl/cpm.h
Date: Thu, 28 Nov 2019 15:55:33 +0100
Message-Id: <20191128145554.1297-29-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
References: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Timur Tabi <timur@kernel.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Scott Wood <oss@buserror.net>,
 linux-serial@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This driver uses #defines from soc/fsl/cpm.h, so instead of relying on
some other header pulling that in, do that explicitly. This is
preparation for allowing this driver to build on ARM.

Reviewed-by: Timur Tabi <timur@kernel.org>
Acked-by: Timur Tabi <timur@kernel.org>
Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/tty/serial/ucc_uart.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/tty/serial/ucc_uart.c b/drivers/tty/serial/ucc_uart.c
index a0555ae2b1ef..7e802616cba8 100644
--- a/drivers/tty/serial/ucc_uart.c
+++ b/drivers/tty/serial/ucc_uart.c
@@ -32,6 +32,7 @@
 #include <soc/fsl/qe/ucc_slow.h>
 
 #include <linux/firmware.h>
+#include <soc/fsl/cpm.h>
 #include <asm/reg.h>
 
 /*
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
