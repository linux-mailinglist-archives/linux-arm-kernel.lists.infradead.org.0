Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3144C8B325
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 10:58:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LPz4gVJ8MQBMpoupN1QV60w+yBDEhOO57Tgnd7x4Zdc=; b=UBpvdG53mKLk2I
	UmHT26h+rulunSDsY7k5jAK9NeBXpf40M9VTsfg8uQGXPoYD2g6pB4aLkmDDClEks2zrH85AayuDt
	hNdyMoJfOPYeJlbMl050CwCvhimV999nZSaZt6JhMgDmQov+XtLJbYAbQKanO6kQT1QRQuitGyimR
	Psk8JYFYoEX8oe57tZmWynBM0toFtPrVqLMGOE+oGaoKs/ab6CVWsdNHZ2iBPQ7O7sEL15Hqbw6nj
	LAPfrHkn7OgUd0+2p8bstCe0/Q9fPd/I8CnNJ7jXezMXb8/NztlTvSpzXvQtxltfkVhVuulZy7xX4
	H2fKrNkoyoT7MvopS3zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxSci-0004sg-1Q; Tue, 13 Aug 2019 08:57:44 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxScQ-0004qx-S9
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 08:57:28 +0000
Received: by mail-pg1-x541.google.com with SMTP id o13so50896933pgp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 01:57:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=37bM+YYdRD9+p+K2GooCn2CzimziKBDE+/UWMv3v7Ko=;
 b=l6j+im0dcEApOcvPFl1n4C62I2MghWmNHeHxCVYjDCH+5yi9zYcBrbgD0XD1FPXQWK
 HFMhFgI/H4hmZwAAX9IzBefRSPSu+ABzJ6g/RzTm6PqyDZ6AzSlS/ItJ63FkCgOVEyRy
 LE9mvo7CSZp+JmIV07ApzzxJOV9WQUtkSzqt36bteyD2k0c/FuTb5JeNbhWj7PKbOm33
 HDo3CfU7GULEnn7N3q0G6VJ5pwKj3e4PbjMOifp+M/mPDfPo2D0yFc5CbdD7J5wRqfit
 moAQBShx1G8j1wNeOqeHe+5Kat9wvlnnRwaZp2bpd9haFS6q2LTxoZZp2OFmrVNv8p8Y
 6kOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=37bM+YYdRD9+p+K2GooCn2CzimziKBDE+/UWMv3v7Ko=;
 b=tGv2ZO7cVNEFkmnseqWXo89n1oGceUuEi4EbUUsmBiyRl307rYfhlnNkMg+ImywwaN
 c9Gzv5qUvZqDw+IFB62CU2/cLlubEqKTdsbzA1sSpdXQjq7ebf/Mh7C8cB18Bw95/XYh
 dHiiMPjTMFjI9+LMIuIp9hfez2ShzRBrQH5VBYf6E59EUEDLOphgd9wGCT356lW+cLd9
 aqng53poDVqj2RL3I8g+0FHLyfg/+KWM4IYd+X95qLqfN0eJRDSPKiTVuPlr6l0mz0rv
 gHDBj8GClvKwQDPJfRqlkZn8Rhw++dSsduF3IqiGTLoEKiSahTSjNDYsOXLNP5xOs4Ml
 k7Eg==
X-Gm-Message-State: APjAAAVqOENbyEukY4HjJSAwihnljbT4RKDwrs0kFT7uCY0HWC+hlvA0
 8WTrT1NEGLryh+fzq9y2Me8=
X-Google-Smtp-Source: APXvYqxCIxZZh9rt4cY6na/kBDK/+AQh4OlcNDY29NibndjPkrSR3E1QtKxCxaAPJ1VDwVNVyJyaSA==
X-Received: by 2002:a17:90a:30e6:: with SMTP id
 h93mr1185304pjb.37.1565686645478; 
 Tue, 13 Aug 2019 01:57:25 -0700 (PDT)
Received: from localhost.localdomain ([122.163.110.75])
 by smtp.gmail.com with ESMTPSA id s67sm1014503pjb.8.2019.08.13.01.57.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 13 Aug 2019 01:57:25 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: vireshk@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
Subject: [PATCH] clk: spear: Make structure i2s_sclk_masks constant
Date: Tue, 13 Aug 2019 14:27:14 +0530
Message-Id: <20190813085714.8079-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_015726_910991_E5F53A30 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishkadg.linux[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Static structure i2s_sclk_masks, having type aux_clk_masks, is only used
when it is passed as the sixth argument to function clk_register_aux().
However, clk_register_aux() is defined with its sixth argument as const.
Hence i2s_sclk_masks is not modified by clk_register_aux, which is also
the only usage of the former. Therefore make i2s_sclk_masks constant as
it is never modified.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/clk/spear/spear1340_clock.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/spear/spear1340_clock.c b/drivers/clk/spear/spear1340_clock.c
index e5bc8c828cf0..9163bbb46411 100644
--- a/drivers/clk/spear/spear1340_clock.c
+++ b/drivers/clk/spear/spear1340_clock.c
@@ -335,7 +335,7 @@ static const struct aux_clk_masks i2s_prs1_masks = {
 };
 
 /* i2s sclk (bit clock) syynthesizers masks */
-static struct aux_clk_masks i2s_sclk_masks = {
+static const struct aux_clk_masks i2s_sclk_masks = {
 	.eq_sel_mask = AUX_EQ_SEL_MASK,
 	.eq_sel_shift = SPEAR1340_I2S_SCLK_EQ_SEL_SHIFT,
 	.eq1_mask = AUX_EQ1_SEL,
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
