Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A46D69AF6A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 14:27:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jZE4MuC00a9+x+vkqEgS66bZ7+/n1niHSW5Wvamjnzk=; b=W2fmrfRBXq00WW
	9oOV33AmW1jpcOCutxyauiAbfdc84GKq2gsP2ZrhsVe4rNOfYwjme2X5dehca558bfw+NqRLjBA51
	S952aSfKrKr8bMeCwA2OxUCSGy0McYtKa8L2SAvhA8ZGLT8Jj2dxV4j2o6UjxxZShcrYZNEvu3RPS
	AD08DwUNmT3V9K5TJVFc5Qm6tL9e7eZrwz2g0Po0jKq6WKDdQKM5AJ75p9b9Eemv77bb+dM232esd
	NbqqThZwGT22A0c+jDMPjLQaDAiUyMVc/kt2WI868IXty6O+7/2IquJNCho6QrHKuFZrxOnXA3mJS
	pPxvpQjAJArsLYh5kB5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i18fR-0002jl-0p; Fri, 23 Aug 2019 12:27:45 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i18fJ-0002iw-J3
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 12:27:38 +0000
Received: from [5.158.153.52] (helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1i18f9-00020a-7l; Fri, 23 Aug 2019 14:27:27 +0200
Date: Fri, 23 Aug 2019 14:27:26 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: Regression in 5.3-rc1 and later
In-Reply-To: <20190823105121.GA13294@shell.armlinux.org.uk>
Message-ID: <alpine.DEB.2.21.1908231426080.1896@nanos.tec.linutronix.de>
References: <faaa3843-09a6-1a21-3448-072eeed1ea00@googlemail.com>
 <20190823103654.GX13294@shell.armlinux.org.uk>
 <8ab59d01-348e-9ac1-2944-5e98acd9b1f8@arm.com>
 <20190823105121.GA13294@shell.armlinux.org.uk>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_052737_774392_1EC96727 
X-CRM114-Status: GOOD (  16.94  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-arch@vger.kernel.org, linux-kselftest@vger.kernel.org,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-mips@vger.kernel.org,
 daniel.lezcano@linaro.org, arnd@arndb.de, huw@codeweavers.com,
 andre.przywara@arm.com, Chris Clayton <chris2553@googlemail.com>,
 will.deacon@arm.com, LKML <linux-kernel@vger.kernel.org>, ralf@linux-mips.org,
 salyzyn@android.com, paul.burton@mips.com, linux@rasmusvillemoes.dk,
 0x7f454c46@gmail.com, catalin.marinas@arm.com, pcc@google.com,
 sthotton@marvell.com, shuah@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 23 Aug 2019, Russell King - ARM Linux admin wrote:

> On Fri, Aug 23, 2019 at 11:43:32AM +0100, Vincenzo Frascino wrote:
> > Hi Russell,
> > 
> > On 8/23/19 11:36 AM, Russell King - ARM Linux admin wrote:
> > > Hi,
> > > 
> > > To everyone on the long Cc list...
> > > 
> > > What's happening with this?  I was about to merge the patches for 32-bit
> > > ARM, which I don't want to do if doing so will cause this regression on
> > > 32-bit ARM as well.
> > > 
> > 
> > The regression is sorted as of yesterday, a new patch is going through tip:
> > timers/urgent and will be part of the next -rc.
> > 
> > If you want to merge them there should be nothing blocking.
> 
> I don't have access to the tip tree.

  git://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git timers/urgent
 
> I'll wait a kernel release cycle instead.

It's going to be part of -rc6. I'll send the pull request to Linus tomorrow.

Thanks,

	tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
