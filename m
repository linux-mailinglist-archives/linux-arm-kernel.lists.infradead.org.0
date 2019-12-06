Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C755311565E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 18:24:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p2qT/KakD+DkkKTcTKB/D1RZMTWRGYq0VmuUfMJ+BMI=; b=F0t3o/m9P8WANv
	Wfa1CEVD1nGXUf66FW2rPCjx+wWaoVWlI749ufcIJ8FupNL5woYszR2fajCL9srinqbTBJ8Nu6FzV
	ur5bkK6YEG6iMfFlm3sEFuftMpiKvQX1oMRu3rBm5/Pn9UwpUTq83xex6O0Qr8uxyY+Kmb6eE/mOg
	1iFyUiKgPBY8CNsSG1fFUrHIRuBLl72yAARil/YVirWVt6rLZmBKeAYm6TKQqrJ3XF85VjqHb8SO3
	FO8pmM+94tqAULX4OQqxEjpdiYbWhbvniwL79pYmFjriL6eoRfH/vZ3SVNCfXnZbSLhv4emkFRaNF
	h6Yhq0N9KhQCNmTbKVxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idHLP-0005zI-5E; Fri, 06 Dec 2019 17:24:43 +0000
Received: from mail-vk1-xa44.google.com ([2607:f8b0:4864:20::a44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idHLH-0005yx-Tm
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 17:24:37 +0000
Received: by mail-vk1-xa44.google.com with SMTP id p191so2498114vkf.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Dec 2019 09:24:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=szPaD/KuEfS4Yi/OsnTIq0RLmNuR3/zYG9307ITUQeg=;
 b=ddh1wJjlLEjQM1WR9kzJ8K+/crojHDHqI6LzfTwtSXaaB0WqnpjfjeL+rTTIJ1vTh0
 0Jae6HDI7C24ZaHkb/tV1C7kaD9DZHxls6a/j6WXYQeC+t+zjE1tfOp0wwSFghgBSodc
 xyFbeFRrDIyxqE+HNYYt5QHsnLyvsnay9uB4gJRUIv1QYL8Y+7xcOo+nIzibCax8Ds3q
 7uch5mBUWbqVAdw57POuKhket4lEhvr8EwETVaufPJXDErI+g0NnSL955qD4/SHt10gF
 Xe4Yt8pr3zdi7tiHoe9xerplJU9Ww0RoerlV8AqY1naYG9TAt+9JH9jFBGSE1NZpkmFL
 XjQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=szPaD/KuEfS4Yi/OsnTIq0RLmNuR3/zYG9307ITUQeg=;
 b=NgEt78hkdLlIPEEmkYI/I2O4pLTqfUCEe+EWl3XE64r3Qt/lCkETPiDXbYqOeFbiH9
 mi0EXxguVNxj0DcAtOPrZ/Elj3QYBfbLw0MTX/Hb6FiakPlhsVSLiALoHgRbdnlOzTaT
 eLdu+rPgJSV5HhcAmOpM/MdwsVB1tmXvQdZdCOkJhiTPzfUxUntQOslbUHgtgMtWgk2w
 SnUrX16Fs7uV1zP8XxZoGNBKmxfY83adq3FmL110SCV44/CaTgtrQ1Oa9W2kZ5xzSt4G
 SbS6G6r7xXctt/buwBwiFHTI743apDR2lNT2OlYqte04LuU8qbdvGREWORQ6+SAW6L2P
 FIwg==
X-Gm-Message-State: APjAAAUyf8JR3XLqLRYiVUprOxhz10EbdzCcA/LPWquAVjz0wbhBop2o
 VYJIqXwS/Lp0uluvj9uyCegqQZAMjUuEJoFcbezl5w==
X-Google-Smtp-Source: APXvYqwiBKiBMnP+60X/FFFfP/Bz9E1Hn3ELs7RJsnESL+czx3hd2fk2X3QyQGJ/m6AVMyIMefSPqrTk9AZaTEbF9/0=
X-Received: by 2002:ac5:c844:: with SMTP id g4mr13113089vkm.25.1575653074665; 
 Fri, 06 Dec 2019 09:24:34 -0800 (PST)
MIME-Version: 1.0
References: <20191127102914.18729-1-ulf.hansson@linaro.org>
 <20191127102914.18729-11-ulf.hansson@linaro.org>
 <20191205183544.GB1516@e121166-lin.cambridge.arm.com>
 <CAPDyKFra-C_EKrcec6Yys2P10bB+KBtVAKNtVFgqDvV=tzbDRQ@mail.gmail.com>
 <20191206112549.GA22964@e121166-lin.cambridge.arm.com>
 <CAPDyKFq0gS2fasU3Yyh+wPC7Pjnucv6_+vDN234ks+yuiURKCw@mail.gmail.com>
 <20191206151421.GA5288@e121166-lin.cambridge.arm.com>
In-Reply-To: <20191206151421.GA5288@e121166-lin.cambridge.arm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 6 Dec 2019 18:23:57 +0100
Message-ID: <CAPDyKFraVC8MajxEWUbtR8+ur7MzCv9g81zeP1T4JWs6+2tEVQ@mail.gmail.com>
Subject: Re: [PATCH v3 10/13] cpuidle: psci: Prepare to use OS initiated
 suspend mode via PM domains
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_092435_973520_C8CF35A3 
X-CRM114-Status: GOOD (  30.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Linux PM <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Andy Gross <agross@kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Lina Iyer <lina.iyer@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 6 Dec 2019 at 16:14, Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> On Fri, Dec 06, 2019 at 03:26:16PM +0100, Ulf Hansson wrote:
>
> [...]
>
> > > You can merge it as it is but that's how things stand and adding
> > > a comment to the *code* would help understand its logic.
> >
> > Okay, how about adding a comment along the lines of this:
> >
> > "Using the deepest state for the CPU to trigger a potential selection
> > of a shared state for the domain, assumes the domain states are all
> > deeper states".
>
> Just this it should be fine (I trimmed it a bit).

Great, I add that!

>
> > > > So, unless I am missing your point, I think the above code does
> > > > exactly what you want, no?
> > > >
> > > > In regards to the "arbitrary choice" of what cpuidle state to use,
> > > > there are more details about why that is, in the changelog.
> > > >
> > > > >
> > > > > This inizialization though does not belong in here, it is done at driver
> > > > > level, it should not be done in this per-cpu path. IIUC the logic the
> > > > > enter pointer should only be overridden if and only if all cpus managed
> > > > > by the driver have a corresponding device associated.
> > > >
> > > > I think you have overlooked the fact that there are one cpuidle driver
> > > > registered per CPU. The above doesn't make sense to me, sorry.
> > >
> > > You are calling psci_dt_cpu_init_idle() for every possibile cpu.
> > >
> > > Every time psci_dt_attach_cpu() is called, we check dev and override
> > > the idle driver enter method. There is one driver, what I am saying
> > > is that it is not correct to check dev and override the enter pointer
> > > for *every* cpu that we try to attach to a power domain. This must
> > > be done once for all by checking that *all* devices could be attached
> > > to a power domain.
> >
> > Ah, now I think get your point.
> >
> > You want me to re-iterate through all the registered cpuidle drivers,
> > which means one per CPU - and then override the enter callback for
> > each of them, but only if all devices was successfully attached to a
> > PM domain. Is that correct?
> >
> > My only worries with this, is that we have already registered the
> > cpuidle drivers and I don't think it's a good idea to update the enter
> > callbacks, beyond that point.
> >
> > Perhaps another option is to track whether the first CPU gets attached
> > (and then update the enter callback), but after that require all the
> > remaining CPUs to be attached as well - else bail out with an error
> > code, failing to register all the driver instances.
> >
> > What do you think about that?
>
> I was confused - now we have one cpuidle driver per cpu so this
> comment was bogus from this perspective (I was still reasoning
> wit a *single* cpuidle driver across cpus. Apologies).

No worries!

We agreed on the way forward, so I am happy. :-)

>
> Sudeep will follow up on this but please forget this specific
> comment - I was wrong.

Alright, thanks!

Does that also mean I can add your ack for the rest of the patches in
the series (besides the last hotplug patch) or is there any other
issues you want to raise?

Have a nice weekend!

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
