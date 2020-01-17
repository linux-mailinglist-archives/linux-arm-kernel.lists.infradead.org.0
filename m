Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48574141413
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 23:28:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1E7echT9e2707olRsLBIcKZLtDx2ME00mnwqGtXQCcM=; b=acC
	+Ufj7Tu+cp/3NrZOVnKHkoDqNIny8YIhOCETPg9jK9/voMo1xBk0bMpBufztMJEM1XQi/kcbA+ZuH
	1kPpoiWdI5Entd22B1OqN29We+/6+TwBW1Qu4NVwVGAXUW72d2T9h8QPvUdtCknS2urQXkOi9RPBH
	BP98fUN/5B4iczUh8P2b+Ys7KhkCN/ZxFM91ZPsI3IZSs/aYY15O4mLZRPsxjuUB2L9aqHj+vUG0x
	8PN/k4wVxANbCbr24UEuey3xsVAYKLxNSBotLWfdZleaImzTav5qfj9lnls3L01UTy5+BDf2q98Dh
	bEWMJ6rRYHTVulzQ3pxy4/vYS38lkBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isa5Y-0005dh-1Q; Fri, 17 Jan 2020 22:27:36 +0000
Received: from mail-pg1-x530.google.com ([2607:f8b0:4864:20::530])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isa59-0005W6-W7
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 22:27:13 +0000
Received: by mail-pg1-x530.google.com with SMTP id r11so12327603pgf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Jan 2020 14:27:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=dFEJzfAug/6pXwZVoMs8bi8c5nPT0iGFBfTcPrABu50=;
 b=c4DS+TQHNgulswOTNj7uTpo5WiHCfogykXCGMyo4oG57cYwqWnFlUJcSVK6GHpcF3F
 RXT0WRBILy1TW35aFfSv+NstNnMi7zS1221TvqZYwTFphetbdaYUqmSKOemjVLTI/MyI
 kBIpwp+UNccfuISWkR/FfYEZQ+dtKERun/Y2d/OyggQgKoVpno8NNfiFju5u8dTWvCz6
 iMiFVZoYnFzTDbDaV4JCBuhC4i/RopMBd0kKlgO6avdGXDfHAYXoFjoY96u5gy3veNjO
 AUmqLuA7MA4TZ4Icnp7kJmTfP8dyFkBdxzg6ReaDkGQFvuvXfMhOa2RqyU86WgSXp+bK
 xsjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=dFEJzfAug/6pXwZVoMs8bi8c5nPT0iGFBfTcPrABu50=;
 b=DZnnEiMR3Q0kAZTmIdy8e7v1G3HvsAIr9L5tiPb7MgkaZWVOWKPtL1KgkN8mppTbze
 6BUGV6lEOP1MIaaVzuAD7FmMaUV9sKbQdveFPdzWPsQGNkTw1AN4012EyD2ZZaxkLdtB
 7BZjppWmtgYvaazs0i7DsHjpP/2Zdfy4fVBNm3BOXVsPeqPK+m6avhv3qpd35lhrqDT7
 V16v9z3S6uTMLZ+VSTh8aGqodVwURbLSbTychnTyuLSR9KMph+FSzd8JjKew4ZTOfLmX
 9H2t+tpiTpuggLShEntYXQBBCOfMu1/187VQB+MfSaUJMwifm9P3LeQGK8KEHzQt/e/I
 SZrw==
X-Gm-Message-State: APjAAAUXp4hT374nKTlFxar1oPNQGcnlaP4m5Ki/S3ZL8MuyD4McYIBK
 YbbHw5ddjb05b90igLI9S3E=
X-Google-Smtp-Source: APXvYqxu4xaDS/+jVQYj+M0Pmfinu5kTtdXsjRAlFyzBbRBwSkJH8jFaJCvb6e+mpOkgG/vohM8xNg==
X-Received: by 2002:a63:5ce:: with SMTP id 197mr9183029pgf.114.1579300029114; 
 Fri, 17 Jan 2020 14:27:09 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id n1sm31696435pfd.47.2020.01.17.14.27.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Jan 2020 14:27:08 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: soc@kernel.org
Subject: [GIT PULL 1/3 part 2 v2] Broadcom defconfig-arm64 changes for 5.6
Date: Fri, 17 Jan 2020 14:27:03 -0800
Message-Id: <20200117222705.25391-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_142712_033049_D7F99D86 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:530 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

for you to fetch changes up to e926791a9670c24b391277dad2460912576b1575:

  arm64: defconfig: Enable Broadcom's GENET Ethernet controller (2020-01-17 12:03:18 -0800)

----------------------------------------------------------------
This pull request contains Broadcom ARM64-based SoCs defconfig changes
for 5.6, please pull the following:

- Nicolas enables the Broadcom GENET controller and Broadcom STB PCIe
  Root Complex driver as a module for the ARM64 defconfig. The PCIe RC
  driver will go through the PCIe maintainers pull request for 5.6.

----------------------------------------------------------------
Nicolas Saenz Julienne (2):
      arm64: defconfig: Enable Broadcom's STB PCIe controller
      arm64: defconfig: Enable Broadcom's GENET Ethernet controller

 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
