Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 790601E6761
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 18:26:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=AWfrHELh1zD2ynbRJVYyCBN7DbHfIkj2df77t3Z4s+0=; b=OMvXrPVtgBHh0b
	JicSNKP5t4cnM9kxSiz8biz+DHLdAYMCsUiKYTOXyG7y3cLUFifMAzPHuIv0gL5KyyxucUrs+Yamn
	LsZk+qBpw6QL8eXCAcofEUH2WdkgeLMeNgCEXsowqBIuD0xJYeXqWL/n1j/nvssqOQy43xisEW5LM
	I+TJiF7LxaTDpYG24b4oyIEN/ze72BQtv2Kk8XvP8QypoMRKE3cLO07J/6U5CZNSDqx0flvWFCXYv
	Khit+bTmy73xjNW9sV5cKmMFX5daidITZ7cNgItu8Ey0ktaBWNE/nGy8u4KVxTkUbMw8iUVBo0/zq
	ULELJJrTfN/Yro/au4OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeLMH-000542-K9; Thu, 28 May 2020 16:26:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeLM7-00051o-2u
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 16:26:09 +0000
Received: from localhost (mobile-166-175-190-200.mycingular.net
 [166.175.190.200])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 580F32071A;
 Thu, 28 May 2020 16:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590683166;
 bh=s5WtZilSKS4X6kw5tJ9m1befitlJa6Gd3ymV9rp2Huo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=QJ8XwJziej2LVUH3WGmExbcLGJl66V+bX+uVnDH7P08JF42paigOFM8rFHZymUes8
 IHKwzmDEnBGG4wlvSWEFsI9d+qvslFg02fFP7W+BNVE3Bxnee4X13xHBaNMztvYfti
 GccBKAoioIeSuSU5Kjbi583P4iRXW7xzHDUh08Fw=
Date: Thu, 28 May 2020 11:26:04 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>
Subject: Re: [PATCH] PCI: aardvark: Don't touch PCIe registers if no card
 connected
Message-ID: <20200528162604.GA323482@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200528143141.29956-1-pali@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_092607_145158_73E7E974 
X-CRM114-Status: GOOD (  18.96  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tomasz Maciej Nowak <tmn505@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org,
 Xogium <contact@xogium.me>, linux-kernel@vger.kernel.org,
 Marek =?iso-8859-1?Q?Beh=FAn?= <marek.behun@nic.cz>,
 Remi Pommarel <repk@triplefau.lt>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 28, 2020 at 04:31:41PM +0200, Pali Roh=E1r wrote:
> When there is no PCIe card connected and advk_pcie_rd_conf() or
> advk_pcie_wr_conf() is called for PCI bus which doesn't belong to emulated
> root bridge, the aardvark driver throws the following error message:
> =

>   advk-pcie d0070000.pcie: config read/write timed out
> =

> Obviously accessing PCIe registers of disconnected card is not possible.
> =

> Extend check in advk_pcie_valid_device() function for validating
> availability of PCIe bus. If PCIe link is down, then the device is marked
> as Not Found and the driver does not try to access these registers.
> =

> Signed-off-by: Pali Roh=E1r <pali@kernel.org>
> ---
>  drivers/pci/controller/pci-aardvark.c | 3 +++
>  1 file changed, 3 insertions(+)
> =

> diff --git a/drivers/pci/controller/pci-aardvark.c b/drivers/pci/controll=
er/pci-aardvark.c
> index 90ff291c24f0..53a4cfd7d377 100644
> --- a/drivers/pci/controller/pci-aardvark.c
> +++ b/drivers/pci/controller/pci-aardvark.c
> @@ -644,6 +644,9 @@ static bool advk_pcie_valid_device(struct advk_pcie *=
pcie, struct pci_bus *bus,
>  	if ((bus->number =3D=3D pcie->root_bus_nr) && PCI_SLOT(devfn) !=3D 0)
>  		return false;
>  =

> +	if (bus->number !=3D pcie->root_bus_nr && !advk_pcie_link_up(pcie))
> +		return false;

I don't think this is the right fix.  This makes it racy because the
link may go down after we call advk_pcie_valid_device() but before we
perform the config read.

I have no objection to removing the "config read/write timed out"
message.  The "return PCIBIOS_SET_FAILED" in the read case probably
should be augmented by setting "*val =3D 0xffffffff".

>  	return true;
>  }
>  =

> -- =

> 2.20.1
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
