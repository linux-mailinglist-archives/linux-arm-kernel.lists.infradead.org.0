Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B060441A86
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 04:52:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZeO0gYAaEHn3Efn2cOIsdNBNVejZi6q2h4MxLHnxvkw=; b=qDJ7egHj8cLcm7ANu85p37yUPc
	reSF+o+l8V7He9EjGxuwt362bpj4zTQpggs1QuHM3ztA+mHhGSlJjlqGvuYTw9iQ/8Jgrc72yZVwF
	x5/FGYvjiCkBp+RdHqvs6mzBB1FfGMFBZyyak0JtsNqcl3AB4EIBP+y4iDu+I28vypdbhv9uIkBEU
	dB2Lios3hLz00uEAyTvkdNltWHz3JqEMSLneocphWNS1lCbTWr6jKZHpRJ1z5awscWqjiDaAPSMey
	VQiNbQaT79Ppv8iXW4rSzTr6qQo1D5Q7JqBh2Ow3wRMUpJ9g9eqnWokSMdahGJiuqf2lenmTy0iBf
	ggqOrQ7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hatN9-0004BV-6x; Wed, 12 Jun 2019 02:52:23 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hatLm-00038R-Gp
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 02:51:00 +0000
Received: by mail-wm1-x343.google.com with SMTP id g135so4892668wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 19:50:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=PZ8IxQLBbhZIUayf02pjL/v8CjcGWE8cXb2wOMcTc+s=;
 b=agfwfoQxYRo9JZDmNhxnwRTm86L0f/ervRuR8GJyaYH8GK+EYzkD7SssLpDf5W22fz
 OJr21iMb2rKBLIQmq8j4wSkNdNnIUvDofP/YvpacroCkCkkTGvDPaKl0rUVjbZ98ex5Z
 itRhOz1HuCkEOcumWoQqnfM/2BkO1fT8XHNAEeHUdSyxMON8eQY5XrBQ8mnliLD7V54o
 JzKo0nbtGKSuvTV5SCHZ4JKmNlQFJ8txPlNZKs3dbx79rMKwGTE+j4vyL6yw9Kn1PYdJ
 /NqbHmb44Nu/CoOAM7aVJ6Bu39BUW2imfRb4LVlusFIg+GE3y1LfDwRi9+dRNtR2wONS
 Y+1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=PZ8IxQLBbhZIUayf02pjL/v8CjcGWE8cXb2wOMcTc+s=;
 b=S/9/lRk3m4+FfxUtdmW/De+khVZ5XqGYVVJBg1v2Uv4hxxN5DMnNM9KurwYcQo36dQ
 wsDHsp69Zxyp65TSizMBZn2vhN2ASY5zinHBMHhLRkuEkh8QCOMBbAG0J/xF/HXvlN77
 ia1VqmUhbv4XPDY8b/RiRSflYH7oFTwZCnfIzdUiUXE+4L9DdzJfNe/oSBrHCvdXEnle
 h42SJbTUKlMsetjcT3sRNhwNQSRUSRTg5WosAJTP8tL/Ph1j8zB1yTs2jjSV629GfQis
 k7E8ZVynhH3/HQ2NKpsa0o3nRXZN4az4Nyo6xZcLm4ilfHR1GI1QyjlF5rFFkY9Nkx9U
 P2hg==
X-Gm-Message-State: APjAAAXX7MiQ51rTNMPoIQLve+1Rs9x3zKKjhQ0Ew2+N4F2uG1ObDjIB
 mNRMgMkg1Zu+PKJpW/PUDXo=
X-Google-Smtp-Source: APXvYqzU9n4GxvHFaB5sucmyNQDy3VdZGOO62pq+AjWPrujPHa+xf03v5rx/0c9sRndpj/TscJ3J7g==
X-Received: by 2002:a1c:a483:: with SMTP id n125mr943615wme.3.1560307856983;
 Tue, 11 Jun 2019 19:50:56 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id s10sm4374100wmf.8.2019.06.11.19.50.54
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 19:50:56 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: arm@kernel.org
Subject: [GIT PULL 6/6] Broadcom soc-arm64 changes for 5.3
Date: Tue, 11 Jun 2019 19:50:28 -0700
Message-Id: <20190612025028.13118-6-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190612025028.13118-1-f.fainelli@gmail.com>
References: <20190612025028.13118-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_195058_631968_FD9D9B0F 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Jim Quinlan <jim2101024@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 olof@lixom.net, Doug Berger <opendmb@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.3/soc-arm64

for you to fetch changes up to 724cf0aecb0d839b0b5865901b02a742dcfa6ea4:

  arm64: Enable PINCTRL for ARCH_BRCMSTB (2019-05-31 10:34:38 -0700)

----------------------------------------------------------------
This pull request contains Broadcom ARM64-based SoCs Kconfig.platform
changes for 5.3, please pull the following:

- Jim adds the ability for ARCH_BRCMSTB to use reset controllers

- Doug adds the ability for ARCH_BRCMSTB to use the PINCTRL framework

- Florian enables the use of the BCM7038 Level 1 interrupt controller
  for ARCH_BRCMSTB

----------------------------------------------------------------
Doug Berger (1):
      arm64: Enable PINCTRL for ARCH_BRCMSTB

Florian Fainelli (1):
      arm64: Enable BCM7038_L1_IRQ for ARCH_BRCMSTB

Jim Quinlan (1):
      arm64: Enable ARCH_HAS_RESET_CONTROLLER for ARCH_BRCMSTB

 arch/arm64/Kconfig.platforms | 3 +++
 1 file changed, 3 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
