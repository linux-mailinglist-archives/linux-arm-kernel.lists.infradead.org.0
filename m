Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE81CE7987
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 21:02:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sRiFso53r1NfHTdnzVADDJ4GqsmhtUv8s1PSWfUvMZ4=; b=qf90pQGZLRdC9c
	lEqW6jkTroBGEVkFyaC6BcrYxLl+fsXO30FtO56utyj7QtPuT0DuQXvcKWQdfm/nGYdm1tnMOi/Kc
	sOZ57iTcbJmxRcktdhrSuIG2kIkf0GBl8OS8+Uyd1LYT/shx7+HCbht3//ZnMveJPYD10t4ahw4ra
	+JiDe1dTR3ch4B50HhGnrqULJl4JM6UVhZ9f2irUHtl4T5QqDc80UGNfmWkQ3GMTS+y2ExQlC7T34
	eswKjhfmWDNSQNXFhfG6EYolcWdLFmay7pJPdgmEoCysIYQuQvoSGifNttnAvkxaoKGwV3weWJ8td
	4xYenG7AKJRzye7V7uJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPBDk-0005ib-6f; Mon, 28 Oct 2019 20:02:32 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPBDb-0005hb-1R
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 20:02:24 +0000
Received: by mail-pg1-x541.google.com with SMTP id p1so7657114pgi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 13:02:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ZWh1WnHpSXynBwrGzEFdFS9dRaewgmpRz4cunacZkKY=;
 b=W/LyFiWCHVPxquHdd0jTr8+JG7XYRbQxGEDNVjf8MV4mQElYTsV8ePZkxAzktIHuCv
 NQSvIoYxVf4YtZxVlcgbG/z+IhIKCnEuLmZlYT9Vhq5tLITt04WSQL1WzLGZ0B9TZWu2
 Lf8ndycAMO3pfIrn17MaeD0PAKEZxRxNtJxoCssLqgrxZ9MfW9cGBwKkjkyPFd6vhG9N
 qro3IztbZH9pfkQeB+yCFIEQ5BAjPGi7lggkQlf3X8X8+26x6Qd8tr6MIpKHcX8sR47q
 lQMM261xup6M+USOO7c9obMzf9o4WAasye5rr36DcVzyZtxVF9z4zTns+FvIoW6RSwEn
 oppA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZWh1WnHpSXynBwrGzEFdFS9dRaewgmpRz4cunacZkKY=;
 b=MGRVNleddikKR2zpOWVM3jsBsUumSmof/k8vhcHXpgMTPnSJbbvGLHz3CqO5u8VwGT
 Beqayny5ROPvodFjNsqXYwazz/mxj7x2C6fUqf896s7XzhQWsLlsDhcVkC0IQyJaaHyU
 2KQdHgWCl9pfvwM9DqKhWfD31YtglyuiSJxaAvDI2xEVOxKaL/IQHtNMgZLDROC1Vosv
 hDwDOEHVKiquK5dnyqGMibBrIN/JyLExCxTxjsHTbAyc2XHmT4AiXmPPs29zFniMpnIU
 w8yxumFm4rIkyTJ8xFOjbuHxzA2yR8bjOBgJl4j6bz/WyJc7Ga+kvuQ6wKuJj7XXjs5l
 eapw==
X-Gm-Message-State: APjAAAUoUwSE7vwnAwSRmOJgBN6dKBuaXWy1xiLbMCzdxKopz7U79naU
 +DT13AjyFGqCVnlzt87uKaTANQ==
X-Google-Smtp-Source: APXvYqwvp8vwl59NpJT1UZnwdTf8HHV5pewkT1sXqeB3J6wVvLcceNA8x/1R5lRGssfa9YY6woUpEQ==
X-Received: by 2002:a63:d0f:: with SMTP id c15mr22945597pgl.313.1572292942160; 
 Mon, 28 Oct 2019 13:02:22 -0700 (PDT)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id q23sm316379pjd.2.2019.10.28.13.02.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 13:02:21 -0700 (PDT)
Date: Mon, 28 Oct 2019 13:02:19 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: next/master boot: 257 boots: 8 failed, 237 passed with 8
 offline, 2 untried/unknown, 2 conflicts (next-20191028)
Message-ID: <20191028200219.GS571@minitux>
References: <5db7032c.1c69fb81.888b0.b521@mx.google.com>
 <20191028174857.GG5015@sirena.co.uk> <20191028184019.GR571@minitux>
 <20191028191121.GH5015@sirena.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191028191121.GH5015@sirena.co.uk>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_130223_089419_4887F731 
X-CRM114-Status: GOOD (  16.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
Cc: kernel-build-reports@lists.linaro.org, linux-arm-msm@vger.kernel.org,
 Andy Gross <agross@kernel.org>, linux-next@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 28 Oct 12:11 PDT 2019, Mark Brown wrote:

> On Mon, Oct 28, 2019 at 11:40:19AM -0700, Bjorn Andersson wrote:
> > On Mon 28 Oct 10:48 PDT 2019, Mark Brown wrote:
> > > On Mon, Oct 28, 2019 at 08:03:08AM -0700, kernelci.org bot wrote:
> 
> > > Today's -next (anf Friday's) fails to boot on db820c:
> 
> > > >     defconfig:
> > > >         gcc-8:
> > > >             apq8096-db820c: 1 failed lab
> 
> > > It looks like it deadlocks somewhere, the last things in the log are a
> > > failure to start ufshcd-qcom and then an RCU stall some time later:
> 
> > db820c has been failing intermittently for a while now, it seems that
> > booting with kpti enabled causes something to go wrong. There are
> > nothing strange in the kernel logs and ftrace seems to indicate that all
> > the CPUs are idling nicely.
> 
> Oh dear.  Adding Catalin and Will.  Is it definitely KPTI that's
> triggering stuff?  It did turn up some bugs on other systems, though
> it's a bit strange it's only manifesting in KernelCI...

I did a test recently where I booted my db820c 100 times with kpti=yes
and 100 times with kpti=no on the kernel command line, and the result
was 90% failure to reach console vs 0%. Going back and looking at the
logs for the 10% indicated that the boot CPU was fine, but I had stalls
reported on other CPUs.

In an effort to rule out driver bugs I reduced the DT to CPUs, the core
clocks, gic, timers and serial driver, and I still saw the problem.

I have not looked at this with jtag and hence do not know what secure
world is doing.

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
