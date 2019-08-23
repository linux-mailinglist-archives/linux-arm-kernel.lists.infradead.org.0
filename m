Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A029ADF5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 13:17:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=98H2EGTEyEqlx4Jf0UuN4k7NK3AD1QnN+3sK6GJGR0M=; b=cqJyCLJFvXtuQT
	rZkiISmLLQa+6JI25D1MWWVEvMX4RV4KtHfe39OGOFbTEcJPFpEO6E7wghK/2m3t66zI5EA75Rzl4
	/yQ3goYtkkuHROhjoHOLePehPZFzlFGZTwXHVhkfj0+jkrvtV+JO7EyQxleDBIdZVMEb93DKOKA4B
	eSOi5sRvaO4luUsykKSS95IAJ7InW4qPnSnpj0jYijkUPHC+4aqgMIaRP26U/CsYLmEGOx//aTOcq
	I9DFZk/R3vwrVhN14rii/1LMhNIVGd+8hPwloIeLrOLkG9X/FU9HwTA2aYfevGVw1Ce6Of3Hc3kZk
	TsZ5/NLmus5EEOtVM3LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i17Zm-0001hV-5Z; Fri, 23 Aug 2019 11:17:50 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i17Zd-0001h3-Ku
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 11:17:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OSDjpRTuHovlIRScundJCWb6Oc+rd5ATE/Sxj9nPY/A=; b=Sf8X+LUWARix65xSRp4AVeykq
 hNuDbygxF+vUXOq+jc9C4kGTTsFToNveFnUx/iTHPshoyOGuOu/XH5gbL1HdzHRS5khqixXf/Spef
 uteSv3g2Qgn+FBCFrciYZByOrHH0WVtb4zV8rurR4n11NHvWff/+DgHKNIWhvQRifwQOhNesdVC+y
 CMeljOOhn7gTUttTboOcKrexXwlSaXLvj12LlNAldwDsURJHPQ6UZUzURGYai49Utjykgeu8PvlGk
 4u17ecHuZQfZhRlmwuWbWNNpx8pbAInQZLfoiLTGpEJKA88t6t5h1XnvteZPPup2+ldFchVQk5J0T
 STfvOBUFA==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:60066)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1i17ZF-0004Jh-0B; Fri, 23 Aug 2019 12:17:17 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1i17ZB-0000CY-33; Fri, 23 Aug 2019 12:17:13 +0100
Date: Fri, 23 Aug 2019 12:17:13 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Will Deacon <will@kernel.org>, tglx@linutronix.de
Subject: Re: Regression in 5.3-rc1 and later
Message-ID: <20190823111712.GB13294@shell.armlinux.org.uk>
References: <faaa3843-09a6-1a21-3448-072eeed1ea00@googlemail.com>
 <20190823103654.GX13294@shell.armlinux.org.uk>
 <20190823104050.o6golaa4fmdd7np5@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190823104050.o6golaa4fmdd7np5@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_041741_688956_DCC5FE2E 
X-CRM114-Status: GOOD (  11.02  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch@vger.kernel.org, shuah@kernel.org, daniel.lezcano@linaro.org,
 catalin.marinas@arm.com, arnd@arndb.de, salyzyn@android.com,
 huw@codeweavers.com, andre.przywara@arm.com,
 Chris Clayton <chris2553@googlemail.com>, will.deacon@arm.com,
 linux-mips@vger.kernel.org, ralf@linux-mips.org,
 LKML <linux-kernel@vger.kernel.org>, paul.burton@mips.com,
 linux-kselftest@vger.kernel.org, linux@rasmusvillemoes.dk,
 sthotton@marvell.com, 0x7f454c46@gmail.com, vincenzo.frascino@arm.com,
 pcc@google.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 11:40:50AM +0100, Will Deacon wrote:
> On Fri, Aug 23, 2019 at 11:36:54AM +0100, Russell King - ARM Linux admin wrote:
> > To everyone on the long Cc list...
> > 
> > What's happening with this?  I was about to merge the patches for 32-bit
> > ARM, which I don't want to do if doing so will cause this regression on
> > 32-bit ARM as well.
> 
> tglx fixed it:
> 
> https://lkml.kernel.org/r/alpine.DEB.2.21.1908221257580.1983@nanos.tec.linutronix.de
> 
> which I assume is getting routed as a fix via -tip.

Right, so Chris reported the issue to everyone involved.  Tglx's
reply severely trimmed the Cc list so folk like me had no idea what
was going on, removing even the mailing lists.  On the face of it,
it looks like an intentional attempt to cut people out of the loop
who really should've been kept in the loop.  Yea, that's just great.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
