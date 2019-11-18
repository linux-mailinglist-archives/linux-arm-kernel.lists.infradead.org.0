Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0BFFFE95
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 07:34:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1iliXUHF+zE4SFYz4ZlLYam+ueZIkq2sX5mbwZAeoag=; b=k013QBfcu51PI+
	OzMKX4COcqUYldNKEBDqfWjKijM0MgL36UDCHh4tH2JRKrQjj057yg2hoxMOtdZ7dXp8K60SY6mxd
	wiBkrlWnJx+qgLBjqshmJwWfG7kOFTxOIh89MjOuc91SCQV9D6rSU4NDzqX2lrfsCHsbJuhRJ2qYL
	NHyB2RV/Zc+oId5WWtYN7/O6BkauAlgyLWmOdvzertyLBnahk3Jfw5vKRF7iIqOrsMB3iTHv5a9GU
	q72Z6W3LwT8CxBOZonuT58n8H2cUDMPiQgmH3MPLel50OjRXCqk6rOYOrxjNIG7B2qFaoMboAg25j
	/pO9DWeVNpd5jRNjg6Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWacK-00065g-UH; Mon, 18 Nov 2019 06:34:32 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWabk-0005i3-Gm
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 06:33:57 +0000
Received: by mail-wm1-x343.google.com with SMTP id z19so17415191wmk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 17 Nov 2019 22:33:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zJ3byi3aLV//wKwRUzx55Fw+IotBkoOqdaPqQTMPHes=;
 b=THMFXlprllbo1gFX6xbZ7rY4S/L01CPp+9urtLofnxT09uwfcbT9Z7n4ZdoYGOuRvL
 4Iz54jkLMwWtT0gZbI8EfC4LxI6OrJUPU1GwDRNgqDlS1+oYCEO3VYDY4XGV4/EINMp8
 +P2VmZ8005nrODaSM70AMAZgoYIBRJpu1yzRGyg6lZy8UhOQuA7hMlSS6vjkShVE+iwt
 it2uoqwEooJ1yqBLDPP1iAV9YgpOTwIQ+gw/JMgasDcfiDUs/lZpJy5f6V7v/9pmC0g5
 NTnmlHEwmsm8xmuWP2ah2o5VZ2Jm+Sdg/Y2+c3w0Ja/LeTQN6VBDamRaq9PpCllgooo0
 NYjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zJ3byi3aLV//wKwRUzx55Fw+IotBkoOqdaPqQTMPHes=;
 b=ZGtefLyh5ePjlc/naW+PCzTUwyCR3spNk4JLViQj6w78OgDI9UoFeNuupJRzwJq1Wb
 ANQMkWUvZLaQObyLtTJ2Fdau101UHccAzaKDAEWHHTF9Z/DjhEGZKsif+LjDqZvjSDq6
 hbbDPrtl1/BUOSxb+tr/9gGLQs4Rwr5c8LXcsiXKQ//JycIKGd90D3UX+iU+mJzF/Gfs
 L9O3aKSzIe1224bN79N8Xc0UUtFIPUDZckFSKTcFhY189S+s+nKiIhpQsQAYReo39os4
 QAORfq/ZVFfkyYPpZfg/DpMsntLkPUrSCwWoqu1b+v5GZUDLYGbZHTibGADR5QjiSCpF
 vmow==
X-Gm-Message-State: APjAAAWp5K/7uJX87B5JLgOeUkYKIc2KhD2lDl6BbFNKlS71BWsBFXre
 koL8vsFWHuPYvlm5QbWkY1Y=
X-Google-Smtp-Source: APXvYqwR9ud3AbyxLQqFItenQjE0lf0R040mQqwAEMUQyNxHtG3prJCfncFiYqvN5iDQJ4Ydxs2TeQ==
X-Received: by 2002:a1c:610b:: with SMTP id v11mr26832378wmb.156.1574058835178; 
 Sun, 17 Nov 2019 22:33:55 -0800 (PST)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id w132sm19750386wma.6.2019.11.17.22.33.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 Nov 2019 22:33:54 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 3/3] soc/tegra: pmc: Add reset sources and levels on Tegra194
Date: Mon, 18 Nov 2019 07:33:48 +0100
Message-Id: <20191118063348.1816857-3-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191118063348.1816857-1-thierry.reding@gmail.com>
References: <20191118063348.1816857-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_223356_569524_747BE08E 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
 0.0 TVD_PH_BODY_ACCOUNTS_PRE The body matches phrases such as
 "accounts suspended", "account credited", "account verification"
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

Tegra194 supports the same reset levels as Tegra186 but extends the set
of reset sources. Provide custom PMC register definitions to account for
the larger field for the reset sources as well as the updated list of
reset sources.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/soc/tegra/pmc.c | 41 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/drivers/soc/tegra/pmc.c b/drivers/soc/tegra/pmc.c
index 32b3e8d9155f..63195281718d 100644
--- a/drivers/soc/tegra/pmc.c
+++ b/drivers/soc/tegra/pmc.c
@@ -2927,6 +2927,43 @@ static const struct tegra_io_pad_soc tegra194_io_pads[] = {
 	{ .id = TEGRA_IO_PAD_AUDIO_HV, .dpd = 61, .voltage = UINT_MAX },
 };
 
+static const struct tegra_pmc_regs tegra194_pmc_regs = {
+	.scratch0 = 0x2000,
+	.dpd_req = 0x74,
+	.dpd_status = 0x78,
+	.dpd2_req = 0x7c,
+	.dpd2_status = 0x80,
+	.rst_status = 0x70,
+	.rst_source_shift = 0x2,
+	.rst_source_mask = 0x7c,
+	.rst_level_shift = 0x0,
+	.rst_level_mask = 0x3,
+};
+
+static const char * const tegra194_reset_sources[] = {
+	"SYS_RESET_N",
+	"AOWDT",
+	"BCCPLEXWDT",
+	"BPMPWDT",
+	"SCEWDT",
+	"SPEWDT",
+	"APEWDT",
+	"LCCPLEXWDT",
+	"SENSOR",
+	"AOTAG",
+	"VFSENSOR",
+	"MAINSWRST",
+	"SC7",
+	"HSM",
+	"CSITE",
+	"RCEWDT",
+	"PVA0WDT",
+	"PVA1WDT",
+	"L1A_ASYNC",
+	"BPMPBOOT",
+	"FUSECRC",
+};
+
 static const struct tegra_wake_event tegra194_wake_events[] = {
 	TEGRA_WAKE_GPIO("power", 29, 1, TEGRA194_AON_GPIO(EE, 4)),
 	TEGRA_WAKE_IRQ("rtc", 73, 10),
@@ -2949,6 +2986,10 @@ static const struct tegra_pmc_soc tegra194_pmc_soc = {
 	.setup_irq_polarity = tegra186_pmc_setup_irq_polarity,
 	.irq_set_wake = tegra186_pmc_irq_set_wake,
 	.irq_set_type = tegra186_pmc_irq_set_type,
+	.reset_sources = tegra194_reset_sources,
+	.num_reset_sources = ARRAY_SIZE(tegra194_reset_sources),
+	.reset_levels = tegra186_reset_levels,
+	.num_reset_levels = ARRAY_SIZE(tegra186_reset_levels),
 	.num_wake_events = ARRAY_SIZE(tegra194_wake_events),
 	.wake_events = tegra194_wake_events,
 };
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
