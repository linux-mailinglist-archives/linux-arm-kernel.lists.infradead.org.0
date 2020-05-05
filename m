Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B9A1C5933
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 16:23:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eJn8Cvr8zwmOlxdRyJ7M2b1nDAY0a9rtaP+cpXDlSB4=; b=aR8j3Luh/zbY4t
	DHIBNrSrsUxvHUBgJEiqG0yXuaEmxPpesjGCYEyNXK5/5X6KxdasnHqincB1yllxd+4PEVxmnRdUg
	r9MHiQeihl0UwHAyl2z7U99iEfePgFxdwXF7qPvTXNJgSNsxwy+4JR5ttNLZ5YsqxUQuICkEpvONF
	NDmg3MgLExvXq8bQSaQ/5li6y4jhxOboIfJrSO720yy8oUw4/TUJKNcmQgHsY+q/LuBRQYGlzS+TE
	yefkw5JvXVJciE4AwMn9D8sojLvXe8S75iPnyNPic7w+sahH+QKqFTkLoIYlThGbG1XA56yWcD4OK
	TzA7yqbMMKd1YkFgyctQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVyTb-0005L7-SH; Tue, 05 May 2020 14:23:15 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVyTT-0005KN-T4
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 14:23:09 +0000
Received: by mail-wm1-x343.google.com with SMTP id z6so2569371wml.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 07:23:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=YHnzzrHgTyHcjX/CeefsmIEudaBUoBiusDg0FK4q7VY=;
 b=WramJSl4+uskKedIHN68dPfXwQ/JWF+7d43lGgSUtg9uMCjB27RieYVrxRNCiESioY
 qQAjepPNqXaKLzvAd80rsaqCFeopkR4uGXt7IqAdCYXXu9pgquU5zI/UiGrDkc+yeh/T
 1CIy4eJHsTlDiebyEJu6B7BpqUnS6SjguezbmKJ2iuKyjeroDCACh63Avjg6X/WKNq8y
 VvJo8RcMTZPoZKGb1azBhV5ipKE7OtRG5tE93+24jqZG1M+GMUHOmPzJD/8cCntKFYMv
 27h5azse6AypM9z9xYtJOUU9+W2RBvRcU/L3QRlt/mZnHnaqiWCBInSRYqf61knVPmLc
 ApVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=YHnzzrHgTyHcjX/CeefsmIEudaBUoBiusDg0FK4q7VY=;
 b=cTlitzJvztAfmpj5+knP8ix2nYGyFyMzvhLcllE/6bQvP7mFbqD5r14+Do0DUHq+gg
 cRbyXrg6Vrv99WsJ832SHOYjQ2M9/7J1fXiy20HKcSR1mRBsf0ZmI2kET8XT4KnYgNSN
 39MUXjWqYxA5FMYLWXYtYStMY/51eLceyPMqSOBYctkZ7JWj4wCthF3l+RFSoJWOd/Zd
 CAEssH9SIxIfyaiI0k2EsqRQByWQh6PEopN+lpKBttNw3OfuhWpRE4K/pYkUdDbR/aNK
 xjUmF/qWMNeKdcHFYkdfFflD+vQ369d12GF+qJHmZbEbCuOvcxPd+Y9rGCXcIwmfKb0b
 iIfA==
X-Gm-Message-State: AGi0PubQvl5acJYDX9d1ZVa2/TyZdDyGm6BrTHncDBiLElMVxceDW7e4
 yLcgwSzzZltRh3wF/SxVd9cz2vpHaplVKw==
X-Google-Smtp-Source: APiQypIYYxJUTLtY0WESmB6qxDcBGH0IJp2gBONDCsRvlDuzCDaiTDtCUBp5/jTtlYEeVlexqtQGJw==
X-Received: by 2002:a7b:c250:: with SMTP id b16mr3771611wmj.100.1588688132584; 
 Tue, 05 May 2020 07:15:32 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id s6sm4023786wmh.17.2020.05.05.07.15.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 07:15:31 -0700 (PDT)
Date: Tue, 5 May 2020 15:15:29 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2] arm64: cacheflush: Fix KGDB trap detection
Message-ID: <20200505141529.2qb35fbqudtac3ys@holly.lan>
References: <20200504170518.2959478-1-daniel.thompson@linaro.org>
 <20200504204803.GA5657@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504204803.GA5657@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_072307_941513_9C0BD8D0 
X-CRM114-Status: GOOD (  25.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: patches@linaro.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 Jason Wessel <jason.wessel@windriver.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 04, 2020 at 09:48:04PM +0100, Will Deacon wrote:
> On Mon, May 04, 2020 at 06:05:18PM +0100, Daniel Thompson wrote:
> > flush_icache_range() contains a bodge to avoid issuing IPIs when the kgdb
> > trap handler is running because issuing IPIs is unsafe (and not needed)
> > in this execution context. However the current test, based on
> > kgdb_connected is flawed: it both over-matches and under-matches.
> > 
> > The over match occurs because kgdb_connected is set when gdb attaches
> > to the stub and remains set during normal running. This is relatively
> > harmelss because in almost all cases irq_disabled() will be false.
> > 
> > The under match is more serious. When kdb is used instead of kgdb to access
> > the debugger then kgdb_connected is not set in all the places that the
> > debug core updates sw breakpoints (and hence flushes the icache). This
> > can lead to deadlock.
> > 
> > Fix by replacing the ad-hoc check with the proper kgdb macro. This also
> > allows us to drop the #ifdef wrapper.
> > 
> > Fixes: 3b8c9f1cdfc5 ("arm64: IPI each CPU after invalidating the I-cache for kernel mappings")
> > Signed-off-by: Daniel Thompson <daniel.thompson@linaro.org>
> > Reviewed-by: Douglas Anderson <dianders@chromium.org>
> > ---
> > 
> > Notes:
> >     v2: Improve the commit message based based on feedback from Doug
> >         Anderson
> > 
> >  arch/arm64/include/asm/cacheflush.h | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> > 
> > diff --git a/arch/arm64/include/asm/cacheflush.h b/arch/arm64/include/asm/cacheflush.h
> > index e6cca3d4acf7..ce50c1f1f1ea 100644
> > --- a/arch/arm64/include/asm/cacheflush.h
> > +++ b/arch/arm64/include/asm/cacheflush.h
> > @@ -79,7 +79,7 @@ static inline void flush_icache_range(unsigned long start, unsigned long end)
> >  	 * IPI all online CPUs so that they undergo a context synchronization
> >  	 * event and are forced to refetch the new instructions.
> >  	 */
> > -#ifdef CONFIG_KGDB
> > +
> >  	/*
> >  	 * KGDB performs cache maintenance with interrupts disabled, so we
> >  	 * will deadlock trying to IPI the secondary CPUs. In theory, we can
> > @@ -89,9 +89,9 @@ static inline void flush_icache_range(unsigned long start, unsigned long end)
> >  	 * the patching operation, so we don't need extra IPIs here anyway.
> >  	 * In which case, add a KGDB-specific bodge and return early.
> >  	 */
> > -	if (kgdb_connected && irqs_disabled())
> > +	if (in_dbg_master())
> 
> Does this imply that irqs are disabled?

Yes.

Assuming CONFIG_KGDB is enabled then in_dbg_master() expands to:

    (raw_smp_processor_id() == atomic_read(&kgdb_active))

kgdb_active is written to from exactly four locations in the kernel and
all are within a single function, albeit a very big function with control
flow the that could politely be called "quirky". I try not to think about
what it might be impolitely called.

kgdb_active is only ever set to a value other than -1 when we are
executing the kgdb exception handler and interrupts have been
explicitly disabled.


Daniel.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
