Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDAEFB057E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 00:19:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=kKFEWpJpsh6Lt/OrO+Qyp+7gumufV1fCSuo9d7r9Ng8=; b=Wnq
	TIiRIAzzjtZj7vdDW7QiuZ8KJQsrQHHaVpJBLMU6sdiKptjlB4NM0EbgP5IjdyLZwC7fIKz8+F4uq
	H9GhGHfpdXEHg6VRvFa7q5ZM/xda8qzUlXO7lSXxejf6wgsyil1d0wxQndozcxwJAdvij0C4OvS79
	bSSK1uYspoeAzT1ALQbJ77XY98MgsCFLvruvtr9WN135xkBGFO55HsUPFP/t03Gfgrl/oDFtl7tts
	VtvpQLnzkm9oERAvKcDq0ayRWeXeyg7FQXIJP7uxdIoljSPwcpr6irLMEilfKHaWmSoV1uaLHRbtt
	QKojR5FVxuRAkXtCCMLgJr0W1NP6tRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8AxF-00081I-JY; Wed, 11 Sep 2019 22:19:13 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Aww-0007x7-OO
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 22:18:56 +0000
Received: by mail-pg1-x541.google.com with SMTP id x15so12246714pgg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 15:18:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=XMh9vqXFV71BBXfbQeqQ2AI4/VRHGP8NHDiJ3hd+W2c=;
 b=dfUFqn9GmQQfPInseKvxR8/MfpW8jptfI5OoFIgi0zvZOMbwaNSR10Eq+XBJSFsNYd
 vGjgVyaCttoTF0bidKsGXaXdbNpRpMIva11M19yysOu907+gXXYL+v/A4NnXoUMCxDuO
 rUorgIlhOWzW62Yag0jaeWo8A5lF25viT8ELc0+A/LeZzl8Y8c1xQ9g+REJ8UIGOgBuB
 mqYMZ5Arjb8bcZc2LIvu52wngHmg07ljwecDu6tXfwOvyi6sErhzDq6bZQo9X03SNDGb
 LZqK5p7G9e8iuZWNrfehZHgS7Yfjbe7yaJUCgBtFlus2nv2h13jIlVEzU25ZMgxHHe2+
 X6/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=XMh9vqXFV71BBXfbQeqQ2AI4/VRHGP8NHDiJ3hd+W2c=;
 b=hoMrxOI9bITlq8NkM5I6QHyqzDbM4cj85hYbjv2PbCRH7HBywJ6m9gZEuuVGwTsHqu
 5JzAt6QtPazxuHx32Nycb3ITyIYQciGOPpyEkDMIPMCNf18exkY1IN+37E9nDWkQalDL
 UcrlIioRsvUsxKwiXIYcmol6JYX7jG+QDmQUcdNGMpDoXtQQBo3tDW3UtzucHQc15H5e
 fy70ZXPHCp8Ne3ddGyusUeYCgQpbKSP41bWXiuvhOLiFQ5Lw+M8rK7iWz0TZQlYWfJG1
 itT4YWe7V9Ptpha3DEF+gR8gN3Z+Atl74eY5mfrINtz1Uf3c+FfQmweuDfnpro2JXIeK
 1lyQ==
X-Gm-Message-State: APjAAAXUFasyW1yTah9lIjhdcWk8NuXcZro+degUp5FaqcMRl2VoSVcf
 LIHfg7/Fp5kWzxhj0az8PwiRUw==
X-Google-Smtp-Source: APXvYqzABztHQChdM8v4krHqAsKVKJHoGyO3bgM5SrAaN0DScRsQ2Ub9RLeinBiXp7kc3wggdgVYNw==
X-Received: by 2002:a17:90a:266c:: with SMTP id
 l99mr8084116pje.93.1568240333366; 
 Wed, 11 Sep 2019 15:18:53 -0700 (PDT)
Received: from localhost ([49.248.179.160])
 by smtp.gmail.com with ESMTPSA id d15sm22787418pfo.118.2019.09.11.15.18.52
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 11 Sep 2019 15:18:52 -0700 (PDT)
From: Amit Kucheria <amit.kucheria@linaro.org>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 arm@kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Mark Brown <broonie@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Sebastian Reichel <sre@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Will Deacon <will@kernel.org>
Subject: [PATCH 0/4] Cleanup arm64 driver dependencies
Date: Thu, 12 Sep 2019 03:48:44 +0530
Message-Id: <cover.1568239378.git.amit.kucheria@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_151854_952250_1707A3A0 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-gpio@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-pci@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I was using initcall_debugging on a QCOM platform and ran across a bunch of
driver initcalls that are enabled even if their SoC support is disabled.

Here are some fixups for a subset of them.

Amit Kucheria (4):
  arm64: Kconfig: Fix XGENE driver dependencies
  arm64: Kconfig: Fix BRCMSTB driver dependencies
  arm64: Kconfig: Fix VEXPRESS driver dependencies
  arm64: Kconfig: Fix EXYNOS driver dependencies

 arch/arm64/Kconfig.platforms   | 3 +++
 drivers/bus/Kconfig            | 3 ++-
 drivers/clk/Kconfig            | 3 ++-
 drivers/clk/versatile/Kconfig  | 4 ++--
 drivers/gpio/Kconfig           | 1 +
 drivers/pci/controller/Kconfig | 1 +
 drivers/phy/Kconfig            | 1 +
 drivers/power/reset/Kconfig    | 3 ++-
 drivers/regulator/Kconfig      | 1 +
 drivers/soc/bcm/Kconfig        | 1 +
 10 files changed, 16 insertions(+), 5 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
