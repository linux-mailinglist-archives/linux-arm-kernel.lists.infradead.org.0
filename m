Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D55ABFFE8C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 07:34:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2JMWALjdjJSNs/DG7JaA4zxR37EDV5xfknbtkU2dW1U=; b=Fxwb7CuSDpluhb
	9deTkhMjMnGCAJTDhpYkwMLlX3KlbgZ9laeQUFyJOmFdvww5Uq6J7EL+YkqcHycsNMbZeGZz0iMaF
	bly2JUfwViQLGzBqzueEWutMt3mnXtcSBoNpHGmK7eB+uYk1S8OC+kUtQ9C9ttBlW+Dh/79YHk9+C
	OVFr9dlwkg5+LFbfq92MGehSR384d3iCWtKlm3cKj5DpquYo7wMgAJW7MMvPEanVr9N83gJQnAnig
	uHwxHvPzEIEiKAe/7wNPYetqhS+yC8HGXYOpjMvd7iKNEqMz0uV96EQ63y8EwOXAlqBlBuaF1/iTF
	yvvYS8jRNTJKBdphxQFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWabv-0005iA-R7; Mon, 18 Nov 2019 06:34:07 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWabh-0005hH-C0
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 06:33:54 +0000
Received: by mail-wm1-x341.google.com with SMTP id c22so17377301wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 17 Nov 2019 22:33:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=35YhNlP7XHyfbfIvRXQyE3MF+iWQvCIj1yQe5xoyT64=;
 b=c2yTCxlbyF9DKXPnbPuU6cgd0OJ8C78edMT/pWyZZl4QZgMUPyKeWr1nSGiXLRGK6c
 j3ufxqINSzDaFiFJEceuV+cpj7obJfm127FT1A8ZlgTXPEPOtmX0ioREvwFFxc9+CFsF
 juIvhvwMlLa0H7W6z2vUcCdBHEXQFv3sOdj/7+S/ZX3X8jCzMBIcmoD+/EDdw/i9MV7a
 oWAHrz8yFiT1zVC14JQJ3aOtXJntmX/AqjgnnvkcHWfC+ZWoZYym+rjPY4K4oPLAiAIN
 XY3Q9sSKhiiyo+/G2H6U+Vx3EO/izO9HnpPyCATLGfefJrzeQri2y3lzdQXr1jRhNQvx
 U43w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=35YhNlP7XHyfbfIvRXQyE3MF+iWQvCIj1yQe5xoyT64=;
 b=X/UNUlMKjODhseL+JRXem3vs0XDhyhLYUkdhEErrU9bBxjw/sTXvtW8pdx/9Xltbdm
 lE3gDABaLJ+WBZSL4mdz4uapNXSYf/9MauzcpVwXvbktUnmNo95CUvTk30lCUr9/t067
 vsd1PQKyqu+3NvH3GmYEi3G6yn15ikRQRVIVWiXEGZpq9RML06n8mNCOQL2VfUeRFwSI
 h/Iv1qqUnDyZn/D4+gag6UP2wJP8Am5qbfz7A1MEoaB0SG26QLA4nNAM2H7k4c2Osndk
 pGerSG37CBsUFmDtyYWBVUTSjbQdcKQkI8oXA2N7V5Lh4B/Hqa//2ch+Oc7J39zBw0nm
 TYaw==
X-Gm-Message-State: APjAAAWj2JySfsnW8GhMYNIv+Ee3WvLI5KR0wwY+UI8t4vBllhcO/70G
 vrB9M5+I7NFvbOVPmrQ14x4=
X-Google-Smtp-Source: APXvYqwQCJiG/puUxtO0L3NAyS183k5IgtY2GxGRDkNl1D0ypWzfjRbCF2l6U06y9KFst7XBvfONsg==
X-Received: by 2002:a1c:984b:: with SMTP id a72mr28162457wme.78.1574058831216; 
 Sun, 17 Nov 2019 22:33:51 -0800 (PST)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id 5sm18143862wmk.48.2019.11.17.22.33.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 Nov 2019 22:33:50 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 1/3] soc/tegra: pmc: Use lower-case for hexadecimal literals
Date: Mon, 18 Nov 2019 07:33:46 +0100
Message-Id: <20191118063348.1816857-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_223353_438586_78314D29 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-tegra@vger.kernel.org, Vidya Sagar <vidyas@nvidia.com>,
 Sowjanya Komatineni <skomatineni@nvidia.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

The remainder of the file uses lower-case for hexadecimal literals, so
change the only odd-one-out occurrence for consistency.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/soc/tegra/pmc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/tegra/pmc.c b/drivers/soc/tegra/pmc.c
index 4e51248634f8..927eeecd34e5 100644
--- a/drivers/soc/tegra/pmc.c
+++ b/drivers/soc/tegra/pmc.c
@@ -2805,7 +2805,7 @@ static const struct tegra_pmc_regs tegra186_pmc_regs = {
 	.dpd2_status = 0x80,
 	.rst_status = 0x70,
 	.rst_source_shift = 0x2,
-	.rst_source_mask = 0x3C,
+	.rst_source_mask = 0x3c,
 	.rst_level_shift = 0x0,
 	.rst_level_mask = 0x3,
 };
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
