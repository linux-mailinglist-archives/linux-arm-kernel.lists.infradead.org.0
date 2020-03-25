Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB24F19276D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 12:43:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eiqNkDv4p2/hc0+MHyGfWArRGUnjfvpTiMmRCzrhkEM=; b=fLv7fe5ESi+3MO
	g0ShHv9hd9vLHX7Wwi3zbKX6OdVZgKoH6jYWYcgxVAs2R/1twMsEItCpboShT+NaJVRqGvZdji8rY
	vYgmvh4V1MonSVBaLF9eYc16S8c2Lq1Qyr3l+i/+omWDgcyJQL7ItJStpaBxBgGP2NeD8OMkRPC9p
	cRSMVAQIz0eDrQ93NnUj2yHxMAziuN7q3NTI51XfV0YldWl4lYmC99X1D4FrH6SRRa1rqJbTO6qZF
	oW9KwYUvcxDQG2f2sQ1AmYTN6OALOGiV0xutPfoE7T8yMCmvBvS+30CPTMs+hvuD5emE1IC7Z2o3m
	Xz8MnOPYYUdQn+WDks8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH4Rk-0002fw-De; Wed, 25 Mar 2020 11:43:44 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH4Rb-0002fb-TN
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 11:43:37 +0000
Received: by mail-pj1-x1044.google.com with SMTP id m15so908232pje.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 04:43:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=8iyeGw5w2tbRML8NAgJCo0IAIFK3QN8wW86R3syQN4I=;
 b=lzoubfPixbOKlHDqdSdOUeHr1qBYe2Uf6DriewATUvR/TLiH5XybPU9NWfbxxJ5mTk
 AAiw5T+zXp2R0vKl5X1oLe2LwTeDnTo43kw9SmsS5t0O5jcFjCNxF6or8fuIdKlia5Mj
 CyeLy8wRnTHwkDDZMuWRQbW5N8IfuqZfynPPnfbqKZlkp9kqxu1TftNWpajpCzzUS8Xw
 VmJNWzCf49CJ2SKdmITGMcL26Ze2bL8iIlDQmGAk3VQ955o7X78ycVnGD9Xeohuq9Scu
 NW2LzjlPu0ttRBdKjx0nsfK3wgyyB7eDS/gfeNzi0D5Fa0z9owSYbs9e0GyHxC8P3qbR
 RqnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8iyeGw5w2tbRML8NAgJCo0IAIFK3QN8wW86R3syQN4I=;
 b=gpV6rFFMCmY8wT59Rp1FgBAcglAHRQ6kcAK56sJoBrU82b4qYMa1z8gAPdhJ/o3emh
 tgYKg9NCvfKOUbwczQu3dBIO6RbyEdpiqknL9Wg9POC3i4NiupCOKZSrfTqNSYUBL3Mz
 8xilAdZ3L1WyEpdsorgCd1L1/ysgycJ8pVLdroQMssIR8jm/SwNG7woTvfULcIZ4FTI/
 VX0/seB6kA8TJNTqVW1mrBgZ3vf55G+waHilDHW6GRXD4xWQEmlxSsOLtsDD4JOzTK7E
 +jJPQEyk1dTjLZ7pV5U20Aka2MAXiQulmBYDd4EXiJT5M5OFl/tor2RQDIZ92ZckCreC
 RCUQ==
X-Gm-Message-State: ANhLgQ102nkuvf+Mk8dGpKr/6OGVK2S0mV5owitWFUatRZmrZFM/WhaR
 iRxZzbgr6GS5wZuPmmjB9pU=
X-Google-Smtp-Source: ADFU+vurlWVPRUWCZZfGTSANeiGP94Kbo5bzEsvfddLhBKgcIM5lu2yHILRBxfH2Y40aRzoOkvWA/g==
X-Received: by 2002:a17:90b:8d2:: with SMTP id
 ds18mr3022707pjb.186.1585136615154; 
 Wed, 25 Mar 2020 04:43:35 -0700 (PDT)
Received: from localhost ([49.207.53.56])
 by smtp.gmail.com with ESMTPSA id d13sm4283141pjs.44.2020.03.25.04.43.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 25 Mar 2020 04:43:34 -0700 (PDT)
Date: Wed, 25 Mar 2020 17:13:32 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 soc@kernel.org, arm@kernel.org, Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH v3] ARM: replace setup_irq() by request_irq()
Message-ID: <20200325114332.GA6337@afzalpc>
References: <87mu8ppknv.fsf@FE-laptop>
 <20200302031736.5or4ww5a4l7zomfo@vireshk-i7>
 <20200308161903.GA156645@furthur.local>
 <20200301122226.4068-1-afzal.mohd.ma@gmail.com>
 <m3ftepbtxm.fsf@t19.piap.pl>
 <51cebbbb-3ba4-b336-82a9-abcc22f9a69c@gmail.com>
 <20200304163412.GX37466@atomide.com>
 <20200313154520.GA5375@afzalpc> <20200317043702.GA5852@afzalpc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200317043702.GA5852@afzalpc>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_044335_951368_767B1398 
X-CRM114-Status: GOOD (  19.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 Hartley Sweeten <hsweeten@visionengravers.com>,
 Tony Lindgren <tony@atomide.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Lubomir Rintel <lkundrak@v3.sk>,
 Krzysztof =?utf-8?Q?Ha=C5=82asa?= <khalasa@piap.pl>,
 Viresh Kumar <vireshk@kernel.org>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>,
 Shiraz Hashim <shiraz.linux.kernel@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi arm-soc maintainers,

On Tue, Mar 17, 2020 at 10:07:02AM +0530, afzal mohammed wrote:

> + soc@kernel.org, arm@kernel.org,
> in case it helps to reduce the chances of below mail getting slipped
> thr' the cracks.

> On Fri, Mar 13, 2020 at 09:15:20PM +0530, afzal mohammed wrote:

> > Hi Olof, Arnd,
> > 
> > This is regarding cleanup of setup_irq() usages & replacing it w/
> > request_irq(). Earlier it was sent as single series spanning all
> > architectures & drivers, later Thomas Gleixner suggested [1] to take it
> > thr' relevant maintainers. As for ARM, there is an additional layer of
> > sub-architecture maintainers, for ARM, patches were sent to relevant
> > subsystem maintainers & mailing list, all copied to LAKML as well.
:
:
> > Of this,
> > (1) OMAP, (2) ebsa110 & (3) rpc are already in linux-next.
> > (4) footbridge (Russell) - there was a build warning, so he dropped
> > after applying to his tree, i have submitted the newer fixed version in
> > his patch system.
> > (5) orion - Andrew has given Reviewed-by & Gregory mentioned that he will
> > take care of it.
> > So if things goes as expected 1 & 5 will be coming to you thr' sub-arch
> > maintainers, while 2-4 directly via Russell

footbridge & orion went into -next around a week back

> > Now we are left with five (6-10),
> > (6) ep93xx - Alexander has given Acked-by & mentioned to take thr' Arnd
> > (7) spear - Viresh has given Acked-by & mentioned to take it thr' Arnd
> > (8) cns3xxx - Krzysztof has given Acked-by (though not copied to lists,
> > he has been cc'ed here)
> > (9) mmp - Lubomir has given Acked-by & Tested-by & mentioned to get it
> > thr' Olof
> > (10) iop32xx - per get_mantainer, an orphan
> > 
> > Can you please include the patches 6-10 directly into the armsoc tree ?,
> > Let me know if anything needs to be done from my side.

Can you please consider for inclusion the above 5 patches.

Sorry for pestering, i understand that none of the ARM SoC pull requests
has been picked up as opposed to what happens normally by this time of
development cycle. Still asking as this is part of tree wide series &
it is safe to send core removal patch of setup_irq() to Thomas only
after all it's usages have been removed.

REgards
afzal

> > [1] https://lkml.kernel.org/r/87y2somido.fsf@nanos.tec.linutronix.de

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
