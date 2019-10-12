Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C74FD4DEC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 09:25:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IeiZmYw/C0o6cjzqOvXPAgD92QeEC3K4Zsa9Sq3msEA=; b=JbOCu0urHNGtm2
	O3yhZRP5EX86fp5FSwrFRZymC5dBNe3vjcRMJHS+0yPcVGe1MWvTUd1Ph6GIL1f43Xy95EXv8gWM0
	+buDlma+lKBbP0JsCDrPaKjHrc0F2wpYz3Ymvf2yHlknNhVeOYpOrY+WrEVa0puX2a0NCmMoAAovN
	cXf8GF12J6tdlO6uXapMQ33PkU2PfvOuU/VNeMxuBryjHehCsgO5ttzESBYu1yYSHdk1+5azD2MiY
	Z9sXHMf00bZwv1zkkYF7TgWXYSvPuqGF8ksDZ7sMwuc6k3njZv0mMtSn41KJOsxjUL+ZFdQVp/NAk
	ZOyzdhWCKPcZg/Ie6QHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJBmL-0000VA-KM; Sat, 12 Oct 2019 07:25:29 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJBm8-0000PB-PD
 for linux-arm-kernel@lists.infradead.org; Sat, 12 Oct 2019 07:25:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=S7K0D0Ev6TuVOyYzLJhnIoOBVy8T0J5g5ZLMsbH2aZE=; b=DJXusEpIJgZHDCJ99mjm0B6N6
 K0u2rdNhe2d3c64dvEJMcS3NTvvMtFS0Ije/MZfalldZZdZI+XT5Q/O4aialQ4qzG4B4RmBnrWMPe
 aR66JpeZBBuvr/AVcdF7oVEP8dBN5iOQZmE8xqU9J5tEj6uVE4X3gO6jkZwzoE1Mwyez168DQqjTP
 VQEszGEnNGKCJ0IsgKjk20ee3iKHqlSrEaLxYtSLSO6qHRs1AIJaQin04RZUYUpgnVR59XGiMwPsh
 yZpMfnrMqRQiZ1Md9Hh4p1zpSZowKb6rhqxUOXblId9Y9CGi+xP3gsbDLbJ7IrMKJW+Rwv5ULnoao
 +8koEREhg==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:50584)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iJBlr-0001Y2-OF; Sat, 12 Oct 2019 08:24:59 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iJBli-0001y0-SB; Sat, 12 Oct 2019 08:24:50 +0100
Date: Sat, 12 Oct 2019 08:24:50 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: afzal mohammed <afzal.mohd.ma@gmail.com>
Subject: Re: [PATCH] ARM: NOMMU: Fix exc_ret for XIP
Message-ID: <20191012072450.GM25745@shell.armlinux.org.uk>
References: <1570102888-13426-1-git-send-email-vladimir.murzin@arm.com>
 <20191012063725.GA4813@afzalpc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191012063725.GA4813@afzalpc>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_002517_770811_F743ADD3 
X-CRM114-Status: GOOD (  13.86  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Vladimir Murzin <vladimir.murzin@arm.com>, alexandre.torgue@st.com,
 linux-arm-kernel@lists.infradead.org, sza@esh.hu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Oct 12, 2019 at 12:07:25PM +0530, afzal mohammed wrote:
> Hi Vladimir,
> 
> On Thu, Oct 03, 2019 at 12:41:28PM +0100, Vladimir Murzin wrote:
> 
> > It was reported that 72cd4064fcca "NOMMU: Toggle only bits in
> > EXC_RETURN we are really care of" breaks NOMMU+XIP combination.
> > It happens because saved EXC_RETURN gets overwritten when data
> > section is relocated.
> > 
> > The fix is to propagate EXC_RETURN via register and let relocation
> > code to commit that value into memory.
> > 
> > Fixes: 72cd4064fcca ("ARM: 8830/1: NOMMU: Toggle only bits in EXC_RETURN we are really care of")
> > 
> > Reported-by: afzal mohammed <afzal.mohd.ma@gmail.com>
> > Tested-by: afzal mohammed <afzal.mohd.ma@gmail.com>
> > Signed-off-by: Vladimir Murzin <vladimir.murzin@arm.com>
> 
> Can you please put this into rmk's patch system.
> 
> STM32 Cortex-M boards are currently not booting in mainline, this
> change makes them boot again, verified on stm32f429 discovery board.

Please check linux-next - or see 8914/1.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
