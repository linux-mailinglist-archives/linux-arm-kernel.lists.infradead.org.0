Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 290D61351F0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 04:29:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=nMemB7wb9qqpgRqsB4psKRsLJxPRWRTL39xd+PXvtdw=; b=c/v
	D1vlpSx6Mv48vb/xJLYZLeUcpysl9V6m2ByZINJSCn56TxdAojoqgpbm5UStd1WXAvlXgsF9+1yZv
	syyxflbbZ4vqFv8PkWMMlJyMC9MQI8SrdJ+K77lwcbG8GqogIB0DAygtY+PyI+0nGBpN0J/qGNW0D
	Iz3ogdX8xHjq2Bd9AxvS0tC62d37KpL0Ojjrtux0BhrePvDwjAY492xJnJrXBAZqASm+NqkOL7xVG
	HFOxGv5bQWAWto2pil68HeIhFT+tcpmiiWvjv2xSffxPWpfZl7Re36GQ+AMIc4pJwHiZsNOB8Ox65
	Tk8Y++qL6Fm4/xCIszescufBIXxXsfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipOVN-0000p7-DA; Thu, 09 Jan 2020 03:29:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipOVF-0000na-PQ
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 03:28:59 +0000
Received: from localhost (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4E187206F0;
 Thu,  9 Jan 2020 03:28:55 +0000 (UTC)
From: Shawn Guo <shawn.guo@linaro.org>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>
Subject: [PATCH v2 0/2] Improve pcie-histb GPIO reset implementation
Date: Thu,  9 Jan 2020 11:28:49 +0800
Message-Id: <20200109032851.13377-1-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_192857_847168_FDA191A6 
X-CRM114-Status: UNSURE (   5.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-pci@vger.kernel.org, Jun Nie <jun.nie@linaro.org>,
 Shawn Guo <shawn.guo@linaro.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It switches pcie-histb PCIe reset code use gpio_desc for GPIO
configuration, and corrects the GPIO reset operation as per PCI EXPRESS
CARD ELECTROMECHANICAL SPECIFICATION.

Changes for v2:
 - Split into two patches
 - Capitalize the subject
 - Add some comments for PCIe reset operation

Shawn Guo (2):
  PCI: histb: Use gpio_desc for PCIe GPIO reset
  PCI: histb: Correct PCIe reset operation

 drivers/pci/controller/dwc/pcie-histb.c | 41 ++++++++++++-------------
 1 file changed, 20 insertions(+), 21 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
