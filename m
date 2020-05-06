Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCD281C71F6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 15:44:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=369zkuDlxpqNF7wVKnDprQcUkJpLFunNXzm7RZE9QOc=; b=T049O2bvpjfMrI
	j9ybQ+ZEjNNFZkDC8A9rePrgXPMFmTjaytch1ugO2NRMmHLdgKr8LmmPOrVmM7Zg1lOcfM24bOoqk
	GgvDzyirh09A357n855ydZLpmRZ5Kxcy2Dd/9qIOvLdl6WLVFJn8d5w1N7k1/NDx24davKQbCBjI5
	xgztUjaIaj8G1GGuNPBWmfw3sNLZXNGykth7Etdfzv+5f2mRUgMRKxjjRa5tzr49MRrTcBe8qmEsM
	J128JRp6WnMxtRPTeSoivcg0Nm62acNk/rRo3K9uSPZT5uCJFYPQxioT/bcYVL5wMfTzqAgWetrBw
	jI/akdoETlM43Cd0eSUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWKLt-0001tg-M9; Wed, 06 May 2020 13:44:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWKLn-0001t4-Ji
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 13:44:40 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 75E98206DB;
 Wed,  6 May 2020 13:44:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588772678;
 bh=1pbepLRtVj/3HevmylwQOv0X1nNh1P3OTHHtVcLPDK4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OGghNlS55hMb6cfkqTVDADhcasnsZDTcDkXX7tFDjwGZRaJCd/0DbTTLGtW6byWx1
 7vwUql1XeN8eZwG5HQZfEW0eU9Lu8t07NHl9jqOEG85wPEGZxgvGbKCL9o9oQ2s0Xz
 gddu7g3bGGb2Q6LrDYpLRsa9pPQks8fveWM7o0bk=
Date: Wed, 6 May 2020 14:44:34 +0100
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2 07/10] arm64: asm: Provide a mechanism for generating
 ELF note for BTI
Message-ID: <20200506134433.GA12453@willie-the-truck>
References: <20200429211641.9279-1-broonie@kernel.org>
 <20200429211641.9279-8-broonie@kernel.org>
 <20200505145858.GB24239@willie-the-truck>
 <20200505170629.GH5377@sirena.org.uk>
 <20200506112632.GD8043@willie-the-truck>
 <20200506123855.GC5299@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506123855.GC5299@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_064439_668189_64D83593 
X-CRM114-Status: GOOD (  20.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, dave.martin@arm.com,
 linux-arm-kernel@lists.infradead.org, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 06, 2020 at 01:38:55PM +0100, Mark Brown wrote:
> On Wed, May 06, 2020 at 12:26:33PM +0100, Will Deacon wrote:
> > On Tue, May 05, 2020 at 06:06:29PM +0100, Mark Brown wrote:
> 
> > > I was unsure about that - it'd be a bit annoying to have to have all the
> > > callers of the macro list things like BTI where 
> 
> > It just feels inevitable that we'll need to do this at some point!
> > Do you know what is supposed to happen if an object has multiple instances
> > of this property identifying different features? For example, could we
> > do something like:
> 
> Regardless of what is supposed to happen my strong suspicion is that
> we'll have some more.

Yup! :)

> > If we have to merge this stuff in a single .long, then I think we'll
> > probably have to put up with passing in the features as an optional macro
> > argument, which defaults to "all features" if it's omitted. So on top of
> > your patches, we could do:
> 
> > +#define GNU_PROPERTY_AARCH64_FEATURE_1_ALL				\
> > +				(GNU_PROPERTY_AARCH64_FEATURE_1_BTI |	\
> > +				 GNU_PROPERTY_AARCH64_FEATURE_1_PAC)
> > +
> > +.macro emit_aarch64_feature_1_and, feat=GNU_PROPERTY_AARCH64_FEATURE_1_ALL
> 
> Right, I was just expecting to have the ifdefs selecting the flags to
> emit in the middle of the asm macro definiton rather than separately - I
> didn't see a huge win in defining a macro with the only user being
> another macro.  I can do something along those lines though.

With my suggestion, we still only have the 'emit_aarch64_feature_1_and'
macro, it just provides a way to override the properties if we need that
later on. All I'm proposing is adding the optional feat parameter, which
defaults to all of the properties we know about.

> > -.macro emit_aarch64_feature_1_and
> > +.macro emit_aarch64_feature_1_and, feat=0
> >  .endm
> 
> That will result in us emitting the note with no flags set which
> *should* be totally fine but is a bit unusual and feels like tempting
> fate.

Nah, that's just the dummy .macro definition.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
