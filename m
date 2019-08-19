Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA42922E9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 13:59:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=icnmmNOvM2K8pZJohvPN+wJ4y+uOgs1oLL9LMrKdcM0=; b=T0Wk+6gbnxF6ug
	T4fUkLw1/0tnwk+0geA+zcrKWq2JWx0TSKtLnMn6k1jpS9fGFjLVPic3P6plbDguWE2DEaOjVAFgz
	lS3Mvjux6GVabEhcvcypgckxmojUbcaBnY9FJ2BwvFVeD2RyE76sqSENodCLyTRA1BZYm98SnD4U9
	fbmwS7enZJMVojh1F2Y0CJBkQMxGvdQGm01r0l1+qtAyF4jWvw4rE1BauaBdAkgLiFtEOiCJ6A8Ws
	28J5z2MIHMPsqALen3mLhriOmcfj65nQB+8POA/3e49GGkKMQrgEiKN7iv9Gb4XRfqa1HxXMcbwUw
	1tCPolfCKpNXfeq4ivnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzgJT-0005ky-EY; Mon, 19 Aug 2019 11:59:03 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzgJL-0005kc-TH
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 11:58:57 +0000
X-Originating-IP: 90.30.228.116
Received: from windsurf.home (atoulouse-659-1-185-116.w90-30.abo.wanadoo.fr
 [90.30.228.116]) (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id EB5ACC0003;
 Mon, 19 Aug 2019 11:58:40 +0000 (UTC)
Date: Mon, 19 Aug 2019 13:58:39 +0200
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: Krzysztof Wilczynski <kw@linux.com>
Subject: Re: [PATCH] PCI: Fix misspelled words.
Message-ID: <20190819135839.1d3a8ca7@windsurf.home>
In-Reply-To: <20190819115306.27338-1-kw@linux.com>
References: <20190819115306.27338-1-kw@linux.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_045856_095961_7C62832D 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
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
 Richard Zhu <hongxing.zhu@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Bjorn Helgaas <helgaas@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux-pci@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 19 Aug 2019 13:53:06 +0200
Krzysztof Wilczynski <kw@linux.com> wrote:

> Fix misspelled words in include/linux/pci.h, drivers/pci/Kconfig,
> and in the documentation for Freescale i.MX6 and Marvell Armada 7K/8K
> PCIe interfaces.  No functional change intended.
> 
> Related commit 96291d565550 ("PCI: Fix typos and whitespace errors").
> 
> Signed-off-by: Krzysztof Wilczynski <kw@linux.com>
> ---
>  Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.txt | 2 +-
>  Documentation/devicetree/bindings/pci/pci-armada8k.txt   | 2 +-

For pci-armada8k.txt:

Acked-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com>

Thomas
-- 
Thomas Petazzoni, CTO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
