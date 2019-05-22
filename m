Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D38425E84
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 09:06:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wV+vAmDhNIo2o6tZjPBgIdB057emw8wdn/17SngDtFY=; b=CjxnNqJqX3CbXo
	OAdtF57C2LliMvdiDmjR91FOm5dnpo+Z57wyYphxgRZXQybbriqQs79hpAEDyVhb7IIQRMcTy0mLX
	hHGs2ldNtrPDlqyiiSOLgZy/mb/0nYUiJdU4JoshBPC/AWOVFgwUN7aMlNVU045GlJUKuE3UklFPr
	hMGYew6QNOyfOGVW04j7ib8oMTOPc/HndR8wvamFgyxH9OA2xTCVFp7weuEngSp/ib8nQuAU4uUzV
	b2Eam05iujMFuESTJA/lwbHjdNXr5S+aM86ZfHZNcyqcXnSl2SQBAT70m6y+Am5RC7YmKXOat3dBq
	uuFihNPm/4uEbjHk1lww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTLKq-0001EA-49; Wed, 22 May 2019 07:06:48 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTLKN-0000n4-Kx
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 07:06:22 +0000
Received: by mail-pl1-x642.google.com with SMTP id r18so593433pls.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 00:06:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=euUzaUZjQQvHcCyny1Ihtmol+djSm2u5xzcf8kf/Thc=;
 b=NCT1LOIdOIFdV4B/JKCZSXABGZ7P568wX1X+hR6On5h2/CzYjEkP5bRCZTGjG+7J0v
 kj5vOZBLqMQdFjseIA3ssc82FrOkVmnDptR0dvDmsb5t6Z/pGLquiYYkxK5e/UUitM38
 4QNGjYb+zctwCs69ItfvyUrEPcJBAJiBRtJGXPj1+egezpBWt+TkX5MXkd4LTHdrqs3V
 uIDD6xN0rfjaGMMjowsLtkgaHHaRyZcJgHHfEnTEE0aFIDZbkIqMKXcmZ8HVS5td4cCs
 94cDip9FK/cDNo9VMYgPajmCjXn93aYAj7HXxZ1mbHlrs2kJMzaxxipouNzL9QTeDC7l
 WLtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=euUzaUZjQQvHcCyny1Ihtmol+djSm2u5xzcf8kf/Thc=;
 b=R7IOCxcawUZ61Y559NTfxNrkk+Liq/FrgjgETpL5c53lyHs73lMoBMcX+dNfJeZqyD
 vVMZn/TyCh008G+QZbcFPYARh3AyO1kN8WIuLWd4CFhLnvfGrppnwp5o3ndk6FGYltXN
 s6Ymgv/kn+XQ3JKKJakISoz3wyQ156EklFGnLcmVFGu9lWUP1l+RHrA+/zwkZaRCAy7O
 nsbEJGzWCK3x5zBx6vOWh0BiLqCgjo0rxaMtqmGlZTs1MoAsmIG/yil0kKSGNlrxIV3e
 bb68WMPbntRYqumCBVgtSRMIwmQQmkM53g9WvbM6eV5Zgu+PPQ+uwHEhvO+SnaOgzWnl
 PNMg==
X-Gm-Message-State: APjAAAU23a4yWVE8XFqqSqrpWHIwr1sMDzYn/MtO8F8PYXLgVEei9Z9c
 /+q4LtZayHC73KF4lSRacgf+Tw==
X-Google-Smtp-Source: APXvYqy30S3S5HqOpyNRhQG/1HfYb5UoEd/36HJBYTVpPN+mzh/G8thtMqdbxlhFpcEWj6R0+Jk4mg==
X-Received: by 2002:a17:902:b584:: with SMTP id
 a4mr52232229pls.333.1558508777113; 
 Wed, 22 May 2019 00:06:17 -0700 (PDT)
Received: from localhost ([122.172.118.99])
 by smtp.gmail.com with ESMTPSA id p16sm56975123pfq.153.2019.05.22.00.06.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 00:06:16 -0700 (PDT)
Date: Wed, 22 May 2019 12:36:14 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Ilias Apalodimas <ilias.apalodimas@linaro.org>
Subject: Re: [PATCH] clk: mvebu: armada-37xx-periph: Fix initialization for
 cpu clocks
Message-ID: <20190522070614.jhpo7nqrxinmlbcs@vireshk-i7>
References: <CAC5LXJcCs4nr-qFOWzUJpUBAJ9ngG-cgeTCVCFBKFc1SPzHMuQ@mail.gmail.com>
 <20190314134428.GA24768@apalos> <874l85v8p6.fsf@FE-laptop>
 <20190318112844.GA1708@apalos> <87h8c0s955.fsf@FE-laptop>
 <20190318122113.GA4834@apalos>
 <20190424093015.rcr5auamfccxf6ei@vireshk-i7>
 <20190425123303.GA12659@apalos>
 <20190520112042.mpamnabxpwciih5m@vireshk-i7>
 <20190522070341.GA32613@apalos>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190522070341.GA32613@apalos>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_000619_829347_05F8828D 
X-CRM114-Status: GOOD (  17.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Andrew Lunn <andrew@lunn.ch>, Vincent Guittot <vincent.guittot@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>,
 Christian Neubert <christian.neubert.86@gmail.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Gregory CLEMENT <gregory.clement@bootlin.com>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@codeaurora.org>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Mike Turquette <mturquette@baylibre.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 =?utf-8?Q?Miqu=C3=A8l?= Raynal <miquel.raynal@bootlin.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22-05-19, 10:03, Ilias Apalodimas wrote:
> Hi Viresh, Gregory
> On Mon, May 20, 2019 at 04:50:42PM +0530, Viresh Kumar wrote:
> > On 25-04-19, 15:33, Ilias Apalodimas wrote:
> > > Hi Viresh,
> > > 
> > > > > > Also, during this week-end, Christian suggested that the issue might
> > > > > > come from the AVS support.
> > > > > > 
> > > > > > Could you disable it and check you still have the issue?
> > > > > > 
> > > > > > For this, you just have to remove the avs node in
> > > > > > arch/arm64/boot/dts/marvell/armada-37xx.dtsi and rebuild the dtb.
> > > > > Sure. You'll have to wait for a week though. Currently on a trip. I'll run that
> > > > >  once i return
> > > > 
> > > > @Ilias: Can you please try this now and confirm to Gregory ?
> > > I am more overloaded than usual and totally forgot about this. Apologies.
> > > I'll try finding some time and do this.
> > 
> > Ping Ilias.
> Sorry for the huge delay. 
> Applying this patch and removing tha 'avs' node from
> arch/arm64/boot/dts/marvell/armada-37xx.dtsi seems to work.
> Changing between governors does not freeze the board any more. I haven't checked
> the actual impact on the CPU speed but the values on 
> /sys/devices/system/cpu/cpufreq/policy0/scaling_governor are correct

Thanks for testing it out. Lets see what Gregory has to say now.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
