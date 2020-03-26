Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F317E194349
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 16:33:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=GPNITDA0Yzr+Yqc4f7KumabY4caG39qcvQZfZv3PGDE=; b=s22zwqi8p+gNgl
	gpWfnZlsa7+lGVZTZsL34316myQ4mIin7fUixqwr+97zKL3Pc1lxIDGUY7sw4rQK+0fNWz05mMLEY
	+0pkTtvDEtSy6xQJMn4L4uKytsUS51vo3Nt9nIfN3e1dv2JdWw4n2o8rE72u6GbrLacDr4SN0EAdn
	en6BbtTdlGbigt3yUKS8Jtbid8bmiJ10vni2s/87wErXibcEZbsN7oMTsedBb+hlwyV3mWOdlXsOo
	aIGrjlxLVv4lb27yYGnLXYNL1Db8cRwkowRzStGso3gbGWHX0paVCERGpdOzHojXmice3jJ2i0mpf
	snl7A+VTdJEChie4vN8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHUVe-0007xD-RZ; Thu, 26 Mar 2020 15:33:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHUVV-0007wT-Bv
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 15:33:22 +0000
Received: from localhost (mobile-166-175-186-165.mycingular.net
 [166.175.186.165])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 85D6B20714;
 Thu, 26 Mar 2020 15:33:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585236800;
 bh=rL2Y2Gw09fCtL1rPs0/4tgTFjsRoiwOhxSOS+UbuO0g=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=tc/r24/4d4omGY37S1degx6anfIEBJljci+J+TuGPiIMwuYGmuO2+3C/UmF2nOkVD
 aTp5kG59TgMDMJ0FslHmA2/odVQzD3TJbhiIN/IECjRmXtivUcw5J4YFGCtSLq7H9D
 TRXkG4wvgU8L8KF9BUScx8g3rVReuXqjxKw52aXs=
Date: Thu, 26 Mar 2020 10:33:18 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Srinath Mannam <srinath.mannam@broadcom.com>
Subject: Re: [PATCH 2/3] PCI: iproc: fix invalidating PAXB address mapping
Message-ID: <20200326153318.GA11697@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1585206447-1363-3-git-send-email-srinath.mannam@broadcom.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_083321_424307_A75431DB 
X-CRM114-Status: GOOD (  14.52  )
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
 Andrew Murray <andrew.murray@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

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

And paxb_v2_ib_map[] has a comment saying "IARR1/IMAP1 (currently
unused)".  Is that comment now wrong?

>  	[IPROC_PCIE_IARR2]		= 0xd10,
>  	[IPROC_PCIE_IMAP2]		= 0xcc0,
>  	[IPROC_PCIE_IARR3]		= 0xe00,
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
