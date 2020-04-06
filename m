Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C3E19F2B5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 11:37:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RnUiBl+fLvIa8ShRN7hcvPWzbEXlZTUSzdQksndw97A=; b=PBC52tC9Wb5pNV
	vOcTxazEhzq8Ks+HzWypo1FlrI32OSgIIV0bS1+QwpmrGfiQypIwr92irG3nNE2jebT58IrZJ4hmy
	7h2aF6wZCCZz/Ho0H3XfTJkHKLrVTPZGUQFrRmlZaFugUnsX28wCgFzLbDYTezuVY3e7vkSNqYslS
	rT7SI9frbFMXBCqYlC5eodyMw7x501nKdhzLYnJpP5SE4FMUfEhJuWMnFMa5Zl9l/Kwf2dXVsi2a5
	FanizGkuhZLKeho2ab6SRXpP1KzcEEz4p6r34cH+IxhzQgeDWW7dyFTs5N1+fcTlXeWjPw+Dn0d4h
	Hk9MQruN2E4k57oevqUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLOCO-0007sy-KP; Mon, 06 Apr 2020 09:37:44 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLOCG-0007rp-Mo; Mon, 06 Apr 2020 09:37:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=s01ZBQXOeBqMDgbzJyS7ataX7wGpfrmvH7IZNPXFCIo=; b=CCyxvJjRk484uOnTHwihWmCpN
 NVQykYio8053BY17V9ZCH3WNENiAnkdLrp15Gbv4Usa5E6O92SqDcANXObd/r916hcIfQ4u9UoQAw
 +gq9HRursH3WuV6UNDs3DW6anNDQ+bUb6R2gKLtoYsLUk1O57bnb9fp3JnnkMzRWBz2wfzLrMTBJs
 d1JtIBPyaKjuECf8MzDu02bZ1nWIDT4pPO5iXE341zqvi+iI2BKjxOi8tz1dPt80Mcfgfux64YXMf
 gzaf9j6UHaoBjTjfD1uIEEyQTw7lqhE2G9dpgFFhMW7mWS8rsoVQ/cxrkNg5AA8YrjlUKwRQ4CSZY
 Ap6h4w/tw==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:34692)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jLOCA-0000jb-Qm; Mon, 06 Apr 2020 10:37:30 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jLOC9-0005XI-CW; Mon, 06 Apr 2020 10:37:29 +0100
Date: Mon, 6 Apr 2020 10:37:29 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: Trying to kexec on Allwinner A80
Message-ID: <20200406093729.GG25745@shell.armlinux.org.uk>
References: <20200406082720.GA31279@Red>
 <20200406091600.GF25745@shell.armlinux.org.uk>
 <20200406092540.GB31279@Red>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200406092540.GB31279@Red>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_023736_742704_CD2F7517 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kexec@lists.infradead.org, linux-kernel@vger.kernel.org, mripard@kernel.org,
 wens@csie.org, ebiederm@xmission.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 06, 2020 at 11:25:40AM +0200, Corentin Labbe wrote:
> On Mon, Apr 06, 2020 at 10:16:00AM +0100, Russell King - ARM Linux admin wrote:
> > On Mon, Apr 06, 2020 at 10:27:20AM +0200, Corentin Labbe wrote:
> > > Hello
> > > 
> > > I am trying to add the last missing Allwinner Soc in kernelci: the A80.
> > > But this SoC does not have any way to be used in kernelci, no USB nor network in uboot.
> > > So I have tried to fake uboot since the kernel has network support and run the new kernel via kexec.
> > > 
> > > But kexec 2.0.18 fail to work:
> > > kexec --force /tmp/kernel --initrd /tmp/ramdisk --dtb /tmp/dtb --command-line='console=ttyS0,115200n8 root=/dev/ram0 earlycon=uart,mmio32,0x7000000 ip=dhcp'
> > 
> > What happens if you omit the dtb argument?
> > 
> 
> No change without dtb
> 
> I have also tried to add --mem-mim and --mem-max without any change.
> I given mem according to what I saw in /proc/iomem
> 20000000-9fffffff : System RAM
>   20008000-207fffff : Kernel code
>   20900000-209a0c87 : Kernel data
> So I gave --mem-min 0x30000000 --mem-max 0x9fffffff
> Anyway, the result is always the same.

The next step is to enable the early debugging - first in the
decompressor - add #define DEBUG to the top of
arch/arm/boot/compressed/head.S

Also enable DEBUG_LL in the kernel and use earlyprintk to see if you can
get anything from the new kernel.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
