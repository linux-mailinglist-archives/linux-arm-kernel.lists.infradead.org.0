Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E561D9473
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 12:37:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XfTYOqtDwafXyJ4OAaArTrLCgdpD7dywwHn/DcGMhX8=; b=CYNTS6pLuS1LOs
	/9oSmjDnvy0N5ehQ5TwYqYmsDH7hf7EWe0YPONz9sHYOUq+2ml//8PpuxYGRgJb7UMKNJ07HNlFTI
	9nPCwQXlLNnirK6R+34WYYbmmegaIFNgKFJGZ37ViiJqBFAVN3nKGv+THCzB8mCObSBp/6Javsqnz
	BF+KKbJYas1sud0uaiananycVTSqTJ19sG6dJbSp2IbPzJ09DxuA/m2spAJ3iZ62hxdY1+N6GfJ/7
	NHR1fKi9LNVjk9HC+8SNECEOXbsVL90PbuzuMv1aULqBSFQStyrMr53tKGR4odqgtp1sxQzd9OGKO
	oUtlQu6Y5I5jdLh1nPCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jazcW-0006UA-FJ; Tue, 19 May 2020 10:37:12 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jazcM-0006Ta-Rs
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 10:37:04 +0000
Received: by mail-wr1-x443.google.com with SMTP id j5so15353719wrq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 03:37:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=i9H4OZ10YdHZdhc7/rIrHtv9xR5CbfD8gzRd+3adHCg=;
 b=XWeV8b7S4EVjZhJ79Ag3v5DEaPyKNzfmliI3RiiRpgwEJDw+Ncgl4tXOIDiPBN0ehm
 YWZkEFKgex9Pc/rKjydVwahDLrwR8y6N2K4ijHy3Amx1ZdXZ2xBQgWhfRQABcJPNiNen
 rvvr6M54m9ca8L0/CiltsnZCDTQWxVvjmvFJbUT1tWQqdCluvrPTvoiST9aq4ly+lBdO
 9EODHL0fC3KzWE7uHm51t4l8qTtDotOQL7iYLRSY1R7UA8NmexCH9vCLfXBsdeMPYMvj
 3T+qCgXK3atV0sLi8FiY4uh4nBrb+rXL92/CWmN5vPGLifpAvQMdAg7EhyCp2P4iaesc
 Ek2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=i9H4OZ10YdHZdhc7/rIrHtv9xR5CbfD8gzRd+3adHCg=;
 b=YzGjkQVcjxVHjwUs5Ea0w4hdD14ivWGmBR0Na5TMrFNGIezKz/iKu8oL935g9sx0c8
 drjVotS3phxugyjYujDOv4TRh5iAdrTtK6gCnur9zMijBJZjo1qgaLICbPr11GN7Uf8/
 R+0YARi9RopnfoHij9wi34+5jkD7XnPQmc/XBqVDSgucsZnLlR90A2Neje0eT6W6O+PD
 HAl0wU1E2c24/HqgdF3W+qpDo/QOPHfBd2YVMmKulpb9PWkAd9h6PlyQ+Q07tyXiCmMi
 MTIoZ5ofrCib7/NT9QAIt3gll6DdPDQQ7qQ2KiNILGv0vd5DEuHRWahwf5vZmO981Yyq
 YzyQ==
X-Gm-Message-State: AOAM532EwLW118dxr1pWYeyotMYzz2EpxNT+wlyEKpPyTa6/cYa4M/Qz
 nIAoFGMzmROmzOx1fZeX5lWe9Q==
X-Google-Smtp-Source: ABdhPJzJiTwMyvVTnOctSw0HxZdkufYRwI8zQqI86F0CX4btXGOdMQMwWIBlYi+xtP8+zww/fzO92g==
X-Received: by 2002:a5d:4dc9:: with SMTP id f9mr24784938wru.407.1589884621033; 
 Tue, 19 May 2020 03:37:01 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id l18sm3275536wmj.22.2020.05.19.03.36.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2020 03:37:00 -0700 (PDT)
Date: Tue, 19 May 2020 11:36:58 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH v4 00/12] kgdb: Support late serial drivers; enable early
 debug w/ boot consoles
Message-ID: <20200519103658.eha5zbmun4i56oml@holly.lan>
References: <20200507200850.60646-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507200850.60646-1-dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_033702_902762_C52C82B0 
X-CRM114-Status: GOOD (  15.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-doc@vger.kernel.org,
 catalin.marinas@arm.com, bjorn.andersson@linaro.org, hpa@zytor.com,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, will@kernel.org,
 corbet@lwn.net, frowand.list@gmail.com, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, Krzysztof Kozlowski <krzk@kernel.org>,
 jinho lim <jordan.lim@samsung.com>, agross@kernel.org,
 Pawan Gupta <pawan.kumar.gupta@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-serial@vger.kernel.org,
 kgdb-bugreport@lists.sourceforge.net, Dave Martin <Dave.Martin@arm.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, linux-arm-msm@vger.kernel.org,
 jslaby@suse.com, Alexios Zavras <alexios.zavras@intel.com>, bp@alien8.de,
 tglx@linutronix.de, mingo@redhat.com, Allison Randal <allison@lohutok.net>,
 Juergen Gross <jgross@suse.com>, sumit.garg@linaro.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, "Eric W. Biederman" <ebiederm@xmission.com>,
 jason.wessel@windriver.com, Andrew Morton <akpm@linux-foundation.org>,
 Enrico Weigelt <info@metux.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 01:08:38PM -0700, Douglas Anderson wrote:
> This whole pile of patches was motivated by me trying to get kgdb to
> work properly on a platform where my serial driver ended up being hit
> by the -EPROBE_DEFER virus (it wasn't practicing social distancing
> from other drivers).  Specifically my serial driver's parent device
> depended on a resource that wasn't available when its probe was first
> called.  It returned -EPROBE_DEFER which meant that when "kgdboc"
> tried to run its setup the serial driver wasn't there.  Unfortunately
> "kgdboc" never tried again, so that meant that kgdb was disabled until
> I manually enalbed it via sysfs.
> 
> <snip>
> 
> This series (and my comments / documentation / commit messages) are
> now long enough that my eyes glaze over when I try to read it all over
> to double-check.  I've nontheless tried to double-check it, but I'm
> pretty sure I did something stupid.  Thank you ahead of time for
> pointing it out to me so I can fix it in v5.  If somehow I managed to
> not do anything stupid (really?) then thank you for double-checking me
> anyway.

Applied (minus the arm64 specific stuff), should be in the next linux-next.


Daniel.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
