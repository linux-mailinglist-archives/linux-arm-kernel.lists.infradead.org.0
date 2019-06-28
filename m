Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60941597C8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 11:42:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pWphix7l5FYVkCpiRSCy0twRv97TQnf843QD5PmpOxM=; b=TDS7l7Ybntab71
	6UFLGOYKBNMAyeNuLzhb7q6oHkXHzLX1FaJLDf/1TnQ05F7LS+CUjorYwGTvhduBYRls9RtP5LAYQ
	/e4c+sYQ7TiCPxTU4SRoPsMg6jJe1a4m/A1g0vcbp+8HepwnuaGT2pR/SLtczxjkUnpg5iJtPEaUJ
	BXcYPmg8F2K7x+PceGbq0wHsbYOJppfGl0UeVytZ8MtA4JrMs9yqEgVE6zrsXeuU1g3Q5dUo+EqVY
	bliZHGR+M+eHuHZJc0vLMpM7+gJdYdOnlJmVGmF7mGE7PlMOujwK9edwIO3d8A3ST8qA/V8EY0eKf
	FZG4a7LfzsikoeJ97RpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgnOs-0007Gd-VL; Fri, 28 Jun 2019 09:42:34 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgnNl-00078X-Ky
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 09:41:28 +0000
Received: by mail-ot1-x343.google.com with SMTP id z23so5319257ote.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 02:41:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=XRrEHx1uSB4yPDMUO/oxdWMhDCh65upcSfQGta3Ewhc=;
 b=Zyflk2jOVA4YyaZ24XP+l4S4Ys3pUX063Hs5TE0c2u+Z4Mlfgf6N93cfCcCDnw+ftt
 0qcpx0IEzM7HQM0rM0Jo60lPJkxhKkNtMaZQZwj+HaEWRKHDbLJFXzkMWzzrBIfnfR34
 Vcy9qak80ZQl+1fZgjGxvVvBIpzW3VRz0LvqdD3PCBGeK1HTLccmj2EwgR5tLOSzfiWY
 xeG83SJhse+T53UDv2UJTPrjpErfvrvdgWwxRlq3Q4HkELse+WSNjAIPwbBppvcjcNH8
 Vp+Y6XnC63N7lIj+CvPRmaSUZ6z0gxeubf3lP8Sgpn4lIoXH0u5lzWKuqr1wnDTdrHdm
 ojNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XRrEHx1uSB4yPDMUO/oxdWMhDCh65upcSfQGta3Ewhc=;
 b=LtneIGlEIBeewekRzQqaQcfn+Hqz1e4wapUM3S4NnFRJau4MR+kynrfxRRpbPUfuqN
 Q3BnOI+8FjkLXuThGKDH4YWOcHy3U5qG3ayq0QZ1kLNponzrFpXH48V7QU65sHB9APuj
 793TX3Y6P6sSQ9f8Zz5C6uvsw6h/IAU47gZpsXExyniKgIajdmnFp84jyfCEcyjxwRij
 qSs3HnMrqst6iGSkaps0eOYH3euV003TRjJ5UbGwlaIjfuPPwdIPMmn2oZmW4r+3cwwn
 A2HHD6H+FFKDUyFjqJNh0msTOKzu8hdTGDFBZShQ+oGLCqON3RU2j813jC/mp2KfhMTK
 y+eg==
X-Gm-Message-State: APjAAAWdASh6Ob6SHK6NpZfngUOhdCPVLo+04NGO+0xSSxmXs7FRCqvW
 PGu6AO6UAtiyR+z5c3+QHkfM+w==
X-Google-Smtp-Source: APXvYqwbRmrDo7JZCH0qYUilB3Mr/tXlyAb2uuVOlGfumRJaR5DgDIt7c6RQOFKoLbf/3fXY1Ojr7w==
X-Received: by 2002:a9d:578c:: with SMTP id q12mr6906502oth.240.1561714883269; 
 Fri, 28 Jun 2019 02:41:23 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li964-79.members.linode.com. [45.33.10.79])
 by smtp.gmail.com with ESMTPSA id m21sm568570otl.70.2019.06.28.02.41.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 28 Jun 2019 02:41:22 -0700 (PDT)
Date: Fri, 28 Jun 2019 17:41:16 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v2 2/5] coresight: etm4x: use explicit barriers on
 enable/disable
Message-ID: <20190628094116.GF32370@leoy-ThinkPad-X240s>
References: <20190627083525.37463-1-andrew.murray@arm.com>
 <20190627083525.37463-3-andrew.murray@arm.com>
 <20190628024529.GC20296@leoy-ThinkPad-X240s>
 <20190628083523.GG34530@e119886-lin.cambridge.arm.com>
 <20190628085154.GD32370@leoy-ThinkPad-X240s>
 <20190628090013.GI34530@e119886-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190628090013.GI34530@e119886-lin.cambridge.arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_024125_850010_A5B46231 
X-CRM114-Status: GOOD (  23.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
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

On Fri, Jun 28, 2019 at 10:00:14AM +0100, Andrew Murray wrote:
> On Fri, Jun 28, 2019 at 04:51:54PM +0800, Leo Yan wrote:
> > Hi Andrew,
> > 
> > On Fri, Jun 28, 2019 at 09:35:24AM +0100, Andrew Murray wrote:
> > 
> > [...]
> > 
> > > > > @@ -454,7 +458,8 @@ static void etm4_disable_hw(void *info)
> > > > >  	control &= ~0x1;
> > > > >  
> > > > >  	/* make sure everything completes before disabling */
> > > > > -	mb();
> > > > > +	/* As recommended by 7.3.77 of ARM IHI 0064D */
> > > > > +	dsb(sy);
> > > > 
> > > > Here the old code should be right, mb() is the same thing with
> > > > dsb(sy).
> > > > 
> > > > So we don't need to change at here?
> > > 
> > > Correct - on arm64 there is no difference between mb and dsb(sy) so no
> > > functional change on this hunk.
> > > 
> > > In repsonse to Suzuki's feedback on this patch, I've updated the commit
> > > message to describe why I've made this change, as follows:
> > >      
> > > "On armv8 the mb macro is defined as dsb(sy) - Given that the etm4x is
> > > only used on armv8 let's directly use dsb(sy) instead of mb(). This
> > > removes some ambiguity and makes it easier to correlate the code with
> > > the TRM."
> > > 
> > > Does that make sense?
> > 
> > On reason for preferring to use mb() rather than dsb(sy) is for
> > compatibility cross different architectures (armv7, armv8, and
> > so on ...).  Seems to me mb() is a general API and transparent for
> > architecture's difference.
> > 
> > dsb(sy) is quite dependent on specific Arm architecture, e.g. some old
> > Arm architecures might don't support dsb(sy); and we are not sure later
> > it will change for new architectures.
> 
> Yes but please note that the KConfig for this driver depends on ARM64.

Understood your point.

I am a bit suspect it's right thing to always set dependency on ARM64
for ETMv4 driver.  The reason is Armv8 CPU can also run with aarch32
mode in EL1.

If we let ETMv4 driver to support both aarch32 and aarch64, then we
will see dsb(sy) might break building for some old Arm arches.

Thanks,
Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
