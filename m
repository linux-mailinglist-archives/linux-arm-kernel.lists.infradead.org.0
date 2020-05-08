Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E881CBA5D
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 00:03:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XJHVQUsiP2vqdNHEPSgY7gPzUJDrqLxW7EQ1cEEUiq4=; b=nn8JMeQ2DfofcP
	xifRTVfzAbQIv5XDYgbK7yDA6F39ENI+IOmkQBBOWIEJ8fdZ8WcY/okAvwzRm7NKBabv0cb+aEUlm
	wBEJmXEB+0LqT0SKuzm19dZkxyqI4i1f5EdD1teiLIHUWhvbL7xvE5BoOlhUOF/PIuxhBltyUbHHa
	mJlejvRLA1v3+q+HnUoQKL6uPyEN36NB5m98cEgquGRklYvtZ27XExiWZH2FTeoa9EdQZV7sxuip5
	oykYidtLZss8twqRDW7Xf2vz85HhcS0J665K3GHt0hxTS7TGK2CtYoklSPRHd5y/wvKW/FC8vwTXT
	3FaSzWq0iq0Wf0QhHh/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXB51-0005XO-Kg; Fri, 08 May 2020 22:02:51 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXB4u-0005Wx-F0; Fri, 08 May 2020 22:02:45 +0000
Received: by mail-lj1-x242.google.com with SMTP id h4so3252930ljg.12;
 Fri, 08 May 2020 15:02:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lhCsaegrOoZCl6vEZUTaZb3RsjsXs48GL1YIxAy2vMI=;
 b=ImULIUI8vS4rl30btrShLAv/odGxPb+iKIwLWS8bpsq8EqlczEXeOHncOPDLih+Px7
 uU9n0bwtBXNBGGJiHNgj2kmCMPOE/IW08jsh+I0AQzL0tbzcGAid1l/wBxL8affWHSaS
 4Yyd5V+/8Lk+UCopi4EWT9m7UrILlhs6fl3GdoOg80g6tMmwJrTnA10sFgEM/glQeJZZ
 59XRifwnZOajpkXY518U5eH1D8yv/L6GtZ/9UMmJ9jx7D0pQUifX0VS5qIK0wHrIcTVz
 Lgpsp5hODw/VsKDu1DTC1gDjGj6Oz5o14hDM8BEMOAB0TeEaReBYn6DELaFqyzEcMscj
 0JtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lhCsaegrOoZCl6vEZUTaZb3RsjsXs48GL1YIxAy2vMI=;
 b=rfoEnksOdTvdH32dmV5bn/Rdv/MusSm84eFu1JbuwbkInoIznFBlCj2agtqDTJAsSh
 nw5Hg+jv9V8nKp8u01mTMJtI2VszjSfLduwBqyvK0X/enp2Z2uEvHRavip1px6JJbINl
 SVCK0TLaWAuKnYQtD6FbaeB3Veco3OR47yBmHzdKUMN27E2yb4KjYug4O28r1Ii+Rs9g
 dgMULkmUdK2i8eu38wf8Ka7sU+Tkwm6wT40i/cfeyQIFGsT8/VU5oaK6c5l7SbTYph7N
 gLf3gfLXmdV+3qeE1P0+4MPkSiDw6JyRChsG+k8BkGYWnpNq8JchRYFHeIvzVA3hYJ6X
 +qeg==
X-Gm-Message-State: AOAM532HDQlozAjI24arBwe38SotPcc3lAQURtTLoicLOrc129iclvhC
 HdVPDm+XNwdlSb+9veKLo9I=
X-Google-Smtp-Source: ABdhPJw5V0LEup6lO2Xmzty14DNHX7dQZQi4Pw21Q/XfLitxOcS1zS+lmtgxbzVOiXxhlLAowrwfww==
X-Received: by 2002:a05:651c:505:: with SMTP id o5mr3196487ljp.0.1588975362361; 
 Fri, 08 May 2020 15:02:42 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-22.NA.cust.bahnhof.se.
 [158.174.22.22])
 by smtp.gmail.com with ESMTPSA id s11sm2260983lfo.86.2020.05.08.15.02.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 May 2020 15:02:41 -0700 (PDT)
From: Rikard Falkeborn <rikard.falkeborn@gmail.com>
To: mturquette@baylibre.com, sboyd@kernel.org, nsaenzjulienne@suse.de,
 f.fainelli@gmail.com, rjui@broadcom.com, sbranden@broadcom.com,
 eric@anholt.net, wahrenst@gmx.net
Subject: [PATCH] clk: bcm2835: Constify struct debugfs_reg32
Date: Sat,  9 May 2020 00:02:38 +0200
Message-Id: <20200508220238.4883-1-rikard.falkeborn@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_150244_502233_DFF23F83 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rikard.falkeborn[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org, Rikard Falkeborn <rikard.falkeborn@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

bcm2835_debugfs_clock_reg32 is never changed and can therefore be made
const.

This allows the compiler to put it in the text section instead of the
data section.

Before:
   text    data     bss     dec     hex filename
  26598   16088      64   42750    a6fe drivers/clk/bcm/clk-bcm2835.o

After:
   text    data     bss     dec     hex filename
  26662   16024      64   42750    a6fe drivers/clk/bcm/clk-bcm2835.o

Signed-off-by: Rikard Falkeborn <rikard.falkeborn@gmail.com>
---
 drivers/clk/bcm/clk-bcm2835.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/bcm/clk-bcm2835.c b/drivers/clk/bcm/clk-bcm2835.c
index ded13ccf768e..7da3b1ba1377 100644
--- a/drivers/clk/bcm/clk-bcm2835.c
+++ b/drivers/clk/bcm/clk-bcm2835.c
@@ -396,8 +396,8 @@ static unsigned long bcm2835_measure_tcnt_mux(struct bcm2835_cprman *cprman,
 }
 
 static void bcm2835_debugfs_regset(struct bcm2835_cprman *cprman, u32 base,
-				  struct debugfs_reg32 *regs, size_t nregs,
-				  struct dentry *dentry)
+				   const struct debugfs_reg32 *regs,
+				   size_t nregs, struct dentry *dentry)
 {
 	struct debugfs_regset32 *regset;
 
@@ -1240,7 +1240,7 @@ static u8 bcm2835_clock_get_parent(struct clk_hw *hw)
 	return (src & CM_SRC_MASK) >> CM_SRC_SHIFT;
 }
 
-static struct debugfs_reg32 bcm2835_debugfs_clock_reg32[] = {
+static const struct debugfs_reg32 bcm2835_debugfs_clock_reg32[] = {
 	{
 		.name = "ctl",
 		.offset = 0,
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
