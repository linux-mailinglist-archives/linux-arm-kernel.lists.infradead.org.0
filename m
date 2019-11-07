Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E41B8F2DD2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 13:00:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=br3hVL2BlKJRWGcs81PQnYF2pn1GSADVqSN7vJI7GTg=; b=hUJ0fIuUgyrale
	z2pZVZFE/bWdsvFM03+HGiGdAYIVppoHPVHtmphKV4vIilH2H+yvoe2xS0iIaA6YtdL20Q/SxIQxT
	hi3lcK6pVfxbebi/Zg7uKA37FQox8RJxejOQDj3THyVI5REppmu+n8GNAcQIlTu5fgbSKDDCXnoiW
	pRADP9CevnIgFztqPCTDrLSJzhtOUROIjFCSnOIlhnWIx0sDoT1klJzlZpVbppb4f9UijwXlPlbsO
	dEh6BrPilivnMHk6aBNXe8hel4GaPsXm2wRb/Vr6QAzhjiIv2UfTWedbI9N2PIdmRd+pFVM1na01z
	hbkOML3Xe5WyXvQnOmsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSgSW-0003qG-Nd; Thu, 07 Nov 2019 12:00:16 +0000
Received: from hetzy.fluff.org ([88.198.11.153])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSgSO-0003JB-F5
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 12:00:09 +0000
Received: from ben by hetzy.fluff.org with local (Exim 4.89)
 (envelope-from <ben@fluff.org>)
 id 1iSgSA-0004Xt-TZ; Thu, 07 Nov 2019 11:59:54 +0000
Date: Thu, 7 Nov 2019 11:59:54 +0000
From: Ben Dooks <ben@fluff.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: Linux-next-20191106 : arm64: Internal error: Oops: 96000007
Message-ID: <20191107115954.7sfjflcxwejcolpb@hetzy.fluff.org>
References: <CA+G9fYvm_QEq+9e+dni1Y+bJswr9bU5=shJcC+wKjjOyiPsXXQ@mail.gmail.com>
 <bfced8c8-c64f-982e-8797-d48b5ec65291@arm.com>
 <20191106161705.GA11849@sirena.co.uk>
 <CACRpkdY5JObOobs7VW043QYGd_xufwnQDBJseKp+_QWv4kdzaQ@mail.gmail.com>
 <20191107114553.GA6159@sirena.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191107114553.GA6159@sirena.co.uk>
X-Disclaimer: These are my views alone.
X-URL: http://www.fluff.org/
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: ben@fluff.org
X-SA-Exim-Scanned: No (on hetzy.fluff.org); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_040008_656530_8BAAED1C 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 open list <linux-kernel@vger.kernel.org>, lkft-triage@lists.linaro.org,
 Linux-Next Mailing List <linux-next@vger.kernel.org>,
 John Stultz <john.stultz@linaro.org>, Robin Murphy <robin.murphy@arm.com>,
 Naresh Kamboju <naresh.kamboju@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 07, 2019 at 11:45:53AM +0000, Mark Brown wrote:
> On Thu, Nov 07, 2019 at 09:00:25AM +0100, Linus Walleij wrote:
> 
> > I wonder if it's worth to look at the static checkers like checkpatch
> > to warn for this?
> 
> I noticed this due to the warning emitted in the build process so I'm
> not sure there'd be much more chance that people would notice (though
> admittedly the warning during the build doesn't suggest a boot problem).
> There's hundreds of other examples in the tree that don't trigger
> crashes for whatever reason, I think this one was just noticable because
> it got built in.

Is it worth hving a attribute for 'can't be initdata' to add to sparse to
catch things like this. Not sure if checkpatch would be able to do the sort
of full level of catch for this.



-- 
Ben Dooks, ben@fluff.org, http://www.fluff.org/ben/

Large Hadron Colada: A large Pina Colada that makes the universe disappear.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
