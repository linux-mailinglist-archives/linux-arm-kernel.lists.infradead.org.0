Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F5B2C7DB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 15:37:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5n+6ObLrcfIHmkMeGn+QeupnqxztjlZTracGUQkvYU8=; b=eJz39i1Bybr5R4
	EKZODxd/87gljQ3PxrcRHpCIJoqPMeyzWsGwf+EjpvzAFh3y+pFX71GPzy0ogWvMnB5R7CVdv29Cf
	A24Ewk8QsQ/zWIKP8/+LFppeJxyB5001Fp3OFQEbCEchpxpJFnMj/4YIX1U7e01nbKynpW+eGCg03
	vZyl2w/wP6fj5jAaqrTU1BAaZdNHPCYsY8JMuzflWywpLh+mh8MYkq78VgwHZqlST0omYu+t0L7NP
	PP62zcLdewxr91UcSPhq1R3dxpBIGXWMEQYnb0ZCo7blavrTiMsqVb/Jyti+37pEqRajs6Lm1AGyr
	/LeRHUOEjXs52m8hDNJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVcHq-0007bR-9k; Tue, 28 May 2019 13:37:06 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVcHi-0007Zg-MZ
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 13:37:00 +0000
Received: by mail-wr1-x442.google.com with SMTP id b18so20238376wrq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 06:36:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yQpN5swIgln+h3KvcWmaxvYHMF5E8isSyunz8n1i0Vo=;
 b=in1naDrX5yVxXt0LJcbaqCAypeI4S26Kt++ybMo8wbfmcVV1iRQAX9qIaxyogyQH5r
 J4WaMvWFSGDr9yh/vYvCH3QIM2IAffribS5/z8g+rsJufUGenw0XbO1rn96Swib6gpth
 T3AOxHuViXmok4591SFZgPh0Z2K31uAffWaLNNxSJi+dhhH3ScFrPrvm55DB0GLlqpcG
 Z/EKtKJhT0BsZ1APWgyNL7HNxtKyXejjvv8Uv39bW5uGMlyhL50ACApmUOWSsg3BXwu9
 YNAVR3s7rCrp72bsqfElpQ40PXAYgTHjprZEM/f4/ESk+B13ICJfNGUeDOtl1D9DcaQG
 S2hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yQpN5swIgln+h3KvcWmaxvYHMF5E8isSyunz8n1i0Vo=;
 b=lSIzr+Xt3i+0CrzMdqlrI9hHWUFL6I3b7uGQtGKv3LhG3v8F7j7kBr/KAILhE/Exyt
 og8hCCGIw/OiAqhzNXJ+FtIaYlCuixB/Sl1T0It+tlv2720FnDxHzXfcBAwu9IAUkmbM
 f0fjIdNdguY+IuJpFRWG4Tks2LjphnwP4LGdtIgsTsU1DEK5NkCjxjLLVldtH7xQO5eo
 jwh5iTe6RpNinj1VLdnekrykdH0p8reQA+eqsnrPteOUylDca5/bbcjYwRWQ+nyKgvDf
 RgNqXsVUoVPE7CpfedLAgz1UOlGI8qIDIxsmFKg/wXcwHqGFEm9h92jlg/UFOGm2lXxH
 j1JQ==
X-Gm-Message-State: APjAAAV0dAGXxpak9kfudVZr/rkxxGyihDarmCBnrdvQV0btT4GbOMAG
 wYtaVAyMcAAcSSaUpsuWL4sePTPtgVPsBg==
X-Google-Smtp-Source: APXvYqzf6CfyFQVhTOPIaLwja1Y5Xpt8/iP5bbGjiJVNJqRW3hhDwpM3zIPlc1xgVWCbi/I/VLDuvQ==
X-Received: by 2002:a05:6000:1285:: with SMTP id
 f5mr8494632wrx.112.1559050615986; 
 Tue, 28 May 2019 06:36:55 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:c8c7:f81b:b165:1aa7])
 by smtp.gmail.com with ESMTPSA id 95sm8652668wrk.70.2019.05.28.06.36.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 06:36:54 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 0/4] synquacer: implement ACPI gpio/interrupt support
Date: Tue, 28 May 2019 15:36:43 +0200
Message-Id: <20190528133647.3362-1-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_063658_737409_992C880A 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Graeme Gregory <graeme.gregory@linaro.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Marc Zyngier <marc.zyngier@arm.com>, Linus Walleij <linus.walleij@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-acpi@vger.kernel.org,
 linux-gpio@vger.kernel.org, Masahisa Kojima <masahisa.kojima@linaro.org>,
 Mika Westerberg <mika.westerberg@linux.intel.com>, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Wire up the existing GPIO and interrupt controller drivers to the ACPI
subsystem so they can be used on ACPI systems for ACPI event (power
button, hardware error notification etc)

Changes since v3:
- export ACPI irq domain helper to modules
- documents its parameters
- tweak commit log of #1
- add acks to patches #1 , #3 and #4

Changes since v2:
- use helper to create hierarchical IRQ domains under ACPI instead of exposing
  the GSI domain's irqdomain pointer directly (#1)
- use has_acpi_companion() instead of ACPI_COMPANION() where possible (#4)
- add Mika's ack to #4

Changes since v1:
- Describe the EXIU controller as a separate device, which is a more accurate
  depiction of reality, and untangles the code a bit as well. Note that this
  requires the GPIO AML device to describe the EXIU interrupts explicitly.
- Add a patch to obtain the ACPI GSI irqdomain. The EXIU driver needs this
  to obtain the default parent domain, since the GIC is not modeled as an
  ACPI object in the namespace, and so the parent<->child link cannot be
  expressed in AML.
- Drop the Kconfig symbol for the GPIO controller. Just include the ACPI part
  when CONFIG_ACPI is defined.

Cc: Masahisa Kojima <masahisa.kojima@linaro.org>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Marc Zyngier <marc.zyngier@arm.com>
Cc: Graeme Gregory <graeme.gregory@linaro.org>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Mika Westerberg <mika.westerberg@linux.intel.com>
Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Cc: Len Brown <lenb@kernel.org>

Ard Biesheuvel (4):
  acpi/irq: implement helper to create hierachical domains
  irqchip/exiu: preparatory refactor for ACPI support
  irqchip/exiu: implement ACPI support
  gpio: mb86s7x: enable ACPI support

 drivers/acpi/irq.c             |  26 ++++
 drivers/gpio/gpio-mb86s7x.c    |  51 ++++++-
 drivers/irqchip/irq-sni-exiu.c | 142 +++++++++++++++-----
 include/linux/acpi.h           |   7 +
 4 files changed, 188 insertions(+), 38 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
