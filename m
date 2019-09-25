Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5881EBDDC8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 14:08:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QuyzV3DL1jNBKIxo2y/Ih7PfKuYeNP4mMljRNtbXbbo=; b=N29RzsTkgseki0
	ofZ9kstWN7bEqYk9veiazwNpe885MbBWgG1yY92FJukToUTFje1wS+EeMCLgQpmgH4xF2SdIHZm4I
	m5VFX76/H1k4AmruhofSjvin5X+yii0yIhWE/qYJboiaVPMRb85AlQeWJJOts5VbICA6Po0ebxCpZ
	GS1V30ygg2Fg3tv0QOqYHoz8dC4HKP8gJXKeoYPrbpkAt3k6y/wzyyo73zuuHADIo7mUgHpbwWk6l
	38L8kK6lCq6GCRh1Ph+JVzPnVqdzEV2Ly+eOUa+q+V7PYmmpiYcB+6HnWiFuOjQi4iYB2954nA2Wj
	/OBa2yQlcZPxMircfaIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD65x-0008FS-Js; Wed, 25 Sep 2019 12:08:33 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD65j-0008Em-GO
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 12:08:21 +0000
Received: from windsurf (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 080A0240013;
 Wed, 25 Sep 2019 12:08:04 +0000 (UTC)
Date: Wed, 25 Sep 2019 14:08:04 +0200
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: Remi Pommarel <repk@triplefau.lt>
Subject: Re: [PATCH v3] PCI: aardvark: Fix PCI_EXP_RTCTL register configuration
Message-ID: <20190925140804.75ccf336@windsurf>
In-Reply-To: <20190614101059.1664-1-repk@triplefau.lt>
References: <20190614101059.1664-1-repk@triplefau.lt>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_050819_698469_F21EB687 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Ellie Reeves <ellierevves@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bjorn Helgaas <helgaas@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 14 Jun 2019 12:10:59 +0200
Remi Pommarel <repk@triplefau.lt> wrote:

> PCI_EXP_RTCTL is used to activate PME interrupt only, so writing into it
> should not modify other interrupts' mask. The ISR mask polarity was also
> inverted, when PCI_EXP_RTCTL_PMEIE is set PCIE_MSG_PM_PME_MASK mask bit
> should actually be cleared.
> 
> Fixes: 8a3ebd8de328 ("PCI: aardvark: Implement emulated root PCI bridge config space")
> Signed-off-by: Remi Pommarel <repk@triplefau.lt>

Sorry for the long delay, but:

Acked-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com>

I did verify that indeed the polarity of the PME interrupt bit is
different between the standard PCI_EXP_RTCTL register and the
Aardvark-specific ISR0 mask register. And obviously, we shouldn't
clobber other bits of the ISR0 mask register when changing the PME
interrupt enable/disable state.

I did a quick test with a E1000E NIC and it worked fine.

Thanks!

Thomas
-- 
Thomas Petazzoni, CTO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
