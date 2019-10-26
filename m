Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B0DE5F65
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 21:59:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cxfP7NcWmQjuZGOa90ZZsg6ktuV29KqmJE6ivCiDrGc=; b=EaXBGYJjNWg3OK
	WDFtVknboYA3BuR9v01WVyIiQQhKwUDb5nXCdeqzVKj27oTiySkMAMPYvTQz6OhjnB4E5rjlk71+q
	faG2iT1vhYMs/3hfhZqFzbATbMCzWA4H85NdTT7D85hqYWCXNjZA9teGy3RzyKZcO18yyZzcxhfZf
	qK9p0UdA63ysfZytT1fF4eKa9WJ22hvCOGB/s/sqvZ692PoZyNKwHgnFgDk5gjqRlQWypzAA8n0cJ
	1L6p+Hf0TEgDFLqdr67mjrqdetmyE1mDleqY5WKSywEEYD1+ezqDt+kpK7D7EDVvsTefimU8YX7M1
	8c7nvtjGyFaABeuspncQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOSDu-00023z-CO; Sat, 26 Oct 2019 19:59:42 +0000
Received: from mail.andi.de1.cc ([2a01:238:4321:8900:456f:ecd6:43e:202c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOSCS-0001FE-Nj
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 19:58:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=kemnade.info; s=20180802; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MQYRheoq8kp41zbJw1RTKir7qxVJ+jzxSDKzGZgQqFM=; b=NtdFBzmUapL3+gcLQuTuXMe1E3
 VW/jHGS1wvnIabtSmGP66fv2aKqA4WJ79Do5B+JIOpUhQEi5B5au6soQM/7SJp/qlBx+JfH08+9SY
 gLod2oHaAW4ad6wVWn5/04cnyUsF25iF6KG+O9/f2RkCgpqROTJxEYN0TI1yzCGLxdkI=;
Received: from p5dc580b6.dip0.t-ipconnect.de ([93.197.128.182] helo=aktux)
 by mail.andi.de1.cc with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <andreas@kemnade.info>)
 id 1iOSC9-0006sE-5H; Sat, 26 Oct 2019 21:57:53 +0200
Received: from andi by aktux with local (Exim 4.92)
 (envelope-from <andreas@kemnade.info>)
 id 1iOSC8-0003pB-90; Sat, 26 Oct 2019 21:57:52 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com, manivannan.sadhasivam@linaro.org,
 andrew.smirnov@gmail.com, marex@denx.de, angus@akkea.ca,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, j.neuschaefer@gmx.net,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 Marco Felsch <m.felsch@pengutronix.de>
Subject: [PATCH v4 0/3] dts: ARM: add Kobo Clara HD eBook reader
Date: Sat, 26 Oct 2019 21:57:45 +0200
Message-Id: <20191026195748.14562-1-andreas@kemnade.info>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Score: -1.0 (-)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_125812_923746_06C202D9 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andreas Kemnade <andreas@kemnade.info>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds a device tree for the Kobo Clara HD eBook reader.
Name on mainboard is: 37NB-E60K00+4A4
Serials start with: E60K02 (a number also seen in
vendor kernel sources)
These boards are also found in the Tolino Shine 3 reader
but equipped with a i.MX6SL processor. Support for that
device is planned to be added in a later patch series.
To prepare for that the device tree is split up into
a board file containing SoC-independent stuff and a
file containing the SoC-dependent stuff.

Work is based on code from the vendor kernel at
https://github.com/kobolabs/Kobo-Reader/blob/master/hw/imx6sll-clara/kernel.tar.bz2
but things need to be heavily reworked due to
incompatible bindings and to prepare for Tolino Shine 3

Changes in v2:
- reordered patches
- various cleanups as suggested by Marco Felsch

Changes in v3:
- correct memory size
- better name for led
- comments about missing i2c devices

Changes in v4:
- various cleanups as requested by Shawn Guo

Andreas Kemnade (3):
  dt-bindings: arm: fsl: add compatible string for Kobo Clara HD
  ARM: dts: add Netronix E60K02 board common file
  ARM: dts: imx: add devicetree for Kobo Clara HD

 .../devicetree/bindings/arm/fsl.yaml          |   1 +
 arch/arm/boot/dts/Makefile                    |   3 +-
 arch/arm/boot/dts/e60k02.dtsi                 | 305 +++++++++++++++++
 arch/arm/boot/dts/imx6sll-kobo-clarahd.dts    | 324 ++++++++++++++++++
 4 files changed, 632 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/e60k02.dtsi
 create mode 100644 arch/arm/boot/dts/imx6sll-kobo-clarahd.dts

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
