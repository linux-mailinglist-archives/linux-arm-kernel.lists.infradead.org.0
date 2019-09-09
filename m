Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 064DCAD9A2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 15:05:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hNXDMsNyPmpz9trh+CEqb9LPL56ipTFpgv6cOUd7sMY=; b=j/OjL2HUBgmY2J
	h/DTEjcNHDYvYKzStzyJdCF+d1N4NXO/lUv1iZhROK9evv5FY0+VJfm6NiP7XZqiDmDPOxX2RsEMW
	YN+74UTQdf1qLni1gB/smv+yNmw4DL5Nxx+cEk8Z+UsrkzVKPCS725Nar2sPL/Pi99QibDqmDft4j
	ZoQuHnXUG9Qf+jszSuV1Kp0rEoToP3ItKkweYe3r2wM1qqYcgQN2+FOiFbMLr+2+T9GX8iVFuzZ5o
	1NQHhsNrrKuG8TqJqMlsRhCMsvPsD0ExZH38axqDl0zPf6nmWz6j0//wCSp2wtXdBmaQ6eXQTzpOK
	PQJq9LJ8YCSgDE2x8QwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7JLm-0008Tx-48; Mon, 09 Sep 2019 13:04:58 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7JKu-0008TA-Rc
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 13:04:07 +0000
Received: by mail-wr1-x444.google.com with SMTP id h7so12742781wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 06:04:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=9y+22Q8ixtWcD5ju9SRyneHTrf2Ur/gcyX9aL38jrJ8=;
 b=m4C6Xk/j6j5iR6qiDeoF0BoZ6vmChDvg4ZUHZGDPPwDvfBnH1hKZmBSsAOTdCvvTO5
 YGmDb1lmCn/E7iSQ2S005YmgvIXL6rJbsyQgRfPg4H0/AGqpD8RkFK70n78chiLKok4j
 9iL8/W1WCvuhRISx3B5OGOWhEZXUlf2csBCJcGau5vnsnHn3+C3vB4/PyfCivyH0JOq2
 L3ncuaHISdM5M2NBHFdwN3QXXUrSX7QaRTFGQALc+GA2gmQ1WkwdYd3r6se4/AmZyqke
 T6QE2eE7qidPUOKEHCh9mXFY4tzbH0HFJ6InTMQBgxvX0pKHNTKXtPkX+H1dXJK21H9K
 n6Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9y+22Q8ixtWcD5ju9SRyneHTrf2Ur/gcyX9aL38jrJ8=;
 b=rwb+hpLYdROmeojwy2riTyozPiKU/NSSceuaHPlg2GOeEKE12DMZXrTXEj1xCLmF57
 ao1QnmV1Rg6I/3mOUT3m3p5hQ6iNpYzS78s8CSCXdCXF0umy9Zwwx1rW34/S5FIbGJ+0
 +k6xC9OQmYM9/yLe6HxDLiM1J9EAr9CxRKlSlC9HPMrdmbmFwaO4KnHl5QvEBdcPeNKd
 cYgE1W+Lw1IA7M1sBNQZ/mV+IFfrE+OnxcCYU+Iogkr+6CY47BKCIJHiQ9GZ0tao50Sd
 Z584M+vCZpqLggr0Yh829urHfBhwdXRUetlcTyKw2qd3R0zkf6BLZ1vnEnV2pYNfP377
 pOZg==
X-Gm-Message-State: APjAAAWP4oS3n2OyxEddtecmm7smujV4px1yQoPWZfxqEhk6MlVsWDm/
 saOzsP0R3Jhi/Y4v5AcplPJhYw==
X-Google-Smtp-Source: APXvYqwk/hc+u/zqnHFB7vI8hYnVgaNIR9Xf1U5ML8a8gIMOmTBbmhFEHswaAoqNvRMqTbL5YHIWKw==
X-Received: by 2002:adf:f88e:: with SMTP id u14mr18227770wrp.260.1568034242622; 
 Mon, 09 Sep 2019 06:04:02 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id f3sm15033405wmh.9.2019.09.09.06.04.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Sep 2019 06:04:01 -0700 (PDT)
Date: Mon, 9 Sep 2019 14:04:00 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Jean-Jacques Hiblot <jjhiblot@ti.com>
Subject: Re: Status of led-backlight driver
Message-ID: <20190909130400.erccomveu2ongeks@holly.lan>
References: <20190907100726.GA12763@amd>
 <20190909111410.dwqvg6b4lgxymn2o@holly.lan>
 <e40fcd10-85ef-9e04-0960-210736075f1f@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e40fcd10-85ef-9e04-0960-210736075f1f@ti.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_060405_141672_934CD8E2 
X-CRM114-Status: GOOD (  15.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mpartap@gmx.net, tony@atomide.com, merlijn@wizzup.org,
 kernel list <linux-kernel@vger.kernel.org>, sre@kernel.org,
 nekit1000@gmail.com, tomi.valkeinen@ti.com, Pavel Machek <pavel@ucw.cz>,
 linux-omap@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 09, 2019 at 01:46:39PM +0200, Jean-Jacques Hiblot wrote:
> Hi Daniel,
> 
> On 09/09/2019 13:14, Daniel Thompson wrote:
> > On Sat, Sep 07, 2019 at 12:07:27PM +0200, Pavel Machek wrote:
> > > Hi!
> > > 
> > > I don't see the LED-backlight driver in -next. Could it be pushed? It
> > > is one of last pieces to get working backlight on Motorola Droid 4...
> > Sorry, I dropped the ball on this and was therefore rather late
> > reviewing this patchset.
> > 
> > Assuming I have read the code correctly I think there are some
> > problems with the max_brightness handling in the backlight code.
> 
> Can you comment this? I'll be happy to fix the problem.

I did that before replying to the nudges. See:
https://lore.kernel.org/linux-leds/20190909095304.67ehnpg6gckwpno4@holly.lan/


> Reading the v4 again, I noticed that that I still had not removed the
> brightness scaling. Is that the problem ?

Yes (plus a couple of nits).


Daniel.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
