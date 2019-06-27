Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF8BF57B36
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 07:19:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CGrMj4Z+e2a9WQ/GEf2ehrSgnbYeFmCvsEa9a8OzFFc=; b=JW4474BvaL/hTp
	hvScIoPfwGBinhaRTir8SrbrfDiF8zq7fzU03uF841t1IcQwHkIcdtt+Awy8tt/4MUapsIJeOU8O/
	jkZcHIBpv496kzKwgnrsn8vClJD0MP0dfA3S0DzJrvCuUk0W+bRgwmCP9E2s8Aov06lIylODnzqiC
	J9cqjl5vP7XyTTrvh6UUDY0PhBWphcfocznubhP1uhp5Ejdv/B8SDXyOAsJuq4Uh1lhy9T4gkg3hY
	DinF7TBxLgy0jO+aBRU4Ji8L/k93kszhdTb2iq2MzQerPifQvvMwBoL3NmSyVq7gsF9l/hPuGsilT
	KcJrw1l7wSIRE05Ix/Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgMoz-0007GJ-CP; Thu, 27 Jun 2019 05:19:45 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMoU-0006ep-Vn
 for linux-arm-kernel@bombadil.infradead.org; Thu, 27 Jun 2019 05:19:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=odEtYfSJdPci4PPgC6CMfIE2a3S4KfjZvHhAIm9Si2o=; b=qEORZdRsMuTtcv4Hj+5CdQt+H
 ya0FL315nRF7qWSaA0OG1H0Iyajn0IdLvQhjlMjc5Umrb1W7/r9oiEJUBFQyydJM4UM3DDk7wK1V1
 Bl4T2HnQABaABbBcWjd7R+CmZMmfaslWh3tT+iBfHunJ1SAYYbPnhT/6bU6h2V4TOsr65NRQ3qvIn
 EdHxxNFU5NyW7KpANrRFBbuH+dWguR0TRYqM7bavM8mT2Z9lCkhtOnX81ComPEka2BW7ZuXaN71Nt
 apJpk/7ZdMZ8vYw50ouLjM3b6Y3iTNPMPUmf0FGGwHSBOYHgUcoChSv7UA/sa6GwnZjLmxlheVpsA
 9o8CNCZcw==;
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgLhu-0001qG-0R
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 04:08:24 +0000
Received: by mail-qt1-x843.google.com with SMTP id y57so1020658qtk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 21:08:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=odEtYfSJdPci4PPgC6CMfIE2a3S4KfjZvHhAIm9Si2o=;
 b=NVXpmGHHe7707LTsMucUvOxwzqModa7uwKn6y782AkEHVmiQE37lGR+CCTV7KeaR4K
 Ipa2RoDO3ChzEM+/WUWhSOcMdUzPWKsf7B4l66NIlneOj25x+RcLt+JfAA7Ty7muPfix
 A4+9c0tMB0L8UkSC75MkDbLb/YA6L3lXGrlhE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=odEtYfSJdPci4PPgC6CMfIE2a3S4KfjZvHhAIm9Si2o=;
 b=pHxgjz7TU+eMgDnquKS1SPFTC6rjfDHWzY2HAYZP8qDRoS3TQVFvAkvXIWTsr+L0FL
 2PDnEQXKNqKFLNTfe6rld0eU902VpED2o9TTveq4qFgWOD7CQFzzMDq5ZJMgnat+K1f9
 miSOb8ZLA/s93/bReXbS6+86hG9SfCKd/5vbuepXxHn+HG3murhjMQp+oUcYp+EMQpPL
 9IAM/NKMn7mHz1hD7o8I203sut81cLDztnAHj5FqP2ixWdUnip1URAlJKimtkda2VYkA
 /591GyNzUfGW2nHcHuozPviX7ic0nIZOME6t3rvGr51ny1OSHC4myCgTVQ9P0iglHt0E
 9RoA==
X-Gm-Message-State: APjAAAWEvqCdqm++xYv0w4Y7zBY+27a2qGLrtvFTcOdtj5fVWN/ZBnRl
 KiJZXtyhuPhCC6qLFP0iN+4avBFHsVmnX/Fk6osHoFWk
X-Google-Smtp-Source: APXvYqyRm1YLTsTM11LFxi70F1EclLRg6D57JwIALT0GIHZ3dVSDFeeVIzBTEVCsbfHG/lF/8yIhuseiBKeTXBZy+D0=
X-Received: by 2002:a0c:a8d2:: with SMTP id h18mr1493936qvc.16.1561608435486; 
 Wed, 26 Jun 2019 21:07:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190626071430.28556-1-andrew@aj.id.au>
 <20190626071430.28556-2-andrew@aj.id.au>
 <CACPK8Xfdd1ReAHr9f6zRbZ-WJRquDJsTdUQeT_JuEBhOzS8tig@mail.gmail.com>
 <226afe63-cc86-4920-abc1-025bdda32063@www.fastmail.com>
In-Reply-To: <226afe63-cc86-4920-abc1-025bdda32063@www.fastmail.com>
From: Joel Stanley <joel@jms.id.au>
Date: Thu, 27 Jun 2019 04:07:03 +0000
Message-ID: <CACPK8Xd3Cf8zRSTLVbcTQTu+4aEp1qhmkaFAF4AcfJMkky3gYQ@mail.gmail.com>
Subject: Re: [PATCH 1/8] dt-bindings: pinctrl: aspeed: Split bindings document
 in two
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_050822_110132_389A76F6 
X-CRM114-Status: GOOD (  23.34  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.4 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Ryan Chen <ryan_chen@aspeedtech.com>,
 linux-aspeed@lists.ozlabs.org, Linus Walleij <linus.walleij@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 27 Jun 2019 at 04:02, Andrew Jeffery <andrew@aj.id.au> wrote:
>
>
>
> On Thu, 27 Jun 2019, at 13:02, Joel Stanley wrote:
> > On Wed, 26 Jun 2019 at 07:15, Andrew Jeffery <andrew@aj.id.au> wrote:
> > >
> > > Have one for each of the AST2400 and AST2500. The only thing that was
> > > common was the fact that both support ASPEED BMC SoCs.
> > >
> > > Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> > > ---
> > >  .../pinctrl/aspeed,ast2400-pinctrl.txt        | 80 +++++++++++++++++++
> > >  ...-aspeed.txt => aspeed,ast2500-pinctrl.txt} | 63 ++-------------
> > >  2 files changed, 85 insertions(+), 58 deletions(-)
> > >  create mode 100644 Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.txt
> > >  rename Documentation/devicetree/bindings/pinctrl/{pinctrl-aspeed.txt => aspeed,ast2500-pinctrl.txt} (66%)
> > >
> > > diff --git a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.txt
> > > new file mode 100644
> > > index 000000000000..67e0325ccf2e
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.txt
> > > @@ -0,0 +1,80 @@
> > > +=============================
> > > +Aspeed AST2400 Pin Controller
> > > +=============================
> > > +
> > > +Required properties for the AST2400:
> > > +- compatible :                         Should be one of the following:
> > > +                               "aspeed,ast2400-pinctrl"
> > > +                               "aspeed,g4-pinctrl"
> > > +
> > > +The pin controller node should be the child of a syscon node with the required
> > > +property:
> > > +
> > > +- compatible :                 Should be one of the following:
> > > +                       "aspeed,ast2400-scu", "syscon", "simple-mfd"
> > > +                       "aspeed,g4-scu", "syscon", "simple-mfd"
> >
> > I think we can use this as an opportunity to drop the unused g4-scu
> > compatible from the bindings. Similarly for the g5.
>
> I Wonder if we should eradicate that pattern for all the aspeed compatibles?

Yes. We've settled on ast2x00,aspeed-<foo> for most of them. If you're
aware of others we should remove them from the bindings.

I think we've stopped any new users of the gx style from getting merged.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
