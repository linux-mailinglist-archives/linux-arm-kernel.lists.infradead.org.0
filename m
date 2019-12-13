Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DA0411DB28
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 01:33:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KlthO3jklNglc3abyvDWpJhJow/6NZOJPXFQaJI9o9E=; b=KeIhLlVBDPZors
	rMQoW5u1JEKoUAUJbET4sB64b4suMGXemt7qCcqYKMF79miwLJhd6voEWFtKIDwRFVNtIIXh3wQSx
	EX+MITWQE1CQ1ER1LxYHlSife8+wLqtrhIwIpopyempM2bcOEyQybuFlM01OX4NBylghMIJU4doL/
	9p72vOA46pkYG/OPD4oye+40OjwP94Atykhf/BIYWteAnq5ZpsgyfvpMfCfE8NNXsbx8GM22e5IxB
	wTF6Iy8WUl5N9COZ/iSuyt9S+VEaAFlNZ4PGQ1Wo9UAIs8S9sZ5KAkcLUQs673LiGWP2quvWJ8CIQ
	VDs/LRUN91m3BQQ80n5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifYt0-0007Zn-4m; Fri, 13 Dec 2019 00:32:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifYsp-0007ZF-VS
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 00:32:41 +0000
Received: from localhost (mobile-166-170-223-177.mycingular.net
 [166.170.223.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CA10D2073B;
 Fri, 13 Dec 2019 00:32:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576197159;
 bh=acTKaWoVcvywt0spaT133PNvy41sRxS9SaBK9U3EDXU=;
 h=Date:From:To:Cc:Subject:From;
 b=YFDlAjeWIOLK1gCctzHW6f5B70wPUvFCw5lHAPkP1dJ2c0H4VCym3LVDsjj6oMaxb
 jCf3rJbutKD9z6Gl726KysNnD8FtLjYC8VHkmKubeWHdoytYdM4CYjb6f4pPqUBLJu
 7xEvaUHiMJFsnXK7Cbg5Duj8Eo0VU6m0Rg21tEcg=
Date: Thu, 12 Dec 2019 18:32:36 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Murali Karicheri <m-karicheri2@ti.com>, Richard Zhu <hongxing.zhu@nxp.com>,
 Lucas Stach <l.stach@pengutronix.de>
Subject: imx6 and keystone PCIe abort handling
Message-ID: <20191213003236.GA43783@google.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_163240_034413_CB7D0385 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Andrew Murray <andrew.murray@arm.com>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 linux-pci@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi folks,

Why are ks_pcie_fault() and imx6q_pcie_abort_handler() different?  I
think they're doing the same thing, and the "instr & 0x0e100090" part
is the same, but only imx6 has the "instr & 0x0c100000" part.  And the
return values are different in some cases.

Could/should these be shared somehow?  They're both under #ifdef
CONFIG_ARM, so maybe it could be provided by arch/arm?

  static int ks_pcie_fault(unsigned long addr, unsigned int fsr,
			   struct pt_regs *regs)
  {
	  unsigned long instr = *(unsigned long *) instruction_pointer(regs);

	  if ((instr & 0x0e100090) == 0x00100090) {
		  int reg = (instr >> 12) & 15;

		  regs->uregs[reg] = -1;
		  regs->ARM_pc += 4;
	  }

	  return 0;
  }

  static int imx6q_pcie_abort_handler(unsigned long addr,
		  unsigned int fsr, struct pt_regs *regs)
  {
	  unsigned long pc = instruction_pointer(regs);
	  unsigned long instr = *(unsigned long *)pc;
	  int reg = (instr >> 12) & 15;

	  /*
	   * If the instruction being executed was a read,
	   * make it look like it read all-ones.
	   */
	  if ((instr & 0x0c100000) == 0x04100000) {
		  unsigned long val;

		  if (instr & 0x00400000)
			  val = 255;
		  else
			  val = -1;

		  regs->uregs[reg] = val;
		  regs->ARM_pc += 4;
		  return 0;
	  }

	  if ((instr & 0x0e100090) == 0x00100090) {
		  regs->uregs[reg] = -1;
		  regs->ARM_pc += 4;
		  return 0;
	  }

	  return 1;
  }


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
