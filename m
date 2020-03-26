Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D81194988
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 21:48:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=FcomvzH35jbrLtekswHClGQlD3V16Ea+TKDX1bAXqGA=; b=AXyWPy9UpvTDlp
	h8ASeDL6PeJ2Pemp42u6jZBMeDX0AaAFBDyVkeU0RymylHHL1I0bpGUcHLlwIp6sDzVArHfi4LXax
	dchwedl4H0uIHVPfPDg1njdnchnPiNWRQ0DO9UYNdDFRBQKcncPploMdnXH+hTtv155JHNzaKP3mE
	VwjzI5PHJlNOvh3SjK3l72IREHQVFesbUg9Di3gGCMJM2AH8XJn0TvEnON/kFbWsRKWw/iYRe59nl
	0G4HYgxEzfaSnVoqQRwmyv4YEBFYWPQKr0kgCt3x2G8Qn4xwER6tK9osGmk8eMYRPRN0xh05QH9Jc
	8UV4+RvVCdiuRtHYI4DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHZQJ-0000Km-1q; Thu, 26 Mar 2020 20:48:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHZQ9-0000KS-FX
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 20:48:10 +0000
Received: from localhost (mobile-166-175-186-165.mycingular.net
 [166.175.186.165])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B60FF2070A;
 Thu, 26 Mar 2020 20:48:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585255689;
 bh=6RKen0ioTy65oeuJuXAtJ6M2BJxU8YbCxuM+rKEX6NY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=vkbsDVHff3CZYPxtxcc0HH1/CZg3CSmvig9OJyTv8xuiWi01uIYoBe5p1UK/juO07
 W2cirk8UdPTFG/Fx2mEs/VvE9am3rbh8UJYQ7Dufa7Y1+2lSDW8ps9HN3qv87cQc1I
 XwxIrq10sk/x+sVNQpLiRH+unIfFfgKFXSCP8zwc=
Date: Thu, 26 Mar 2020 15:48:07 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Ray Jui <ray.jui@broadcom.com>
Subject: Re: [PATCH 1/3] PCI: iproc: fix out of bound array access
Message-ID: <20200326204807.GA87784@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4a836faf-645d-a1ab-d525-738a318758a0@broadcom.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_134809_556806_958D4A2A 
X-CRM114-Status: GOOD (  29.07  )
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
Cc: Srinath Mannam <srinath.mannam@broadcom.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Bharat Gooty <bharat.gooty@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 linux-kernel@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-pci@vger.kernel.org,
 Andrew Murray <andrew.murray@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 26, 2020 at 01:27:36PM -0700, Ray Jui wrote:
> On 3/26/2020 12:48 PM, Bjorn Helgaas wrote:
> > ...
> > It's outside the scope of this patch, but I'm not really a fan of the
> > pcie->reg_offsets[] scheme this driver uses to deal with these
> > differences.  There usually seems to be *something* that keeps the
> > driver from referencing registers that don't exist, but it doesn't
> > seem like the mechanism is very consistent or robust:
> > 
> >   - IPROC_PCIE_LINK_STATUS is implemented by PAXB but not PAXC.
> >     iproc_pcie_check_link() avoids using it if "ep_is_internal", which
> >     is set for PAXC and PAXC_V2.  Not an obvious connection.
> > 
> >   - IPROC_PCIE_CLK_CTRL is implemented for PAXB and PAXC_V1, but not
> >     PAXC_V2.  iproc_pcie_perst_ctrl() avoids using it ep_is_internal",
> >     so it *doesn't* use it for PAXC_V1, which does implement it.
> >     Maybe a bug, maybe intentional; I can't tell.
> > 
> >   - IPROC_PCIE_INTX_EN is only implemented by PAXB (not PAXC), but
> >     AFAICT, we always call iproc_pcie_enable() and rely on
> >     iproc_pcie_write_reg() silently drop the write to it on PAXC.
> > 
> >   - IPROC_PCIE_OARR0 is implemented by PAXB and PAXB_V2 and used by
> >     iproc_pcie_map_ranges(), which is called if "need_ob_cfg", which
> >     is set if there's a "brcm,pcie-ob" DT property.  No clear
> >     connection to PAXB.
> > 
> > I think it would be more readable if we used a single variant
> > identifier consistently, e.g., the "pcie->type" already used in
> > iproc_pcie_msi_steer(), or maybe a set of variant-specific function
> > pointers as pcie-qcom.c does.
> 
> It is not possible to use a single variant identifier consistently,
> i.e., 'pcie->type'. Many of these features are controller revision
> specific, and certain revisions of the controllers may all have a
> certain feature, while other revisions of the controllers do not. In
> addition, there are overlap in features across different controllers.
> 
> IMO, it makes sense to have feature specific flags or booleans, and have
> those features enabled or disabled based on 'pcie->type', which is what
> the current driver does, but like you pointed out, what the driver
> failed is to do this consistently.

There are several drivers that have the same problem of dealing with
different revisions of hardware.  It would be nice to do it in a
consistent style, whatever that is.

> The IPROC_PCIE_INTX_EN example you pointed out is a good example. I
> agree with you that we shouldn't rely on iproc_pcie_write_reg to
> silently drop the operation for PAXC. We should add code to make it
> explictly obvious that legacy interrupt is not supported in all PAXC
> controllers.
> 
> pcie->pcie->reg_offsets[] scheme was not intended to be used to silently
> drop register access that are activated based on features. It's a
> mistake that should be fixed if some code in the driver is done that
> way, as you pointed out.

That's actually why I dug into this a bit -- the
iproc_pcie_reg_is_invalid() case is really a design-time error, so it
seemed like there should be a WARN() there instead of silently
returning 0 or ignoring a write.

Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
