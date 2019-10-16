Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D43D91D5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 15:00:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xYS7RLBogL715HfLMGMk/8+X27yMULAuaev65GtQgO4=; b=DUpm222fL5xOIB
	y/6EsNhZAHcNhTpjBeeL5sck4EnV/WoOs+/xuA1Ewqn4bZKOx1I6wEbkRiZHZzEJ6+/17wXsQISKJ
	P78NZOOVeD0fFXlS0y4rnsAdTZIrWT3VHIBeztPEfcTj+GvtDZzrD7rVJjNt3BFYtjeR80YvIlqq8
	vHnjYK03jS5GSn51UjGFqQG1ZX6GMUrzD1969wqW8zcnyF+w/QfEM/qQjBEvFcksaO9vtFJ1+jqyf
	z5qPBKoqZ0XrVwprgwGCri4/qR74jfaWar8o/0UlqZVYLXBXRtVYHbJ/wf5z94a/HAyZInZ6kPgFN
	R/B36rN7WRbQL6BgsINA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKiv4-0006Lu-Nn; Wed, 16 Oct 2019 13:00:50 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKitn-0004E3-Tq
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 12:59:33 +0000
Received: by mail-wr1-x441.google.com with SMTP id o28so5324391wro.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 05:59:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Q7jAfBGXHUyx/LUvk2L9tzWYRWPJadJGR99Kjhb0L5Q=;
 b=U2jFRhKt7a8y5JfH55RtR+hxFdogejNwMpy3WulgyA3kbAASWfRc6hAjgSdeuXr+ae
 +72/gcQqsr65JlnOkCi/0AbNKRVaOg4pAkZE9ih2Ds0r7r3Z3IYufIXMpDff2W5Bgns7
 SKUI2itah5PJsx2aKdyFxU+46v69HTPx9lSIrWbmVpP+UWCHCh5BTZsp3DpVrlTO9CGw
 NSjNrcsRGvxMtQQ/0StkPTUtQsi92HAmI8Jt0Hn1MKSBEPWWmJ+JNnctkYm/gzl2kQvQ
 JmCwRAi5rly91sqJkf1jBYpD9ZY5eP/y178x5wY64S91Z1iTlwOAMZAsxP5mK73lVTvj
 aZ4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Q7jAfBGXHUyx/LUvk2L9tzWYRWPJadJGR99Kjhb0L5Q=;
 b=nEjUw6FRa1ggV4N8h64uBkO/QT8a2o/FQ0BVdfmc3Tzgi6hmXOwQi0xUo5AxZnenzs
 SvQPVycKL/XkI3UKst4H+ceV3l1zt1oDVUF7Z9AwYDgqpMCgtzbLIv49AZoiAaEgBQ4Z
 Q2SRw8GUI9k8dWt+D3bsvOB/LT2S8nlWbs2j0fbr/zznrzx4w7dsNSAWLxycS1Crcc/b
 1K2rTS17yqI6HH6n3Y8PPv1G/3TAzfff8oV5B1U6edsq/vmMlLGgz6+LMqXmfCpCf2bl
 Gj0izDOQBuCutWJEYvf09IahlQ0+hgDB0wmqALfmjqHLmNsxo5oWrS8Jt7s6M14vBXjO
 5zDw==
X-Gm-Message-State: APjAAAXofesPxbghCLogxcy/RtsVwsJvFJ6M+epZQtrjhaMdZbp/TzQp
 odxTfadMk7OVjmBlK2mYODQ=
X-Google-Smtp-Source: APXvYqwrFKVSoYywCXHLWUXYfkHwE6xGcuUdFBuSWfDOhB5b/Mnp8xQ1P2CKThYWXiPDGLIiVzp6Eg==
X-Received: by 2002:a5d:4ecc:: with SMTP id s12mr2749184wrv.73.1571230770458; 
 Wed, 16 Oct 2019 05:59:30 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id j26sm42191593wrd.2.2019.10.16.05.59.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 05:59:29 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH 4/5] clk: tegra: Reimplement SOR clock on Tegra124
Date: Wed, 16 Oct 2019 14:59:18 +0200
Message-Id: <20191016125919.1773898-5-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191016125919.1773898-1-thierry.reding@gmail.com>
References: <20191016125919.1773898-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_055932_025171_54FFBDC8 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-tegra@vger.kernel.org, Peter De Schrijver <pdeschrijver@nvidia.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

In order to allow the display driver to deal uniformly with all SOR
generations, implement the SOR clocks in a way that is compatible with
Tegra186 and later.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/clk/tegra/clk-tegra124.c | 22 +++++++++++++---------
 1 file changed, 13 insertions(+), 9 deletions(-)

diff --git a/drivers/clk/tegra/clk-tegra124.c b/drivers/clk/tegra/clk-tegra124.c
index 7d231529c3a5..b3110d5b5a6c 100644
--- a/drivers/clk/tegra/clk-tegra124.c
+++ b/drivers/clk/tegra/clk-tegra124.c
@@ -1005,20 +1005,24 @@ static struct tegra_devclk devclks[] __initdata = {
 	{ .con_id = "hda2hdmi", .dt_id = TEGRA124_CLK_HDA2HDMI },
 };
 
-static const char *mux_pllp_pllm_plld_plla_pllc_plld2_clkm[] = {
-	"pll_p", "pll_m", "pll_d_out0", "pll_a_out0", "pll_c",
-	"pll_d2_out0", "clk_m"
+static const char * const sor0_parents[] = {
+	"pll_p_out0", "pll_m_out0", "pll_d_out0", "pll_a_out0", "pll_c_out0",
+	"pll_d2_out0", "clk_m",
 };
-#define mux_pllp_pllm_plld_plla_pllc_plld2_clkm_idx NULL
 
-static const char *mux_clkm_plldp_sor0out[] = {
-	"clk_m", "pll_dp", "sor0_out",
+static const char * const sor0_out_parents[] = {
+	"clk_m", "sor0_pad_clkout",
 };
-#define mux_clkm_plldp_sor0out_idx NULL
 
 static struct tegra_periph_init_data tegra124_periph[] = {
-	MUX8_NOGATE_LOCK("sor0_out", mux_pllp_pllm_plld_plla_pllc_plld2_clkm, CLK_SOURCE_SOR0, tegra_clk_sor0_out, &sor0_lock),
-	NODIV("sor0", mux_clkm_plldp_sor0out, CLK_SOURCE_SOR0, 14, 3, 182, 0, tegra_clk_sor0, &sor0_lock),
+	TEGRA_INIT_DATA_TABLE("sor0", NULL, NULL, sor0_parents,
+			      CLK_SOURCE_SOR0, 29, 0x7, 0, 0, 0, 0,
+			      0, 182, 0, tegra_clk_sor0, NULL, 0,
+			      &sor0_lock),
+	TEGRA_INIT_DATA_TABLE("sor0_out", NULL, NULL, sor0_out_parents,
+			      CLK_SOURCE_SOR0, 14, 0x1, 0, 0, 0, 0,
+			      0, 0, TEGRA_PERIPH_NO_GATE, tegra_clk_sor0_out,
+			      NULL, 0, &sor0_lock),
 };
 
 static struct clk **clks;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
