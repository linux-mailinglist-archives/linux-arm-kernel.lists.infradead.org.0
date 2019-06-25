Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEE6E52574
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 09:54:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6+yhcJx5QpexrN5D3s50DXK4/PjiAXCFHWJXJLYYGk0=; b=gw0q63clF53V6FWl6cDSq69nkQ
	te9gLoi14J+6TxY2nJjNf9gf4dUkCoZ9GVvPkUwB3lTInP1fTEHve9lZDQT4uRK1hMxuI8FYzRFCT
	1qScgMK9UuYSScXzIGSEUaeyqfctSf5f7hjcqluOMVkf9RDb+0MaDPGGBvkaDzKeKu4+6xbXmfWMs
	0G3vYi5d3g3nYXWHQM7itn0oSfvjWH6bf5f5kAXMzdF3pdU7UZcLMtDsfNCKpqm+RP5dr/RlofJS4
	Fac1J/iuqAaVI3TRiAzzUd76h4aqoa09zjYM7m3Mv33hBU+cBRTTulhy20hBBP989ChRdaJ1perU4
	iC/aYU7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfgHy-0007lu-OW; Tue, 25 Jun 2019 07:54:51 +0000
Received: from mail-ua1-f68.google.com ([209.85.222.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfgGl-00075R-AO
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 07:53:36 +0000
Received: by mail-ua1-f68.google.com with SMTP id o19so6642799uap.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 00:53:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=UrGCD/H2ZVKCmoPzPYB1ejIsjEjdObRGP3mQN6e4NbI=;
 b=my88uw8h+gjNm9P8ayq+dLhXZQ7eIW/aJFMlwhr9pl2Dl5JjftprxZ8aljtd0kxKwV
 rQM43hg5mzCYkYoIutOPKjlMQpRUi9qdww9MTnnq3wNi0uzvKU6UcI43O4y0o+CIErEK
 YM9jMWYVSPh0GdFT5KzI2Z7Y0LOtXk0SRKY9ED/MTEabVBXA8X+qWnjxthj2N6DW1yip
 PsqD/WVadAKw5JbA3tKwldyYmf4e8wyxqPLl/AuDOblzSE/mOxLxcWisWjtTymL+DtXk
 HEBE9U4VQBJOKJOGgsOkbbtLttZTTOWpkRmIkhk8leY4iztrXISF7pS0A9mLBHQMWIdT
 OO4A==
X-Gm-Message-State: APjAAAXpqNdr9KacIjm7J6z59l/kxt2EIT9aaO5caUHH+a3b8s0Nxebd
 ZG3E7zb7Yv3t+oTaOlI/XmRmwQ==
X-Google-Smtp-Source: APXvYqyRu5lOAvVa/3QCWu+/o9pXVdTYqP43CeuZkhNziZqyHq5JdEVoF39DBx8ZhoMfZbJIRQ8KIA==
X-Received: by 2002:ab0:734f:: with SMTP id k15mr38213449uap.28.1561449214047; 
 Tue, 25 Jun 2019 00:53:34 -0700 (PDT)
Received: from localhost (li1322-146.members.linode.com. [45.79.223.146])
 by smtp.gmail.com with ESMTPSA id e16sm4102929vke.4.2019.06.25.00.53.32
 (version=TLS1_2 cipher=AES128-SHA bits=128/128);
 Tue, 25 Jun 2019 00:53:33 -0700 (PDT)
From: Shawn Guo <shawnguo@kernel.org>
To: arm@kernel.org
Subject: [GIT PULL 4/7] i.MX DT changes with new clock for 5.3
Date: Tue, 25 Jun 2019 15:53:02 +0800
Message-Id: <20190625075305.29082-4-shawnguo@kernel.org>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190625075305.29082-1-shawnguo@kernel.org>
References: <20190625075305.29082-1-shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_005335_401073_9346B1B3 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Stephen Boyd <sboyd@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Stefan Agner <stefan@agner.ch>, Li Yang <leoyang.li@nxp.com>,
 linux-imx@nxp.com, kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This is a set of device tree changes having dependency on clock tree.
The top commit 53c6a2ec018b ("clk: imx8m: Add GIC clock") of the
dependencies have been pulled in here, which should be stable.  Please
pull, thanks!

Shawn


The following changes since commit 53c6a2ec018bb07aeb1e2b1d7db8521f1e56d221:

  clk: imx8m: Add GIC clock (2019-05-23 21:14:41 +0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-dt-clkdep-5.3

for you to fetch changes up to 881b54c7e9d97e36b08fa40d46377b3b983e4095:

  arm64: dts: imx8mq: add clock for SNVS RTC node (2019-05-31 15:22:06 +0800)

----------------------------------------------------------------
i.MX DT changes with new clock for 5.3:
 - This is a set of device tree changes with new clocks - adding
   clock info for i.MX8 GPIO and SNVS RTC device.

----------------------------------------------------------------
Anson Huang (3):
      arm64: dts: imx8mm: add clock for GPIO node
      arm64: dts: imx8mm: add clock for SNVS RTC node
      arm64: dts: imx8mq: add clock for SNVS RTC node

 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 7 +++++++
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 2 ++
 2 files changed, 9 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
