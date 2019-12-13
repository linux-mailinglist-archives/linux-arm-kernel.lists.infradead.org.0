Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB82F11DB47
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 01:51:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KxUR88GJ+req6usHMWdziij5QTJDUx/YDDBirkTSzmI=; b=F36kD80xtFC1me
	CXNJkKJe4a4rEkYE3YfK/d7xrxJxAff3tdxMVqvQ4QJH1qfMUwtZwYzpbVg7Qz3xMVrpy5d9BxvH0
	MwfPvOF2yW5C3rqOXPAVf4T8r7Psu8rLYupsbCFRVOaqSQkwhj58ThXpLzcrKpQiR38HGeAfFdll5
	p3BSPg5eEGrsHGCayPb5HSLQY/6klS7gfNdjfRaDbW3PW5V5HRo0inv8hqRnM0AjmZFgzSNg/2uYs
	/bBzu8gc2QUqAmUgzgBiTnX7lbWYnDcmsG7c906iHxNvMwIC+is11oQ48lzIuuMvXZfH3TE1ZXyhX
	xcj2MpQd9TeAyu02tnXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifZB7-0006xx-Np; Fri, 13 Dec 2019 00:51:33 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifZB0-0006uy-L9
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 00:51:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=U/yCdrBeS8qawSt8fr5/pTCJsSZppXePjAIJbFodjBQ=; b=iJas9yV+XFfPNDfDe0uRBgXIk
 5852wR2mDlLu5V3p4b3Qd+Up1xJUaxRvzW6vXlAd+do+YglPFoDxk8vSlh6EDK59S6nKviQWbK5Lc
 yxjqInJezBx2k1i5Zon1Vf/5r6q+oIvDx/OFCegSTYnzy/AODOI4UuwTNYE2nAEPGLvTc5WPEfE/2
 rc1gkljsvGP62aDUII1iUft3deErCXCNL7W6EoM1L6MWkFPqy+2oh5yOD5G7QOJf8uIMvNU2ZILYM
 qGvqL4bGRwACIYcyEsrZmc4PhP1srYqu8Vp6UEECku4SNqhkWMCY/uhjYl4TuWu4W2SMK/Ghy1dD3
 gSud7uyDA==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:52224)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1ifZAl-0001dm-EJ; Fri, 13 Dec 2019 00:51:11 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1ifZAj-0007Ls-Bb; Fri, 13 Dec 2019 00:51:09 +0000
Date: Fri, 13 Dec 2019 00:51:09 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: imx6 and keystone PCIe abort handling
Message-ID: <20191213005109.GP25745@shell.armlinux.org.uk>
References: <20191213003236.GA43783@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213003236.GA43783@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_165126_697293_219822A0 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Richard Zhu <hongxing.zhu@nxp.com>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Murali Karicheri <m-karicheri2@ti.com>,
 Andrew Murray <andrew.murray@arm.com>, linux-arm-kernel@lists.infradead.org,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 12, 2019 at 06:32:36PM -0600, Bjorn Helgaas wrote:
> Hi folks,
> 
> Why are ks_pcie_fault() and imx6q_pcie_abort_handler() different?  I
> think they're doing the same thing, and the "instr & 0x0e100090" part
> is the same, but only imx6 has the "instr & 0x0c100000" part.  And the
> return values are different in some cases.

Here's the opcodes for the three different types of loads that would
be interesting.

   0:   e5910000        ldr     r0, [r1] ; 32-bit
   4:   e5d10000        ldrb    r0, [r1] ; 8-bit
   8:   e1d100b0        ldrh    r0, [r1] ; 16-bit

So, (instr & 0x0e100090) == 0x00100090 is trie for the ldrh case.
(instr & 0x0c100000) == 0x04100000 is true for the ldr and ldrb case.

So, the keystone version only traps ldrh instructions, whereas the
imx6 traps them all.

> Could/should these be shared somehow?  They're both under #ifdef
> CONFIG_ARM, so maybe it could be provided by arch/arm?
> 
>   static int ks_pcie_fault(unsigned long addr, unsigned int fsr,
> 			   struct pt_regs *regs)
>   {
> 	  unsigned long instr = *(unsigned long *) instruction_pointer(regs);
> 
> 	  if ((instr & 0x0e100090) == 0x00100090) {
> 		  int reg = (instr >> 12) & 15;
> 
> 		  regs->uregs[reg] = -1;
> 		  regs->ARM_pc += 4;
> 	  }
> 
> 	  return 0;
>   }
> 
>   static int imx6q_pcie_abort_handler(unsigned long addr,
> 		  unsigned int fsr, struct pt_regs *regs)
>   {
> 	  unsigned long pc = instruction_pointer(regs);
> 	  unsigned long instr = *(unsigned long *)pc;
> 	  int reg = (instr >> 12) & 15;
> 
> 	  /*
> 	   * If the instruction being executed was a read,
> 	   * make it look like it read all-ones.
> 	   */
> 	  if ((instr & 0x0c100000) == 0x04100000) {
> 		  unsigned long val;
> 
> 		  if (instr & 0x00400000)
> 			  val = 255;
> 		  else
> 			  val = -1;
> 
> 		  regs->uregs[reg] = val;
> 		  regs->ARM_pc += 4;
> 		  return 0;
> 	  }
> 
> 	  if ((instr & 0x0e100090) == 0x00100090) {
> 		  regs->uregs[reg] = -1;
> 		  regs->ARM_pc += 4;
> 		  return 0;
> 	  }
> 
> 	  return 1;
>   }
> 
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
