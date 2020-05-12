Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C121CED8F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 09:04:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=N40LdK8fSQ7JiYSym92se4vL+0UJ9LP7snwrEXSOCMk=; b=peC
	B3gugpvy9PDI6nLbfT0MWua/NNITw7VD062V3arMuaKdIX1/HTRvPZseqLOLY4CgFSMQAqJreUiUx
	HNHW/eciGJd8gHA6CSvSgMeERHg1SB0aAiuZ6CK5tsrsu3nGr+oqEi5hDs2Enopi8UKtAwDFjkXBm
	QL+hzFr1REGnLm2edxOV24oqlH6jfiZZ7UskZp8aX8vAXN7sL1dMOdk2I3OKwFTlvV05weoNyikAI
	+CFTAAxl7Qoh35PjtsmVkNxtBt7mjrVWs6goaEG8Yuk7eVykYL23Zvwx+evQt32DVLryb0tVIMFl4
	FUGvfIp/0uN2oNvfniPnIKJnojdHv5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYOxI-0007VV-2L; Tue, 12 May 2020 07:03:56 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYOx8-0007To-TA
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 07:03:48 +0000
Received: by mail-pj1-x1043.google.com with SMTP id mq3so9066523pjb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 00:03:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=mipxNW7wlMfxMGzhO28Zqov8GTbtGeGtVOGitUJWy1g=;
 b=jhsgIyTPnDqRWSwbXSvTHyprY40KS9vAbW6rcrOxqvOdnjjSCNpBTwLTElgpNEzgCv
 B/hU4Z8wkqrvGJHq59AS0U9JQ6yXrwGMFmB8kBkBvf7nXAqmNJ0jZaejbMa5GQZuvEBS
 eLoZmX4dAQxHnMwTz0F++g+Q9cMlfwGAGLMmpOWVa6HNkUWlnh6e16A5ZPiiELLtULyY
 z563mUjwWwpWancdRnp0L6fRRlwklxrRA5iRY5cvzd2FlBcT9lSknFeoiEuJJfdTgctn
 X/bMM/ECf64aLI5IcgeQibHurIkmnmOFetTDvjvalW3B8d+rNzxbwXeZHB3ykoTPHH3C
 BXeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=mipxNW7wlMfxMGzhO28Zqov8GTbtGeGtVOGitUJWy1g=;
 b=cKEjVbjdAx+d9do0ls6MZBFyQ97qvHMcZlyxKld1mPxLmA6XoVZelwE4185oQvjiQT
 c8w4AK5sKNCCoO+JVSAXVeQ4sOoKC6n2d4SwNm9wqBtfuXfIqL0jzCen9tvbnOeCpttD
 HDqp3OBjiSD7KKLLWtLdgvUCqewTr5Wywl7I/UYW647p/KBJTs7ObKQg15MszSUEU1nF
 FWzWWR8tJGt7FGMq0Rk66fSAK2GyVj50CzD9nSaTNOBA2spybLA9AxZDITBfvKzYdns3
 2v3gfNAMsKBDMXnqewSERmRNr5cmM2CClFZ9fcofqrSkay4O7TFz5vfWJk/JvM+zM6k/
 ycSA==
X-Gm-Message-State: AGi0Publ7hnT4DHGX75ASlIE3k9X1mZYdTulkuMBT3Bp52wSVwE09FEM
 X9ws2HW1tq4r3vtSisWi7OE=
X-Google-Smtp-Source: APiQypKGhdYXmj/mC8uQ3bBGAeu+OpMtK+0m3u5lxy4OVl4GniR0xQaSDQxS0oHIcUIBNStrnMsqkg==
X-Received: by 2002:a17:90a:db53:: with SMTP id
 u19mr25689708pjx.41.1589267023718; 
 Tue, 12 May 2020 00:03:43 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.190.146])
 by smtp.gmail.com with ESMTPSA id 62sm11016369pfu.181.2020.05.12.00.03.39
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 May 2020 00:03:43 -0700 (PDT)
From: dillon.minfei@gmail.com
To: robh+dt@kernel.org, mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 thierry.reding@gmail.com, sam@ravnborg.org, airlied@linux.ie,
 daniel@ffwll.ch, mturquette@baylibre.com, sboyd@kernel.org
Subject: [PATCH v3 0/5] Enable ilitek ili9341 on stm32f429-disco board
Date: Tue, 12 May 2020 15:03:32 +0800
Message-Id: <1589267017-17294-1-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_000346_941433_AA24A4D7 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-stm32@st-md-mailman.stormreply.com,
 dillon.minfei@gmail.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

This patchset has following changes:

V3:
    merge original tiny/ili9341.c driver to panel/panel-ilitek-ili9341.c
    to support serial spi & parallel rgb interface in one driver.
    update ilitek,ili9341.yaml dts binding documentation.
    update stm32f429-disco dts binding

V2: 
    verify ilitek,ili9341.yaml with make O=../linux-stm32 dt_binding_check
    DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/panel/
    ilitek,ili9341.yaml

V1:
    add ili9341 drm panel driver
    add ltdc, spi5 controller for stm32f429-disco
    add ltdc, spi5 pin map for stm32f429-disco
    add docs about ili9341
    fix ltdc driver loading hang in clk set rate bug

dillon min (5):
  ARM: dts: stm32: Add pin map for ltdc, spi5 on stm32f429-disco board
  dt-bindings: display: panel: Add ilitek ili9341 panel bindings
  ARM: dts: stm32: enable ltdc binding with ili9341 on stm32429-disco
    board
  clk: stm32: Fix stm32f429 ltdc driver loading hang in clk set rate.
    keep ltdc     clk running after kernel startup
  drm/panel: Add ilitek ili9341 driver

 .../bindings/display/panel/ilitek,ili9341.yaml     |  68 ++
 arch/arm/boot/dts/stm32f4-pinctrl.dtsi             |  67 ++
 arch/arm/boot/dts/stm32f429-disco.dts              |  39 ++
 drivers/clk/clk-stm32f4.c                          |   5 +-
 drivers/gpu/drm/panel/Kconfig                      |  12 +
 drivers/gpu/drm/panel/Makefile                     |   1 +
 drivers/gpu/drm/panel/panel-ilitek-ili9341.c       | 700 +++++++++++++++++++++
 7 files changed, 890 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-ilitek-ili9341.c

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
