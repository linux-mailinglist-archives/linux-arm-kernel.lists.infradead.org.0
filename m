Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B4061D5F91
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 May 2020 10:08:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fqJTFeKzjT/CZv5KHU39yMmsyFvJr1/OznD7lnxMY5U=; b=VAWFqQQJ4pf8Eh
	ejx7Cr+wUpQGirF1ovyrBfGjy4zCgdoleTOQrCab4dQm+bKzokoehqrXka2W0DMWITwc1Se686JzY
	nFIk53EG+z2AkGFRts1jtqV9IAiDvecmxKvJ8FECrTkAgOViifr9gfQtX0Yq/CpnJ/1B4MK3GJhF5
	4DREN+SEdyAcaEv4ASqBHtHj2tX6ZmhF5hTqRRpmgnQFaNNtr5r4v9jeirEUg5g4bOxMXb1PKitOA
	7l4YKWRiuu5Z3LLhUO8VV4c85WNE2ht6nEUDLjCGlt/ndh7voxBVKzQXQ/lyUwvpMRVr6FX5MRQmn
	SaON8CuOEhQsx2mz88Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZrsB-0001Mv-Ej; Sat, 16 May 2020 08:08:43 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZrrs-0001J4-7D; Sat, 16 May 2020 08:08:29 +0000
Received: by mail-ot1-x341.google.com with SMTP id v17so3930174ote.0;
 Sat, 16 May 2020 01:08:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=O65I1zmNTEDkuvl7Blq3pU8Ri7LhEzDZZNS97q+Lxi8=;
 b=FjZJlPbawLMM/ZnJkShIEUeOrq3GKC79i+Ha8DSCMNL0//k9tBNOU0sR3lhju/fJOO
 2DKQdMRwRr0WiTvH1iR2xKZtgbduQ8dQxIYrOhDDnnblzp2hyrH1OXugdle89NgYRb86
 2INYSLAME7HtuuW6QzdgeaFytIS7WGh4LAVTG2xtoSsmSPVm6p/TE2vPh4b6bmvb4/Ro
 O7aDpCAdhhTucTt4ayjJBqenIEOpqTmeYCbBxKkQEMMebFyfWsQQ2Q5jxIw4Pj/JsiKD
 IU143p2NZxRlWYkVx+tYqHDerYpGkNOaRNs312EOsk2KRgMVRew7ZXsyk8c4EbB6Xvbk
 DkjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=O65I1zmNTEDkuvl7Blq3pU8Ri7LhEzDZZNS97q+Lxi8=;
 b=SGsbgf1mWize1rF4GYb4OM308pdvCvWA20/iohZhlzLU9HdHVvoqFTbCSS3KDf6Jmx
 VT4bH2UvOhjgVv6QMsnXy9luzXOSA5INfNoiuI4SO49agW2ijVmWq+4fFFPiumIP0GHB
 foSS3myda6QnuShUk0ZtPCMvP0pX/okBim6iobAe/LKZ2n+kol9qGePeMoG2w6tlVrG1
 m8YyXYGgiYEduzn3odOUyoStVTBVkU7Dl4zCZFEBslaEoXbMeKmdjXjDyJxwBkhzWG8B
 Q05VCd+E7slZzPkmas4Fn+G2vYmhrja83Ya75HIXjbufxKz4N9WDtx+bmF9ybtJSV9nA
 nF0A==
X-Gm-Message-State: AOAM530ZWxZ099M1XyFpFlqg8pHVwXdiYaOQeQ2solqiHsvt0mZtQwRr
 Ne2q9qCKh1up24ezhY8HgDc=
X-Google-Smtp-Source: ABdhPJy9xrUAJUSrZGHz4rjNK3oxki+IlpWEmBm4DbMT7HduARzjVorHFCT1Vym5JNh1k3gyGNDlJQ==
X-Received: by 2002:a9d:7dd9:: with SMTP id k25mr5079985otn.328.1589616499102; 
 Sat, 16 May 2020 01:08:19 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id n11sm1321064oij.21.2020.05.16.01.08.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 May 2020 01:08:18 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH 1/2] clk: bcm2835: Fix return type of bcm2835_register_gate
Date: Sat, 16 May 2020 01:08:06 -0700
Message-Id: <20200516080806.1459784-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_010824_274417_D7716E4F 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [natechancellor[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Sami Tolvanen <samitolvanen@google.com>,
 Nathan Chancellor <natechancellor@gmail.com>, linux-clk@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

bcm2835_register_gate is used as a callback for the clk_register member
of bcm2835_clk_desc, which expects a struct clk_hw * return type but
bcm2835_register_gate returns a struct clk *.

This discrepancy is hidden by the fact that bcm2835_register_gate is
cast to the typedef bcm2835_clk_register by the _REGISTER macro. This
turns out to be a control flow integrity violation, which is how this
was noticed.

Change the return type of bcm2835_register_gate to be struct clk_hw *
and use clk_hw_register_gate to do so. This should be a non-functional
change as clk_register_gate calls clk_hw_register_gate anyways but this
is needed to avoid issues with further changes.

Fixes: b19f009d4510 ("clk: bcm2835: Migrate to clk_hw based registration and OF APIs")
Link: https://github.com/ClangBuiltLinux/linux/issues/1028
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/clk/bcm/clk-bcm2835.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/bcm/clk-bcm2835.c b/drivers/clk/bcm/clk-bcm2835.c
index ded13ccf768e..7c845c293af0 100644
--- a/drivers/clk/bcm/clk-bcm2835.c
+++ b/drivers/clk/bcm/clk-bcm2835.c
@@ -1448,13 +1448,13 @@ static struct clk_hw *bcm2835_register_clock(struct bcm2835_cprman *cprman,
 	return &clock->hw;
 }
 
-static struct clk *bcm2835_register_gate(struct bcm2835_cprman *cprman,
+static struct clk_hw *bcm2835_register_gate(struct bcm2835_cprman *cprman,
 					 const struct bcm2835_gate_data *data)
 {
-	return clk_register_gate(cprman->dev, data->name, data->parent,
-				 CLK_IGNORE_UNUSED | CLK_SET_RATE_GATE,
-				 cprman->regs + data->ctl_reg,
-				 CM_GATE_BIT, 0, &cprman->regs_lock);
+	return clk_hw_register_gate(cprman->dev, data->name, data->parent,
+				    CLK_IGNORE_UNUSED | CLK_SET_RATE_GATE,
+				    cprman->regs + data->ctl_reg,
+				    CM_GATE_BIT, 0, &cprman->regs_lock);
 }
 
 typedef struct clk_hw *(*bcm2835_clk_register)(struct bcm2835_cprman *cprman,

base-commit: bdecf38f228bcca73b31ada98b5b7ba1215eb9c9
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
