Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C155113EF09
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:13:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=A3P2oyH5hmYMTSdJ4f4BBH2Xn8AgGeQJPU/XnKt6uw4=; b=j5m
	0GTmAPtb2cWq73QEm0DMLIPMy8TGHX4yjMUuGlGHqNJAr9maa5bsAIb9Qb+0+mNb4FAZIrlBkvb6r
	weCkAKT0g5ZFpvYH6DIL2zcoY3OKacXbsbPpHwq7bqwP5vDrMShXPiFVCxDTh/bMKplALtzYlcHQk
	LIi7nRUcGHgNmyRX2C4IC6LlPwHZeMZURLelaAX6JnGDfbSjxbfZ7X7JqqS0J4hIgBUsl/WT/yNm3
	DE20kEUBy/Yy2ebZqayu9N9q6FsFGUH+SN9AZPeOr8w1U0YSgMWt68uZThKF7T8o1GouNVU9+Fafr
	Lq3hTtHgGyiROf0mwcHj9sCJz488yTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is9dj-0003oV-RX; Thu, 16 Jan 2020 18:13:07 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is92k-0003yd-BV
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:34:56 +0000
Received: by mail-wm1-x341.google.com with SMTP id u2so4696076wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 09:34:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=LwTaZcOTFegkTefhg/Lx2B8oYs88svnURJ4E3LdUYsc=;
 b=S4zazMMcja1LME11RVpl6uR7uNg8lVPxEBPUiM7pLNBdlS8Bi/bHt4e2uWrT3bp9/g
 dvUB49iHpkdpefIm9R3W1zL54iXFj25M0Yw/n1f0FMLdd6eE51k+W9XkyiT7LYojL5n6
 szw8m7648dEyhLoeLbCULqS834HLkCNB4vHTRqOxfteYSiL8WcCRWldmaNGdruYO1CCJ
 DS0KcqEsS0/UgE89z+YIsulTr9isRWSAXuPpVzsJnlJY+ubJm6bCrPulBa2VwZpPQNIr
 FdgskduqXpFZuqowJKbBy7AXyjhXHTelaeNOWgn3pUaD15GIA53zsOw8VLT/+CuD1CDQ
 Ykww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=LwTaZcOTFegkTefhg/Lx2B8oYs88svnURJ4E3LdUYsc=;
 b=sqC9vr+uTniFv7qwwScK6MkfJZxKN05yDHNpTmJ+2D2Kk4maY7/YAaX/mRzIVv9/WA
 7uQFchmHqEgHZaYTdl1aiqK0rXNsz6QZVfXwapc7uhw1N9beigPVNCtsSp9mCxNRYpFL
 CuMT3595qTO77DtVu3tzah6T7IVrYoyFR+vZSYsU5NJSzGPjrwSRMED4//qNKbdNPWOn
 GO3vBl8cgU2M0oObbtG5wV2o7HlR/wtgC90GGerlfoCPMXEGtI0xm38by8u2YXHwwql5
 Mrjob1CzE6nXBumDASnf8ShUwUbuDkZ37lQ+EojVqjAGlvm3D8wcAwnLmpu+jna7aS4P
 vR/A==
X-Gm-Message-State: APjAAAW0IQhFcEMqocRQANYZByp5nHM56nU1bDbkSAAP0ZqYW5MmRWPm
 fV/SWTwsJCco2S9bwzktzUOlyg1g
X-Google-Smtp-Source: APXvYqzoGTtXu0IwcvKXwnoArZA6mUcT+eaS+uZJTGc/jDrM3mtcvNcoL1GEJ9Dz/yMc7X2qWNAy0Q==
X-Received: by 2002:a7b:cc81:: with SMTP id p1mr170376wma.62.1579196092270;
 Thu, 16 Jan 2020 09:34:52 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id x11sm30823040wre.68.2020.01.16.09.34.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jan 2020 09:34:51 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: soc@kernel.org
Subject: [GIT PULL 1/3 part 2] Broadcom defconfig-arm64 changes for 5.6
Date: Thu, 16 Jan 2020 09:34:38 -0800
Message-Id: <20200116173440.10886-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_093454_451739_7757065D 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, olof@lixom.net,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.6/defconfig-arm64

for you to fetch changes up to 03077ad5c0252fb81008fc6ecd233db6fb6571a3:

  arm64: defconfig: Enable Broadcom's STB PCIe controller (2020-01-16 09:18:29 -0800)

----------------------------------------------------------------
This pull request contains Broadcom ARM64-based SoCs defconfig changes
for 5.6, please pull the following:

- Nicolas enables the Broadcom STB PCIe Root Complex driver as a module
  for the ARM64 defconfig. The driver will go through the PCIe maintainers
  pull request for 5.6.

----------------------------------------------------------------
Nicolas Saenz Julienne (1):
      arm64: defconfig: Enable Broadcom's STB PCIe controller

 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
