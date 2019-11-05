Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 001E5F00A0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 16:03:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=U01OBfLkVyxs6o6U7005hQo93+kUfrx5XTXdjVIT5bg=; b=i+M
	R8QC6j5VX2arPpNnSh/Gg56aAJDpcUFr9BtOp7h1xpcE9QwLjAenMtUnOCeXz+51yvdOQderebnD4
	7XFCnDybPxKLV5aRhrZdk0pWKbQ25Kh0TZbOjGl2/Ix1Xl8B2E+nqOTOlQLCD7zTzutx1kNjNDcP6
	MxApQQMvwZKIhKSx8S2kiAFeCTpWrDt+FER8njaVJNsLd3QMFsEAtTbepgZo3ozvPOEWjGb515YaN
	udMYD4olm+TKywfmjVW3Py7fXd/VllPn97rjEbJJ9p2KIYNKDictTiU4D4eK5j3fG6nBrmQ0XuziB
	hUjvfVxPMBnD/VMc+Tg2tzxB8qUugSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS0Mq-0007S5-N9; Tue, 05 Nov 2019 15:03:36 +0000
Received: from mail-vs1-f68.google.com ([209.85.217.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS0Ml-0007RV-41
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 15:03:32 +0000
Received: by mail-vs1-f68.google.com with SMTP id w25so13643358vso.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 07:03:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=wFpmqOKvp4ttZSocubbjzMUxHXxGX4ycrxW+v2cIZCk=;
 b=RX/QXjc8ty6Od4JjhT5t9iOEzXP4eu6/Cm5/+OADcBgKm8kPw6zgHBScaBe9o+A1Jk
 noSHwdGKvYc+Q2Rici+WqEEsd4SgkBdubtwl4aZ9SlcPpT0VZR5KVvdSX8uEaBpZTcgZ
 iZWFqbBaBR8j4WHBUmjB6oDotub3rV/rJBaSxwfFfsUsx+ah0ZXBgm5K0OaK2iKCC0Nc
 AHaDluzAwsbA81sZfhwc6wxljG5WuxC14lmX3ErQA//mHgQxTTH7fyIxYLGvr6H+rNKx
 s63GZVgxypmMCzUMdNkl1p+0zd9qYup+8ZHVfzswkpP2k9NN/QeU5mrTs2Zry0uji+rG
 CO+A==
X-Gm-Message-State: APjAAAXQVIXOSqEISkUuscwS1F/GUgzNCcJTAGfB89c8l8ncK3QU8R/c
 PFokWNHtzuHWjMadotPQxnataw==
X-Google-Smtp-Source: APXvYqys22tArSVdM2ZaKPUKtXyqskBKWIjXcuj5VClGG0ESpSJKBtJLmxapjG/CX8gRLFT4teasGg==
X-Received: by 2002:a05:6102:226a:: with SMTP id
 v10mr15890709vsd.71.1572966209294; 
 Tue, 05 Nov 2019 07:03:29 -0800 (PST)
Received: from localhost (li1038-30.members.linode.com. [45.33.96.30])
 by smtp.gmail.com with ESMTPSA id c3sm1935728vkg.34.2019.11.05.07.03.26
 (version=TLS1_2 cipher=AES128-SHA bits=128/128);
 Tue, 05 Nov 2019 07:03:28 -0800 (PST)
From: Shawn Guo <shawnguo@kernel.org>
To: soc@kernel.org,
	arm@kernel.org
Subject: [GIT PULL 1/7] i.MX drivers update for 5.5
Date: Tue,  5 Nov 2019 23:03:09 +0800
Message-Id: <20191105150315.15477-1-shawnguo@kernel.org>
X-Mailer: git-send-email 2.18.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_070331_162894_4CB81F65 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.217.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.68 listed in wl.mailspike.net]
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
Cc: Shawn Guo <shawnguo@kernel.org>, Stefan Agner <stefan@agner.ch>,
 Li Yang <leoyang.li@nxp.com>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-drivers-5.5

for you to fetch changes up to 768e1a8e093677f5e0e7d0a447c1a856c16cbb66:

  soc: imx8mq: Read SOC revision from TF-A (2019-11-04 11:32:12 +0800)

----------------------------------------------------------------
i.MX drivers update for 5.5:
 - Skip return check for those SCU firmware APIs that are defined as
   void function in firmware.
 - Use established serial_number attribute instead of custom one to show
   SoC's unique ID for i.MX8 SoC drivers.
 - Read i.MX8MQ SOC revision from TF-A which parses ROM and exposes the
   value through a SMC call. This improves the situation that SOC
   revision reports 'unknown' on some older revisions.
 - Add a check and warn on unexpected SCU RX to avoid potential stack
   corruption in imx-scu driver.
 - Fix a sparse warning in imx-scu-irq driver by adding missing header.
 - Remove an unneeded call to devm_of_platform_populate() from imx-dsp
   driver.

----------------------------------------------------------------
Anson Huang (3):
      firmware: imx: Skip return value check for some special SCU firmware APIs
      soc: imx8: Using existing serial_number instead of UID
      soc: imx-scu: Using existing serial_number instead of UID

Ben Dooks (Codethink) (1):
      firmware: imx: add missing include of <linux/firmware/imx/sci.h>

Daniel Baluta (1):
      firmware: imx: Remove call to devm_of_platform_populate

Leonard Crestez (2):
      firmware: imx: warn on unexpected RX
      soc: imx8mq: Read SOC revision from TF-A

 drivers/firmware/imx/imx-dsp.c     |  2 +-
 drivers/firmware/imx/imx-scu-irq.c |  1 +
 drivers/firmware/imx/imx-scu.c     | 24 ++++++++++++++++++-
 drivers/soc/imx/soc-imx-scu.c      | 34 ++++++++++++++------------
 drivers/soc/imx/soc-imx8.c         | 49 +++++++++++++++++++++++++++-----------
 5 files changed, 79 insertions(+), 31 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
