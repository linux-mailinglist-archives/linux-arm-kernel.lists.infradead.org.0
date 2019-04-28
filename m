Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61CD0B5CD
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 11:53:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RD9nw/7A2SYjiVIvkWXJeOQt92qkJF5CYougo65Hi9o=; b=CyM77CofCYVVSD
	+beQ8iazbmY/aquDt3i30dS4XGgNgYsA2ykhCJ0SjpBa66D6nnjMOii1XFLaVUQ6Vs6p4hbDOB/7r
	w/D5mJXAYRDbd642muhkZEMpL87MI+zPAyHqOkfDJys+0xP3eRw0t5QoPk8eDtaNfidK/h4R8jb7b
	EFqRqUHGm55S2h6LXGoLNRmCpk009r7AbZ1yqcDd8M8C0rVFj0pE4KZr1Iw0FAtiERIHAMQId4KZ+
	V9o3SDAwGhDP44WKVMmJRVoSeO3EvLektVB35z9LITsjG17Hg/lYKxBXL9kguuKhdphj0FF7UWtVF
	gwUhiBRnlATUNx6dAveA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKgUq-0006BO-JV; Sun, 28 Apr 2019 09:53:20 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKgUh-00068t-Gw
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 09:53:12 +0000
Received: by mail-io1-xd44.google.com with SMTP id m188so6489528ioa.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 02:53:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mrjoLB3/jtI5jqEi/ydYyCCjyNdzpn6OvBS3steifLY=;
 b=Zl8SyZ3FZJQcjJnYc4f8rStzNJwBUNjZgSSMmAZRQ5lhl0+5dw610ANYnvX+MqTATw
 Umky+zr7OfDRa+7dmuUNsXg9ZQ14c4b0FUfMPULL/J3htxxESfOneYtQdzzkBIFznkUE
 Kh3sBe8+Abo543yYtKEDVKi5rJoLjktDkR0mvAFFUBUiyLaXol8OW2i4CbKoOONRi7V4
 Yya0ZXv0OKPYWBtSpu41tEgYnCxR9ypKV7+m4IicNa6VXcQwuWB0bnPOuBx0ChtFg5iu
 fmYbbu8MvzEPi4MRSKnS0Nvzx79dH4byrjzKvd1VctJYpIziDko8ttaiudwSnZbIZ1yW
 gvcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mrjoLB3/jtI5jqEi/ydYyCCjyNdzpn6OvBS3steifLY=;
 b=fz2S/utXnbPjDZG0UKsaTgURu5UgszsumgCzYWsgXqRfM45RA/Srd+vHlHbbNXQmtm
 szUT4QeSYyrQNm5o9/DqQpIWjy6hWZLU7r4uyMbRF9LCzfCwTZjutnQxDvbMDLYWhpPP
 mVeLDDk96lRmhiv4TL/MNhejDJiEMwc7GfF9y/V/AolCVw+1MsJbjbIy35Fg1c1ipr8V
 tyF0ZnRXZM3nE+kAR8SNze5sGMEyarFQylbqoiy6Z7EwqE5qGjyDA6wDjBjt+PWd+9Ja
 nDhI9hy6MxMkfHNWs2wVZ2ObPlt161cpUoxTwzesdZOYHAV+UUneZ7jBBETB/N5R7GgN
 yE1w==
X-Gm-Message-State: APjAAAXwMKrrIDSozqzPsOustV31gLaTz/3cAGl10yqz1l71wY5j7uf+
 VM4apbgecPTVdGGVH19vgReDQ/0gfG1FeS4dZr8=
X-Google-Smtp-Source: APXvYqyb4275QBINybmElDXHkdyvUfwyJnFJPm/jb+IRVjHSMuHo1H8b8RFIg2M23blRxG9GuqZz/LU9PEuEMR2XlFA=
X-Received: by 2002:a6b:c8d1:: with SMTP id y200mr3349440iof.225.1556445190264; 
 Sun, 28 Apr 2019 02:53:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190410174139.20012-1-tiny.windzz@gmail.com>
 <20190410174139.20012-3-tiny.windzz@gmail.com>
 <20190426211540.GA890@bogus>
In-Reply-To: <20190426211540.GA890@bogus>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Sun, 28 Apr 2019 17:53:05 +0800
Message-ID: <CAEExFWs2UwPLzgyO0apMOZf56um5isdZmf+7-wj_TqMozxZJQg@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] dt-bindings: cpufreq: Document allwinner,
 cpu-operating-points-v2
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_025311_601982_415E2EAA 
X-CRM114-Status: GOOD (  17.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: nm@ti.com, mark.rutland@arm.com, Linux PM <linux-pm@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, vireshk@kernel.org,
 rjw@rjwysocki.net, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 sboyd@kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, mchehab+samsung@kernel.org,
 davem@davemloft.net, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Apr 27, 2019 at 5:15 AM Rob Herring <robh@kernel.org> wrote:
>
> On Wed, Apr 10, 2019 at 01:41:39PM -0400, Yangtao Li wrote:
> > Allwinner Process Voltage Scaling Tables defines the voltage and
> > frequency value based on the speedbin blown in the efuse combination.
> > The sunxi-cpufreq-nvmem driver reads the efuse value from the SoC to
> > provide the OPP framework with required information.
> > This is used to determine the voltage and frequency value for each
> > OPP of operating-points-v2 table when it is parsed by the OPP framework.
> >
> > The "allwinner,cpu-operating-points-v2" DT extends the "operating-points-v2"
> > with following parameters:
> > - nvmem-cells (NVMEM area containig the speedbin information)
> > - opp-microvolt-<name>: voltage in micro Volts.
> >   At runtime, the platform can pick a <name> and matching
> >   opp-microvolt-<name> property.
> >                       HW:             <name>:
> >                       sun50iw-h6      speed0 speed1 speed2
>
> We already have at least one way to support speed bins with QC kryo
> binding. Why do we need a different way?

For some SOCs, for some reason (making the CPU have approximate performance),
they use the same frequency but different voltage. In the case where
this speed bin
is not a lot and opp uses the same frequency, too many repeated opp
nodes are a bit
redundant and not intuitive enough.

So, I think it's worth the new method.

Yangtao

>
> >
> > Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> > ---
> >  .../bindings/opp/sunxi-nvmem-cpufreq.txt      | 168 ++++++++++++++++++
> >  1 file changed, 168 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/opp/sunxi-nvmem-cpufreq.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
