Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B3411A470
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 07:26:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=36iGg1S1qeCdvh50bOWEdeZ0NKJsb6zcsjNkopf1JoM=; b=NQENN3XDGfk+Qx
	+h7nyb0+kaCPE7dymTX8UNeOG01W/fCOFFAxJtePXRu3h63YfbKUFiVG7AJmuFrHt9L3Z52ZQAhh5
	0Cy+DPaCcVvFP3fPmUCIHqnaJCl0iWm9yLC4aq+C0JcnDJZjN42wtxa94dxxcjN3ofRZ3n+oppqJ9
	35OrVIfxDoL8jjUR0+vLOxPMRc+DqsEUNO3PmlEdgytAPwBNS9GKAjz1b6AnbVQWW/7239sosoAND
	lFd+VGDMEP65x6JK0de/nB1Lo0JTLHALQGjhndKTkkFOfpzYP5Esmr7P69tyEcMuVyxv3vnzT+K8J
	1vhcfDMkL02WeDvN9sog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ievRs-0004YE-T7; Wed, 11 Dec 2019 06:26:12 +0000
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ievRk-0004Xg-Ot
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 06:26:06 +0000
Received: by mail-pg1-x52e.google.com with SMTP id a33so10035093pgm.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 22:26:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=9ywxSAmFMDcklVHHbtnm3b9SusYrKnOR9PFiBt3VFqw=;
 b=PjYdx8W7h5dMRJWwmaGpnifTVEzIjyjKznHVgfzdCkpG7ad8JRxMPSBdI76nI48vYN
 oI16Sq7/04f+sCdA5MSQAkbxAROdEiPA7MivwAOXSkmXRnU9y55IUJ8gGOgsnkN9026x
 eDBEZwKouMLoc02jWM1vzxmY1Yz+Nl84jcRuZXIWPkmCK6ZzUPWN3ohFIStsNwl3EP/b
 SRDi67PA800VtcZzBuwFP6HlfeH9LD5TQq9u4EfN+cs492ZVWN4L/5X+HTZEPTK20kaS
 EC66+rG3ewWy29gn7e6ZiX9nL67A1dzf2Vi8bMkxBcyJvh7BmduJKtcKKL2apuJM8DoQ
 hjyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9ywxSAmFMDcklVHHbtnm3b9SusYrKnOR9PFiBt3VFqw=;
 b=enrIwuR7HJUpk4O8Lf4ID8z+1TNqBEgRoMBKUb2W6E5VSxGpO9BQoR/rb5ohAv1VW4
 yv9E00HmmkiEVVibfHCpU630pIRxlSvH7+YkL/M+QCYJ4B39hTayjsizYCytdUxOfflx
 QK86b3ITfFtgsVO6rubnWYA3A3Vz/UxJUEvJG6kWo6CNFuek6lRytcP/5YBsLfisRViZ
 LvHI/tH7skZV3/8GviuTYF8cJT+1wxYaLoxJozCJDZeEtVdtRnBFwkDsRnd03/b8JhbI
 Y1UKgFcs171fRGhy/fqRyrZLFY1JmbxvIQOZPfiGFx8cAhVdgt6q1PF+8yGK2elMUnVr
 7F/Q==
X-Gm-Message-State: APjAAAVoLRRvs1N8n5XenVByGRTT7msnRF56Q0tJYKSNw+Nu0Et2VHq5
 IEe5kXIbDYDmIj0uJapNDe8vuQ==
X-Google-Smtp-Source: APXvYqyxrTqXxdxMhhec081Ss6ZKYYEGPxARHygEswvHi3T7DdSKKKe4QvDqVMIAePufyWzS+96zIA==
X-Received: by 2002:a63:3e03:: with SMTP id l3mr2358660pga.118.1576045563559; 
 Tue, 10 Dec 2019 22:26:03 -0800 (PST)
Received: from yoga (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id 100sm1084840pjo.17.2019.12.10.22.26.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 22:26:02 -0800 (PST)
Date: Tue, 10 Dec 2019 22:26:00 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Olof Johansson <olof@lixom.net>
Subject: Re: [GIT PULL] Qualcomm ARM64 DT updates for 5.5
Message-ID: <20191211062600.GK314059@yoga>
References: <1573068840-13098-1-git-send-email-agross@kernel.org>
 <1573068840-13098-2-git-send-email-agross@kernel.org>
 <CAHLCerN7buq82RmmFkoSi_n8g8sSe9VO2utcXuEGM3xG3HcRTg@mail.gmail.com>
 <20191108031854.GA12993@hector.lan>
 <20191210105737.GB228968@gerhold.net>
 <CAHLCerPs8+Fp1N-x7cQ2ETQ8d+fHN5b08V-jVFyFdQLYDndoBA@mail.gmail.com>
 <20191210181725.GD314059@yoga>
 <CAOesGMiiMG8kND=ZGv93t525B4L3ogA7py+3fdw2F6XaZspw_w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOesGMiiMG8kND=ZGv93t525B4L3ogA7py+3fdw2F6XaZspw_w@mail.gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_222605_016559_3735B9DA 
X-CRM114-Status: GOOD (  23.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52e listed in]
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
 Amit Kucheria <amit.kucheria@verdurent.com>, Andy Gross <agross@kernel.org>,
 lakml <linux-arm-kernel@lists.infradead.org>,
 Stephan Gerhold <stephan@gerhold.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 10 Dec 13:00 PST 2019, Olof Johansson wrote:

> On Tue, Dec 10, 2019 at 10:17 AM Bjorn Andersson
> <bjorn.andersson@linaro.org> wrote:
> >
> > On Tue 10 Dec 09:36 PST 2019, Amit Kucheria wrote:
> >
> > > On Tue, Dec 10, 2019 at 4:27 PM Stephan Gerhold <stephan@gerhold.net> wrote:
> > > >
> > > > On Thu, Nov 07, 2019 at 09:18:54PM -0600, Andy Gross wrote:
> > > > > On Thu, Nov 07, 2019 at 07:36:03PM +0530, Amit Kucheria wrote:
> > > > > > (Removing arm-soc)
> > > > > >
> > > > > > Hi Andy,
> > > > > >
> > > > > > On Thu, Nov 7, 2019 at 1:04 AM Andy Gross <agross@kernel.org> wrote:
> > > > > > >
> > > > > > > Arnd, Olof, and Kevin,
> > > > > > >
> > > > > > > I have one slight faux paux in this pull request.  A drivers: soc change got
> > > > > > > into my arm64 DTS branch and while it is innocuous, it wasn't easy to fix
> > > > > > > without messing up a lot of people who depend on the SHAs not changing.  So I'm
> > > > > > > sorry for this inclusion.  I'll scrub this better next time.
> > > > > > >
> > > > > > > Andy
> > > > > >
> > > > > > > ----------------------------------------------------------------
> > > > > > > Amit Kucheria (5):
> > > > > > >       arm64: dts: qcs404: thermal: Add interrupt support
> > > > > > >       arm64: dts: msm8998: thermal: Add interrupt support
> > > > > > >       arm64: dts: msm8996: thermal: Add interrupt support
> > > > > > >       arm64: dts: sdm845: thermal: Add interrupt support
> > > > > > >       arm64: dts: msm8916: thermal: Fixup HW ids for cpu sensors
> > > > > >
> > > > > > One of my patches to add interrupt support to msm8916 tsens is missing
> > > > > > here. Specifically this one:
> > > > > > https://patchwork.kernel.org/patch/11201853/
> > > > > >
> > > > > > Will there be a second PR this cycle?
> > > > >
> > > > > I can work up another and throw it on top.
> > > > >
> > > >
> > > > FYI, the patch seems to be still missing in 5.5-rc1.
> > > > tsens now fails to probe on MSM8916 with:
> > > >
> > > >   qcom-tsens 4a9000.thermal-sensor: IRQ uplow not found
> > > >
> > > > Can you queue up the patch as fix for 5.5?
> > >
> > > Indeed. Andy/Bjorn, let me know if you need anything from me to get
> > > this into -rc2.
> > >
> >
> > I'm pulling in some fixes for a rc-pull, so I could add it there.
> >
> > But why are we breaking backwards compatibility with existing dtbs to
> > add a new (optional) feature? Shouldn't there be a rc-fix in the driver
> > for this regression?
> 
> 100% agreed.
> 
> Driver shouldn't require the DT update to continue to function. It
> needs to fill in the previous behavior as default.
> 
> As a matter of fact, based on that I don't want to see that DT patch
> as a fix, please queue it up for 5.6 instead.
> 

I've picked the patch for 5.6

Thanks,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
