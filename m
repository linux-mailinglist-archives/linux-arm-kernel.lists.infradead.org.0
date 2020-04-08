Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE851A2C8C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 01:46:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=yU7vEocYbltUo1N3XDvd+7Ni1gEbnqsIIsO2oZryfjU=; b=YnYiyTucnanT8F
	qOZrJVbkX58SFHY45UbvCr67ecOuVMx+10Fiw3fw6LQ3f29bQM5whmfYABH7I+dmRjs7L7s859hN1
	LuM1fdr8ioMnXCYrKgNx4pFVuoHwAhN2gwrSM7YI+aO0Yl+iIGPYRuRsbJ6lmH+2FSusfNPvBTUEN
	M/Mn9j3jmC2f2X3snfkmPE3KwNd/mDV4VKK6KbokuRXDZgjgBydSwMJNkbSzpGDZBIEediMvKU08O
	jutEJMcMsCDKbgNOkPPORdzb6+z3uruUdyJT813KMtUafkGfnvGfzVZDwPExHfskemBdrStl8Py1N
	iOLFt3j8t8zuLkL4waLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMKOu-0006Nd-28; Wed, 08 Apr 2020 23:46:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMKOn-0006ND-HG; Wed, 08 Apr 2020 23:46:26 +0000
Received: from localhost (mobile-166-175-188-68.mycingular.net
 [166.175.188.68])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8821C20787;
 Wed,  8 Apr 2020 23:46:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586389585;
 bh=jdERzFagcZJpT6zeQ9ptPHc+W/HgbAkXikMkMpGMIc8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=UBEF4PPNtgYeAzJH79lLGGULnX41ZtOGL+nLtZMe5rqcdjOevaJL0F7SJcJqnQ/gL
 cbk/jdvfvN7/J57YJCjLt9hgnh47iQLIXE+WlxuVESZ/NcOWOUykYPQC8tj5yfO0K9
 NtF4OXMIed85faV2LxGjwdhmPKjCAsn4lB7mBgEc=
Date: Wed, 8 Apr 2020 18:46:22 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH v7 4/8] PCI: endpoint: Add support to handle multiple
 base for mapping outbound memory
Message-ID: <20200408234622.GA150772@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586360280-10956-5-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_164625_590463_0A02B2B4 
X-CRM114-Status: GOOD (  15.28  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Chris Paterson <Chris.Paterson2@renesas.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-renesas-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Tom Joseph <tjoseph@cadence.com>,
 Rob Herring <robh+dt@kernel.org>, Lad Prabhakar <prabhakar.csengg@gmail.com>,
 Jingoo Han <jingoohan1@gmail.com>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>,
 Shawn Lin <shawn.lin@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 08, 2020 at 04:37:56PM +0100, Lad Prabhakar wrote:
> R-Car PCIe controller has support to map multiple memory regions for
> mapping the outbound memory in local system also the controller limits
> single allocation for each region (that is, once a chunk is used from the
> region it cannot be used to allocate a new one). This features inspires to
> add support for handling multiple memory bases in endpoint framework.
> 
> With this patch pci_epc_mem_init() initializes address space for endpoint
> controller which support single window and whereas __pci_epc_mem_init()
> now accepts pointer to multiple windows supported by endpoint controller.

Adding a double underscore prefix usually indicates an internal
function that skips some checking.

It doesn't seem like quite the right thing for this external interface
that adds functionality.  Maybe the name could include something like
"multi"?

> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

This needs an ack from Kishon, of course.

This patch seems like it does several things that could possibly be
split into separate patches?

  - Change pci_epc_mem_init() interface to add page_size argument (the
    only one that touches cadence & rockchip; it would be nice if this
    were a tiny patch)

  - Add struct pci_epc_mem_window

  - Add a pci_epc_multi_mem_init() or similar, implement
    pci_epc_mem_init() in terms of it (as you already do)

Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
