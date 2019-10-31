Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F11EB8B0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 22:05:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gJ7WJ/ZUStj0S67khNRhIwozY5hf5T7e71j/8aWSI+A=; b=VrcFbgcZ1j98gI
	lnrTLnrTxhdoyVj0VpK+88KuC56ZDJzvQM/tXkNzhJ6Dt/PhTNJxiUJ3WcBUvloOpJRq9HB2sS4Ez
	rOq00kIIvbu8C2IgRYU6y0ghAjW5cVl+lUBB/wU3Qr45N5HQG4cfTRPQzWkF/fVBD5PucXaLhBRq+
	LzE0+F+pDjzcNUFfTRn5dgX3JPncaxpzhIoJXv3H2oIgn1ZQoSH1z5AInSm8B/Qq3YDwKox4nhP5C
	FLUa1O8lMGrS3H0jHlgptyzwTsqpiR+PKy5vd4dhMaLnGYjswzfBHA+jtBJwrmDWXsOmhJL2m+KFe
	EpMO1Sx6m9JuL5zLLGAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQHdF-0002s4-LV; Thu, 31 Oct 2019 21:05:25 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQHd8-0002rX-0o
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 21:05:19 +0000
Received: by mail-ot1-f68.google.com with SMTP id u13so6678669ote.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 14:05:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kOsWUibXaRq8YUzcKEc8pmXWX2utaa3I6yXkA2zu/zA=;
 b=OpjR+295pR28FDsXiby1kz/qPn9wGcLjdvgIg8fYKRTbPN5mn2ChCzfSU6aohToHpf
 qbDyTTEx6MSSdvVsrT8R40sbuCkWuQMUUj14wkxhMkUpdY9ylb0xkypIH/C7XzHabT37
 ufXJh+FocN025nNySF2W2BoEdga4LP+2fpI2Hn6K/IcBQtf2IP/VQc3Q+H2t0jJ/78mY
 NAECt7SJbOcTG0uSGReyWOKCRYFYOebMBZFtZuOURFEt1ou3Hjd11bFoI3teXD9ujyF9
 gUVMkitLUqFVL0yXtBPTFns/lP9JIxLpCAptJadmIz2cLDUsOlAivTlCHo9dKm9bvUYv
 tyGA==
X-Gm-Message-State: APjAAAVkFTg9sPZ0rVsmOjskGtYji6QYsOdeOB6aDqGOVDSWYbNweFiE
 IYgOCvl2A7ONSuRfESdHrqLXpXpQmGvtgvufDm0=
X-Google-Smtp-Source: APXvYqwPSUeLOQI6Cq1yIxBC02S4eoAwjMA4wzKteTVwOaggTFLdpinwVbEW2DTW/gN710tsWG5p/Mq30QrpnMogI4I=
X-Received: by 2002:a9d:70c1:: with SMTP id w1mr3411095otj.167.1572555915997; 
 Thu, 31 Oct 2019 14:05:15 -0700 (PDT)
MIME-Version: 1.0
References: <c222deda79ad334ff4edcbd49ddda248685c4ee1.1572395990.git.leonard.crestez@nxp.com>
 <3169109.BFaCN5124U@kreacher>
 <VI1PR04MB702337E37DF8E57A754C1DC5EE630@VI1PR04MB7023.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB702337E37DF8E57A754C1DC5EE630@VI1PR04MB7023.eurprd04.prod.outlook.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 31 Oct 2019 22:05:05 +0100
Message-ID: <CAJZ5v0hYYav6sGns0_8EMAEPh2KE7BFZ_kftdPTA+n253oxFzA@mail.gmail.com>
Subject: Re: [PATCH] cpufreq: Add user_min/max_freq
To: Leonard Crestez <leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_140518_060682_0F12F763 
X-CRM114-Status: GOOD (  17.18  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Saravana Kannan <saravanak@google.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Matthias Kaehlcke <mka@chromium.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 2:01 PM Leonard Crestez <leonard.crestez@nxp.com> wrote:
>
> On 31.10.2019 12:24, Rafael J. Wysocki wrote:
> > On Wednesday, October 30, 2019 1:41:49 AM CET Leonard Crestez wrote:
> >> Current values in scaling_min_freq and scaling_max freq can change on
> >> the fly due to event such as thermal monitoring.
> >
> > Which is intentional.
> >
> >> This behavior is confusing for userspace and because once an userspace
> >> limit is written to scaling_min/max_freq it is not possible to read it back.
> >
> > That can be argued both ways.
> >
> > It is also useful to know the effective constraints and arguably the ability
> > to read back the values that you have written is mostly needed for debugging
> > the code.
> >
> > Also arguably, if there are multiple sources of frequency limits in user space,
> > there needs to be a user space arbiter deciding on which value to use and in
> > that case it needs to store the last value chosen by it anyway.
>
> If an userspace tool needs to temporarily adjust min/max_freq it has no
> way of reliably restoring the old value.

And the new attributes don't really help here AFAICS, because if the
old value was written by a user space task different from the one
updating it, that task may try to update it again in parallel with the
current writer, and so the current writer actually doesn't know
whether or not the value it has read is the most recent one (and even
so, whether or not writing it back is desirable anyway).

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
