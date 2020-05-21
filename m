Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E18771DCC56
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 13:46:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KRq8kXWfaKXkS7yjIv78cZglA5PW2mYfrieagxBJMnY=; b=OAxMJ0CdMew/qq
	bwUoz7Kw57vU90jfk5aBpaf3DWtKuPIpgyiHiqUoDZnrV0VzlTUCAH/Lhee/MGlokkxRttrLKQPih
	d4T4riak7SRWlP0+33zYClKBCe65GsOR3iLmuyCJlAYBUh/vZwnDE/pxvBKALpTDtGOcTiWqI5qR0
	POplOHkDG3Rr/dTqcRZwRR/2c3dyENS1iuGU/YVJ7nFCDvBSenFuk8UFWIScueV3/IyddP4UQrsgz
	PvVhCD2on31a5//b2NV/+TOAzhhqtQBspXe3kzOr1wX+psLftd4LlcOp7JK+36rD3C6JqmXvHEdXb
	IvPTN9vP6CuJiS33ke0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbjex-0002Sg-Pp; Thu, 21 May 2020 11:46:47 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbjen-0002QR-JU
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 11:46:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rsieF57gufe7ou9V7L0Dwppgjn2RE0LWW3aj4epHibE=; b=jyzicPHNA03f4JzG2fuRl4fCA
 YDU9nB+jas7c6+LLf0xryPU806VK8AaddWAoYgPjLoXhQNq4ZWX2vB5XDz4oabalOKFNLqCTEAhAT
 kp8U3++R/5dxFUqi1ocSGPR6KeeMTHY3pDJf5nPdVuKPC+RU3aFQOYJ/KUiI0wgZ/6ctl8KwNBE75
 M2Kp4JHyjF8PN5I53ibZSpB0gi5/Q6pPnzzqYi7W15PqyuzICvVlteXaHyib27cFhTnRbiQLmuiRb
 bbUN4HsWB69tKtUgBqd73iNdK/qr4SAdE1T0sSy7ulWGOKD/ZAuemESLH2HAeuHUUvPXGM8RMedY9
 cWnWtxUgQ==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:60832)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jbjeM-0002Ki-Dr; Thu, 21 May 2020 12:46:10 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jbjeJ-0000Ab-BN; Thu, 21 May 2020 12:46:07 +0100
Date: Thu, 21 May 2020 12:46:07 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v4 0/7] firmware: smccc: Add basic SMCCC v1.2 +
 ARCH_SOC_ID support
Message-ID: <20200521114607.GP1551@shell.armlinux.org.uk>
References: <20200518091222.27467-1-sudeep.holla@arm.com>
 <158999823818.135150.13263761266508812198.b4-ty@kernel.org>
 <CAK8P3a0bx2eOFSqM7ihNkJBWU_KKSh0vGJZZdvpkH=1nppingw@mail.gmail.com>
 <20200521070629.GB1131@bogus>
 <CAK8P3a1h1MR4Mq2sSV_FDUodrfaKRFtyOuOOGPWAbPYbzjc4YQ@mail.gmail.com>
 <20200521075755.GA4668@willie-the-truck>
 <20200521081055.GD1131@bogus>
 <CAK8P3a3dV0B26XE3oFQGTFf8EWV0AHoLudNtpSSB_t+pCfkOkQ@mail.gmail.com>
 <20200521101422.GO1551@shell.armlinux.org.uk>
 <CAK8P3a3cPPiprEpF_k-GWAgWSZiP3Qp3v++jvS_8W17Ns4_HGw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a3cPPiprEpF_k-GWAgWSZiP3Qp3v++jvS_8W17Ns4_HGw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_044637_642078_AF411AC0 
X-CRM114-Status: GOOD (  22.91  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Steven Price <steven.price@arm.com>, harb@amperecomputing.com,
 Sudeep Holla <sudeep.holla@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 12:31:32PM +0200, Arnd Bergmann wrote:
> On Thu, May 21, 2020 at 12:14 PM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> >
> > On Thu, May 21, 2020 at 11:06:23AM +0200, Arnd Bergmann wrote:
> > > Note that the warning should come up for either W=1 or C=1, and I also
> > > think that
> > > new code should generally be written sparse-clean and have no warnings with
> > > 'make C=1' as a rule.
> >
> > No, absolutely not, that's a stupid idea, there are corner cases
> > where hiding a sparse warning is the wrong thing to do.  Look at
> > many of the cases in fs/ for example.
> >
> > See https://lkml.org/lkml/2004/9/12/249 which should make anyone
> > who sees a use of __force in some random code stop and question
> > why it is there, and whether it is actually correct, or just there
> > to hide a sparse warning.
> >
> > Remember, sparse is there to warn that something isn't quite right,
> > and the view taken is, if it isn't right, then we don't "cast the
> > warning away" with __force, even if we intend not to fix the code
> > immediately.
> >
> > So, going for "sparse-clean" is actually not correct. Going for
> > "no unnecessary warnings" is.
> >
> > And don't think what I've said above doesn't happen; I've rejected
> > patches from people who've gone around trying to fix every sparse
> > warning that they see by throwing __force incorrectly at it.
> >
> > The thing is, if you hide all the warnings, even for incorrect code,
> > then sparse becomes completely useless to identify where things in
> > the code are not quite correct.
> 
> Adding __force is almost always the wrong solution, and I explictly
> was not talking about existing code here where changing it would
> risk introducing bugs or require bad hacks.

I'm using existing code to illustrate the problem with your idea of
"sparse-clean" new code, trying to show you that it is not about
being sparse clean, but about being correct.

> However, when writing a new driver, sparse warnings usually
> indicate that you are doing something wrong that is better addressed
> by doing something different that does not involve adding __force.

Right, but if you lay down a rule that says "new submissions must be
sparse clean" you will get people using __force to shut sparse up.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC for 0.8m (est. 1762m) line in suburbia: sync at 13.1Mbps down 424kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
