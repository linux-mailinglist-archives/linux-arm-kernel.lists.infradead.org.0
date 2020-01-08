Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34A93135013
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 00:44:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6JAry3qEANgt1Wa+yXfMoiCtw6vCL51Jvu5M+tbkoB8=; b=c/eLG+bXKuMEt7
	3maKGAR2FTCzDEiSrnwRh1m1scvhe62gjNmGqCb8LWGzUzEAULhrF0i5WeLLCLeTPU7TvqpRDkhp8
	mnT0J7YG1nFkkIax3Ccs19mjebBBq4BlLiV46i8Szj3L4WgUqlzMG3YKefErumUAccFqbogIfLVmQ
	H1iY3UktxQuisBXV+QcqCWcJA1vjEzrQvKIRm5cm3nRD143QHDvAImiecCT3sugcmDJJymizgZ+Em
	d39sWokMowj6JX1OrKxEM5fvCc0h14vQ80w+fRa1+W5Efva7grKyFZuOQRBQipI1KhDTZjCqGDXAT
	kIH4Ln8HEASseX7MH7jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipKzq-0005JL-1K; Wed, 08 Jan 2020 23:44:18 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipKzj-0005Io-Oc
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 23:44:13 +0000
Received: by mail-lj1-x243.google.com with SMTP id y6so5236641lji.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 15:44:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=eI6iNLQhWDXGqNquTGe31eFOXNqqPHZNYb8TXGjlONU=;
 b=Dwcwsf78XGO26u3wmaWKl2UyNG5AobMooKaFwkFb0YniWuQ6+jO6IPByQsXQ2ucOBe
 WxRS0PAnQHTkCLx4R7SZfKk2/Qvix2xYYVhfu2kt34m9rQMy3eFaxjsxY19jK3zoL3QU
 Mu6kFNNh8NwDgnsKREO/V7quxv0l7+kEs+IT53qDVZyDCjL3ZM6N3msfTTyBxmrAz6H8
 1p2TRmUnlh49v8VQgYOmZjfj3t4K27ztPtTKevf4n6YUMnPD91FWd4Md9v4xRRqja67X
 UeSbU779KNEyGCNi1fzlfCKykUqQa0MWAC25FmAxmswoQ7TyHqhyDjwOgj+mgdSOMrY2
 VClw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=eI6iNLQhWDXGqNquTGe31eFOXNqqPHZNYb8TXGjlONU=;
 b=BAI+yy0/zjpHagGGTNunkReRedmg7c3VE86Opop1CwuO8zTXVzzmGD3GkC1c40mEhJ
 W2IAK3inFrfYi8zlWA6y/LGzLCstZQ+BxkAMyvyxbb1IrirK2sCUxb3eXls6ZeVNfWRP
 QXg0c/E1zUnQJM9/QgsEyFqQGNWGYRmmFtArvE6kpi0DHX4cX7bmGCe/Xj8V2bZu86Vf
 OfzT7qfO/LVDRxKM65kp51TEx/yf3Wz2iKF7thPNSwboKpPPR5MMb4ydstAb6BZTCByH
 0vnUaHw0k5970txVfXIxHMYl6zRLU/i5bT4jTtALgF+aVfKLosGEYAfMX3/pcUmOvV5D
 qhtw==
X-Gm-Message-State: APjAAAWJTDubXs7G6J0HXSfixLuH36jkCyeA9rRC0HzeZPkwse8edSSv
 9TLlRfL4F3CXJJxChJ0sx33odQ==
X-Google-Smtp-Source: APXvYqxSjCINOfjcSq/Opf15btDPbuxHhfhtkrIWniTi7v1O+ndmQtfv1EYW2gZPaJR8spbk++0hWQ==
X-Received: by 2002:a2e:9843:: with SMTP id e3mr4490107ljj.45.1578527049321;
 Wed, 08 Jan 2020 15:44:09 -0800 (PST)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id n30sm2409755lfi.54.2020.01.08.15.44.07
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 08 Jan 2020 15:44:08 -0800 (PST)
Date: Wed, 8 Jan 2020 10:29:40 -0800
From: Olof Johansson <olof@lixom.net>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [GIT PULL] cpuidle/psci updates for v5.6
Message-ID: <20200108182940.ur6ujed7vz5xyl2t@localhost>
References: <20200102160820.3572-1-ulf.hansson@linaro.org>
 <20200106172608.63qhvwr5b7jsmxmg@localhost>
 <CAPDyKFq-ueSK2xAOBtec_N95sBVf-Vcm_-xgAhxQUuwAjUzbPw@mail.gmail.com>
 <20200107193844.GE716784@yoga>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200107193844.GE716784@yoga>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_154411_939169_A8FE4189 
X-CRM114-Status: GOOD (  22.22  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 1.1 DATE_IN_PAST_03_06     Date: is 3 to 6 hours before Received: date
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Kevin Hilman <khilman@kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Andy Gross <agross@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, soc@kernel.org, arm-soc <arm@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 07, 2020 at 11:38:44AM -0800, Bjorn Andersson wrote:
> On Tue 07 Jan 11:28 PST 2020, Ulf Hansson wrote:
> 
> > On Mon, 6 Jan 2020 at 18:31, Olof Johansson <olof@lixom.net> wrote:
> > >
> > > Hi,
> > >
> > > On Thu, Jan 02, 2020 at 05:08:20PM +0100, Ulf Hansson wrote:
> > > > Hi SoC maintainers,
> > > >
> > > > Here's a PR with updates for v5.6 for cpuidle/psci for ARM/ARM64.
> > > >
> > > > The changes are somewhat sprinkled over a couple of different directories and
> > > > there is also dts update for MSM8916. The main changes are in drivers/cpuidle/,
> > > > which have been acked-by Rafael [1] and Sudeep.
> > > >
> > > > If you have any further questions, please just tell.
> > >
> > > What was the reason to bring in a dts change in this branch?
> > 
> > Convenience. But I am not usually sending these PR, so feel free to
> > tell me to change.
> > 
> 
> The dts files are typically moving a lot, so to reduce the risk of
> conflicts it's generally better if we take them through the qcom tree.
> 
> > > Bindings should be
> > > stable such that old DT contents still works even if drivers are updated to
> > > support newer attributes, etc.
> > 
> > They already are. No worries!
> > 
> > If you want to pick everything else but the DTS patch, that's fine by me.
> > 
> 
> Generally, yes.
> 
> > Do you want me to send a new PR?
> > 
> 
> But I'm happy with the dts patch and afaict there's nothing that this
> will conflict with. So you have my retroactive ack on the patch and
> lets stick with the current PR.

As long as there's no anticipated changes in DTS that's OK (which is
why it's good to at least seek the ack from Bjorn in this case).

There's one more issue with this pull request -- it's based on
5.5-rc4. We normally don't move to later -rcs for the base once things
land (i.e. we're still at -rc2), since it just causes churn.

I'll merge this now anyway, but in the future if you're unsure what to
use as a base for your topic branches, look at our master branch to see
where it's at.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
