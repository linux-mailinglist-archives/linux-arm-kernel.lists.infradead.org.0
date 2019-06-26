Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFBA855E1A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 04:04:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=s5z77YbVzimIMWP6XCrCVyYBblgfSG4D3cT4f/IM5tI=; b=RIymnOTQ5E+dvr
	zL6KrdKBKNMPbSXqz0YbYJsMpaNw6Ub2g9fF9oAIckjRPD4lcNObKAWPR51gSRa7H4+6mVoSg54hX
	o7yWmhaK/Aadhn49aeE/qzbyrsDu5FNFNsUc3dSd+U82ix3z5I7UNBZp1hi6mICQ57bJOfNhINS5M
	i01CnuDvFKyfDm8QZUxHixRtyF1mtvVF57hXtvrbJzjMBpvgezySniikQpvkdF76Oy2E2MJTrW8Yd
	9u0B3cSvwboOONlgIK7QNMe6jQOVnESViF98aEVUoNMGu70zr3YH6UOeJ7+72zpR+NZfih6atnuF5
	yg55R+q6qs+1YtQxeOVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfxIa-0001Gf-FH; Wed, 26 Jun 2019 02:04:36 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfxIG-0001Dv-0A
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 02:04:17 +0000
Received: by mail-pg1-x542.google.com with SMTP id f25so357877pgv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 19:04:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ANdbdNNY52H0KIyfpejDfOrq5/kyjMlvCX0LTElK46I=;
 b=FIOpWQ/TuKnrRyD29pK3ChWoAXmjxxeCE+Xpx+VEMW52HgyxXOs98udvBDe0XPJgbU
 +5vhH7Uwz3X4kgxIYAfNsBY+uect8E2LHSQ7doQtHEqt5SuTl9lhly5wYStDjIJH7NPA
 qU4eIttmXKnwjxJDZzs3xxdJXr5Fl84HGdqD5SOECUninSVxRKb0VpSTJsrzeQz68GRv
 9i6ONLWdHqrRmi3etajuAFrEOTjZ2F9G2DgiG9xQjkZlwzmcmEQh5WH3q60K6L2dBaWw
 R0jzG2DRQlxXI+RPD8BpYxqSl5u0W4MSwCw2odijx+faCLZbhU7UZiVmYhHX16+lKle4
 /pJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=ANdbdNNY52H0KIyfpejDfOrq5/kyjMlvCX0LTElK46I=;
 b=rorDNzx5BWdr246bamgC/Qdo37v7RT4/TTwdf0IsiXMzS1fNaOU/4Fo9KWL3GuxOzd
 +p1OH5IWqbNu9P9QAIixlS9ShlifED2Q290AO5kROGKnZ+CJRb75LC7O4oJ7GHs+hvDF
 R/a7SYk0AfLQhXzPu4ZTpMkAlgitHNJ57a0D8XBuSdOR0fWSfstnieAvNZIpObWFeLTz
 IDUxAYuB59RXDtbcbohwUChokY9fCrccg407PxmXJkIIFWfV+WDmhb5HgKXrph4KZlXZ
 XQhPN38OuV8B7JlaV86O3XizRXeJ8GXPZAF2hIEnvBQDPTuwlNOY5kiQWcRUSBenyIcN
 O7yg==
X-Gm-Message-State: APjAAAX/gf6HS5KBPLIJ7f5nhYlj+uwnIpepmgss/HYzQ1EAHQZ9M0Fx
 KlFaHJ/0FKwedRgCoCCOcb2INzue
X-Google-Smtp-Source: APXvYqxDQTNXcwdIPbEcp+kLOGW1QQDYjmS4XHQ8gsfGNIHzQLr2sCSNYRafRpdIaG6Fk9PFpQywaQ==
X-Received: by 2002:a65:6481:: with SMTP id e1mr169294pgv.408.1561514654743;
 Tue, 25 Jun 2019 19:04:14 -0700 (PDT)
Received: from voyager.ibm.com ([36.255.48.244])
 by smtp.gmail.com with ESMTPSA id y68sm17564989pfy.164.2019.06.25.19.04.11
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 19:04:14 -0700 (PDT)
From: Joel Stanley <joel@jms.id.au>
To: Olof Johansson <olof@lixom.net>,
	arm@kernel.org
Subject: [PATCH] ARM: configs: multi_v5: Remove duplicate ASPEED options
Date: Wed, 26 Jun 2019 11:33:56 +0930
Message-Id: <20190626020356.24880-1-joel@jms.id.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_190416_123062_972DAD99 
X-CRM114-Status: UNSURE (   8.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Andrew Jeffery <andrew@aj.id.au>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A recent change mistakenly added a second copy of these two options,
which kbuild warns about:

 arch/arm/configs/multi_v5_defconfig:257:warning: override: reassigning
 to symbol ASPEED_LPC_CTRL
 arch/arm/configs/multi_v5_defconfig:258:warning: override: reassigning
 to symbol ASPEED_LPC_SNOOP

Fixes: 2d8bf3404bb0 ("ARM: configs: multi_v5: Add more ASPEED devices")
Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 arch/arm/configs/multi_v5_defconfig | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/configs/multi_v5_defconfig b/arch/arm/configs/multi_v5_defconfig
index 3d8ca9ad8926..cd67fca2e3cd 100644
--- a/arch/arm/configs/multi_v5_defconfig
+++ b/arch/arm/configs/multi_v5_defconfig
@@ -96,8 +96,6 @@ CONFIG_MTD_UBI=y
 CONFIG_BLK_DEV_LOOP=y
 CONFIG_ATMEL_TCLIB=y
 CONFIG_ATMEL_SSC=m
-CONFIG_ASPEED_LPC_CTRL=m
-CONFIG_ASPEED_LPC_SNOOP=m
 CONFIG_EEPROM_AT24=y
 # CONFIG_SCSI_PROC_FS is not set
 CONFIG_BLK_DEV_SD=y
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
