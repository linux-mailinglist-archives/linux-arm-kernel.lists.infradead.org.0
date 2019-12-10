Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C2A118FA3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 19:17:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bRvrcZpwbxpXorcafBodb9OMzuhT855DCPQBCrLXO+4=; b=Ms57b41yqJNRXm
	VkL8Iv7bqjBfNI1XuRB/N6Zqm+Z71a60coreXTZrEAWd6Vpl+MzJX7XIxOHC13+ZQUQqlZT1D48KC
	of5gUW8/e1c8Su7sBgsK83G6fG9M2b48BXeNyt9aRCD0W0Lfg99MTZGhdmA5ZTIftUUgmHjfySH0l
	gYYI2YlEctBnoA1JcLBEu9LkM9g8/k+R0QdFN1bemb1A/Qcsb9KcrgH0mX/jZ8+b1Ro0XJMRI7JGv
	RjZ+LYCGbxAA7zSNAiSOJwJNgLxJxkOEtFHV86aKjWXKmc4ncD+dYE29TZF9U/zeGQJMDE6LkKi4u
	DFNGCJLWjPCbhPxIWGyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iek4o-0002rP-Fc; Tue, 10 Dec 2019 18:17:38 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iek4g-0002qt-JV
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 18:17:32 +0000
Received: by mail-pf1-x442.google.com with SMTP id y14so216565pfm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 10:17:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=xnqsR6KxRMPZn1DprBXkpQaD3O7a0GCSa9jFkA9nGgk=;
 b=tGzB/8kPxisFB1SLe4nogXiJNwsTcpnhtsQWeGCUCX7a94oYWAwsPz1bh4sv1IIA0a
 H66W++HcFvvpP65d9zmekil7amPTrVNIfjqad+Iz36hnumA+LrZ1kieJpgm1ExqhL0xF
 a2t6GgO8hiE9Rxp7zbScJSJqcb5pX7p6Bq8Kw+EIYwcVv9Se6oR+hVd/R4kaTE0gfShK
 xF37SP/FwoorrTF/zKQD5UeKzEdYK0KWDbWj0fA4zMk6nkKPR76OhQOeqB5zXjNKRC5P
 jyXF8+hileVU8sJgbKcNF5oPVJCI7wEjMEOdlEaOR0jyVRhZvIO4lCDwvob2MMQ8uDL6
 3FGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xnqsR6KxRMPZn1DprBXkpQaD3O7a0GCSa9jFkA9nGgk=;
 b=nmQVCmDl6K+aRNaHG0Qqh1QxvYhM4ESgqjwoFQZ8C+8Wh0/SzY9YJjguQwybvX9+XH
 6/CiN0JLJNDwygHXJDMiWgi5uYIjmQFrCq71iniEKv2Xq/olcFO8bK8sBrhiksrP34IV
 LpqvHNaehd1J5HYh4yJLTfhjkgIdPjgnOfmPE1hQPJHjzrdtqsE9KmPZFQZa88wPcsDB
 7ac/2mX7PfRm712kzn8mk/EIUTiXAqC/YL9A96l1iomk6CiQu/f1jfiO09lWfnDxnoR2
 I7YWZQI/bHk1f7G/ZIZaQ8GnPNlMU1yEUb6qf5bcgGz2RpAP+CbHgFS8GGQFUoe+K9IV
 meoA==
X-Gm-Message-State: APjAAAW4IEGzQB3qQfGeF8CT8FEl1N01aXw7KPisIQN2aN/SlY1cQi03
 Mcy4PZhmk4QgWfMiqGMvOd2USQ==
X-Google-Smtp-Source: APXvYqyJsFcqNjXcVcRsCHF1sgL46PHL0nJ7NBvxo6MpRW+/Q+hq7cdNhP7wCmyiABz2y2xhrm9JPw==
X-Received: by 2002:aa7:8687:: with SMTP id d7mr36544154pfo.164.1576001848883; 
 Tue, 10 Dec 2019 10:17:28 -0800 (PST)
Received: from yoga (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id u190sm4272842pfb.60.2019.12.10.10.17.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 10:17:28 -0800 (PST)
Date: Tue, 10 Dec 2019 10:17:25 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Amit Kucheria <amit.kucheria@verdurent.com>
Subject: Re: [GIT PULL] Qualcomm ARM64 DT updates for 5.5
Message-ID: <20191210181725.GD314059@yoga>
References: <1573068840-13098-1-git-send-email-agross@kernel.org>
 <1573068840-13098-2-git-send-email-agross@kernel.org>
 <CAHLCerN7buq82RmmFkoSi_n8g8sSe9VO2utcXuEGM3xG3HcRTg@mail.gmail.com>
 <20191108031854.GA12993@hector.lan>
 <20191210105737.GB228968@gerhold.net>
 <CAHLCerPs8+Fp1N-x7cQ2ETQ8d+fHN5b08V-jVFyFdQLYDndoBA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHLCerPs8+Fp1N-x7cQ2ETQ8d+fHN5b08V-jVFyFdQLYDndoBA@mail.gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_101730_670901_ACD32812 
X-CRM114-Status: GOOD (  20.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Andy Gross <agross@kernel.org>, lakml <linux-arm-kernel@lists.infradead.org>,
 Stephan Gerhold <stephan@gerhold.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 10 Dec 09:36 PST 2019, Amit Kucheria wrote:

> On Tue, Dec 10, 2019 at 4:27 PM Stephan Gerhold <stephan@gerhold.net> wrote:
> >
> > On Thu, Nov 07, 2019 at 09:18:54PM -0600, Andy Gross wrote:
> > > On Thu, Nov 07, 2019 at 07:36:03PM +0530, Amit Kucheria wrote:
> > > > (Removing arm-soc)
> > > >
> > > > Hi Andy,
> > > >
> > > > On Thu, Nov 7, 2019 at 1:04 AM Andy Gross <agross@kernel.org> wrote:
> > > > >
> > > > > Arnd, Olof, and Kevin,
> > > > >
> > > > > I have one slight faux paux in this pull request.  A drivers: soc change got
> > > > > into my arm64 DTS branch and while it is innocuous, it wasn't easy to fix
> > > > > without messing up a lot of people who depend on the SHAs not changing.  So I'm
> > > > > sorry for this inclusion.  I'll scrub this better next time.
> > > > >
> > > > > Andy
> > > >
> > > > > ----------------------------------------------------------------
> > > > > Amit Kucheria (5):
> > > > >       arm64: dts: qcs404: thermal: Add interrupt support
> > > > >       arm64: dts: msm8998: thermal: Add interrupt support
> > > > >       arm64: dts: msm8996: thermal: Add interrupt support
> > > > >       arm64: dts: sdm845: thermal: Add interrupt support
> > > > >       arm64: dts: msm8916: thermal: Fixup HW ids for cpu sensors
> > > >
> > > > One of my patches to add interrupt support to msm8916 tsens is missing
> > > > here. Specifically this one:
> > > > https://patchwork.kernel.org/patch/11201853/
> > > >
> > > > Will there be a second PR this cycle?
> > >
> > > I can work up another and throw it on top.
> > >
> >
> > FYI, the patch seems to be still missing in 5.5-rc1.
> > tsens now fails to probe on MSM8916 with:
> >
> >   qcom-tsens 4a9000.thermal-sensor: IRQ uplow not found
> >
> > Can you queue up the patch as fix for 5.5?
> 
> Indeed. Andy/Bjorn, let me know if you need anything from me to get
> this into -rc2.
> 

I'm pulling in some fixes for a rc-pull, so I could add it there.

But why are we breaking backwards compatibility with existing dtbs to
add a new (optional) feature? Shouldn't there be a rc-fix in the driver
for this regression?

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
