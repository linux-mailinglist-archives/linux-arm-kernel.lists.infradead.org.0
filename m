Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9FECDFEBD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 09:53:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cdP71PEqUVFHIPL25Jfw2PoO1zeAB6HrfWUdtuPXzPk=; b=pZcokUrDMCqJbO
	78M4cG0IkCIH30KQLARWM5lPhGRT1bCokhrSNnPJOE1ocJfh1pWj3WnX3/E1AtFe3NUfvHGgbXiW4
	kKHv4h/v0Olv/2aQyANE4+j3AHVEQePZ4pmCS1TqVd+FvSRmBVE4Y0Dy9MG4UfMcwIt4Rz/yQzAkt
	oPcRnfkpDaskS5pTEwDSmw6QVKNfCSHxViDnqcjZCcPDRj+ZgaqrFYYMSo4uuUXuHxkGOpf4dsbzl
	BzEC7MPtF78X5BaKwwsb4PdC9nH/5paN/GOnjgOEUNT6hWrec54V71SQbj66MGMeXqACYVXOkSGz9
	GdFCOX1IWoIma4QZaChw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMoyO-0007e5-I5; Tue, 22 Oct 2019 07:52:56 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMoxa-000732-5V; Tue, 22 Oct 2019 07:52:09 +0000
Received: from windsurf (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 18CB020000F;
 Tue, 22 Oct 2019 07:52:00 +0000 (UTC)
Date: Tue, 22 Oct 2019 09:52:00 +0200
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH] mtd: spear_smi: Fix nonalignment not handled in
 memcpy_toio
Message-ID: <20191022095200.54585032@windsurf>
In-Reply-To: <20191022094451.14d39206@xps13>
References: <20191018143643.29676-1-miquel.raynal@bootlin.com>
 <20191021100105.0f06b212@collabora.com>
 <20191022094451.14d39206@xps13>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4git49 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_005206_496831_9646B4EC 
X-CRM114-Status: GOOD (  16.40  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>, stable@vger.kernel.org,
 Marek Vasut <marek.vasut@gmail.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-mtd@lists.infradead.org,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

+Russell in Cc.

On Tue, 22 Oct 2019 09:44:51 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Boris Brezillon <boris.brezillon@collabora.com> wrote on Mon, 21 Oct
> 2019 10:01:05 +0200:
> 
> > On Fri, 18 Oct 2019 16:36:43 +0200
> > Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> >   
> > > Any write with either dd or flashcp to a device driven by the
> > > spear_smi.c driver will pass through the spear_smi_cpy_toio()
> > > function. This function will get called for chunks of up to 256 bytes.
> > > If the amount of data is smaller, we may have a problem if the data
> > > length is not 4-byte aligned. In this situation, the kernel panics
> > > during the memcpy:
> > > 
> > >     # dd if=/dev/urandom bs=1001 count=1 of=/dev/mtd6
> > >     spear_smi_cpy_toio [620] dest c9070000, src c7be8800, len 256
> > >     spear_smi_cpy_toio [620] dest c9070100, src c7be8900, len 256
> > >     spear_smi_cpy_toio [620] dest c9070200, src c7be8a00, len 256
> > >     spear_smi_cpy_toio [620] dest c9070300, src c7be8b00, len 233
> > >     Unhandled fault: external abort on non-linefetch (0x808) at 0xc90703e8
> > >     [...]
> > >     PC is at memcpy+0xcc/0x330    
> > 
> > Can you find out which instruction is at memcpy+0xcc/0x330? For the
> > record, the assembly is here [1].  
> 
> The full disassembled file is attached, here is the failing part:
> 
> 7:			ldmfd	sp!, {r5 - r8}
>   b8:	e8bd01e0 	pop	{r5, r6, r7, r8}
> 	UNWIND(		.fnend				) @ end of second stmfd block
> 
> 	UNWIND(		.fnstart			)
> 			usave	r4, lr			  @ still in first stmdb block
> 8:			movs	r2, r2, lsl #31
>   bc:	e1b02f82 	lsls	r2, r2, #31
> 			ldr1b	r1, r3, ne, abort=21f
>   c0:	14d13001 	ldrbne	r3, [r1], #1
> 			ldr1b	r1, r4, cs, abort=21f
>   c4:	24d14001 	ldrbcs	r4, [r1], #1
> 			ldr1b	r1, ip, cs, abort=21f
>   c8:	24d1c001 	ldrbcs	ip, [r1], #1
> 			str1b	r0, r3, ne, abort=21f
>   cc:	14c03001 	strbne	r3, [r0], #1
> 			str1b	r0, r4, cs, abort=21f
>   d0:	24c04001 	strbcs	r4, [r0], #1
> 			str1b	r0, ip, cs, abort=21f
>   d4:	24c0c001 	strbcs	ip, [r0], #1
> 
> 			exit	r4, pc
>   d8:	e8bd8011 	pop	{r0, r4, pc}
> 
> 
> So the fault is triggered on a strbne instruction.

What I find odd is:

 (1) Failing on a 1-byte store instruction, which means it should have
     no alignment constraints.

 (2) Failing on a 1-byte store instruction, while switching to
     _memcpy_toio(), which does *only* 1-byte stores, works around the
     problem.

_memcpy_toio() looks like this:

void _memcpy_toio(volatile void __iomem *to, const void *from, size_t count)
{
	const unsigned char *f = from;
	while (count) {
  6c:	e3520000 	cmp	r2, #0
  70:	012fff1e 	bxeq	lr
  74:	e0802002 	add	r2, r0, r2
		count--;
		writeb(*f, to);
  78:	e4d13001 	ldrb	r3, [r1], #1
	asm volatile("strb %1, %0"
  7c:	e5c03000 	strb	r3, [r0]
		f++;
		to++;
  80:	e2800001 	add	r0, r0, #1
	while (count) {
  84:	e1500002 	cmp	r0, r2
  88:	1afffffa 	bne	78 <_memcpy_toio+0xc>
  8c:	e12fff1e 	bx	lr

So it's also doing a strb, nothing different.

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
