Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B8EE368
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 15:12:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7PaCwD9HcuCxFgKzkO7hJOCyO8nDPxjDpdZDrdIXsQI=; b=EqAil4tl3XTQQT
	NtbdMIskHL7prrTdmlmGjnjau6LSD3qpZa7kDUhiBBqYY4rEOG6+MCaL5niASIG2mxqX/tf4Dwmy1
	6C/kGpOpjZjQclENrMQer1jvr/sLTpnWWAzM0qtbLQ0DiSWB9wceNoY0TFx1jKThnpRRg5cS07Fa7
	P7Xc92M8eYN42q1O+T2Z1J9uDi3V3Bm82AoJbBbepCo63CL/KCJ4TyY8fWqNi3rdq961lTivLonsx
	NqGO/Y9ulE8aWU6bbYFfNA/HtiWNIcFmvbLNX+reexxW+vrZMU8J6Do49S/Td4HEW9YVFWUKnhPXs
	/TA1yNsSvmg7HNTExIOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL64z-0004Fh-4V; Mon, 29 Apr 2019 13:12:21 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL64r-0004Ew-MT
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 13:12:15 +0000
Received: by mail-wr1-x444.google.com with SMTP id c12so15954787wrt.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 06:12:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4FdyeOJZ2ex4Zc6ZUlDkL19h7wiPhcsY/XH7KMsWAxQ=;
 b=HgNtv9S47DA4Fn0yj6/I2EWI/tgw5TVQmj2ZvENRrg2Q6D5I22lEwiJ+nvfE15WAHX
 BKzEHpCrIygb9USpVb4rR6tOhdcVkmUrPCtKfk06/JxFdlzOVZp0b2aDnaKp0EUSsQ2q
 o3t9vbzy9vllw96TCcZBrsAYMYPgzp5bxWqhROtLh0PzsJ74+zEAVdF4uawzeViM65Af
 C6VLivUFXfwqFVhGFisRqiWzUqtn3tQMA11lBtQjvGUX2RUMWwYniJ6A7iCTTvm00UNg
 HppRgTsgLxzJZdTIGVna3AYMeFd8TWV6Oh3PCkCnbnZcgnvD+11A4FF1NRkY478Zb3/1
 c7ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4FdyeOJZ2ex4Zc6ZUlDkL19h7wiPhcsY/XH7KMsWAxQ=;
 b=N+7gl5mUo9pKgD6ixnaHWgo/CPNTno32cucrBmHbNWPYdYUE1QAJqkZitqsxaZPkn7
 0XerUYgFo6WyEh5KdAfKHO9U0lL2iBqHpqPH16U8LgzjSqr+Dd/KPweyV4SL/1YYQzKh
 XAB0zyZiAzqDsTzbICnCeXP6NqdGsgm9jtX+7oUmcRShnZVKoxfgEYcSn5kLGvK15+uG
 kB5yyoKcCK+NqQ+xJKNm/6tM/h8UK8ud1baOinIm+azdCEg3B4KncizRdPVpWo6ySVUI
 bzwyO3vx7j+iqqmus2ACNi7rg7yITsSCAB9r1eoOB4GaO5CVwvsXJ6lKdilBnYfG12+B
 cQkA==
X-Gm-Message-State: APjAAAW3/H2NliXQzw01S9MGIU2qCIS0AOPJ6NYlji2mOiOnhtsAYWwV
 Dwbv487xF9qRQJUG/lGRVJnifg==
X-Google-Smtp-Source: APXvYqyNyKPUk3RMZvucVYLDyIAejSOjYUUI55d5btNbFVE5w9HCcH1t4jUqsOLBUsU+oE8U7O6zcQ==
X-Received: by 2002:a5d:4fc3:: with SMTP id h3mr29334wrw.54.1556543531886;
 Mon, 29 Apr 2019 06:12:11 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:f9fc:88:6502:8fa7])
 by smtp.gmail.com with ESMTPSA id s16sm5410282wrg.71.2019.04.29.06.12.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Apr 2019 06:12:10 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-gpio@vger.kernel.org
Subject: [PATCH v2 0/4] synquacer: implement ACPI gpio/interrupt support
Date: Mon, 29 Apr 2019 15:12:04 +0200
Message-Id: <20190429131208.3620-1-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_061213_734689_16BE5D65 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Masahisa Kojima <masahisa.kojima@linaro.org>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Wire up the existing GPIO and interrupt controller drivers to the ACPI
subsystem so they can be used on ACPI systems for ACPI event (power
button, hardware error notification etc)

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
  acpi/irq: implement getter for GSI irqdomain
  irqchip/exiu: preparatory refactor for ACPI support
  irqchip/exiu: implement ACPI support
  gpio: mb86s7x: enable ACPI support

 drivers/acpi/irq.c             |  14 +-
 drivers/gpio/gpio-mb86s7x.c    |  57 ++++++--
 drivers/irqchip/irq-sni-exiu.c | 147 +++++++++++++++-----
 include/linux/acpi.h           |   1 +
 4 files changed, 170 insertions(+), 49 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
