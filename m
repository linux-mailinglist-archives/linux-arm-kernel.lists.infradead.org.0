Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2863E10063E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 14:11:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vF284CXR3QiINdvhfvx58JJ433rmpz5yw3C628Y1gpg=; b=gfysDJDMXJKWSU
	wAIQ0n9wP2VJ7kKvL8lNAQqKWrzbm5xY2NFtE7rDlykaXPNjQdatQSm6DFfd9KfcJa2RrL+4XAtAe
	kR1cBjsrZlFTWb0meAN+Dmr6+LhXmnNMpIB/HL6Ha58pwqOhGrqa/DkjHgBuX3890Ek+ir2jxxeat
	0xbyWGynxZyuXdk28Rw1rMgSATP+PPr2l3iTNc8PVFZiXF8CxfQnD745u60ZCOTJHpwuYVltsspHn
	8tzlUJ9Z7t864I5sVJ8Pb3Uj68kImVZ+ZBiEDs5gdx/GIh8qh5WLvhOqXK4800TfdLZSoxQNLDpcd
	mOxm75V50M03nBvFeH6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWgoV-0001fg-9f; Mon, 18 Nov 2019 13:11:31 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWgo4-0001SW-P8
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 13:11:06 +0000
Received: by mail-wr1-x441.google.com with SMTP id n1so19372204wra.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 05:11:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=k+1aw8FZcn9vm3OtpXHxipwlf8vYx7AC6lIfwsEHkRg=;
 b=id6NNUTPEzrjed3PoRHETDxJNYkvYTO1EanHnXqQjdM78xpb6uCFlZvbU4EA0wcIB6
 zQQ7Eh1jv0gVoITyBMdYZ1A7IYuddYNWIlhvjapDs9EG8TFEs8SpkoX7R5/zke0rOpO6
 7KF5YtbOqhboGASTa5Sgl8jzFEbTU1VcbH5YrRngLXLekFif84hPD6f4MfnYwV5SSVPF
 4wnKfQA2p/SGBsevenkefS7L8gUeNVvc/GN8LD3uG+eTHiiq14+p1PZRH/bNCl5sk7iB
 90oAFyFPTnHop8I4HAiOcnD+8R+mQR/k9IS8qpGkiOZ9wCJGvmp6G+RFzmMjGub7fW9H
 O06w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=k+1aw8FZcn9vm3OtpXHxipwlf8vYx7AC6lIfwsEHkRg=;
 b=VO+Oq4ItpoJ+vjzbulOLKToo0gSRlYsOKz/s84za8crt4BLTbbRzANY3EC1/xgtE3S
 lv0B4noVyaL3Tl9kYJZ+4eSceTX/HXCRDxBxojSrhqWGi5XrRI28TcjgwxIqLWtxXUmR
 FuDY2hdkkaLdZRRhtAl4h9OtYD5R6Xt69tJC7bu/cuheUKt9cLDFe0vBrAoekZdD/daX
 /+tDGzthA1056MPXPJ8ODHeQrXujRIyUoZYwelTMNorB30xiAR/J6lFTuDxlRxZvb6xd
 Ft5nh1xI1gsiQtYnS/sd+qZbEbf5ksuvS4zjMLxxglWqSrZSO8GjWhC2CK0BsufJ5oeC
 s7Aw==
X-Gm-Message-State: APjAAAWbVtfNXrfzaRXMmG17IHSvpIcxDcay8M+tCXhC7mY2WGho2cv0
 Zk+AbUzbOdR84W8k5Q9uvVY=
X-Google-Smtp-Source: APXvYqxaeXp84vNNj9I65C1/euxrJbcaTdlonBJ53isXqVi8QVWmAq2v8nCkwX951BmdxF7Qp0VoBw==
X-Received: by 2002:adf:dc90:: with SMTP id r16mr10936285wrj.258.1574082660414; 
 Mon, 18 Nov 2019 05:11:00 -0800 (PST)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id h205sm21938992wmf.35.2019.11.18.05.10.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 05:10:59 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v2 3/3] soc/tegra: pmc: Add reset sources and levels on
 Tegra194
Date: Mon, 18 Nov 2019 14:10:58 +0100
Message-Id: <20191118131058.2336829-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191118063348.1816857-3-thierry.reding@gmail.com>
References: <20191118063348.1816857-3-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_051104_813154_EC2C8750 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Changes in v2:
- use the new Tegra194 register definitions

 drivers/soc/tegra/pmc.c | 43 ++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 42 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/tegra/pmc.c b/drivers/soc/tegra/pmc.c
index 1916899d09a3..ea0e11a09c12 100644
--- a/drivers/soc/tegra/pmc.c
+++ b/drivers/soc/tegra/pmc.c
@@ -2926,6 +2926,43 @@ static const struct tegra_io_pad_soc tegra194_io_pads[] = {
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
@@ -2943,11 +2980,15 @@ static const struct tegra_pmc_soc tegra194_pmc_soc = {
 	.maybe_tz_only = false,
 	.num_io_pads = ARRAY_SIZE(tegra194_io_pads),
 	.io_pads = tegra194_io_pads,
-	.regs = &tegra186_pmc_regs,
+	.regs = &tegra194_pmc_regs,
 	.init = NULL,
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
