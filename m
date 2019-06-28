Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8393F59673
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 10:52:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8XtYHl790kIwQCoRhr0omZFH8CzcOqoYvkusF6YvQ7M=; b=jsnUvKuz8lAoav
	y3bPfbuv1haG1HLImYKwxc16tqR5wCzzXwtyKsxgWx5sUw3n4MbgdaZX3Hku/rudeJB6Ffu+aSqia
	EiJtQgwmn3uaGtFmiKcwsSeG9o5Ds1U+DrtiYBS5650iQht9Tmp8MjHD5Ukw5mDr2OEF2KljORyod
	+ljNHGnM+brjdY9Om19qjvwkotZ2QGA72AQQioZRQX6UaKXuaS7QYwMLfMmlM/6wN9YaOVevV79aB
	30KLvJyVBFYCiSceBo8VAt2JLKvqBhmqtJzqNAIUlzDJXHaK8UNk8pS8sbvZZHlkoaDE8tR5qLc26
	D8fTgP2qgNLfZvK6gfZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgmcF-00005I-Az; Fri, 28 Jun 2019 08:52:19 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgmc0-0008W5-T7
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 08:52:06 +0000
Received: by mail-oi1-x241.google.com with SMTP id u15so3600592oiv.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 01:52:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=lsOvbpUQ1p5oy4ZoXQ9SUcims4T1WqArJuy9bd21jpo=;
 b=tTfTOmZVQAfWOgN3xtqXSgiA0HXDKbFA0XLMV+xrxdCSLCXVEITE7waHUhen1f4sHO
 DUZ6e+NCj63lPqP5P4IG73O+PGcN1zvsAYRcW2YCMznHR7iXyrpI+BR1rrV8x4s9cdle
 Gnqh2IuThTl4+VP6MhX+p8uRsdaoI1Aydz6scdFqoqXftxVVp+3OGGPHiPEJOuL6UFWx
 Ku6e+2ViO+1ZejeyHWTaJUHOVC8clJwCIfLHbSRrcLvnug+wAh+hFSY933TvztvmjM6o
 XmdW9M284c2VSWXsduuatqhk0/Q00+FkVwgyGgJKs6fSwwGn4Fc/tO9feJbEOvXodKp1
 9Wew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=lsOvbpUQ1p5oy4ZoXQ9SUcims4T1WqArJuy9bd21jpo=;
 b=UqKd5Jw9DRgKHyJUOjUnVzh8X72L40YKcZSShV0kFCMXQTqBZWZXk/kXwKGEJ960EF
 TiNrrWDOeIwh22NUVqCsxsF+9pFmW1cJiRzYkDqux4m8pSuMfqfvbrwI/59t1NYcIQDy
 XuvtMm0cyOYWN1r9TeRP8ww5rTPh9kM2+bIweo+6xvlHUxkKX3uN5ZQJBFlPJQM0QpIt
 96/H5Yxh2w6M2nSEaNEFmcFtfGFlE+150P5Ad6V9MNKsLNst2U3nZeS9vJLzEG5Z8mIx
 dMVecE6OdtNowQA35PKF2qgu51r6e8Q9v+K1csq9T5y02nki2EqB+qff74/Tg7rsejgv
 n1Hg==
X-Gm-Message-State: APjAAAWwPVom1WEJMZb/jUEFE8ubBLY0loTgM4Y1pIG1P414j4WGlkq8
 CvLCvylZEc81qhMCdXKW02GXFQ==
X-Google-Smtp-Source: APXvYqzvxevU5SCTRIlfZKbb0Fhw6DVlbRa/Rm/cyiyHva+kYngXSvNkKwOEFJfA/yW4bAC/QawS9g==
X-Received: by 2002:aca:d7d7:: with SMTP id o206mr1083143oig.92.1561711923482; 
 Fri, 28 Jun 2019 01:52:03 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li964-79.members.linode.com. [45.33.10.79])
 by smtp.gmail.com with ESMTPSA id r13sm576415otk.49.2019.06.28.01.51.59
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 28 Jun 2019 01:52:02 -0700 (PDT)
Date: Fri, 28 Jun 2019 16:51:54 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v2 2/5] coresight: etm4x: use explicit barriers on
 enable/disable
Message-ID: <20190628085154.GD32370@leoy-ThinkPad-X240s>
References: <20190627083525.37463-1-andrew.murray@arm.com>
 <20190627083525.37463-3-andrew.murray@arm.com>
 <20190628024529.GC20296@leoy-ThinkPad-X240s>
 <20190628083523.GG34530@e119886-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190628083523.GG34530@e119886-lin.cambridge.arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_015204_964743_39DFA70E 
X-CRM114-Status: GOOD (  17.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 coresight@lists.linaro.org, stable@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

On Fri, Jun 28, 2019 at 09:35:24AM +0100, Andrew Murray wrote:

[...]

> > > @@ -454,7 +458,8 @@ static void etm4_disable_hw(void *info)
> > >  	control &= ~0x1;
> > >  
> > >  	/* make sure everything completes before disabling */
> > > -	mb();
> > > +	/* As recommended by 7.3.77 of ARM IHI 0064D */
> > > +	dsb(sy);
> > 
> > Here the old code should be right, mb() is the same thing with
> > dsb(sy).
> > 
> > So we don't need to change at here?
> 
> Correct - on arm64 there is no difference between mb and dsb(sy) so no
> functional change on this hunk.
> 
> In repsonse to Suzuki's feedback on this patch, I've updated the commit
> message to describe why I've made this change, as follows:
>      
> "On armv8 the mb macro is defined as dsb(sy) - Given that the etm4x is
> only used on armv8 let's directly use dsb(sy) instead of mb(). This
> removes some ambiguity and makes it easier to correlate the code with
> the TRM."
> 
> Does that make sense?

On reason for preferring to use mb() rather than dsb(sy) is for
compatibility cross different architectures (armv7, armv8, and
so on ...).  Seems to me mb() is a general API and transparent for
architecture's difference.

dsb(sy) is quite dependent on specific Arm architecture, e.g. some old
Arm architecures might don't support dsb(sy); and we are not sure later
it will change for new architectures.

Thanks,
Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
