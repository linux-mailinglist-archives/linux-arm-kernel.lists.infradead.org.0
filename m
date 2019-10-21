Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93684DF631
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 21:43:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1NfcaDCKopUjp1RY/LenZMajtHDp+oxwqTXGyVwaAuE=; b=Jxj
	d0H50FsShuJpPyCzhndKNMsl45+pewOrHpvM81tagKo0Or4boXW+uEUsbyW6b9La1FS8WwkBMlYAB
	5VWlguztIji8FuNpRA3ZBzmbzUvxLouW+UDtI8KfHTAn8zFCapO0BeqOY2wgpVL5MMCZy7U+XEUmg
	WPalkvP6+6SC8lHMkiqmdoyPdYs9PtR5b18uBxh+RUIVKr+7hcuGkcHF9uhTWJayyEYBjLnmGLlro
	LXyMWF1QKZpDqjfGs94ik75i1IUPnID9NP9ye5wQaGO8Mh/WWiCx1Q6y3f5HJ7BQMybZiB91rzMwv
	Pq/3QVepnyPbD59V+5mk7M7JCcS6nOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMdaJ-0002jc-9c; Mon, 21 Oct 2019 19:43:19 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMda9-0002j2-Kz
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 19:43:11 +0000
Received: by mail-wr1-x443.google.com with SMTP id w18so14793631wrt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 12:43:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Lrgy4cabYaos62egHj1TE+gAJuJTgFcPNkgCZ9w1Qvo=;
 b=kqkKn/n1Sz9LqvAh6Fh85qQ1EQLesPb2Q0Q9j+zcsBvIJbG2/xhEMDlgpEhb7yFLTp
 yKpsHwIiJHKbI8fYN1g84Iw2wNNhOCkSvC9Iq5zD+pT9cacJbHY/qIhvJzhPkTnrF+VZ
 pqvNdy2t/biQ7EFELmlF1zvkxD2A5XudYBvTByWKCcSuT+lL2OKb/F3x1i4MX/IyroEZ
 jk3LQmiKQUjCfm6XUgMplKTSCD/sr9XXpRl4k40XImr+uXtU4n1C/KUgBgy3EE0z6CA9
 AHTf4/DZ9cEAqWfNaKnWSxsDss92v8yEgtVZkWaljTpRMC/eZ6Y+BkIN35HnnuLJ3zYX
 8ZAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Lrgy4cabYaos62egHj1TE+gAJuJTgFcPNkgCZ9w1Qvo=;
 b=H727s29LKbsx6qE/a+URF7o6bLgnHnryjdbutgQNIvxRizbKAtj/iLSabG9JU7puuj
 b8V6kds9a4TyiDVQ6A8HtpPrnBxDbc26lDtQJJTr6ObFHZ13jROqgiqj1Nt9dG68sK/9
 KrzFUnwt6k+Km4i4GpHt70l7o9RVzshnzfC3qokTiEEDxBtoxonBXyHUCdX9HVkekwW+
 Ia/UaCMUkvLQNKp2SeW08Dprcg6qBOfshRhfLqae+TPpIgIASdMQS0eYBH/xkICtETg0
 MjBqbFCqA61GB0m7dEIrLxhVHPsy0KyBO3cKnRaZ2N381qSNANzcJoBlVgDaitshPKuN
 I+HQ==
X-Gm-Message-State: APjAAAVGPu+i4lgZkeYr+BP1g7qEpFjZXkwIb5WbHwaiXcx2bV1EAqBi
 WGz5NCGyhqU9EuHeMqyihG8gPejz
X-Google-Smtp-Source: APXvYqwDcvWZ2elvi8YsEE4gT+ZXTx1TJLIkf7qkkZGz0qd12EV3+RCYfsJtYlBInwsDeT9kZ431+g==
X-Received: by 2002:adf:bd8f:: with SMTP id l15mr20883145wrh.362.1571686987971; 
 Mon, 21 Oct 2019 12:43:07 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id c8sm2370179wml.44.2019.10.21.12.43.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 12:43:07 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: soc@kernel.org
Subject: [GIT PULL part 2] Broadcom devicetree fixes for 5.4
Date: Mon, 21 Oct 2019 12:43:02 -0700
Message-Id: <20191021194302.21024-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_124309_714154_FDEC82EE 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Fredrik Yhlen <fredrik.yhlen@endian.se>, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, olof@lixom.net,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 9786340acaa33b3722925125e2df358d14b8ee12:

  ARM: dts: bcm2835-rpi-zero-w: Fix bus-width of sdhci (2019-10-15 10:18:32 -0700)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.4/devicetree-fixes-part2

for you to fetch changes up to 626c45d223e22090511acbfb481e0ece1de1356d:

  ARM: dts: bcm2837-rpi-cm3: Avoid leds-gpio probing issue (2019-10-18 11:59:39 -0700)

----------------------------------------------------------------
This pull request contains Broadcom ARM-based SoC Device Tree fixes for
5.4, please pull the following:

- Stefan removes the activity LED node from the CM3 DTS since there is
  no driver for that LED yet and leds-gpio cannot drive it either

----------------------------------------------------------------
Stefan Wahren (1):
      ARM: dts: bcm2837-rpi-cm3: Avoid leds-gpio probing issue

 arch/arm/boot/dts/bcm2837-rpi-cm3.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
