Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C8C12FCD3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 20:05:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=tniXbKZGoGAM5eD/tQyxHAA75n5kObu1LeSnBph6ti0=; b=DyS
	7U6OnqwS2nIuMCCejCmM2oJUNVlPalXrLH9uQqAoKWNclT2Lm9oiuX97vFMm+REMkZI02JrBzRSpZ
	w+G0qMKegl7YS1kyUyT0AqCIuofepH+iwBGoS0KrWSCUyojXyKKYdYoe34Brv74VeSR9vf+DYcqBp
	/OEy7ZjoCOpLn3FMcEM0/HPJFsR4DV/7dbJkW2U6lgRh20vYB9Tzg0m7vl5JgceRr/fdn+tR4BNW/
	JpBMA2UZMdLvfozzbjzj8Kl9hlXEgbTgMU3RqT/2JyhJtWLg/ompIvBxf12cWt8dj2Frg+JCjAK3Q
	Cqr8ynVriFHTNdoOwtSnMgx8qw40NgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inSFe-000265-Eb; Fri, 03 Jan 2020 19:04:50 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inSFU-00025T-4T
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 19:04:41 +0000
Received: by mail-wr1-x443.google.com with SMTP id y11so43341708wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Jan 2020 11:04:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=x8j7vi7SOHTwwrftrycS7Qh+VkSUlsK2qUXxAAHOzo8=;
 b=THT8z/1tlsQpVmn/eYr7avv2CAAyuruPJsXyN7t2Eqfqr+Uq0TWlpDlTOv02j30ld3
 +mVVE7TMg8nVgf3hPxXplY4N5oxiXBCMmVh6hDmWLyei4TYcp+S5oYqIyGu+Jsx6yngA
 gZkxzC16PcX+aArbURgD/43sTkn3Va33RSDPOSJxRXksR+NI7lENXJwOklcXFPQsVN+Q
 INN0gvXDWpsXyh6xBfDvcPRBHFDDq+1fgRlFHL+APar6VuEbLvSZcSvOTfriMez6Pr+k
 Cqgn5JDLIxZgk6dRnhTIty0skDGOzneAKk3+NmwpHVo+aD5ul1HtD9rv4akMxqWkzwGN
 0ASg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=x8j7vi7SOHTwwrftrycS7Qh+VkSUlsK2qUXxAAHOzo8=;
 b=lief3wgO9IBycD/uEpnuPgfZ9sECSm+uAzjLHn9jIlESvxoeb5l++xxoSzjRdb2tJm
 beqF6qWSJ9uKFNDOlvE51QaQG+NwHqCIoYJUWSGizQ4Y6BWjnKOxSJLiaBVKGh0PhmMd
 c8slMk58Kfglelpmk3Amltk3/t1GHRHHrBXorpz5it7nhFBdQBcdzqteO56u8tFqKFWy
 0/FSbfJQrPKjUNFpiyUOOSoB9NHe8mZv5saBkKBp1DcxRjn4Ot1JSYnB+akeDL21syLF
 90KHmqieMInhiQDqdROFxw6zY0NRjTz1nVMrbWSNK2dLfwQeXY+gwGk23sq7muxd1NdS
 wExw==
X-Gm-Message-State: APjAAAU+ld+blhybc2d0NA1Em/fVKXUyC5KOWtodExGfueBq+T2G4KiT
 wGyjBnh10PDcaWzQHW5wUGk=
X-Google-Smtp-Source: APXvYqzJ/Urng5Dt4cBTvlh2jMrpYHRyg23bV7gEwizghoGD/ENaRPr/5vl5bWgEkTVgPJQIK7GwPw==
X-Received: by 2002:adf:dfd2:: with SMTP id q18mr89016216wrn.152.1578078277878; 
 Fri, 03 Jan 2020 11:04:37 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id f16sm60822416wrm.65.2020.01.03.11.04.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 11:04:37 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/2] reset: Add Broadcom STB RESCAL reset controller
Date: Fri,  3 Jan 2020 11:04:27 -0800
Message-Id: <20200103190429.1847-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_110440_178464_11085CD7 
X-CRM114-Status: GOOD (  12.22  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Jim Quinlan <jim2101024@gmail.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Philipp,

This patch series adds support for the BCM7216 RESCAL reset controller
which is necessary to initialize SATA and PCIe0/1 on that chip.

Please let us know if you have any comments. Thanks!

Changes in v3:

- indented "base" variable with a space
- return ret directly out of readl_poll_timeout()
- removed additional register read after write, not necessary
- removed call to platform_set_drvdata, unnecessary either
- corrected Jim's email in Signed-off-by in patch #2

Changes in v2:

- binding document is in YAML format per Rob's suggestion
- indented bit definitions the same way for all definitions
- moved reset logic to the .reset() callback
- removed the XOR operation which is not necessary after clarifying with
  Jim that this was not necessary
- use readl_poll_timeout()

Jim Quinlan (2):
  dt-bindings: reset: Document BCM7216 RESCAL reset controller
  reset: Add Broadcom STB RESCAL reset controller

 .../reset/brcm,bcm7216-pcie-sata-rescal.yaml  |  37 ++++++
 drivers/reset/Kconfig                         |   7 ++
 drivers/reset/Makefile                        |   1 +
 drivers/reset/reset-brcmstb-rescal.c          | 107 ++++++++++++++++++
 4 files changed, 152 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/reset/brcm,bcm7216-pcie-sata-rescal.yaml
 create mode 100644 drivers/reset/reset-brcmstb-rescal.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
