Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 414D4134B49
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 20:11:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=pMHGT4aeW+yNPzR1XKfZAxILC16ad33Lt5g2oIRxW+A=; b=GfA
	4Fqy9mpq0r/eefAFfGUhdynIhLT5sTyofZ6jN281bOLBOcAgVDlZh5A9oWNov5EYZC8VKga8nDza2
	m5cYcNkYRuVcWu9KMtVKqp6ocnv5WdX7L0TAVFzwav7aY/YMRkp4o/7Te0dYBPTlRKoAxtVGv9XZ7
	IRmnOXPGqFbLU9RrQzbxo2UMzkoqu71dSlM36GtNyIdto0lRl4dNCgWcT4kXcaskF6833j6puChEf
	4uPRaRSNsGm73txn++my2L4izcIEPKeMjkGteR91HUY7LJv+fZdWvWjxWoLnDJVDvD928z0ojf29R
	dKxyfuI0sJaFJrQ5Pb7vJe/eZ4Y3FyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipGjs-0001gC-JX; Wed, 08 Jan 2020 19:11:32 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipGjh-0001fJ-8L
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 19:11:22 +0000
Received: by mail-wr1-x442.google.com with SMTP id y17so4625988wrh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 11:11:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=owBT5/bdFGCNh/nQ/trbtHCtJiHM43Qiwte7YLQumGU=;
 b=J3PI0XNFo38BoxmS6NI0GSxtsqYFABarDY5qse5rpakLP4AIAeKILmoPAoIgcgd+S3
 nsufrWe1vSg/gUKGBlbrcGaq7xg1WsNi7AwmrKYVJUiZcMikgc1cTOZTWgvq9RmR85Co
 IDGmjP6dv74+toMt3wo6S4Y1j5tSueWCtu/C3YDHSyAdM7MD9AIvg8ixxxm9aiWl4YYc
 dC6aUccuhQEhpWLGnPZM5YdD85y85HAJRzuHhMSgMz3axXsis9GibkG6OAoyYLSurVkb
 KOVn20xxlnd0r89f6nHak9nlN5B4iWEiO0S6JV3KaBfFSKYOpcIXSgmNhmefcOKcbyva
 o7vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=owBT5/bdFGCNh/nQ/trbtHCtJiHM43Qiwte7YLQumGU=;
 b=XA1fhzXCsBsIPpggbP93yAPQOJnfv/lxEKrOT8OqLgLTERVRpu+kJNgN7Ze4f/SweV
 tapL5Y4iM5xVH12Ua6RuUFR2ONSNOtApue2pENpTFFO8zXN39HQcSsigZnplarUQAASE
 kov0cRzYvgrcigA2aKmulR/ajB6m0oIv+m3ImUzq46sdsiIzghOhf+jirP6nR+wd/Bb5
 XoxWoIcNHzlDVJPG92X0aU9ke+Tswhf39kICk8B3cEhWZIFEkYohyslhWHZ6FqEHafNS
 6dUsOmsRxkeNJj0HrztejYWn0404mD+um+CasDJy1UVFwZYkkVqqfl0Dw5cwTQjjB382
 ZdaA==
X-Gm-Message-State: APjAAAWFCjnvjKgU9B8vzzsgkNstrTjFA6Fvv9PQZjch37Y3fIslHz03
 uy/BHiSCfJU9CgYMYButn+g=
X-Google-Smtp-Source: APXvYqyYRXSrjkbSQSSnGlbJqJ8yZF4uaLtH3BRCID+AjcmEgZSaBJytc/nT240ReRGymRG1BuDfoA==
X-Received: by 2002:a5d:4fd0:: with SMTP id h16mr6058279wrw.255.1578510679581; 
 Wed, 08 Jan 2020 11:11:19 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id t12sm5243270wrs.96.2020.01.08.11.11.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2020 11:11:18 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: soc@kernel.org
Subject: [GIT PULL 1/3] Broadcom devicetree changes for 5.6
Date: Wed,  8 Jan 2020 11:11:12 -0800
Message-Id: <20200108191114.15987-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_111121_300238_6898698A 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, arnd@arndb.de, khilman@kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Ray Jui <ray.jui@broadcom.com>, Stephen Brennan <stephen@brennan.io>,
 olof@lixom.net, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.6/devicetree

for you to fetch changes up to 0100f76d96346b44e7310a5cfb102124b6667643:

  Merge tag 'tags/bcm2835-dt-next-2020-01-07' into devicetree/next (2020-01-08 10:09:49 -0800)

----------------------------------------------------------------
This pull request contains Broadcom ARM-based SoCs Device Tree changes
for 5.6, please pull the following:

- Stephan adds support for the HWRNG on 2711 (Raspberry Pi 4) which is
  different than the previous Pi chips

- Florian switches the BCM956265HR board to use the hardware I2C
  controllers for interfacing with the SFPs

----------------------------------------------------------------
Florian Fainelli (2):
      ARM: dts: NSP: Use hardware I2C for BCM958625HR
      Merge tag 'tags/bcm2835-dt-next-2020-01-07' into devicetree/next

Stephen Brennan (2):
      ARM: dts: bcm2835: Move rng definition to common location
      ARM: dts: bcm2711: Enable HWRNG support

 arch/arm/boot/dts/bcm2711.dtsi        |  6 ++----
 arch/arm/boot/dts/bcm2835-common.dtsi |  6 ++++++
 arch/arm/boot/dts/bcm283x.dtsi        |  6 ------
 arch/arm/boot/dts/bcm958625hr.dts     | 15 +++++----------
 4 files changed, 13 insertions(+), 20 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
