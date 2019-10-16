Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC393D95FE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 17:52:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YmeG+N1w6LC4AAZcOqhdkS6VFnPhoRft2WdmGx46inw=; b=k1z7Wrbn0Rp7PV
	FdEzobGjJIKCe1v4MTV/vXQYQaaHEWpZBpQH1DOu+eEEy12lSBrfV3W5SmZHmAXjXbNPz0z+CV1Ki
	5UXlwVgQyRlUq04pQtnXq6nNvaySurkDx+85dcgbRHk8X7VtntU7LhNNqxpprG+v9IKQH/j7TDCNr
	dx9s7xUglUmIUG9ihm0Ljo12OZeoF1PaWFjQ5Tw33FOijfp21zkBkT/5P3CBxZuQe42zxpaklkUS6
	gSUdr1qfrpLwVVpJ8dP/ERdHZcPfxm7YR5qXvSVBGhylPn1v+6efIvndFOXhCh3a4A6x3NJSwKsPk
	s36VpUSPEmaG6CRnx4Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKlap-0000Bl-Nj; Wed, 16 Oct 2019 15:52:07 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKlag-0000BJ-69
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 15:51:59 +0000
Received: by mail-ot1-x343.google.com with SMTP id o44so20572630ota.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 08:51:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/sC5t5Telanb+Whfg1izOfbj9GvpmoEXVoH0REuP7x8=;
 b=jv5WRXVOVyiic7g3B6hzLWwoGmFzH9DJdzlqxWKAWzstDRy++d1ruHya3dqcZfm8Hg
 9Rudmq17u3E2k67xCXAr5jpMRggU2FxRcFoykd59F+54u5feq/Skr8jY5/WM5aXNzhR1
 Gu3x6o7GyLyWxzU6UmHflZ+/keES8JPUxcPr+81tTJ7H0Glo8DLSgyKYhVYN1PthKAtP
 iDbCnY6amhxSMndZEidLBMj4YuHRZt7cX9keNKkICxWeVvcOoHgpMqR+9uAeAZph0Qsu
 pjYqXJKQUB2zoAUbExrG0HaOJvkvhwaUOOfM40SIKJiMjBGKfaktJXyppAQXCK9iBeuf
 e1wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/sC5t5Telanb+Whfg1izOfbj9GvpmoEXVoH0REuP7x8=;
 b=D/BsmPHk54biG4nI/7sByiSLhrxAza/JXVvspHAphirVlT0c/vhd8u/kHRIvDIDD19
 e1P9YkLTKGUr2bHGhZiFGutka+k8lGF35KBX3cVEkjEIjVNg1JsStRZxNUhIFBdJf4dt
 JY6+Kex3G255f76cc9FbunwBWONh9FihsaUMXBYUQDGIVhE3ytUvUqt3VS3iYGr88jQm
 vyNHbXYQvvcSiP1Yv4p+Xb22aEG8a1PY841hNSXoAhlbMqL+WWS8s7abmHyCZxC4yBtb
 gut2G3ZZA/y0uXvlXjli41mbnuvIRMNgQYlLlOfWrjL+oNfGf7m3XNgX5eAL/TsHgQ7p
 7ADA==
X-Gm-Message-State: APjAAAUraRUd5DbrzXmn4X/4/Dqb2PnqRkCZBFSpJ29GnX5Stes9VK8S
 kqTdKOY/VmG9Z6s6SHb9eiQ=
X-Google-Smtp-Source: APXvYqxYktwrr28slQB53InWNZbt9qZC1OePYPQ0XWGAnQ9+4+SfHMLN5d01QoN/5tuE1e+21JABtg==
X-Received: by 2002:a05:6830:119a:: with SMTP id
 u26mr8734058otq.166.1571241116924; 
 Wed, 16 Oct 2019 08:51:56 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id y30sm7512305oix.36.2019.10.16.08.51.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 16 Oct 2019 08:51:56 -0700 (PDT)
Date: Wed, 16 Oct 2019 08:51:54 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH -next v3] arm64: mm: Fix unused variable warning in
 zone_sizes_init
Message-ID: <20191016155154.GA55959@ubuntu-m2-xlarge-x86>
References: <20191016031107.30045-1-natechancellor@gmail.com>
 <20191016144713.23792-1-natechancellor@gmail.com>
 <20191016150846.GO49619@arrakis.emea.arm.com>
 <83c223c14c55aff1c8c9b30b0760c7e13c928209.camel@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <83c223c14c55aff1c8c9b30b0760c7e13c928209.camel@suse.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_085158_233689_50077987 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 05:09:30PM +0200, Nicolas Saenz Julienne wrote:
> On Wed, 2019-10-16 at 16:08 +0100, Catalin Marinas wrote:
> > On Wed, Oct 16, 2019 at 07:47:14AM -0700, Nathan Chancellor wrote:
> > > When building arm64 allnoconfig, CONFIG_ZONE_DMA and CONFIG_ZONE_DMA32
> > > get disabled so there is a warning about max_dma being unused.
> > > 
> > > ../arch/arm64/mm/init.c:215:16: warning: unused variable 'max_dma'
> > > [-Wunused-variable]
> > >         unsigned long max_dma = min;
> > >                       ^
> > > 1 warning generated.
> > > 
> > > Add __maybe_unused to make this clear to the compiler.
> > > 
> > > Fixes: 1a8e1cef7603 ("arm64: use both ZONE_DMA and ZONE_DMA32")
> > > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > 
> > Thanks. Queued on top of Nicolas' patches for 5.5. I also added Nicolas'
> > reviewed-by from v2 as I suspect it still stands.
> 
> Yes, thanks!
> 

Thank you both for reviewing the patch and picking it up!

Cheers,
Nathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
