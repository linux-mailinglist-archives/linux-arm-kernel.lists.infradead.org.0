Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA03A17367D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 12:54:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KiMnh9t+lzM6aBYddVL0MrqFrLPY2qoVPRzxEeiNMDw=; b=tXEtPaYZxakrb+
	hC/x0c2tPNTE07ETiploatXfyhskEhK4uh32Qy0mZlavd9pAy9rBycGJnnWU55ecHC/dxANq3mmW9
	TWfWyF+zEZy7oeE9YpVABBkIfb6k6mLb7xu4BLkIVGXQpqW47ijGh7cmAcNld1hLNDAP9jCe91dfS
	9HKBPBLTpdMEN3Q5Du215QCf9/fMUFQB2QFS5jf1OX+VbSLiucbGT11S+8kh3y4DPiZN/Rc2HktHR
	+Ygo1uXuYgZISL54rtihZumAOkpsixozwzE0SOEm3jp1PFDOAhG9zvWNf7r6+bFElfe5VaruP9+0Z
	Fdko07tDCdy72Etrm1Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7eDL-0003Vn-8s; Fri, 28 Feb 2020 11:53:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7eDB-0003VJ-Q6
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 11:53:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BF1934B2;
 Fri, 28 Feb 2020 03:53:44 -0800 (PST)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 36A473F7B4;
 Fri, 28 Feb 2020 03:53:43 -0800 (PST)
Date: Fri, 28 Feb 2020 11:53:40 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Olof Johansson <olof@lixom.net>
Subject: Re: [PATCH v2 13/13] MAINTAINERS: Update Calxeda Highbank
 maintainership
Message-ID: <20200228115340.26495693@donnerap.cambridge.arm.com>
In-Reply-To: <CAOesGMg1AiF5kLipKpD+3BYNE1hPfs2XYwSnFr0Szp3t=4zw-w@mail.gmail.com>
References: <20200227182210.89512-1-andre.przywara@arm.com>
 <20200227182210.89512-14-andre.przywara@arm.com>
 <20200227223523.GH26010@bogus>
 <CAOesGMg1AiF5kLipKpD+3BYNE1hPfs2XYwSnFr0Szp3t=4zw-w@mail.gmail.com>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_035345_890321_918D05F6 
X-CRM114-Status: GOOD (  17.61  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rob Herring <robh@kernel.org>, Jon Loeliger <jdl@jdl.com>,
 Mark Langsdorf <mlangsdo@redhat.com>, Robert Richter <rric@kernel.org>,
 DTML <devicetree@vger.kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Eric Auger <eric.auger@redhat.com>,
 SoC Team <soc@kernel.org>, Will Deacon <will@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 27 Feb 2020 16:39:44 -0800
Olof Johansson <olof@lixom.net> wrote:

> On Thu, Feb 27, 2020 at 2:35 PM Rob Herring <robh@kernel.org> wrote:
> >
> > On Thu, Feb 27, 2020 at 06:22:10PM +0000, Andre Przywara wrote:  
> > > Rob sees little point in maintaining the Calxeda architecture (early ARM
> > > 32-bit server) anymore.
> > > Since I have a machine sitting under my desk, change the maintainership
> > > to not lose support for that platform.
> > >
> > > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> > > ---
> > >  MAINTAINERS | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)  
> >
> > Acked-by: Rob Herring <robh@kernel.org>
> >
> > Send a PR to arm-soc folks for this and the dts changes. I'll pickup the
> > bindings.  
> 
> Given that it's likely to be a low volume of code, we can also just
> apply patches directly in this case (if it's easier than setting up a
> kernel.org account, etc). Andre, just let us know your preference.

I am happy (and more familiar) with just sending a final series via email. Especially if you insist on pulling from kernel.org git trees only, that is probably the only way for now.

To gain more independence from "corporate email" I am looking forward to setting up a kernel.org account and sending proper PRs in the future, but indeed this is probably overkill given the expected volume of patches.

Let me just run some test with the final version of the DT, then I will send a v3.

Cheers,
Andre



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
