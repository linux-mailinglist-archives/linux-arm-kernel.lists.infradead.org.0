Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 585ADFFA12
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 15:08:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nKFmX32cP/a0cC4DULapUH6eoo8u+PHZHfaYCzzG1ts=; b=Jx08fBvqu2feKE
	6wRkBqyI9OrytfBY7dhLaGnwdg/Uit+/UZ28agI8xFsqRv8x5y8yKSTECgCG6VWST5En5Q2ke/pwM
	IRHYs/ZPgYLa3xn0k5re5sKdGariqG2QYlvOwqBX6DUd60jv4O0VKytDLGuyN6mTtRumV9d3iazjx
	csQmyqpnlS0FgyHTK4JoR52uWKCfHBqhy0dVeAE0MkK0/WzVs/EeU2p7PSJkEHvwHA1GMuzPtX0gJ
	qzQxIILZeoxQO24mGMQj89ETKLOuexSqipGz2BqonxcChB+yIHfAGj8u9jIF9Zsom/IhcoGYff5QL
	OOpd7sNszwqw9BP4GtXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWLDl-0005au-TI; Sun, 17 Nov 2019 14:08:09 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWLDJ-0005Dk-Sf; Sun, 17 Nov 2019 14:07:43 +0000
Received: by mail-wm1-x342.google.com with SMTP id 8so15882910wmo.0;
 Sun, 17 Nov 2019 06:07:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sfzf92CL96vr/sJWUdQn1rqPMmFFI9Y4IH1A/bb5Cto=;
 b=mBKRzVbA3Tv3a6pbW64Ow5gGE3LSx9JeXieKON1RqjRi5XeYL3JzMm84p89fUR+Se8
 m7C2+rmyLe6BY1KQvdWo+3EQWTgK5mQxO/bKZw7UeQA4u8xpXfDJBL6s48aaprOjTeFF
 Jhym38GFkOeNU3AiqC3aC6jDA2EQ2t73XTnzfphrM8hSUD5rJfVKKXAwIlhmZUWd78iO
 IdTieocxOxxi6dz6Vp5wJGZmrZOtBVjFyvdDfAn/c1vsGleLwHYFayRUDpnufEX1lQaL
 SamknSR/Nw7KdgUSV0EZZYrAldz2L1Em/Uh+HMKaffnR0RwWTppmT+ly+pnKy5IOKsUR
 5ojA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sfzf92CL96vr/sJWUdQn1rqPMmFFI9Y4IH1A/bb5Cto=;
 b=l8pQCGBeEF5J5R3WPJEaEny1qGSuhpVP/GC6tph+9DftpO4u8TXgN96JzDASxU6ZLL
 bpUUSY2ydmEiDvQPBLBr3UBN8BHCfhNV8G9+fbwCLOjzHXHULgH83DzNyVmjkuiPZrDH
 pMR1PnU/EXYsgYhHTqxZNJcPelP1f/fglJDGFeqRxPnyJSVzdeoQG4EAn/2oEiz4zB/R
 F6XnCedwzEG9HFvTcghspHcjGdt7682faW47N6BWM6RokA2NdfeLSgiExIOLRSfmlFFz
 NbqL9p+if8T4H2+vc6FRSZgCYWaO/xWgBMfyXBUo0VuzGVZmJ0ahJqgqjwbXXaXHXRtN
 21VA==
X-Gm-Message-State: APjAAAXbyX/hdnPwP0yQIX0g5gpaJzS+YFkViyfBCJKQm7gN4jZN11ID
 amv9xePAhGptGVQwPscdfmE=
X-Google-Smtp-Source: APXvYqwAK3MUz6opV/wXXyZ7DKoixlQvwdlMtfwitUFt5Oh7JGsEVPfq9X/zMatAONAuA3HEjgmlUA==
X-Received: by 2002:a1c:7708:: with SMTP id t8mr24189852wmi.29.1573999660252; 
 Sun, 17 Nov 2019 06:07:40 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1371CB100428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:371c:b100:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id n23sm16632977wmc.18.2019.11.17.06.07.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 Nov 2019 06:07:39 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: narmstrong@baylibre.com, jbrunet@baylibre.com,
 linux-amlogic@lists.infradead.org
Subject: [PATCH v3 0/2] add the DDR clock controller on Meson8 and Meson8b
Date: Sun, 17 Nov 2019 15:07:29 +0100
Message-Id: <20191117140731.137378-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_060741_955245_68239402 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
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
Cc: devicetree@vger.kernel.org, sboyd@kernel.org, linux-kernel@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Meson8 and Meson8b SoCs embed a DDR clock controller in their MMCBUS
registers. This series:
- adds support for this DDR clock controller (patches 0 and 1)
- wires up the DDR PLL as input for two audio clocks (patches 2 and 3)
- adds the DDR clock controller to meson8.dtsi and meson8b.dtsi

Special thanks go out to Alexandre Mergnat for switching the Amlogic
clock drivers over to parent_hws and parent_data. That made this series
a lot easier for me!

This series depends on v3 my other series from [0]:
"provide the XTAL clock via OF on Meson8/8b/8m2"


Changes since v2 at [2]:
- add #include <linux/clk-provider.h> as suggested by Stephen Boyd
- drop unused includes
- use devm_platform_ioremap_resource instead of open-coding it as
  suggested by Stephen Boyd
- drop trailing comma after sentinel element as suggested by Stephen
  Boyd
- dropped patch #3 "clk: meson: meson8b: use of_clk_hw_register to
  register the clocks" because it's now moved to my other series at
  [0]
- dropped dts changes so this series exclusively targets clk-meson

Changes since v1 at [1]:
- fixed the license of the .yaml binding and added Rob's Reviewed-by
- drop unused syscon.h include (spotted by Jerome - thanks)
- drop fast_io from regmap_config and add max_register as suggested
  by Jerome
- dropped original patch #4 "clk: meson: meson8b: add the ddr_pll
  input for the audio clocks" because I could not test that yet (that
  patch was a forward-port from Amlogic's 3.10 BSP kernel)


[0] https://patchwork.kernel.org/cover/11248377/
[1] https://patchwork.kernel.org/cover/11155553/
[2] https://patchwork.kernel.org/cover/11214227/


Martin Blumenstingl (2):
  dt-bindings: clock: add the Amlogic Meson8 DDR clock controller
    binding
  clk: meson: add a driver for the Meson8/8b/8m2 DDR clock controller

 .../clock/amlogic,meson8-ddr-clkc.yaml        |  50 ++++++
 drivers/clk/meson/Makefile                    |   2 +-
 drivers/clk/meson/meson8-ddr.c                | 149 ++++++++++++++++++
 include/dt-bindings/clock/meson8-ddr-clkc.h   |   4 +
 4 files changed, 204 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/clock/amlogic,meson8-ddr-clkc.yaml
 create mode 100644 drivers/clk/meson/meson8-ddr.c
 create mode 100644 include/dt-bindings/clock/meson8-ddr-clkc.h

-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
