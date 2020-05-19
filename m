Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8E1B1D9A9C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 17:03:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iF1Zv5SNznRFs3UEX6BeBdG3Vcv4LuHrotzB9uIQ8T8=; b=i0OoUCCDV/DamG
	/Ss186NCYaJGhOnf8GrHmdIyjhrQo7+v9LUjC3b1WMazz6ADlpv3gGkyoS9N75HkopRXB7XXh3ttH
	97xcmB/MgZDS+9qXzag5rcnoCZvM3NNmHPwpVEmWAeg4788id8jDaq1es+RWWbtNiZhvS8CLU/iLz
	KzeJeAU0y3DACaCIEsGmIte5W4B4E2GVjme+AAxvwQt+gzBL7UcdZocrEAtkvXRqquq8bCOl8bW0i
	IEBZPPFdzJ8aHbIwqc9x8Z8UZ6iScuz5iNMgMAWH1+iVUIQKiyIrhC1+uMGM/mV0upMH+l+MRyqlz
	YjLAkpnopNZryyCcuAVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb3lb-0001bc-T1; Tue, 19 May 2020 15:02:51 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb3kx-0001S9-0C
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 15:02:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1pGtsBo5aOZTLv1u9iVXQX/bDAadqeLEppbHbTjdp4k=; b=IO0t+/Xwp5xyMj7qc1jMk6LQR
 CE/R6Y9eOaBlMnb1FKriyi12K2IFP1vzmt/cm421S0yngnGOi/HZRhFdjiN94gPUNOppJ5fWC1DhY
 DLB9ky1yKCdHdkm0fpVaGedDOCcPqCa2oiebchwHaRkPv1722dpx37NaVohILYMzxR4XJxBdJqjTm
 3l7EDAYm8cXcT/dTfgBEXJKcoxsh/yvKvQbjDkGI9Wd8P1tEoLkYrTUborIBMkWl18JDoOYBzfeIZ
 Lj5RHmojzi5UrjbakD2DBucM+Ye+bR5GLfP8qkiDbRXyc32Afp8DfmspXGR0tFb3Enn2X0VHLyy2v
 uO876bNNw==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:42290)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jb3kr-0005gS-Dc; Tue, 19 May 2020 16:02:05 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jb3kq-0005ot-5Q; Tue, 19 May 2020 16:02:04 +0100
Date: Tue, 19 May 2020 16:02:04 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andrew Jeffery <andrew@aj.id.au>
Subject: Re: [PATCH] ARM: Implement functions for HAVE_FUNCTION_ARG_ACCESS_API
Message-ID: <20200519150204.GG1551@shell.armlinux.org.uk>
References: <20200519143132.603579-1-andrew@aj.id.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519143132.603579-1-andrew@aj.id.au>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_080211_042481_AA089BE2 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: oleg@redhat.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 12:01:32AM +0930, Andrew Jeffery wrote:
> This allows extraction of kernel function arguments via kprobes on ARM.
> Based on the arm64 implementation and adapted for the 32-bit AAPCS.
> 
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> ---
> The description for HAVE_FUNCTION_ARG_ACCESS_API was pretty vague on what was
> required. I've implemented enough to enable argument extraction for kprobes; is
> there anything else needed to satisfy HAVE_FUNCTION_ARG_ACCESS_API?

What about 64-bit arguments?  How do they get handled?

regs_get_kernel_argument() talks about 'n' being the argument number,
and maps this directly to a register.  If a function argument
prototype is:

	(something *foo, long long bar, int baz)

The foo is in r0, bar is in r2/r3 on EABI, and baz is on the stack.

n=0 will return foo.  n=1 will be undefined.  n=2 will return part of
bar, and n=3 will return the other half.  Is this what is expected?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC for 0.8m (est. 1762m) line in suburbia: sync at 13.1Mbps down 424kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
