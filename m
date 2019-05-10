Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9530619E61
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 15:40:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T6hAhKfOXqRE62+HQ84Wo2mUKVzm0GSnLc7M+Hw79K0=; b=ICAQPDsTOaaRfa
	fd48P1SwHfd6HTWn5qAZOd78phgzxBIQ3fQ+mbXF9tf4yA1VmoMoTJlMszrKUlh3d4vVSZ/g5HajT
	P9cFWNW4n+q4vIMmQbTTUrJw1BoF/DVlnV++XtMkF2VKn18ndYdQ+bzygSXUZhUt+CGFBHptxLq6j
	NGZBUwLBNHRZTDoCvUl+6+rAmJfZ8YbpLUhGczcFOamlqB7H70RzYyoCWmK3u3JoX5VYdRPiF/tW0
	CID9rzD1KG5i28V/FBcplk7jNCmI2ZEkalGGesAApzJMi5MkO9V1TpJwH8VEGv1tCjTuWB4kB8lVs
	pRQ8UMj3kKr2IpUqNbiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP5lX-0000u4-O6; Fri, 10 May 2019 13:40:47 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP5lP-0000tU-8R
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 13:40:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 78F52A78;
 Fri, 10 May 2019 06:40:36 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 214C83F575;
 Fri, 10 May 2019 06:40:34 -0700 (PDT)
Date: Fri, 10 May 2019 14:40:32 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Pankaj Bansal <pankaj.bansal@nxp.com>
Subject: Re: [ARMv8] kernel entry point
Message-ID: <20190510134032.GB51370@lakrids.cambridge.arm.com>
References: <VI1PR0401MB2496E0C9DF38720B251C5D32F1310@VI1PR0401MB2496.eurprd04.prod.outlook.com>
 <VI1PR0401MB24965B8DFAC68CFA27CFEBB4F1310@VI1PR0401MB2496.eurprd04.prod.outlook.com>
 <VI1PR0401MB2496C34266F4220813AFA05EF1310@VI1PR0401MB2496.eurprd04.prod.outlook.com>
 <VI1PR0401MB249619B2D7FE6F0EA7AEAE7AF10C0@VI1PR0401MB2496.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR0401MB249619B2D7FE6F0EA7AEAE7AF10C0@VI1PR0401MB2496.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_064039_309521_63A1F1B2 
X-CRM114-Status: GOOD (  25.34  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Wasim Khan <wasim.khan@nxp.com>, Varun Sethi <V.Sethi@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pankaj,

On Fri, May 10, 2019 at 01:24:55PM +0000, Pankaj Bansal wrote:
> + Ard,
> Hi Ard,
> 
> Can you please check below mail? We are not able to boot linux loading
> Image at 16MB offset (0x81000000) from DDR start address (0x80000000)
> I have tested with both u-boot as well as atf.
> 
> This issue is occurring with latest kernel (5.1) Image.  If I revert
> kernel code to commit a7f8de168ace ("arm64: allow kernel Image to be
> loaded anywhere in physical memory "), then this issue doesn't occur.

That commit allows the 2MiB base to be arbitrary, but the text_offset
must still be taken into account. That's all documented in:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/arm64/booting.txt?h=v5.1#n125

.. where we say:

| The Image must be placed text_offset bytes from a 2MB aligned base
| address anywhere in usable system RAM and called there. The region
| between the 2 MB aligned base address and the start of the image has no
| special significance to the kernel, and may be used for other purposes.
| At least image_size bytes from the start of the image must be free for
| use by the kernel.

... and where text_offset is defined in the Image header:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/arm64/booting.txt?h=v5.1#n73

On a contemporary defconfig kernel, text_offset is 0x80000, so
0x81000000 is not a valid address to load the kernel at.

I suspect that things will work if you load your kernel at 0x81080000.

I would strongly recommend you use a bootloader that parses the kernel
Image header, and respects text_offset automatically.

Thanks,
Mark.

> 
> Do you know why the support of "loading kernel Image anywhere in
> memory" has been removed in latest kernel ?
> 
> Regards,
> Pankaj Bansal
> 
> > -----Original Message-----
> > From: Pankaj Bansal
> > Sent: Tuesday, 7 May, 2019 04:03 PM
> > To: 'Catalin Marinas' <catalin.marinas@arm.com>; 'Will Deacon'
> > <will.deacon@arm.com>
> > Cc: 'linux-arm-kernel@lists.infradead.org' <linux-arm-
> > kernel@lists.infradead.org>; Varun Sethi <V.Sethi@nxp.com>
> > Subject: [ARMv8] kernel entry point
> > 
> > Hi Catalin/Will et. Al,
> > 
> > I am s/w engineer from NXP India Pvt. Ltd.
> > I am facing an issue while booting linux on our ARMv8 based platform.
> > In our platform DDR address starts from 0x80000000.
> > If I load kernel image @ address 0x80080000 and then try to boot linux image
> > from this address, then linux is booting fine.
> > BUT if I load kernel image @ address 0x81000000 and then try to boot linux
> > image from this address, then linux is not booting.
> > I have tried to boot linux using u-boot as well as arm trusted firmware.
> > Linux is not booting with either of these if the linux load address is 0x81000000.
> > 
> > I get no kernel logs like "[    0.000000] Booting Linux on physical CPU 0x0"
> > 
> > The linux version that I am using is 4.14.53 Can you please help me in debugging
> > this issue?
> > 
> > Regards,
> > Pankaj Bansal
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
