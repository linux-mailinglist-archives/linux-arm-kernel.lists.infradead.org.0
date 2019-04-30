Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ECFAEFB2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 06:43:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M51iQ9OHBZszxagT67MXpPuU35Gc0wr/9T7zMY2Xm5g=; b=XGKEu3UAxqSEqc
	eAlhUb56LwQTjWqKo5eIF3VuhvkF4KYn+sBOomys9tPLVKycrIcR2UPeSioqkWM2QFI6LczivHj0D
	w/AS8j8ixyggYJFbiCaAWgq0NBxxEKVlZmLRW1Hie++Mw5Wl56c6g+CX3ew9SsijA+qbC3vW8zFtw
	iBfkkLqn0KwIvMvA3gCUs1t+yr2LqrYeao10ZEILlMBY1YDZ/3G5mmf/1v5m9xFR7AQbwS4mao7o9
	bBz9gtdnZzSkJ1V1JGZHPQRkbHUv3FqhaEiFLcxcmr27DQWdqdyJgVPc/sjPBYu4DD0rP+7MvrYUs
	ayklVqI90v/OljFDAaaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLKbe-00064b-AG; Tue, 30 Apr 2019 04:43:02 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLKbX-000635-GZ
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 04:42:56 +0000
Received: by mail-pg1-x541.google.com with SMTP id n2so6222927pgg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 21:42:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=XFladZcZaPZX3qydS53BZ4NhIvorW1o6i79f0yhX41c=;
 b=C2QQ038nRMeeh8liMY8vI3wnQ2mwGKvYVms4huqg7UAxAtABpfBMV6l1FL+hDRkO6I
 u2jr8RW8JL6VTLwGCLs8kUqbZHL6c7UtKdyc4Pu/4lpPavVQEy8d7XZuh/pMPiN12IGW
 UiCirF3FlwOaJsYJmP2x7nDfYywx/YOerO5iBHk0rzpj2llst/u4JE9VXXQf3b/1Uo2w
 wCj1uyZ7TTIXLVUGdNIZ/7zSJiRi0ETva8nrzIZJxolFFg0mffO2aMhTIhhspBagzbmu
 XmqnUgL3mgdnnIVdBPhKw4Cu4czy6uNwU23N5QntMVnr5fgjQ1Hv//wQ8AOG2HhdprsE
 KEJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XFladZcZaPZX3qydS53BZ4NhIvorW1o6i79f0yhX41c=;
 b=TXBLfX3KomURduu53BTgDj9b0b28G8GuGrKPl9pw8Cu8GSCGi5dHrLNha62CwSWunu
 8U6Ma+Hlhqzw3adIdLnq9X8y057kZAAa/sdBpJk36DiLFcXdrkSuFp3M3fVnOX3zOL+H
 RxbPmU1p6Bv/25kIl1rNZyA+lR2Rbz4c7Y2E7r8M6BRuharskateWhJL+PyYsVzKfe/X
 M7qaIyEsK404QM1ENpMku7E3T6MdL2Y2wIaTI05YpPMKW61DBF2+1j2SnZ8tcqlaBY2W
 pQeT9vvByvJXKRvsk5wx2QpDThmpXpj5Lu4oDS7zQdzkTDIBt3pzXC6LpedOa7Hdz2Wv
 ExkA==
X-Gm-Message-State: APjAAAUpwfSTq7w+vJydeeNXUKOaB6GYkT6X6vDhq/kCy+Qw2+lLPayl
 Jj+JALEQHd+8GG+WVYCeO6Mr6Q==
X-Google-Smtp-Source: APXvYqygvKowI2kLyaUya2a23iV207l9gYzdYkTC41i4qd+O8xsEnQL3jMCSsZ0U/rtNySeVwEg96g==
X-Received: by 2002:a63:b507:: with SMTP id y7mr31166599pge.237.1556599368986; 
 Mon, 29 Apr 2019 21:42:48 -0700 (PDT)
Received: from localhost ([122.166.139.136])
 by smtp.gmail.com with ESMTPSA id t13sm70049624pgo.14.2019.04.29.21.42.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Apr 2019 21:42:47 -0700 (PDT)
Date: Tue, 30 Apr 2019 10:12:45 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 2/2] dt-bindings: cpufreq: Document
 allwinner,cpu-operating-points-v2
Message-ID: <20190430044245.s4viduudej6q2eq6@vireshk-i7>
References: <20190410174139.20012-1-tiny.windzz@gmail.com>
 <20190410174139.20012-3-tiny.windzz@gmail.com>
 <20190426211540.GA890@bogus>
 <CAEExFWs2UwPLzgyO0apMOZf56um5isdZmf+7-wj_TqMozxZJQg@mail.gmail.com>
 <CAL_Jsq+0mQYyAqfY3nmF-oFx2X4qHU567chQ1s8p-rgD2GEFnw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_Jsq+0mQYyAqfY3nmF-oFx2X4qHU567chQ1s8p-rgD2GEFnw@mail.gmail.com>
User-Agent: NeoMutt/20180716-1615-c6e4b7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_214255_553943_A353CE07 
X-CRM114-Status: GOOD (  26.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Nishanth Menon <nm@ti.com>, Mark Rutland <mark.rutland@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux PM <linux-pm@vger.kernel.org>, Frank Lee <tiny.windzz@gmail.com>,
 Viresh Kumar <vireshk@kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Stephen Boyd <sboyd@kernel.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 David Miller <davem@davemloft.net>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29-04-19, 11:18, Rob Herring wrote:
> On Sun, Apr 28, 2019 at 4:53 AM Frank Lee <tiny.windzz@gmail.com> wrote:
> >
> > On Sat, Apr 27, 2019 at 5:15 AM Rob Herring <robh@kernel.org> wrote:
> > >
> > > On Wed, Apr 10, 2019 at 01:41:39PM -0400, Yangtao Li wrote:
> > > > Allwinner Process Voltage Scaling Tables defines the voltage and
> > > > frequency value based on the speedbin blown in the efuse combination.
> > > > The sunxi-cpufreq-nvmem driver reads the efuse value from the SoC to
> > > > provide the OPP framework with required information.
> > > > This is used to determine the voltage and frequency value for each
> > > > OPP of operating-points-v2 table when it is parsed by the OPP framework.
> > > >
> > > > The "allwinner,cpu-operating-points-v2" DT extends the "operating-points-v2"
> > > > with following parameters:
> > > > - nvmem-cells (NVMEM area containig the speedbin information)
> > > > - opp-microvolt-<name>: voltage in micro Volts.
> > > >   At runtime, the platform can pick a <name> and matching
> > > >   opp-microvolt-<name> property.
> > > >                       HW:             <name>:
> > > >                       sun50iw-h6      speed0 speed1 speed2
> > >
> > > We already have at least one way to support speed bins with QC kryo
> > > binding. Why do we need a different way?
> >
> > For some SOCs, for some reason (making the CPU have approximate performance),
> > they use the same frequency but different voltage. In the case where
> > this speed bin
> > is not a lot and opp uses the same frequency, too many repeated opp
> > nodes are a bit
> > redundant and not intuitive enough.
> >
> > So, I think it's worth the new method.
> 
> Well, I don't.
> 
> We can't have every SoC vendor doing their own thing just because they
> want to. If there are technical reasons why existing bindings don't
> work, then maybe we need to do something different. But I haven't
> heard any reasons.

Well there is a good reason for attempting the new bindings and I wasn't sure if
updating the earlier bindings or adding another one for platform is correct. As
we aren't really adding new bindings, but just documentation around it.

So there are two ways OPP core support this thing:

- opp-supported-hw: This is a better fit if we have a smaller group of
  frequencies to select from a bigger group, so we disable non-required OPPs
  completely. This is what Qcom did as they wanted to select different
  frequencies all together.

- opp-microvolt-<name>: This is a better fit if the frequencies remain same and
  only few of the properties like voltage/current have a different value. So we
  don't disable any OPPs but just select the right voltage/current for those
  frequencies. This avoids unnecessary duplication of the OPPs in DT and that's
  what allwinner guys want.

The kryo nvmem bindings currently supports opp-supported-hw, maybe we can add
mention support for second one in the same file and rename it well.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
