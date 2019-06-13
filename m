Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF31444EF4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 00:07:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y4xl1twryVFTf/ZjHW/ZD0YgkVDQae/a6o6/i/Skcb8=; b=XpcdK42kCWtNAV
	/5+cY/gr13YAZBVfpsMgBTf5ogLbcvPReVZJW/BspvsqgEpyR+yC99ZaTFor7aIPHUZshWOuLJP/C
	ZYVeTOlJiZC0J/5lsZyOD6Jgti82zYx/nqIeYfx3J+nDfTiP76UBJQ3EOw/HL/So8cGfNNnryWTeO
	DyD6QLY22BBXgzTT8NtdoJhDsax8nccAtmXFtipOieW3N8glIVHnzeLqMMcexc8e7ZGo1jbWNaERy
	TNc7K8s4SdQ5GQNj/bKzTgEQu9YC1IH8BmL4of13HUgYAdHsw30rOTZC1WiyKNIyF7pwdtJ2enirH
	pFbzKtxVUx3ZUPsLiG6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbXs6-0005rJ-6b; Thu, 13 Jun 2019 22:07:02 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbXrw-0005qq-J8
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 22:06:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Jx/qvzjMz0t794bxLBJ02R6No0Hxfy6v8PXcGz+EAEc=; b=AUTLbKssZdp7Ib0U0+Up2dW/o
 iVzbBC4miAQrY2vgP57v+coL+/zEt1Fu+w0PxrZS7qYPtAr7QwrmMZK5wA+TxydSVz7xt5TnMEDKh
 BPwwLKCyIRTpV8jZ9qgQPX5m5ZaxxxeAmKHVO5OKThioO74RiDAgVlTfew/4zI/e76ut0/biV6ho6
 32TQszp9VSWaLUiDMctGsZfEW4YLWFCM+2PCPm9qfXT6Yei9ZdcFwlHEwS4+HDSi8TZs6La7F6qg5
 n+npz3REdDJg8lUBvzPgZKs8zL8Nrt5Ne42Z/g6k8pTQSCJVbqZuiDSZoZAjw8H7UmKOrhWfhkg6G
 rdPmTeI8Q==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:38678)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hbXro-0005mE-SB; Thu, 13 Jun 2019 23:06:44 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hbXrm-0001Y4-HI; Thu, 13 Jun 2019 23:06:42 +0100
Date: Thu, 13 Jun 2019 23:06:42 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: Why check for PCI_PROBE_ONLY in pci_common_init_dev()
Message-ID: <20190613220642.pdiifl7lc3ea43vi@shell.armlinux.org.uk>
References: <4e734c3aab8802b340e06b56803954b3e550157d.camel@kernel.crashing.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4e734c3aab8802b340e06b56803954b3e550157d.camel@kernel.crashing.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_150652_788726_7E870F34 
X-CRM114-Status: GOOD (  10.99  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 01:52:34PM +1000, Benjamin Herrenschmidt wrote:
> Hi !
> 
> So while trying to sort out & cleanup the business with PCI resource
> allocation (and do the ground work to be able to revive 
> https://lore.kernel.org/linux-pci/20150916085850.GA17510@red-moon/) I
> stumbled upon this one:
> 
> arch/arm/kernel/bios32.c:pci_common_init_dev() checks for
> PCI_PROBE_ONLY to decide whether to claim existing resources or
> reallocate.
> 
> However, I can't see any code path leading to that function that would
> have set that flag.

Someone probably wanted it at some point but either that's been removed
or the code was never merged.  Either way, if no one is using it on
32-bit ARM, it can be killed.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
