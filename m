Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08918184D1E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 17:59:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xM4GQHfzXoCmwn4wVD8ygwgDMwBEIFzTlRDTF0G16eQ=; b=gplWIi6preONes
	7byosH8fMImVPdD249toiK5rYOqGC+n6te92ZCx8EDRBeP2IkialSV8qTmDy3hg3qrRyGphYdT2GE
	I1QqUK1kkYAEPstKWAzbw6YaU7Mjmsz7Xhw8F2q1q0WqzWF9jhQJxnnhg8Vpzc5yUYAMEncvh1oT8
	3dyivwe7N9dxyrUL08Wysd10T8ZqSkp9fltFkywHRiIOnokNbQpYDeRQ7WIPPuQBdIsrDKKfJUThT
	zkSij3KyxPWx5mddORpWaGRKI1zRCBH2lg0JxX2jF8cBfEzD5N50+kG0Ac75lG2ti4O57gtO8roNE
	+ZBTdX5IXm7K5dq4Rn9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCneT-0008Hk-EL; Fri, 13 Mar 2020 16:59:13 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCneD-0008H5-M9
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 16:58:59 +0000
Received: by mail-wr1-x435.google.com with SMTP id f3so6019092wrw.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 09:58:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SasAQUXkfroYsOYpPXJJCL2Y1hUNoc4M6M8VYYK0keI=;
 b=gWa1uZa2BFVfX9rodYZOIjCoKFUb9fp5qZkMsAaV4QGa08HvkgVLCO6cBXU1UsJKgN
 sV/Bdg7GpHYHtaMnNnODPUFgJmZ7Uy8N6PfaMMIRteWIn4HWlwM1oxyw9SCk3ZmlLSP3
 am9eD7ZDyTiber1Jf0OSh7XlciTCxnQ8LXNTWVnSC8sJCiB4T0Z7Xm85zygVIgrTM0hw
 Mfd4KkK0E79rQIFFKNGcNljHjHyTKgjFdJdAEF9kHXSnji1B6T4JY6epYQn0B8nioCs3
 gLMSV0bsFlv9ZU+SXcRPbx0ylFCA3dvS8QPz5yeHnu0lfuBk7a8l7YxaF4M2okqLv6HM
 JKDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SasAQUXkfroYsOYpPXJJCL2Y1hUNoc4M6M8VYYK0keI=;
 b=sETZrPgUc2Oud+hWy/AE7cxMp5XEC8PJ1BQF8yBitz0NmYFoR8yuP01xE04e86tv5E
 HRZgFFYK2qc7BGTrMY5o9SBS6/vxtfhp79pWQ/PQBM9FirMIrEYTb8R5j0kQZ7FBmcLb
 yVdkvwD7rQ4pWUVCV1p4Ryfk5AIdDWD+ncMmR4SyURFv/OfcWKxMHj+j5j/FVcF/swcV
 vsLNlmEo08aiIlrt+Cmj8DB7ORTvapiYVgYqHzPa+j5HgjYv2NHMpy4t1ZuC6fynp1wZ
 d9g8mYVxKQ6iO7RwpG8LyNGWhehABcmBFhUtj/X98Di4UIkd/4877Gt2coHKjrhB8qqL
 8z7A==
X-Gm-Message-State: ANhLgQ2+7Zox3/r7crwIVf3REXvUYSM9H0UPl/wMlUI9Mna0d9481gjc
 4fb5SEiRe/2LJfG7SyBF17A=
X-Google-Smtp-Source: ADFU+vucg0CqsQ16ZoemjPuQ4xlKbLeo4LxUNxUVpcATUZFISeJiloFJIyIvK7pkhBWDbxKUy6WPqQ==
X-Received: by 2002:a5d:4683:: with SMTP id u3mr19615631wrq.251.1584118735140; 
 Fri, 13 Mar 2020 09:58:55 -0700 (PDT)
Received: from localhost (pD9E516A9.dip0.t-ipconnect.de. [217.229.22.169])
 by smtp.gmail.com with ESMTPSA id v8sm77801355wrw.2.2020.03.13.09.58.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2020 09:58:54 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL 01/10] dt-bindings: Changes for v5.7-rc1
Date: Fri, 13 Mar 2020 17:58:39 +0100
Message-Id: <20200313165848.2915133-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_095857_728114_5DCB8741 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:435 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC maintainers,

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.7-dt-bindings

for you to fetch changes up to eba512375e6bc297c674353841523feba03cf712:

  dt-bindings: usb: Add NVIDIA Tegra XUSB device mode controller binding (2020-03-13 09:15:11 +0100)

Thanks,
Thierry

----------------------------------------------------------------
dt-bindings: Changes for v5.7-rc1

New IDs are added for clocks that are controlled by the PMC. This
replaces older IDs that were erroneously provided by the clock and reset
controller.

This also adds device tree bindings for XUSB pad controller support on
Tegra194 as well as USB role switching on NVIDIA Tegra SoCs.

----------------------------------------------------------------
JC Kuo (1):
      dt-bindings: phy: tegra: Add Tegra194 support

Nagarjuna Kristam (2):
      dt-bindings: phy: tegra-xusb: Add usb-role-switch
      dt-bindings: usb: Add NVIDIA Tegra XUSB device mode controller binding

Sowjanya Komatineni (4):
      dt-bindings: clock: tegra: Add IDs for OSC clocks
      dt-bindings: tegra: Convert Tegra PMC bindings to YAML
      dt-bindings: soc: tegra-pmc: Add Tegra PMC clock bindings
      dt-bindings: soc: tegra-pmc: Add ID for Tegra PMC 32 kHz blink clock

 .../bindings/arm/tegra/nvidia,tegra20-pmc.txt      | 300 -----------------
 .../bindings/arm/tegra/nvidia,tegra20-pmc.yaml     | 354 +++++++++++++++++++++
 .../bindings/phy/nvidia,tegra124-xusb-padctl.txt   |  24 ++
 .../devicetree/bindings/usb/nvidia,tegra-xudc.yaml | 190 +++++++++++
 include/dt-bindings/clock/tegra114-car.h           |   4 +-
 include/dt-bindings/clock/tegra124-car-common.h    |   4 +-
 include/dt-bindings/clock/tegra210-car.h           |   4 +-
 include/dt-bindings/clock/tegra30-car.h            |   4 +-
 include/dt-bindings/soc/tegra-pmc.h                |  16 +
 9 files changed, 596 insertions(+), 304 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/tegra/nvidia,tegra20-pmc.txt
 create mode 100644 Documentation/devicetree/bindings/arm/tegra/nvidia,tegra20-pmc.yaml
 create mode 100644 Documentation/devicetree/bindings/usb/nvidia,tegra-xudc.yaml
 create mode 100644 include/dt-bindings/soc/tegra-pmc.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
