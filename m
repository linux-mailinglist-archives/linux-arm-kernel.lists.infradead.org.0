Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF892B33A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 13:27:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wpIvA0B4Ly4J4QlzoyaUXdxwEGveVcOHASeIXmhXud0=; b=QKDOa8le5Z9Pa5
	YEPrKFP6IrOrJN0wBobo71a8Pt9QUg5hvDRpJH2YOtjgqyQ5tGcNIE4kaA+TMQJ3c266+J48kAwmi
	muKyKOzFGEwxcD7l8YaKJJg7nCcDWMelTqRb13LkBoyFgRhnlS+JrNHwnohGQ3KKpPYtKeL/hZBHq
	uUmtYfP7gT5GwpSQrV1Of7EczW/QcPMVDJGknDZAsw1d+/+kL3Gn6vSXPAkdAci9AkvkK8mokcYau
	jRChgZOwzrRK5FPSRCShVGtWzOypPQc9VMyNpgJgX1y9wgYq2iWBuobddZJDo/jmERJLtO8G04SYN
	TNAaUPlV9Mjf7Cj6WYYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVDmw-0006v1-Mw; Mon, 27 May 2019 11:27:34 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVDmp-0006uI-2z
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 11:27:28 +0000
Received: by mail-wr1-x444.google.com with SMTP id f8so16599956wrt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 04:27:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9y/IH+JG6Qynh8FmtZUM9JghLzxsBV1mtWL7v5H2a4Q=;
 b=cHbav5PPQ68d4UGIDc+xzZrqmq4aIerkhnu8xmIvRGjKdNlVQUIz0jJdiPXHgVriId
 OcKZDQ+9FZJVo2826Wh7U2dJ7lrJ+4AUuddSxYw6fVe5Zp1wvzjsVw0DXONQ9+SIqPfp
 e9HK86zx6MtksU20+2u3ZEukWQQya3JLMLKuY9/tqjRKM3gdFbF+Gnl1/HiHj45XaQLp
 FgSlBgt4CPbP+769bkjaHXbdh6OuMxAqRhYz5Dt+1gsSRsV2rDfo404xPOPDEUDHMcKk
 jrGAV4/6WYF8pygNm/Q3Io2X33ESyDIfXArcPPWkAUkuu7SSToh7PZ97HXOnRaZMZPT5
 Fjgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9y/IH+JG6Qynh8FmtZUM9JghLzxsBV1mtWL7v5H2a4Q=;
 b=XN/Qz7bHzZBuJU2sIW4fyb4mEP05SGN0kDPtvRss+otQqj7ZFuLNRzGIJz3SXpUUu4
 NVnwK8ERfJ++48aU6zN/4FXCRTpZwFGXSkvc8qMLtU1LpC/ZWatMRwh68cfR4tqCFUHh
 XaXG5iKIZJV97JR9quPSbynObloUnhq85y6ilSi0dKfsaDg2omlO5Pn1Alqc42R5dNFf
 ZJBdEjR9qQsysf4tZNnfF9JFuds49ELcoc2O1uzmn7nKPFY6JI9V3bwD3qbskOuABnCv
 rBQI5gHVPZYfdiw2/Pmkekw2ZuQ9DRE9JHRfbUOzgSvxSEThqh9c77OOXLZBaB6ul9f9
 f6EA==
X-Gm-Message-State: APjAAAX+14RcEPOPBVOYKlxdM+KZPYMtPC3M0EqXKh6TjZeegPGzQaPh
 Pk1znO01uXJIV0fX/8qr0CjBynsGqOgbsIBE
X-Google-Smtp-Source: APXvYqw6Q/+9wUrVhaGxUO4Y2xHThdWFzl7gnG7lKlZuiOqW5LExAjRfDNU8mFsL9VLv3EzN750x8w==
X-Received: by 2002:adf:a749:: with SMTP id e9mr5294854wrd.64.1558956445366;
 Mon, 27 May 2019 04:27:25 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:ccdd:dadc:1517:f416])
 by smtp.gmail.com with ESMTPSA id l6sm9677747wmi.24.2019.05.27.04.27.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 04:27:24 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 0/4] synquacer: implement ACPI gpio/interrupt support
Date: Mon, 27 May 2019 13:27:16 +0200
Message-Id: <20190527112720.2266-1-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_042727_191981_C69B0B19 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

 drivers/acpi/irq.c             |  20 +++
 drivers/gpio/gpio-mb86s7x.c    |  51 ++++++-
 drivers/irqchip/irq-sni-exiu.c | 142 +++++++++++++++-----
 include/linux/acpi.h           |   7 +
 4 files changed, 182 insertions(+), 38 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
