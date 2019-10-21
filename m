Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD9DDEA34
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 12:58:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7Hag9yZgk4ZXpRlhC9OpoE+Eh/XmpDLCPAB14qNL+1M=; b=aDD
	1+9QrVeRnW6PCCu/PiE3rJRGQtOUv4HY5SPEN6bdv3qTzL8Y9Y/Hh9LFMOH/dyoZLTVKdO9FCt61/
	sgeIDvkTaoApUV9S/wbU9le9p8RsHW6F1ylG8bNgJkw8whc4zrPjosWNHL+GKq/0hVbIo1uv5WbHo
	8T7np/uDj0Ni0tuP6+75YSOgwiZdaeUqgXnUlt0N25rdSlEFdElbA/Ii+gmauixwGh323q09TFIWl
	l04m4LBOgzgMyPgpX7o6bmphQkXa7YNIYmd36bwH638R3Utd9ABYITdVud5D04dI65j+cNgXd5UDV
	ZIV4+xDKViCctRGfYNzjFgUXkuv06OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMVOd-0000FL-HX; Mon, 21 Oct 2019 10:58:43 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMVON-0000EM-IN
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 10:58:29 +0000
Received: by mail-wm1-x344.google.com with SMTP id p7so12798600wmp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 03:58:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=M+Rr/WbPC8m7dZLhfszJHtex79KIwoH5LRc6fwcboyc=;
 b=xEhVtga6MQRbG6XAjBCACpSU2T15US9KjrquctDHuyVAap92YsR4cpqZxx2G5wqwtw
 ua/RA9+ma6tcuCAlgqO8oSmy3+2IFSb4BlVTWZKEGr9GajuSihUV3DE8khNmcmFYtiMF
 MEqNJ2rvrw0GjYVb3MOf+F/qm7FO0UNbewTyd1M1m3C0ymePmRk2531mV+YdyoGtf7ig
 AL/rCtOUhQyNJtiBGvKqBYud+v2dZIN/s0VGGekoBELHF8OeUGVWQTIe4l2CNXt0TB9H
 wuaXEWJhnF/8GTR5539dLHqIVqAL7baluYHVUg3fBY2GlvEJ7+ZZIxmAMU/eZFjCFrXd
 UcoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=M+Rr/WbPC8m7dZLhfszJHtex79KIwoH5LRc6fwcboyc=;
 b=stAvYIVYYDKLhhwx1US0wV2XAnip/xPA0SF3INadAmoTtCDmLHYmk3dy1OQOe45/K/
 Yjun2obTciQqJLTtacwiDDgvSU7jL3Sj7BRv+8HexmanNfniNlfvHx2ZVppHkBFCVNVq
 7buMmLskls35yI9GrUTZoqbaVDlQlQuB8QfrVb1SEgrOdQfr4JDzYdp122GKq+FE82Tr
 DBtBmKA487Q96e13F09sLaQ89x8Jx2bZxn13dXmiyvJtaMqXJ8nvdcOq4P3JIKu7wQcM
 Sew9NA76XlOjeKBMubzmiGzIewQbYg08peeYF3nqmPz5W4g0Y/mDYfl9erHa47qtQM65
 w05w==
X-Gm-Message-State: APjAAAVTlxUN+1ZDY62k/Ci72551AAhjy5hiwN3vHfFG2AFyGT2dEMpv
 ay71p8ZXiMQXIF6IHoNSl/fl7g==
X-Google-Smtp-Source: APXvYqyZaLFdktAFhb8++mIsfBPmw4LFdRDLPPon8Kt+H7Xg6gt/0KS3EztE21y/XGtYBi3ex7C0uA==
X-Received: by 2002:a1c:f305:: with SMTP id q5mr18617648wmq.137.1571655505510; 
 Mon, 21 Oct 2019 03:58:25 -0700 (PDT)
Received: from localhost.localdomain ([95.149.164.99])
 by smtp.gmail.com with ESMTPSA id q22sm12544289wmj.31.2019.10.21.03.58.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 03:58:25 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: daniel.thompson@linaro.org, arnd@arndb.de, broonie@kernel.org,
 linus.walleij@linaro.org
Subject: [PATCH v2 0/9] Simplify MFD Core
Date: Mon, 21 Oct 2019 11:58:13 +0100
Message-Id: <20191021105822.20271-1-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_035827_642035_17723C80 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Lee Jones <lee.jones@linaro.org>, baohua@kernel.org, stephan@gerhold.net,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MFD currently has one over-complicated user.  CS5535 uses a mixture of
cell cloning, reference counting and subsystem-level call-backs to
achieve its goal of requesting an IO memory region only once across 3
consumers.  The same can be achieved by handling the region centrally
during the parent device's .probe() sequence.  Releasing can be handed
in a similar way during .remove().

While we're here, take the opportunity to provide some clean-ups and
error checking to issues noticed along the way.

This also paves the way for clean cell disabling via Device Tree being
discussed at [0]

[0] https://lkml.org/lkml/2019/10/18/612.

Lee Jones (9):
  mfd: cs5535-mfd: Use PLATFORM_DEVID_* defines and tidy error message
  mfd: cs5535-mfd: Remove mfd_cell->id hack
  mfd: cs5535-mfd: Request shared IO regions centrally
  mfd: cs5535-mfd: Register clients using their own dedicated MFD cell
    entries
  mfd: mfd-core: Remove mfd_clone_cell()
  x86: olpc: Remove invocation of MFD's .enable()/.disable() call-backs
  mfd: mfd-core: Protect against NULL call-back function pointer
  mfd: mfd-core: Remove usage counting for .{en,dis}able() call-backs
  mfd: mfd-core: Move pdev->mfd_cell creation back into mfd_add_device()

 arch/x86/platform/olpc/olpc-xo1-pm.c |   6 --
 drivers/mfd/cs5535-mfd.c             | 124 +++++++++++++--------------
 drivers/mfd/mfd-core.c               | 113 ++++--------------------
 include/linux/mfd/core.h             |  20 -----
 4 files changed, 79 insertions(+), 184 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
