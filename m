Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3500E9452
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 02:02:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Mime-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HPBrsxTKfNBBRtGHuXD50Y95V4dvD/zkwAg/FHxJn10=; b=BH14WW0nB7ucKB
	uWJBUb3TwNa/8A620L0CE1Z6JGv3xjSwEVVMe0rlUw43FxMtbzYCDcJ/NgRLTRODdUsh9jSHHlCfS
	/QMY/SRo6TDM6xpqCDtNzEy/EV9lKRIOyZ8p+jy/3PKRqBZYnFXRcXN7hEJA4FDXpUG5E5SqCq+KW
	sjB+DaZ12bckgMHuGpgs+EyrevbrF1QhEoRWUhB3C8iRccUXX6WBNHrkS2O60dAUPrLL1i0yJs0Dt
	Y0p8MWtESG9KdSRBWkdEGjAhmnOWCfBIihhywzsxKIQHsUYh18wTwBeW6n0niIUO+yatAl33o68L/
	ra8UWqRId9AeEcqI9znw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPcND-00037O-EK; Wed, 30 Oct 2019 01:02:07 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPcN4-00036W-5S
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 01:02:00 +0000
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x9U11JQ0012494;
 Tue, 29 Oct 2019 20:01:20 -0500
Received: (from segher@localhost)
 by gate.crashing.org (8.14.1/8.14.1/Submit) id x9U11Hij012492;
 Tue, 29 Oct 2019 20:01:17 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to
 segher@kernel.crashing.org using -f
Date: Tue, 29 Oct 2019 20:01:17 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH v2 01/29] powerpc: Rename "notes" PT_NOTE to "note"
Message-ID: <20191030010117.GJ28442@gate.crashing.org>
References: <20191011000609.29728-1-keescook@chromium.org>
 <20191011000609.29728-2-keescook@chromium.org>
 <20191011082519.GI9749@gate.crashing.org> <201910110910.48270FC97@keescook>
 <20191011162552.GK9749@gate.crashing.org> <20191015165412.GD596@zn.tnic>
 <201910291414.F29F738B7@keescook>
Mime-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201910291414.F29F738B7@keescook>
User-Agent: Mutt/1.4.2.3i
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_180158_351660_752F37D7 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Michal Simek <monstr@monstr.eu>, Dave Hansen <dave.hansen@linux.intel.com>,
 linux-ia64@vger.kernel.org, Yoshinori Sato <ysato@users.sourceforge.jp>,
 Arnd Bergmann <arnd@arndb.de>, linux-xtensa@linux-xtensa.org,
 Will Deacon <will@kernel.org>, x86@kernel.org,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-kernel@vger.kernel.org,
 Borislav Petkov <bp@alien8.de>, linux-parisc@vger.kernel.org,
 Andy Lutomirski <luto@kernel.org>, linux-alpha@vger.kernel.org,
 Rick Edgecombe <rick.p.edgecombe@intel.com>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, linux-c6x-dev@linux-c6x.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 29, 2019 at 02:15:39PM -0700, Kees Cook wrote:
> On Tue, Oct 15, 2019 at 06:54:13PM +0200, Borislav Petkov wrote:
> > On Fri, Oct 11, 2019 at 11:25:52AM -0500, Segher Boessenkool wrote:
> > > Names *matter*, internal names doubly so.  So why replace a good name with
> > > a worse name?  Because it is slightly less work for you?
> > 
> > So if we agree on the name "notes" and we decide to rename the other
> > arches, this should all be done in a separate patchset anyway, and ontop
> > of this one. And I believe Kees wouldn't mind doing it ontop since he's
> > gotten his hands dirty already. :-P
> 
> I've added more rationale to patch #1 in the just-sent v3 of this
> series. If I still can't convince you Segher, I'm happy to send "patch
> 30/29" to do a bulk rename to "notes". Let me know. :)

I am still not convinced the worse name is a better name, no :-)  But if
you don't want to do the work, and instead prefer the much smaller change,
that is of course a fine decision.  Thank you!

(I would be happy with such a 30/29 as well, of course.)


Segher

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
