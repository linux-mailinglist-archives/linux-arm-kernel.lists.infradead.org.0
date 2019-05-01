Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B09A10462
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 05:45:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VoSykTISnFvuwe48pdkoTUaPB2jHb4USSNOIFrtKbTU=; b=rE67Vv2O9aW4Jy
	5toIXE+v8mttt3sSN82fiszqKHTerk7HDOzM/ImOPs3BDFSPWdz2vP5ztnR47BwJpx9GrjrurOHbE
	2T7RkDtw66EOsD3S4mPCq0olY+X4k/DPuq93WP4Pv4VUAirIZ9X7gtatO24ng1hqS8NDNqfp670S7
	0A4PFJCRpD9A4EB8l3qHDSJkHV/TXGBTysyD1e966CQlgvqMJnHyAb/VsdVTtwccg86WPHRNtveOR
	tWqmsw7YLHdRP0l8bRUb5jMLLmbhyHFU/6UqLs/hUC4hreFzrgl9QSWIDjC2NoEco2yDYkzm0SLFC
	0LsuHgIOdlg2ISiTXUyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLgBK-0000Yc-IG; Wed, 01 May 2019 03:45:18 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLgBB-0000Nu-3k
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 03:45:10 +0000
Received: by mail-it1-x144.google.com with SMTP id r85so8314711itc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 20:45:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TkB4s1r5PgKZ71uFpCZrkh9Mfe0SQFgPVceh4zEIkSk=;
 b=r2U9bzmZ4Y6ku1VauS7d9URFGDT4u5JUD7x0BNTY8EPKVgOGKi4B0Rqy9IIPKuaQYz
 hG3GjtDOkNtEYw/aRPyUtfR0ouV2NDJGL+ytieVOP/7GGlVs31JK9wxyTQRi6WYM7LXQ
 GNupGNRgjxle5/iHjwCUgtFaz1x1+C7ukuwHKCgskbrzAuHQMG9hfI7ekZyQSDDxORe5
 l5YonGybDLIYk0hMmgNnDdBehyX2eZcEnIXhhEXLrD936AZ83a8ThriwX9BqauKOZHos
 XpRfNS0purqncEtQ7g4OPhcFNpzjQtrNbRdhBFo8gl2lvR/1q1rr+r92HLADczj9zzbs
 tt/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TkB4s1r5PgKZ71uFpCZrkh9Mfe0SQFgPVceh4zEIkSk=;
 b=jWeLlBKgWaRntNQtEM9jSKZ3z9FxTZFVj0ZwBb4uZluK0lEZgkXvQxS7M4y+L8QDU6
 EcZGNnKDoJCpikwIltyAnb5AbQ5dA1fbdyyMVcrqVtsZngOXVDQKHaRNzfqG2GA/B0k1
 cKgNrSGzYTOkPO/uk7cp0E95rWQlf41Q1CeUEsa94n0ApAY23y4MNqDAuSmQ+U502jUJ
 aTC/BEWS7JB33imz4+zTiYm0agkNob2bDnrZGIUhwXsYvYEgwhijq5Ow1suLYuJ61cw/
 yJd11gK3mF0ZyseRRlpdZfHMzGd7yLP72WkwsSl/3zC0Jro5izUyZ13MIoYxDv1zaiIE
 vFTQ==
X-Gm-Message-State: APjAAAW2SSTsCDdshYs2S5BLL5PqqWjlsWgxe+L9H5cQ03SddN/tyaU3
 8TILd9IXU2BOevrOog1B36ne+kC01kMMuM3Y8Og=
X-Google-Smtp-Source: APXvYqzLrMqPKXV9+qRMezJD64nBLRaRn4e3qS42BmiTaPw+hgZdIxV+ckAZw+e3Lf1qZMsMEU3u87FCKEVCosnWcg0=
X-Received: by 2002:a24:6c54:: with SMTP id w81mr6507934itb.78.1556682307120; 
 Tue, 30 Apr 2019 20:45:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190410174139.20012-1-tiny.windzz@gmail.com>
 <20190410174139.20012-3-tiny.windzz@gmail.com>
 <20190426211540.GA890@bogus>
 <CAEExFWs2UwPLzgyO0apMOZf56um5isdZmf+7-wj_TqMozxZJQg@mail.gmail.com>
 <CAL_Jsq+0mQYyAqfY3nmF-oFx2X4qHU567chQ1s8p-rgD2GEFnw@mail.gmail.com>
 <20190430044245.s4viduudej6q2eq6@vireshk-i7>
In-Reply-To: <20190430044245.s4viduudej6q2eq6@vireshk-i7>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Wed, 1 May 2019 11:44:55 +0800
Message-ID: <CAEExFWsAQ3b42YqfW-b8vuq_NZgfDe+0D5TzP09ber0Ljvv43g@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] dt-bindings: cpufreq: Document allwinner,
 cpu-operating-points-v2
To: Viresh Kumar <viresh.kumar@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_204509_179656_D3311F25 
X-CRM114-Status: GOOD (  28.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nishanth Menon <nm@ti.com>, Rob Herring <robh@kernel.org>,
 Linux PM <linux-pm@vger.kernel.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Viresh Kumar <vireshk@kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, David Miller <davem@davemloft.net>,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 12:42 PM Viresh Kumar <viresh.kumar@linaro.org> wrote:
>
> On 29-04-19, 11:18, Rob Herring wrote:
> > On Sun, Apr 28, 2019 at 4:53 AM Frank Lee <tiny.windzz@gmail.com> wrote:
> > >
> > > On Sat, Apr 27, 2019 at 5:15 AM Rob Herring <robh@kernel.org> wrote:
> > > >
> > > > On Wed, Apr 10, 2019 at 01:41:39PM -0400, Yangtao Li wrote:
> > > > > Allwinner Process Voltage Scaling Tables defines the voltage and
> > > > > frequency value based on the speedbin blown in the efuse combination.
> > > > > The sunxi-cpufreq-nvmem driver reads the efuse value from the SoC to
> > > > > provide the OPP framework with required information.
> > > > > This is used to determine the voltage and frequency value for each
> > > > > OPP of operating-points-v2 table when it is parsed by the OPP framework.
> > > > >
> > > > > The "allwinner,cpu-operating-points-v2" DT extends the "operating-points-v2"
> > > > > with following parameters:
> > > > > - nvmem-cells (NVMEM area containig the speedbin information)
> > > > > - opp-microvolt-<name>: voltage in micro Volts.
> > > > >   At runtime, the platform can pick a <name> and matching
> > > > >   opp-microvolt-<name> property.
> > > > >                       HW:             <name>:
> > > > >                       sun50iw-h6      speed0 speed1 speed2
> > > >
> > > > We already have at least one way to support speed bins with QC kryo
> > > > binding. Why do we need a different way?
> > >
> > > For some SOCs, for some reason (making the CPU have approximate performance),
> > > they use the same frequency but different voltage. In the case where
> > > this speed bin
> > > is not a lot and opp uses the same frequency, too many repeated opp
> > > nodes are a bit
> > > redundant and not intuitive enough.
> > >
> > > So, I think it's worth the new method.
> >
> > Well, I don't.
> >
> > We can't have every SoC vendor doing their own thing just because they
> > want to. If there are technical reasons why existing bindings don't
> > work, then maybe we need to do something different. But I haven't
> > heard any reasons.
>
> Well there is a good reason for attempting the new bindings and I wasn't sure if
> updating the earlier bindings or adding another one for platform is correct. As
> we aren't really adding new bindings, but just documentation around it.
We didn't really add anything else, it still revolves around the
features that opp already supports.
>
> So there are two ways OPP core support this thing:
>
> - opp-supported-hw: This is a better fit if we have a smaller group of
>   frequencies to select from a bigger group, so we disable non-required OPPs
>   completely. This is what Qcom did as they wanted to select different
>   frequencies all together.
>
> - opp-microvolt-<name>: This is a better fit if the frequencies remain same and
>   only few of the properties like voltage/current have a different value. So we
>   don't disable any OPPs but just select the right voltage/current for those
>   frequencies. This avoids unnecessary duplication of the OPPs in DT and that's
>   what allwinner guys want.
>
> The kryo nvmem bindings currently supports opp-supported-hw, maybe we can add
> mention support for second one in the same file and rename it well.
So which way is correct?

Thx,
Yangtao
>
> --
> viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
