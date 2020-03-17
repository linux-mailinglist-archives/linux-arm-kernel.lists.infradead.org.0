Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA141891BC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 00:01:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wM24Wc1YdaXdE1wmhuzUN+hsy/NQbXuxywbUalLUddQ=; b=q+6l2+wgaqOliP
	r1mne7AhPdIcpGjH5osHjDk7GqzZmXvDI5xiWTSq7cLTAfgaW+xoZkWD9e2g8mnfD3SVO696JHs4U
	ZE5zfa/DlFL642arMWW6QjB5e4gXgCWpknvLJKpUNxqKGpvp6Ry5q/5Y31PIP03H7cusTNlSO8z7J
	XGYOM8RDZBfVDG6iXSFV+NMrHNtB69lbWk5pdzEuTUbjRCCRLePAnjdfQoZuANAEYM7uAbudhVbpZ
	Okii+tHh2QzIbnefM2wvXgLzQ5BWtHFqlT8W3AzG2bXnZbYAks0Ek8HtLkuSsFcMwWHsjEZNVRBY/
	3OH95gUIYm4n9/CCLSxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jELDD-0001x9-DN; Tue, 17 Mar 2020 23:01:27 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jELD6-0001wX-Cl
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 23:01:21 +0000
Received: by mail-pf1-x443.google.com with SMTP id 2so12759305pfg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Mar 2020 16:01:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=CLAXJR/m1S5mvbxDH/gOJKQ31fTpJSMrQ/dm5IseVLo=;
 b=nHn8XPpjogArRYq/pgvsanPOK+4o4O576oiPZS+njOPe1Iyb2CbZK5pOPlCvHz+Erq
 ycjuE3lMYgppqAWBDcD1CzbbzRU1NJ+lLGqwcVY1M/ynuQLTbpDg/KVTErnY8WshjnKQ
 dLlK6CXABUAwVSNrHVBjY4SoDTh8u6qiXtVM0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=CLAXJR/m1S5mvbxDH/gOJKQ31fTpJSMrQ/dm5IseVLo=;
 b=FlVbaLKCOFDkgvyH0wc8Euxgqu44K54KN9APoN7roc2bDV2uFjrMMScn7OusZVxGc4
 MHASX2MRdfVNM/AbzA3uGsBpfq0Gf/Y9dsMqcovnD396lCWcYGGNTmdPLSwB3jbHtTze
 tLOx7+0JFuxSGRgHMCHWE9QwXVsSybN56FCDCGM/16rtMxI8QbhOEiMoVcBsEu2ejYfF
 3Fbc89SEAAvN81QLiC11pGp2Y+48Rj4fh+euct04oWXdSRtNzjyM0+M1vAUyprTYPAil
 DVthh7/EIy8VDw0PFjno/NtNO+EAF8BdiriU61qe8A+2ib8NHzBpR+SIPmNAEV5BBgUO
 QNKQ==
X-Gm-Message-State: ANhLgQ0TtkIW+33fmBvUXjQ5Jj8GSYvBLxpqbUk1MpIsvjO9cGhYJR2z
 VLofqQmTX0ditKMFcFz/qkoXpg==
X-Google-Smtp-Source: ADFU+vvg0MZXI74SVi2HiksDnjxAGYalVyFBX2Irz0ufLm1PbI7PXP1Iee6C/syJdSKNKPaBtFiibQ==
X-Received: by 2002:a63:1245:: with SMTP id 5mr1481307pgs.55.1584486078671;
 Tue, 17 Mar 2020 16:01:18 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id w15sm1772273pfj.28.2020.03.17.16.01.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Mar 2020 16:01:17 -0700 (PDT)
Date: Tue, 17 Mar 2020 16:01:16 -0700
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 7/9] arm64/build: Warn on orphan section placement
Message-ID: <202003171558.7E1D46AED6@keescook>
References: <20200228002244.15240-1-keescook@chromium.org>
 <20200228002244.15240-8-keescook@chromium.org>
 <20200317215614.GB20788@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200317215614.GB20788@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_160120_455141_0EB1BEDE 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, "H.J. Lu" <hjl.tools@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-kbuild@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, James Morse <james.morse@arm.com>,
 linux-arch@vger.kernel.org, Borislav Petkov <bp@suse.de>,
 Peter Collingbourne <pcc@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 17, 2020 at 09:56:14PM +0000, Will Deacon wrote:
> On Thu, Feb 27, 2020 at 04:22:42PM -0800, Kees Cook wrote:
> > We don't want to depend on the linker's orphan section placement
> > heuristics as these can vary between linkers, and may change between
> > versions. All sections need to be explicitly named in the linker
> > script.
> > 
> > Explicitly include debug sections when they're present. Add .eh_frame*
> > to discard as it seems that these are still generated even though
> > -fno-asynchronous-unwind-tables is being specified. Add .plt and
> > .data.rel.ro to discards as they are not actually used. Add .got.plt
> > to the image as it does appear to be mapped near .data. Finally enable
> > orphan section warnings.
> 
> Hmm, I don't understand what .got.plt is doing here. Please can you
> elaborate?

I didn't track it down, but it seems to have been present (and merged
into the kernel .data) for a while now. I can try to track this down if
you want?

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
