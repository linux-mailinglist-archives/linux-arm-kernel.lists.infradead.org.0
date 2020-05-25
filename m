Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCBCC1E0543
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 05:41:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HPK7NND4HaSlhJb2ubCBflQJ77bjbti0MT+JdlwzOjg=; b=SQ3uocewVaacNr7QIdVJ+haMY8
	2z7t1EznXQQpxcGGHhXN/yEQq/WAkZ37ZD0l/gjGlZwusRn+1cu1j5TC+rNx+9p1rDqnnk3mppnlC
	4VvXsOmcaEXBAQRb+SivAcY5NKEG6Xe2Z8u6buFgbkbafX0EujIVJoMOYo4HtMoAyAMJ73t21PjPt
	773NgqnCx4GaOSQqi20kgs7Ka06CDn/niGNF/4zwZMq/Jsecd0Ys4lyecE9q4uINqr1tg7ybqU7iZ
	fU4oCGkiqWpaQziZWzYrIfMKLFCsQ9dxl9UNnqG5RKp1GkKpFVhQ332Z+CJZNvd9yFiIiLyGfRSMY
	q+yXKXFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd3zP-0002Np-E1; Mon, 25 May 2020 03:41:23 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd3zG-0002Mw-Ey
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 03:41:15 +0000
Received: by mail-pg1-x543.google.com with SMTP id 124so1913482pgi.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 24 May 2020 20:41:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=V6bHngqzBjjcimyp4HxH/p2UMJo9dJvIc8PwFZSC+CA=;
 b=aOeC/Nr/acFM3HuR/Lo9ZtaRnMkQ5S0uv2LDWJyAYXFdzmUzRE3n13Fhl8x4FV8Q8E
 XQB+9W906G96KSwV1kx6VsFfQY6MqD7Ui7+3z4+jtPFDQ7+LOeTQYXLj0MWSk8qTP2ln
 jlHo8yQ8AHp4Bjd7pefU72K2UID80/OCDtoEW7OibLN/DTbpSCdMSY/TkzGql8LzJVAB
 mEycMb7WC82ZzHF7G2vU2NH2LfKkw0z6nGy+hcWjTLQvl+uAX7szl0b7kwB54MWAAeb2
 NKSfqm7qnS6u6e7MwNcGSG2Vfisjk1AL9YvtF6veVWeuIy94iOrXs4qo3tEksUCm6LSM
 rj9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=V6bHngqzBjjcimyp4HxH/p2UMJo9dJvIc8PwFZSC+CA=;
 b=NG73C2mtem6gcKGNYQ1LJ/HZX/zBAa6vEtl3VmAFk7hInpMjVy4HH9J+rs1GqXquit
 7csLsVfS/M1uuEhy6upSeASH9ehpjmMxBuQtkvRPq4AqEUXZxPW51OVx+VvpfZiXKCAx
 9F68pG7XzsVS7nSjkMGdojPz0eGCH1wUzk3JRtj697jGMKrn5xhN3c7AB/AxQ82aXD52
 uAO5xZeevknSjpIac6VV3R1ZsXd3a8IQdUEqa1NGsolSbZheW9OE2S08gxhCBKqqDRdx
 TZfsiHzMivJxzA7JEj59vc3izMj694j5Si4rS1V/23ew6nNhfvTUMnj3hetn9ky7MdZl
 P3ww==
X-Gm-Message-State: AOAM532bqbYplc/yTs45tRtn7NvYb5v0xPxBzSFiggCPpFzABbUvnKbB
 O8ZiLJfdbDVyaj49J25QQHQ=
X-Google-Smtp-Source: ABdhPJxqLStyPNMFpP3TVYD0bkPBn6i+JD/A+HI8Eb7EY3tJVFtPEv203Lr79ePRqbSvGJDs5dnPYA==
X-Received: by 2002:aa7:99cc:: with SMTP id v12mr15435085pfi.279.1590378070073; 
 Sun, 24 May 2020 20:41:10 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.191.44])
 by smtp.gmail.com with ESMTPSA id 7sm11981695pfc.203.2020.05.24.20.41.05
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 24 May 2020 20:41:09 -0700 (PDT)
From: dillon.minfei@gmail.com
To: robh+dt@kernel.org, p.zabel@pengutronix.de, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com, thierry.reding@gmail.com, sam@ravnborg.org,
 airlied@linux.ie, daniel@ffwll.ch, mturquette@baylibre.com,
 sboyd@kernel.org
Subject: [PATCH v5 0/8] Enable ili9341 and l3gd20 on stm32f429-disco
Date: Mon, 25 May 2020 11:40:54 +0800
Message-Id: <1590378062-7965-1-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <broonie@kernel.org>
References: <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_204114_501965_C8F9EE04 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-spi@vger.kernel.org, dillon min <dillon.minfei@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

V5's update based on Mark Brown's suggestion, use 'SPI_MASTER_MUST_RX'
for SPI_SIMPLEX_RX mode on stm32 spi controller.

V5:
1 instead of add send dummy data out under SIMPLEX_RX mode,
   add flags 'SPI_CONTROLLER_MUST_TX' for stm32 spi driver
2 bypass 'SPI_CONTROLLER_MUST_TX' and 'SPI_CONTROLLER_MUST_RX' under
'SPI_3WIRE' mode

V4:
According to alexandre torgue's suggestion, combine ili9341 and
l3gd20's modification on stm32f429-disco board to one patchset.

Changes:

ili9341:

1 update ili9341 panel driver according to Linus's suggestion
2 drop V1's No.5 patch, sumbit new changes for clk-stm32f4
3 merge l3gd20's change to this patchset

V3:
1 merge original tiny/ili9341.c driver to panel/panel-ilitek-ili9341.c
  to support serial spi & parallel rgb interface in one driver.
2 update ilitek,ili9341.yaml dts binding documentation.
3 update stm32f429-disco dts binding

V2:
1 verify ilitek,ili9341.yaml with make O=../linux-stm32
  dt_binding_check
  DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/panel/
  ilitek,ili9341.yaml

V1:
1 add ili9341 drm panel driver
2 add ltdc, spi5 controller for stm32f429-disco
3 add ltdc, spi5 pin map for stm32f429-disco
4 add docs about ili9341
5 fix ltdc driver loading hang in clk set rate bug


L3gd20:
V3:
1 merge stm32f429-disco dtbs binding with ili9341 part

V2:
1 insert blank line at stm32f420-disco.dts line 143
2 add more description for l3gd20 in commit message

V1:
1 enable spi5 controller on stm32f429-disco (dts)
2 add spi5 pinmap for stm32f429-disco  (dts)
3 add SPI_SIMPLEX_RX, SPI_3WIRE_RX support for stm32f4


dillon min (8):
  ARM: dts: stm32: Add dma config for spi5
  ARM: dts: stm32: Add pin map for ltdc & spi5 on stm32f429-disco board
  ARM: dts: stm32: enable ltdc binding with ili9341, gyro l3gd20 on    
    stm32429-disco board
  dt-bindings: display: panel: Add ilitek ili9341 panel bindings
  clk: stm32: Fix stm32f429's ltdc driver hang in set clock rate,    
    fix duplicated ltdc clock register to 'clk_core' case ltdc's clock  
      turn off by clk_disable_unused()
  drm/panel: Add ilitek ili9341 panel driver
  spi: stm32: Add 'SPI_SIMPLEX_RX', 'SPI_3WIRE_RX' support for stm32f4
  spi: flags 'SPI_CONTROLLER_MUST_RX' and 'SPI_CONTROLLER_MUST_TX' can't
    be     coexit with 'SPI_3WIRE' mode

 .../bindings/display/panel/ilitek,ili9341.yaml     |   69 ++
 arch/arm/boot/dts/stm32f4-pinctrl.dtsi             |   67 +
 arch/arm/boot/dts/stm32f429-disco.dts              |   48 +
 arch/arm/boot/dts/stm32f429.dtsi                   |    3 +
 drivers/clk/clk-stm32f4.c                          |    7 +-
 drivers/gpu/drm/panel/Kconfig                      |   12 +
 drivers/gpu/drm/panel/Makefile                     |    1 +
 drivers/gpu/drm/panel/panel-ilitek-ili9341.c       | 1301 ++++++++++++++++++++
 drivers/spi/spi-stm32.c                            |   19 +-
 drivers/spi/spi.c                                  |    3 +-
 10 files changed, 1521 insertions(+), 9 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-ilitek-ili9341.c

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
