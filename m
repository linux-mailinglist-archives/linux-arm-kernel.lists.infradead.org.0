Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB741F5BEC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 21:20:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oy5i0zalwwxE2tDrzuC1JLaDKz8CjNLBsRyvd6+EFpc=; b=iSb51E9gjHXSli
	B6CsVA3K1GJCba41gZSkeM/hL/cJTGeVKFijpCOxliWw9LP1RrCW+eTLaOkhNWf8QGwtksHMTeRf+
	jGiN6D9TZoxvllRJzaHZEJssQanalfRIyp+3I746R6E14aLsvJ2lTCasnW2OXtZVnKXI9tL361M+U
	6Pk03zV2/8mISkB5VQlFCnnnbpuha+xGSCg78Oz3kNmRZDN5ehwKamKWhtHeH4Uvel3Wjg+7BC0qb
	P1ALD6zSZTa3lOXOr8vCbTHCEUON8LzGpvIlENhb73/zr5OkfigmUnNF2RT+bsZX36xQbP3IfyEGy
	yfN5rTujetxux6PhNYtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj6HL-0006jo-NE; Wed, 10 Jun 2020 19:20:51 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj6HC-0006j9-IK
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 19:20:44 +0000
Received: from windsurf.home (lfbn-tou-1-915-109.w86-210.abo.wanadoo.fr
 [86.210.146.109])
 (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id A3EB9200002;
 Wed, 10 Jun 2020 19:20:38 +0000 (UTC)
Date: Wed, 10 Jun 2020 21:20:37 +0200
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: "Shmuel H." <sh@tkos.co.il>
Subject: Re: [RFC PATCH] pci: pci-mvebu: setup BAR0 to internal-regs
Message-ID: <20200610212037.7fd32a43@windsurf.home>
In-Reply-To: <ae84b87c-665b-7619-7cb0-a1fd58b17d8f@tkos.co.il>
References: <20200608144024.1161237-1-sh@tkos.co.il>
 <20200608214335.156baaaa@windsurf>
 <ae84b87c-665b-7619-7cb0-a1fd58b17d8f@tkos.co.il>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_122042_738745_299F7ED1 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Cc: Baruch Siach <baruch@tkos.co.il>, Jason Cooper <jason@lakedaemon.net>,
 linux-pci@vger.kernel.org, Marek =?UTF-8?B?QmVow7pu?= <marek.behun@nic.cz>,
 Chris ackham <chris.packham@alliedtelesis.co.nz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 10 Jun 2020 17:17:15 +0300
"Shmuel H." <sh@tkos.co.il> wrote:

> Apparently, the PCIe controller is outside of the internal registers space.

No, it is not.

It is outside of the internal-regs node in the DT because it needs more
"ranges" properties, but the PCIe controller registers *are* within the
internal registers window:

                               <0x82000000 0 0x80000 MBUS_ID(0xf0, 0x01) 0x80000 0 0x00002000
                                0x82000000 0 0x40000 MBUS_ID(0xf0, 0x01) 0x40000 0 0x00002000
                                0x82000000 0 0x44000 MBUS_ID(0xf0, 0x01) 0x44000 0 0x00002000
                                0x82000000 0 0x48000 MBUS_ID(0xf0, 0x01) 0x48000 0 0x00002000


> I could try to use a similar code as in
> arch/arm/mach-mvebu/pm.c:mvebu_internal_reg_base or get the first child
> of "internal-regs" and call of_translate_address on it with one zero cell.
> 
> Do you have a better solution?

In mvebu_pcie_map_registers(), we retrieve the address of the PCIe
registers for each port. You can take regs.start, round it down to 1
MB, and you'll get your base address.

Best regards,

Thomas
-- 
Thomas Petazzoni, CTO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
