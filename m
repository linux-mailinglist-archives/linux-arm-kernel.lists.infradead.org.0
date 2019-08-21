Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D23971C4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 07:56:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aDh1ubsqdMUAGyTLVNwZTFelH3w6qv0cXKvhZl33cqc=; b=C5mhxgXBOU6XGh
	rGIlkCRrDymF5Z8k60E93VBm3P+SDjo8jdAc7Xlrfm6ioqMJ2CzcE2qI6Pt8yXfPNlZvStjSWddR+
	iABTIk3BIFvOBF8Mg32U/gSHfBYAsxvPCW8ho2YxU0xfX8nLcKAGM/vrt9oCp+VkUnxfubqajmr/Q
	/1JCeoNl7A8FzuOEFbzb1e8JjecBSO8wNIWqdjM3NTtu3ZtwBHvsfKVqab73VPSItk8L195pG+UwQ
	L2r5yS6Fkl+OUZeoNq+kleFR7qLQVdcYnbS2G4CdWpZWRANRi3vuwW2BvZzg5L6e+GLRQU9Wppgg0
	nNB0pjI50qQ1JXbt01oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0JbS-0007IH-Ne; Wed, 21 Aug 2019 05:56:14 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Jb7-0007Ea-CD
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 05:55:55 +0000
Received: by mail-pf1-x443.google.com with SMTP id i30so677772pfk.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 22:55:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XKfnFWl/Re53uZxX946ZGFyGhfMIBKgXF4IGRnFtD8c=;
 b=VrD8jISqhaWCNVnCq3ybrxNxNmQ4ACqNpbJ7JKRWQ5gSRv8WI9YJhFHYDRTQVGdtdI
 cv+BJ2ZIgt/D5FsRFukc+qdsO1Vto4WV2ambk7wp1PRfyjajpXUZviSbgiF0a+uoLnd/
 depfyMVG3kknaO0GnhHt5CHo3XGId+EXFkxV75Jd7Beab0Xq23NFpuM3iL92bCl8jucM
 ifXpWfmztoLdojnLH3BpmGMByWqxaQdqYrD8xvQqZAFDfeWOui2MYLH+qLlrTrH2fmvF
 pTZGrVdLx5/9ztinKlDsXTBFucKunvEGBdZeIdhfBKcn3XxKidmkom5w1Ijt9IBiN8kO
 iC1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=XKfnFWl/Re53uZxX946ZGFyGhfMIBKgXF4IGRnFtD8c=;
 b=HmplV/njoTDnPaqkUvW7knJSAp5uq+iufO80ENTJB6eXl68Lqr3iLemT+FPWvsJ7eB
 HW5Dg32/3Nxv2/zsm60QbyuwBdQOIMUi+ud6jqjLTVoi3gpkYGzpSe6tSdEvI6CgcsLk
 LZxeskN3S0Xq6rmXKv3ulg66/1qKI5cHBNIaXi815IGuCMlSXMZRwLpcIs8uussNttdI
 mtHJ7ENYHqDtQTaGhak9u5j+RPSeFIhQN/yre7UEu7mOQvywznINBWvNz3lrXx3ICQo0
 QxWaGhhbWKQfSYQj0Jv5GkMh3JqHNh7mnVFaHIbIiraReO3ByJok0oXRUeQEfhpk0DnJ
 h9Iw==
X-Gm-Message-State: APjAAAW+rXCIhwz6DiCjRrO8cBoYLv9s0q8CJBuyQiAjOOEN1ylHoGD6
 7phg+5R4wbyUaXbEOM6QK/k=
X-Google-Smtp-Source: APXvYqzZ9NdwpWhXVb+ZaxgqkGTd48D3aKr0kyEBbd+2/+GmPbOIT5wlXAOKXwlmevPl59H0e60MSQ==
X-Received: by 2002:a62:388f:: with SMTP id
 f137mr34456016pfa.131.1566366952321; 
 Tue, 20 Aug 2019 22:55:52 -0700 (PDT)
Received: from voyager.ibm.com ([36.255.48.244])
 by smtp.gmail.com with ESMTPSA id m9sm26568254pfh.84.2019.08.20.22.55.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 22:55:51 -0700 (PDT)
From: Joel Stanley <joel@jms.id.au>
To: Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Olof Johansson <olof@lixom.net>
Subject: [PATCH 0/7] ARM: Add ASPEED AST2600 support
Date: Wed, 21 Aug 2019 15:25:23 +0930
Message-Id: <20190821055530.8720-1-joel@jms.id.au>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_225553_629534_60827B90 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ryan Chen <ryan_chen@aspeedtech.com>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>,
 =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This adds the architecture, device tree and configuration required to
support a new ASPEED BMC chip.

I'd appreciate a review from those on cc before I break the patches into
their respective trees and send them as part of my ASPEED pull request
for 5.4. Thanks!


Joel Stanley (7):
  dt-bindings: arm: cpus: Add ASPEED SMP
  ARM: aspeed: Select timer in each SoC
  ARM: aspeed: Add ASPEED AST2600 architecture
  ARM: aspeed: Enable SMP boot
  ARM: dts: aspeed: Add AST2600 and EVB
  ARM: configs: multi_v7: Add ASPEED G6
  ARM: configs: aspeed_g5: Enable AST2600

 .../devicetree/bindings/arm/cpus.yaml         |   1 +
 arch/arm/Makefile                             |   1 +
 arch/arm/boot/dts/Makefile                    |   1 +
 arch/arm/boot/dts/aspeed-ast2600-evb.dts      |  44 +++
 arch/arm/boot/dts/aspeed-g6.dtsi              | 266 ++++++++++++++++++
 arch/arm/configs/aspeed_g5_defconfig          |  17 +-
 arch/arm/configs/multi_v7_defconfig           |  19 ++
 arch/arm/mach-aspeed/Kconfig                  |  17 +-
 arch/arm/mach-aspeed/Makefile                 |   5 +
 arch/arm/mach-aspeed/platsmp.c                |  61 ++++
 10 files changed, 427 insertions(+), 5 deletions(-)
 create mode 100644 arch/arm/boot/dts/aspeed-ast2600-evb.dts
 create mode 100644 arch/arm/boot/dts/aspeed-g6.dtsi
 create mode 100644 arch/arm/mach-aspeed/Makefile
 create mode 100644 arch/arm/mach-aspeed/platsmp.c

-- 
2.23.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
