Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6CDA19432F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 16:28:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=cyhwGcvKfpVACXkd8V3dRuaRy37g6q5SWP/pIbmKDhA=; b=gMKeT/JtY2xLoe
	qCA/9OVvysRuZ4iQoNPpZj6mA5AhU55/bUMWl1OEiHLRixsrt6oIa/l1/ovmqsEhLdoD+LxwEZaLh
	0aS86PanQzm6F/z6FqIxY4KTR1cpUv4nhKNmdh419GAWPaAvu9S9K/Nm0upBifseuOKWjnyE4NZNm
	Wp66o9oQ7MuXWfMhbpIklDWz0Amy5/sI2eS8UISv9QVBu/gUmfHqvHHKI8ic0sRTKW7T1E/7HiowB
	Fm3mBNWOWjvM6ENhfkJkS6DLfNrjN1/xRGSe4jG5zmXaAvrwCBUxzZCmVR3DnJ/gjMbNLCqfGNQH+
	PEPEvx05nZzYOqpLC4kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHUQo-0004jX-5f; Thu, 26 Mar 2020 15:28:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHUQe-0004io-Vn
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 15:28:22 +0000
Received: from localhost (mobile-166-175-186-165.mycingular.net
 [166.175.186.165])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 597882073E;
 Thu, 26 Mar 2020 15:28:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585236500;
 bh=hLWw99VkerwY2yvNvNHjCZISiqZQOoDJZcOBRfe2TY8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=mGsm3Gr2ex9ZW0K8sLYNNzmaZCh32ETgvfitHZ9j3QdIBeXXTuBf6KAVtCW84RTgt
 cPktU98SYyevdT2cD/uwZwMwwfb231/43dRA8cjKbQSLNmd8XIZjn169HlB39rKUIQ
 hnVZe2WnZCv9Ac1Y1WQJGnKGeTIH+a4h73qFtOB8=
Date: Thu, 26 Mar 2020 10:28:18 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Srinath Mannam <srinath.mannam@broadcom.com>
Subject: Re: [PATCH 2/3] PCI: iproc: fix invalidating PAXB address mapping
Message-ID: <20200326152818.GA7634@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1585206447-1363-3-git-send-email-srinath.mannam@broadcom.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_082821_046147_31EDFA9B 
X-CRM114-Status: GOOD (  15.70  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 FAKE_REPLY_C           No description available.
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Roman Bacik <roman.bacik@broadcom.com>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 bcm-kernel-feedback-list@broadcom.com, Ray Jui <rjui@broadcom.com>,
 linux-arm-kernel@lists.infradead.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[fixed Andrew's email addr]

Change subject to match convention, e.g.,

  PCI: iproc: Invalidate correct PAXB inbound windows

On Thu, Mar 26, 2020 at 12:37:26PM +0530, Srinath Mannam wrote:
> From: Roman Bacik <roman.bacik@broadcom.com>
> 
> Second stage bootloader prior to Linux boot may use all inbound windows
> including IARR1/IMAP1. We need to ensure all previous configuration of
> inbound windows are invalidated during the initialization stage of the
> Linux iProc PCIe driver. Add fix to invalidate IARR1/IMAP1 because it was
> missed in previous patch.
> 
> Fixes: 9415743e4c8a ("PCI: iproc: Invalidate PAXB address mapping")
> Signed-off-by: Roman Bacik <roman.bacik@broadcom.com>
> ---
>  drivers/pci/controller/pcie-iproc.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/pci/controller/pcie-iproc.c b/drivers/pci/controller/pcie-iproc.c
> index 6972ca4..e7f0d58 100644
> --- a/drivers/pci/controller/pcie-iproc.c
> +++ b/drivers/pci/controller/pcie-iproc.c
> @@ -351,6 +351,8 @@ static const u16 iproc_pcie_reg_paxb_v2[IPROC_PCIE_MAX_NUM_REG] = {
>  	[IPROC_PCIE_OMAP3]		= 0xdf8,
>  	[IPROC_PCIE_IARR0]		= 0xd00,
>  	[IPROC_PCIE_IMAP0]		= 0xc00,
> +	[IPROC_PCIE_IARR1]		= 0xd08,
> +	[IPROC_PCIE_IMAP1]		= 0xd70,

Wow, this is a little too subtle for my taste.

9415743e4c8a added this loop:

  +   for (idx = 0; idx < ib->nr_regions; idx++) {
  +       iproc_pcie_write_reg(pcie,
  +                            MAP_REG(IPROC_PCIE_IARR0, idx), 0);

This patch doesn't change the loop or the limit, so I *guess*
previously we invalidated IPROC_PCIE_IARR0, IPROC_PCIE_IARR2, ...,
(skipping IPROC_PCIE_IARR1), and now we will invalidate
IPROC_PCIE_IARR0, IPROC_PCIE_IARR1, ... instead?

>  	[IPROC_PCIE_IARR2]		= 0xd10,
>  	[IPROC_PCIE_IMAP2]		= 0xcc0,
>  	[IPROC_PCIE_IARR3]		= 0xe00,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
