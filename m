Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F75116C081
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 13:14:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kedtJ14PJD+i5VO45lCZ5fe56g6qPELP7J256cxRtEE=; b=MamjHYPYF6NBkr
	IiBR+QYoycGSck2pF90xeHNXVqvwHkF/L1a2ZcNXVwPPEj76JiJSAsj4xv7DgPT/eO9tNIEMuuQJZ
	7EWreS0JzPycQHe4kjb9FX66woDjkdlcgJ5lfBHxRpiJKfAu7erpWslZXN833hcmp/xYCDOfE25+d
	HkUOrbMKU/sr7+NIL7wiD99a47XiVcGsWt9ekXXhSznu02VFnTzufP7mq/u69aOcvoTk2z+hZTTJA
	isEys8nUG/QilgzeMUz3bE3g0S6p5XfmV/WratA8/mvkUnxAap41ns/1sSOsuy/7bpx5+KwEx2gyN
	2fNGczCJLPDaO3VE960Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Z6H-00020f-3f; Tue, 25 Feb 2020 12:14:09 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Z64-00020G-9d
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 12:14:00 +0000
Received: by mail-wr1-x441.google.com with SMTP id m16so14417053wrx.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 04:13:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=AVLS/LrGHwk8wOwGNZCE7HvyLw1lIGzfVxUbWhQxfBA=;
 b=aD+1nN5pODywESWQ6w2iuZuBmNImud/aDyubWHCBsbJUHtoVi93C9xqFgVAYNA+7DL
 YtKZpJWM2+TV3fOYxSQfjhYkHBQvRy9Egc8pyuws3MJkAdqMLmegWMTkpcbPNIhwgXFq
 tOVe7co9Jo2iVP85rXDl90KKbnUseqwLeEsK1G1y0b0hkc9dofd3puhFSVZLN+T518dg
 zU/qbywke1KclvEkxuHzjWl7epdqosUYxRQEtafJx8kM8zyTU7DjNFfH09Ow+DTPMOUv
 64Pl8a+JIwQL4kGwdjg+kcHFo0Ij9zJLNDpbH2yE/WX+zQ54KnNjo1boXHoxMU5uPopo
 o73A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=AVLS/LrGHwk8wOwGNZCE7HvyLw1lIGzfVxUbWhQxfBA=;
 b=VLyiYmaXgYU7EEF560lgkQiml1UY9UXpKENqM0KZoo3gGzxtWZRY0Y8iuyijjC2EDp
 jK15gZFv80uOsbzRfIdZxNdwXtHU+U2V4tuJeAPcSOUIlfc65XtzBHz2EqWH9QWq7ZO5
 pUe/D//BPo0yfXfCQUjnAze9ODFjqd3K9jP0phtWvKH6X1x+RltxJZoVbOPJeqd44djN
 x8vxUuVxF4mFJIanbBb5POlRRa7XRYW4WPE+tdzyfDgHatu1fUTwW9X0lk66ACXt+v3x
 LlPXCAkeMaMCkS6lbaN6rmPgWih4A4lSmKRfFMBTVw/DmzmDqmsqIFqOpc6lZabOnB1c
 RQxg==
X-Gm-Message-State: APjAAAX3+YUjJNpwx2j/V0D+83ypAYEox1e03ZWAznx3J3swFk7TbyuV
 RGKmxfJg+cvJbaLwqVsypIBWPQ==
X-Google-Smtp-Source: APXvYqz5mF5185mtwL8kWbLIWmYs9AaHhjQli7yMxC+xYc6a1NT0z9QZvBXomlPnQDu2PasPTt9p+Q==
X-Received: by 2002:adf:e546:: with SMTP id z6mr767400wrm.423.1582632830989;
 Tue, 25 Feb 2020 04:13:50 -0800 (PST)
Received: from myrica ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id e11sm13067744wrm.80.2020.02.25.04.13.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 04:13:50 -0800 (PST)
Date: Tue, 25 Feb 2020 13:13:43 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Vladimir Murzin <vladimir.murzin@arm.com>
Subject: Re: [PATCH] arm64: context: Fix ASID limit in boot warning
Message-ID: <20200225121343.GD375953@myrica>
References: <20200224103934.137314-1-jean-philippe@linaro.org>
 <a54c1498-2fff-8d97-5220-e378966d3853@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a54c1498-2fff-8d97-5220-e378966d3853@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_041356_359998_68D72074 
X-CRM114-Status: GOOD (  16.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
Cc: catalin.marinas@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vladimir,

On Mon, Feb 24, 2020 at 11:06:43AM +0000, Vladimir Murzin wrote:
> >  static int asids_init(void)
> >  {
> > +	unsigned long num_available_asids;
> > +	bool kpti = IS_ENABLED(CONFIG_UNMAP_KERNEL_AT_EL0);
> > +
> >  	asid_bits = get_cpu_asid_bits();
> >  	/*
> >  	 * Expect allocation after rollover to fail if we don't have at least
> >  	 * one more ASID than CPUs. ASID #0 is reserved for init_mm.
> >  	 */
> > -	WARN_ON(NUM_USER_ASIDS - 1 <= num_possible_cpus());
> > +	num_available_asids = (1UL << (asid_bits - kpti)) - 1;
> > +	WARN_ON(num_available_asids <= num_possible_cpus());
> >  	atomic64_set(&asid_generation, ASID_FIRST_VERSION);
> >  	asid_map = kcalloc(BITS_TO_LONGS(NUM_USER_ASIDS), sizeof(*asid_map),
> >  			   GFP_KERNEL);
> > @@ -280,7 +284,7 @@ static int asids_init(void)
> >  	 * caps are not finalized yet, so it is safer to assume KPTI
> >  	 * and reserve kernel ASID's from beginning.
> >  	 */
> > -	if (IS_ENABLED(CONFIG_UNMAP_KERNEL_AT_EL0))
> > +	if (kpti)
> >  		set_kpti_asid_bits();
> >  
> >  	pr_info("ASID allocator initialised with %lu entries\n", NUM_USER_ASIDS);
> > 
> 
> I agree with what you say about  NUM_USER_ASIDS, yet looking at comment explaining
> warning is seems that we may get extra ASIDs later on rollover, so warning might be
> seen as false positive. Can we move the warning later on when we know how many ASIDs
> we have after all CPU's are up?

Yes I think that's better. I've stumbled upon the issue when reworking my
ASID-pin patch [1], which will also need a precise maximum number of ASIDs
available.

> Maybe late_initcall?

I guess arch_initcall might be more appropriate. Any init level except
early should work since they are after smp_init().

Thanks,
Jean

[1] https://lore.kernel.org/linux-iommu/20200224182401.353359-8-jean-philippe@linaro.org/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
