Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 161D66BA4D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 12:34:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iVhatUMeAthKLkkK/vmYUSBiK0LwZoTNZlPRZCBT2F0=; b=jl0GNrtLWjfw0Q
	JFnLiQL0Z5ityiVmqSknN9TRJ6SaU5MmmvCnFlDGXZBV+S8LJY1tw0OmBUOmZf3bGGPJezk05a5NL
	cry+hnsVHCBS0YRkehyb4waFYxw1+mErZvadhphdFQGOyRy8fAs/Jq+6NxuAawd0ahHNCeWVlXXVF
	IKmZYVEBVjW2AZBRxLO5c7WV7695yD558r7LecVNLdnarRIAkmgJSy0S5N1QtetQ8h5inEH3jiX+Z
	fIbK+BWaO9H2LJLwzDBOyL7cHy/zL9b4RFbWRI0t9LgTBXjbtwcT7PfkZSBgGWp+fOjSPMbukkqgo
	/1uXf+CWoRS2HOE1Nobw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnhG5-0003rv-Fi; Wed, 17 Jul 2019 10:34:01 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnhFH-0003n3-Oz
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 10:33:13 +0000
Received: by mail-pf1-x441.google.com with SMTP id f17so6642912pfn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 03:33:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=9k7PEq3YaWLJm47OKEtp5j4oXp3rjTfBF0mMIsuiDAQ=;
 b=Dul4ANMNCdSpSs/j0ZxpHvioQBfiR4bXcwEQRW8s+ErgOSfdnx78Qt8agNUBZG2V3G
 tIua5SDC9I7sQA0/bT7Bx09ekRomkuC+GLFRBo+0UJuAznly6/B+tRlfGxcToEexpXOD
 WgTxMleNqwhWPq89fF2sDgVMGb6gzFtCu8Qfq9EZI/pb1EdKu+rUIDdAh+nZRL2ikDUc
 4zagx9uiklANQvb30ZF6DIQvy3C9aeD9V1a3dEhkPo0cz2VX6G/MHuVM5bzXFX0ydpey
 bHNpblAL973a8HGH7qAe0Q5tLQmKQYmXRKXDh6tFpzLkCUSUotfCdiJ0idFQNBYtcWn/
 cE+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9k7PEq3YaWLJm47OKEtp5j4oXp3rjTfBF0mMIsuiDAQ=;
 b=oHU8wgvkxiyCM2MUy6YzQZNN6uHsLX3MxXNngkp4r32J0WTnXGhWRSrX9vsZxErDDf
 GN+ofTCQaR6GdwYVnUwlJf9E8kLQkTk3CZxtx1/kjtMkkM2jrbglVYCj8tjeEWm+xyWx
 U8ykmoIjVFPiIRizvsLblFsIQhV47vmPSFXJFR2KS0LPvsdTK8lBAu8OA1umQokVvnKW
 PwCKqy3m+qtJ2hWI/TYXG2igV57sVUpwPNpYL5mbw7F2tucg2xEaY/3y3IzBOeB59T0q
 d0MsKFjISEY4CPZUH80stBtZRYfa7rP9dRSrFVD+JW3mfh0QHg/wX4hO8MmhV+/ADJnu
 y3iA==
X-Gm-Message-State: APjAAAVRIPjmECf4t1ZTe5/lnec/CQUZwqR3HdT5PbB/hqKXw166ot+A
 5w8THOJyx3IHtRZZ1ipzC0BcUg==
X-Google-Smtp-Source: APXvYqz/Sfxl0RQLtUc3wMREss8uX/59u3jEO2nzgrxKdE2umZKvMGiCYBh9eFTpkdk7pse+CuF5gA==
X-Received: by 2002:a65:690e:: with SMTP id s14mr26228230pgq.47.1563359590031; 
 Wed, 17 Jul 2019 03:33:10 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id 30sm58222326pjk.17.2019.07.17.03.33.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 17 Jul 2019 03:33:08 -0700 (PDT)
Date: Wed, 17 Jul 2019 16:03:06 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Gregory CLEMENT <gregory.clement@bootlin.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>
Subject: Re: [PATCH] clk: mvebu: armada-37xx-periph: Fix initialization for
 cpu clocks
Message-ID: <20190717103306.r3wuqvvwr2b5z4ok@vireshk-i7>
References: <874l85v8p6.fsf@FE-laptop> <20190318112844.GA1708@apalos>
 <87h8c0s955.fsf@FE-laptop> <20190318122113.GA4834@apalos>
 <20190424093015.rcr5auamfccxf6ei@vireshk-i7>
 <20190425123303.GA12659@apalos>
 <20190520112042.mpamnabxpwciih5m@vireshk-i7>
 <20190522070341.GA32613@apalos>
 <20190522070614.jhpo7nqrxinmlbcs@vireshk-i7>
 <20190610101918.sypafywc6fn4jsbo@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190610101918.sypafywc6fn4jsbo@vireshk-i7>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_033311_926693_19E72E34 
X-CRM114-Status: GOOD (  18.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 Christian Neubert <christian.neubert.86@gmail.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Stephen Boyd <sboyd@codeaurora.org>, Mike Turquette <mturquette@baylibre.com>,
 linux-pm@vger.kernel.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 =?utf-8?Q?Miqu=C3=A8l?= Raynal <miquel.raynal@bootlin.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10-06-19, 15:49, Viresh Kumar wrote:
> On 22-05-19, 12:36, Viresh Kumar wrote:
> > On 22-05-19, 10:03, Ilias Apalodimas wrote:
> > > Hi Viresh, Gregory
> > > On Mon, May 20, 2019 at 04:50:42PM +0530, Viresh Kumar wrote:
> > > > On 25-04-19, 15:33, Ilias Apalodimas wrote:
> > > > > Hi Viresh,
> > > > > 
> > > > > > > > Also, during this week-end, Christian suggested that the issue might
> > > > > > > > come from the AVS support.
> > > > > > > > 
> > > > > > > > Could you disable it and check you still have the issue?
> > > > > > > > 
> > > > > > > > For this, you just have to remove the avs node in
> > > > > > > > arch/arm64/boot/dts/marvell/armada-37xx.dtsi and rebuild the dtb.
> > > > > > > Sure. You'll have to wait for a week though. Currently on a trip. I'll run that
> > > > > > >  once i return
> > > > > > 
> > > > > > @Ilias: Can you please try this now and confirm to Gregory ?
> > > > > I am more overloaded than usual and totally forgot about this. Apologies.
> > > > > I'll try finding some time and do this.
> > > > 
> > > > Ping Ilias.
> > > Sorry for the huge delay. 
> > > Applying this patch and removing tha 'avs' node from
> > > arch/arm64/boot/dts/marvell/armada-37xx.dtsi seems to work.
> > > Changing between governors does not freeze the board any more. I haven't checked
> > > the actual impact on the CPU speed but the values on 
> > > /sys/devices/system/cpu/cpufreq/policy0/scaling_governor are correct
> > 
> > Thanks for testing it out. Lets see what Gregory has to say now.
> 
> @Gregory: Do you have any further advice for Ilias ?

Ping.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
