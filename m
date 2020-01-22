Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E6F145282
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 11:25:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l2URajoOgOV4ygYSkm+ngt5+sKAK9I4dWZutMIGbv/M=; b=UMHmUrX+pJOSdl
	Nj7qpVvKkJ7F03hPf1U5vYQkJz9xbzpkNGjgyoc6dY/dwwvjZPV28LMrnl2WGu4+dhmqNb85il9/7
	nwXZqrBGpY2iCmyT0IYxev7nJ8slrvyShmzxDIHeBzzZOOyle0j6cb5z4IJcVUrudjeeFTu5mPTvA
	VST6/NUC2lRE1QmBCPhFcl7RIC1CeI3wk7Jo9uOLe7Dqz6R6eZC0Vhs/+9nyNn915FI1Z7nJYMAil
	thok+Sot2PEGvsq6LQQBcyZMGgvZqYWdV0nbZG1u8yvsDfknl9/wjo5TKVMrPMpakJD4Eq6nxv5al
	bMYb0UrPnfIiFE1YjgAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuDCZ-00059g-3J; Wed, 22 Jan 2020 10:25:35 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuDCP-000595-FV
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 10:25:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CjKeHWXUPwlkOcAgyoOFrVp/mmu8J4UTx7DKpjixpJY=; b=XV3FGE0E5nkt0QuUkShvw39KF
 EHg1+eRM/BBoabf3cGlOgBZU/BrGZb4se9tHMAhmbdwPzVD3Ki6FJA/34DswPt/NRJHe7bmLi8oaW
 9we3X0jnK1QF6G8X89XjFcd6bwS2Q/TGpsloCYjrLHvn/kCRQiHlpNZbTF6yxTbtCDOZ+lrk+juJk
 R8OPwv6WVoF0h+p9KAxGAhwUg+fM8B+GZ+2BnoQ90NBUePhpmpoWIP1bnjJZNRieDHdpUCh5sqcI5
 WT31ETsK4nFYkGM8YL2xsJkAc9bDXZ9ZvOc8I1/1g6rV/3iK8+MiOS0m+8RfLoQYdLzGxyi/K8I6K
 LWytXskkA==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:41744)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iuDCF-0002HF-7t; Wed, 22 Jan 2020 10:25:15 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iuDCE-0004l0-MC; Wed, 22 Jan 2020 10:25:14 +0000
Date: Wed, 22 Jan 2020 10:25:14 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Stefan Lehner <stefan-lehner@aon.at>
Subject: Re: StrongARM SA-1110 / SA-1111 and Kernel 4.9.210 (Jornada 720)
Message-ID: <20200122102514.GM25745@shell.armlinux.org.uk>
References: <001a01d5d0fb$5f85ca70$1e915f50$@at>
 <20200122092221.GL25745@shell.armlinux.org.uk>
 <000601d5d10d$ba6292e0$2f27b8a0$@at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000601d5d10d$ba6292e0$2f27b8a0$@at>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_022525_517094_01175E87 
X-CRM114-Status: GOOD (  17.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 22, 2020 at 11:21:36AM +0100, Stefan Lehner wrote:
> 
> On Wed, Jan 22, 2020 at 09:10:13AM +0100, Stefan Lehner wrote:
> > Hi!
> > I like to get a newer Linux Kernel running on my Jornada 720. It has a
> > StrongArm SA-1110 CPU and the SA-1111 companion chip. 
> > I patched the kernel source with the BX emulation to run a newer Debian
> > userland. The kernel compiled fine. 
> > It starts to boot on the Jornada with the linexec bootloader. But it seems
> > that it doesnt detect any CF or PCMCIA card. I managed to get the
> > jornada720_pcmcia_configure_socket() running and it detects the card and
> > powers it up with the correct voltage (3V for the CF card in socket 1).
> 
> >> What was required for that?
> 
> I had to comment out: 
> # CONFIG_PCMCIA_SA1100 is not set
> and activate:
> CONFIG_PCMCIA_SA1111=y
> in the kernel .config.

Yes, you'll need CONFIG_PCMCIA_SA1111 set, because the Jornada720 uses
the companion chip.  CONFIG_PCMCIA_SA1100 should make no difference, so
can we spend some time working out why you needed to disable it?

Did you get any error messages during boot with both enabled?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
