Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7911E1571AB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 10:27:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xJikbw+qcQzlqInJaE41eW4DFv47cL9I/5yslZLuBGI=; b=Cc9G9OJVlSxwBE
	E7jOLX3yeuB3vOoeja615ToKtCi//GNgov+gcAeNL/XnCa5XL/IvtTsS/t8KWwS9Fn67cFSgJflIb
	+qfu7QLMmkdTdnaDgvDD4HZ8xuJAmBgSsvSTQR29MwJMuHuBQsHvxWXFyoQBIoSKIcTVcYgEsb1bI
	Q9opzdC2twmvg7h2AOUGwoMEn78y8QoTZob/DpG/Kdr/9nBsid+yy4GKzM1L4Afy22Oa7EF1BDLQd
	hj7GkppTKH/oszHy8PJGKcza4R+bi3Orz/0Hp41mihp2DWZNJcVcLnPrD92Tclkk9rC2MRBh1GpRT
	gc1qF7p9ppUOWqKI/GGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j15Ln-0006MT-Sj; Mon, 10 Feb 2020 09:27:31 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j15Lf-0006Ll-Ss
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 09:27:25 +0000
Received: by mail-lj1-x243.google.com with SMTP id x14so6246087ljd.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 01:27:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JIg5+OltZz+qNz0RRuDFM1jB49i8ZdwPwOhAKksmf8Y=;
 b=KYrIt4bM5BqpJ4+bdw8Ouh+iYEIZvhloTC4PoEaeWXraXTicwzhSJjVriL2dK0QHpc
 MzWKC4cXOMEo7BpxcXlvm1+NLMbo688OL+7QAOtUw06/+tbPj1xtiStQ+GIdM6O2ufNH
 wv+46GX/V1tkQdRzBdEpeKmtkI5OYd1kF6SKqn7YSmbOpJsMxOM/59zJYoicCcvzhbZf
 ewqkYL3GblFJew+0V7a7KBWQsvI1IWqIZXOOoA4zCssdGuD0AcKfZjAqRuHtCfukNQwR
 fUsMYJIUH5PvwdQNgsBvMm0knq9gsh0Z+z33TcfZ5WRKgjD7B9SqFUxeYBc+nHrxiQFi
 Twiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JIg5+OltZz+qNz0RRuDFM1jB49i8ZdwPwOhAKksmf8Y=;
 b=P76wmlKr2rImTcvzKB3HbpYYl9Z4jC8y3a3B9AMpNHYm7LhfRYzmcHGrvVq8QZYxhB
 3OCrRuQv/Vf1pybIzsxrqix3cbNS/ts6x3AJtUkCKBO0em811ZviI0gvpe7C3SYmhx/T
 ++XZFM7GloyGXy4HgsYsDsADOqgergrDYAYOsKfxLdmzaeyCRNdZvqWBJYN3GS9yzUP2
 rf1ahakvsJ1XKr4md9NCF5vGsN4U58Xzq2jCXFiAuoNr13Nb0MbdlPLRbqYLg8MDBA/+
 wqYJLX+Dj22dP+zWTOHFVeQeH9XuB8wX1Ev9Pa+UpoOougx+SrCELOqA1DzJUvKsqsW2
 lO4w==
X-Gm-Message-State: APjAAAVG0X41dg2YLs0OhSURLfjgCNkb2g+G8tMWDNXYPwSkKeGDMgDi
 Hl7JE1+Cx/K4BXvJTl8j2ERxOw==
X-Google-Smtp-Source: APXvYqwDUwBuUFIFKY/t/OmKsowDf9RX0RJ5xHbraCkJAtapJJCM9EAJ02li8HubtWZBMbPRHfo4fQ==
X-Received: by 2002:a2e:8119:: with SMTP id d25mr336354ljg.76.1581326841707;
 Mon, 10 Feb 2020 01:27:21 -0800 (PST)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id d9sm5989882lja.73.2020.02.10.01.27.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 01:27:21 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
To: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 0/7] dt-bindings: Convert the ARM Boards to YAML
Date: Mon, 10 Feb 2020 10:27:06 +0100
Message-Id: <20200210092713.279105-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_012723_939392_EE8276E9 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This converts the ARM reference designs to use YAML schema
to verify the top-level and in some cases some basic nodes
in the device tree as well.

Rob requested me to get this done: let's get it done.

Rob: when you're happy I can merge this through ARM SoC so the
minor cleanups go in first, unless you prefer another
merge path.

Linus Walleij (7):
  ARM: dts: Versatile: Use syscon as node name for IB2
  ARM: dts: RealView: Fix the name of the SoC node
  dt-bindings: arm: Add Integrator YAML schema
  dt-bindings: arm: Add Versatile YAML schema
  dt-bindings: arm: Add RealView YAML schema
  dt-bindings: arm: Add Versatile Express and Juno YAML schema
  dt-bindings: arm: Drop the non-YAML bindings

 .../bindings/arm/arm,integrator.yaml          |  85 +++++++
 .../devicetree/bindings/arm/arm,realview.yaml | 123 +++++++++
 .../bindings/arm/arm,versatile.yaml           |  69 +++++
 .../bindings/arm/arm,vexpress-juno.yaml       | 118 +++++++++
 .../devicetree/bindings/arm/arm-boards        | 237 ------------------
 .../devicetree/bindings/arm/vexpress.txt      | 229 -----------------
 arch/arm/boot/dts/arm-realview-pbx.dtsi       |   2 +-
 arch/arm/boot/dts/versatile-ab-ib2.dts        |   2 +-
 8 files changed, 397 insertions(+), 468 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/arm/arm,integrator.yaml
 create mode 100644 Documentation/devicetree/bindings/arm/arm,realview.yaml
 create mode 100644 Documentation/devicetree/bindings/arm/arm,versatile.yaml
 create mode 100644 Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
 delete mode 100644 Documentation/devicetree/bindings/arm/arm-boards
 delete mode 100644 Documentation/devicetree/bindings/arm/vexpress.txt

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
