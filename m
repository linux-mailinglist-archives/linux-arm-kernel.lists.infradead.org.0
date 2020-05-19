Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC031D947C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 12:37:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T2e1w6Tmohq+xmj2T9mFEdPUMT76nwx7SbqGzv4AoJQ=; b=ood4qoEO48yFsR
	CxcY6sAaI2Ckiyn0X545m+sWPucaYncJkBqGVmo1JJVS1PjHBOhUovnu9DRiTewWg2nrnEIwPS0so
	gFJTGyfLrA0Lyl2Z6Bv86SAL+qwx6dxtZr/lPxDfjRtNI1i+rzpBvtvR+dgQD4C2hg13IWiYH5zyj
	Z7tKBRXHBhtyTDJdY7X9B/MHwdL8EYTI1BunT4JC0mgDEfcvoYENBn/VevEOQrXJaE6vXGVWAibe+
	ngHadXui91PsdT0LZi25sqj7YdLUUNJEJPxcWIXIbdI+SPuaUmF/MQunzTAIdTEJvHT3scQTyWP8U
	ZMwVuwObmpgU7OW2U5dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jazd3-0006nn-Vi; Tue, 19 May 2020 10:37:46 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jazcn-0006jA-3c
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 10:37:31 +0000
Received: by mail-wm1-x341.google.com with SMTP id u188so2938933wmu.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 03:37:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=nJqGHCLYRoZ39Y3LPONsDokd1MQBpWuhJuodhCCoySM=;
 b=YMdHV7z6BExIROOjIpfvHwSUNwtHyJyHxewUmgQ58pFt2DCJ+Uq3LE6nN5u01qIsPB
 rTnMHvOJ4foaIZQznr6Ev5x+fowQs8Joohvex2NOX8e3CLiyut/6ZWwYdeVM/Lpn+uJg
 PuZjzzrw1kE6Klbf6tp/7LgGBpx+RxVYgAqJ89o4oQgPzP3JodvHnPd1rK6Uid0Y1CS1
 BSRg+2wxS7OWx3hF4QjrYSYrrMdaEWoA68ZfdaWbMNbSyMgwx4PDx1Ism+F2DODBpig5
 zZiibs5LM8fN32E7W8maiyUmM7xI44L6S6gQCO8h07GklbCW+XXxkrZ7CLC5GYdp0UmA
 19Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=nJqGHCLYRoZ39Y3LPONsDokd1MQBpWuhJuodhCCoySM=;
 b=jiVZ4bleM7Y/x5piBSwhDGzJUDahSm/xrICdrbdJn/cpSQvEWjJQdCSDfS9uwf4Mx5
 84G40qR/izjRPus+kmW+vaW39Phm+B3v7AH3V9g+BTpVsLwHRdYvVB9ikXpEs3UyoV6/
 hTMD66C9TWNUVxHA1VwdlnoFZNv74ky7vR58FgkSCIHXdCAGxC0iavgVpC5BWDuo0hqE
 a2GSJSzT05RXlEMg8Ejhvj3J96C2SrJDU9tm9N7MA4kwwuyH8+CvUpCYa9QG/uJFbTss
 0iYoZyb1Fy0tuU/Wl9u6CDndS13lPG+Z+jlWwdZninqlEbzMOvSSYpK2bpMgc2aReDrs
 mv1w==
X-Gm-Message-State: AOAM531621xyXGV+wqk2DvHN+R8GRI1soJ4oieME/GzAlQtsV5bfq+z2
 uLdOrxR8EqnEvFDHdt3FjJdp8Q==
X-Google-Smtp-Source: ABdhPJxj5fMEywwcRHjfOT2c3qwvdLgOyHayzX2tbuWzyAy4O/+p5lMYXda/U5svbychHMOWNGk9Ww==
X-Received: by 2002:a05:600c:1403:: with SMTP id
 g3mr4962732wmi.51.1589884647744; 
 Tue, 19 May 2020 03:37:27 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id x24sm21634435wrd.51.2020.05.19.03.37.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2020 03:37:27 -0700 (PDT)
Date: Tue, 19 May 2020 11:37:24 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v4 00/12] kgdb: Support late serial drivers; enable early
 debug w/ boot consoles
Message-ID: <20200519103724.eyabo2n4uzms25bp@holly.lan>
References: <20200507200850.60646-1-dianders@chromium.org>
 <20200514162109.6qt5drd27hpilijh@holly.lan>
 <CAD=FV=X+t_Wg5KadZBTGHMSEXY3c-t6DZAtdaLXys31QJJpGGA@mail.gmail.com>
 <20200514163633.GA3154055@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200514163633.GA3154055@kroah.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_033729_145231_6631FA10 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
 Catalin Marinas <catalin.marinas@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, "H. Peter Anvin" <hpa@zytor.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Jonathan Corbet <corbet@lwn.net>, Will Deacon <will@kernel.org>,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 Krzysztof Kozlowski <krzk@kernel.org>, jinho lim <jordan.lim@samsung.com>,
 Ingo Molnar <mingo@redhat.com>,
 Pawan Gupta <pawan.kumar.gupta@linux.intel.com>,
 Andy Gross <agross@kernel.org>, linux-serial@vger.kernel.org,
 kgdb-bugreport@lists.sourceforge.net, Dave Martin <Dave.Martin@arm.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, Jiri Slaby <jslaby@suse.com>,
 Alexios Zavras <alexios.zavras@intel.com>, bp@alien8.de,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 Juergen Gross <jgross@suse.com>, Sumit Garg <sumit.garg@linaro.org>,
 Doug Anderson <dianders@chromium.org>, LKML <linux-kernel@vger.kernel.org>,
 James Morse <james.morse@arm.com>, "Eric W. Biederman" <ebiederm@xmission.com>,
 Jason Wessel <jason.wessel@windriver.com>,
 Andrew Morton <akpm@linux-foundation.org>, Enrico Weigelt <info@metux.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 14, 2020 at 06:36:33PM +0200, Greg Kroah-Hartman wrote:
> On Thu, May 14, 2020 at 09:34:26AM -0700, Doug Anderson wrote:
> > > (though we must keep
> > > changes to drivers/tty/serial/kgdboc alongside the kgdb changes).
> > >
> > > I can hoover them up but I'd need a solid set of acks and
> > > I don't think we've got that yet.
> > 
> > It would be nice for it to be explicit, but "get_maintainer" says that
> > Greg KH is the maintainer of serial drivers.  Git log confirms that he
> > also has been the one landing changes to these files.  Early-on he
> > provided his Reviewed-by for the series as a whole, so he's aware of
> > it and maybe would be fine w/ the serial changes landing through the
> > kgdb tree?
> > 
> > Greg: is that correct?
> 
> I have no objection for all of these to go through any other tree that
> wants to take them :)
> 
> But if you want me to take them in the serial tree, to make it easier
> for you or any other serial driver issues, I will be glad to do that,
> just send them my way.  It's your call.

Thanks. I've taken then via my tree.


Daniel.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
