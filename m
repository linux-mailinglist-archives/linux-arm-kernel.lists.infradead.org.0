Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 384CC1B0FCC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 17:19:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Duxg93QfQpJCoZxq5cIHeCnvLq2YvFzqae6JRJ3OQ9Q=; b=nG/3kx9JweUNwm
	wziik6eGjePg2+thj03V0UBpSUsyO9hgpLfF6pRTaJa+lpvWYpUE48z//hKyXRW9YF+23mm2Eg6Hn
	x1O/2ABkTpQcUq1IyuORLews2dDyFnq98HspAGi3xOYpQSPh/DBgW1C4/2OcQcHInILRi6xKC5CMg
	tXRyEt8NxNDZLMSN2Y3UYl2aLyB1s3/mWzS1Gj1fwkfA0YBO9xlLKO4Km2VNuQXMzzjE0FJxDTrQq
	xz/TkeiREpXqCwmzVjN2jezHKKSykFmnDBynrQK0yq8BCPlA2Xp7f6ZrdQ1RGJBKQTI7ivVRbo0Nf
	F8FTSNmJd/s4sipRpWcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQYCH-0004Md-SK; Mon, 20 Apr 2020 15:18:57 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQYC8-0004KZ-Ke
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 15:18:50 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 2DC9F8027;
 Mon, 20 Apr 2020 15:19:34 +0000 (UTC)
Date: Mon, 20 Apr 2020 08:18:43 -0700
From: Tony Lindgren <tony@atomide.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Subject: Re: linux-next: Signed-off-by missing for commit in the arm-soc tree
Message-ID: <20200420151843.GS37466@atomide.com>
References: <20200420081154.597ffa59@canb.auug.org.au>
 <20200420081323.4fb9889b@canb.auug.org.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200420081323.4fb9889b@canb.auug.org.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_081848_727305_27061885 
X-CRM114-Status: UNSURE (   8.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: Olof Johansson <olof@lixom.net>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 ARM <linux-arm-kernel@lists.infradead.org>, Arnd Bergmann <arnd@arndb.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Stephen Rothwell <sfr@canb.auug.org.au> [200419 22:14]:
> Hi all,
> 
> On Mon, 20 Apr 2020 08:11:54 +1000 Stephen Rothwell <sfr@canb.auug.org.au> wrote:
> >
> > 
> > Commit
> > 
> >   512e8d40f91d ("ARM: dts: OMAP3: disable RNG on N950/N9")
> > 
> > is missing a Signed-off-by from its committer.
> 
> Sorry, that is in the arm-soc-fixes tree.

Hmm so the commit I sent a pull request [0] for does have Signed-off-by
for commit 07bdc492cff6 ("ARM: dts: OMAP3: disable RNG on N950/N9").

Seems like some commits in arm-soc-fixes accidentally got rebased?

Regards,

Tony


[0] https://www.spinics.net/lists/arm-kernel/msg795589.html

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
