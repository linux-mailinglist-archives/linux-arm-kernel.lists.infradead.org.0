Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCD813579C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 09:23:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oaCojTr1wTuQFryqvUAjiai4LY3kptDnfoveEVA8NH4=; b=jIu17lrR+jP7hT
	E0/JBa8ZeKNxco0E6PTEpQOBqS+wUw2nGjfW6kFZUjPLPo/SrmTA629Fwd4nfRyCAtYefL+dzVjGW
	2hzPMJJFudGhEK8HsZ5fupRZsgZl1Sikqs6aZP0jIyBTamHv661R01GTHtkAL4DGIbfz6TWykw+Tr
	8Eiue9JdhwF6Dg0EHjQdmVfOZF4TF+lgloJ6xm+LITQuMn/7JZdkzeJP5U3jjVGrGSkhn5uF2b+TM
	5n43vcj5zY/F1BwhS7oV/+ekmKRg4enHtoxSK6Pcw/IMHOM7DzFmOPGa4QapoyHGx9NLigKY1sPnp
	yEX5bptKLXM1y9HdtXIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYQGY-0007qi-PC; Wed, 05 Jun 2019 07:23:22 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYQGR-0007q3-I3
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 07:23:17 +0000
Received: by mail-io1-xd41.google.com with SMTP id i10so9534466iol.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 00:23:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bFlickOGyCE8q2nid47CTokWI0/Tlpvfgy/2BgVqxGM=;
 b=LxIaZty5SFUHpeOd6VDojbonDevwkb/pcxQ1fTAr8bq2nAGRG0FUXbB1ahd4Cs8yIg
 oRPSkndInGzFgEmm/7b8+X+6UoxWShv3j+IC09/3LLXcEjsZyFDlSftzMZGeWVKdukuX
 tRxKQheHKNttUpTHH5/RMjZ+9n5MZjzcjavgM2hp/GDi8kasXudamsoB8q5ZYKcvvRFK
 oXRYVu3aAEZpJ3wnVIPhImAJzexpje8nEOn7PZhmrjPhy8orFBxeeLwbH0l94g5oP+Bm
 HWPA8NJ/LOwXgcprZGF5/kFXdsM8GDFUlEgPx3qrwshAgepVR88j0fhlf2GCzx85nK3B
 zqWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bFlickOGyCE8q2nid47CTokWI0/Tlpvfgy/2BgVqxGM=;
 b=uI4ddRCNsRlJEhHydItlw6wVYAfDIOqMYkWhb0BAYVAVEq50mwBh3uxreGAP5cCwZu
 6cgOI7dkxV9l5c6LlLDiKWi/3WYTWEjfghZjFfD/lO+uAukTs1Cmc+3Ynqc5Ksp0I45h
 2o+w+IjM3mS93yntGjZfL/I8CHd2SeXX+QZdDvQGf2XU+7HXYqzXXJWRtYD1LJQQliyS
 WRKGEdFgDNe44ITYgTxg30E0i6J7YqG8slYWAgmsYqhSgqoUyrNTm8K1qzxE05ZMwseu
 4oSg7RuunJhrL48tVxB9VcjPrl3/Ye2Dc0QUgphsWDrNsZVEhIhaCMUvYh1x5xW8ljcu
 pcUw==
X-Gm-Message-State: APjAAAUiWGS9IiNKPlSI/PhEm6wUDTzk4vNycttJc1+xmu31rx5VOruh
 OP/DZyvJpFGhQngxAiGTVgcoaNcxd2ejsFmMiit5OA==
X-Google-Smtp-Source: APXvYqyvUHNyNwg2/0w1ihfOoePLCRKJbrn5Y6sShasQnJXGkrj6UQ0uvq3+cXzOG4W7XlqhT4twEcbHEF/T3XAEymE=
X-Received: by 2002:a5d:9402:: with SMTP id v2mr7086874ion.128.1559719391862; 
 Wed, 05 Jun 2019 00:23:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190604104455.8877-1-lee.jones@linaro.org>
 <20190604104455.8877-2-lee.jones@linaro.org>
 <20190605062020.GL22737@tuxbook-pro> <20190605071625.GK4797@dell>
In-Reply-To: <20190605071625.GK4797@dell>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Wed, 5 Jun 2019 09:22:59 +0200
Message-ID: <CAKv+Gu_YcdePUkkCGdP5DC9rxCUAshgOzU32pViAp2CbmAaJuw@mail.gmail.com>
Subject: Re: [PATCH 2/8] i2c: i2c-qcom-geni: Signify successful driver probe
To: Lee Jones <lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_002315_658634_93C7EE6D 
X-CRM114-Status: GOOD (  21.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: balbi@kernel.org, David Brown <david.brown@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-usb <linux-usb@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, wsa+renesas@sang-engineering.com,
 alokc@codeaurora.org, kramasub@codeaurora.org,
 linux-i2c <linux-i2c@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Andy Gross <andy.gross@linaro.org>, Jeffrey Hugo <jlhugo@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 5 Jun 2019 at 09:16, Lee Jones <lee.jones@linaro.org> wrote:
>
> On Tue, 04 Jun 2019, Bjorn Andersson wrote:
>
> > On Tue 04 Jun 03:44 PDT 2019, Lee Jones wrote:
> >
> > > The Qualcomm Geni I2C driver currently probes silently which can be
> > > confusing when debugging potential issues.  Add a low level (INFO)
> > > print when each I2C controller is successfully initially set-up.
> > >
> > > Signed-off-by: Lee Jones <lee.jones@linaro.org>
> > > ---
> > >  drivers/i2c/busses/i2c-qcom-geni.c | 2 ++
> > >  1 file changed, 2 insertions(+)
> > >
> > > diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
> > > index 0fa93b448e8d..e27466d77767 100644
> > > --- a/drivers/i2c/busses/i2c-qcom-geni.c
> > > +++ b/drivers/i2c/busses/i2c-qcom-geni.c
> > > @@ -598,6 +598,8 @@ static int geni_i2c_probe(struct platform_device *pdev)
> > >             return ret;
> > >     }
> > >
> > > +   dev_info(&pdev->dev, "Geni-I2C adaptor successfully added\n");
> > > +
> >
> > I would prefer that we do not add such prints, as it would be to accept
> > the downstream behaviour of spamming the log to the point where no one
> > will ever look through it.
>
> We should be able to find a middle ground.  Spamming the log with all
> sorts of device specific information/debug is obviously not
> constructive, but a single liner to advertise that an important
> device/controller has been successfully initialised is more helpful
> than it is hinderous.
>
> This print was added due to the silent initialisation costing me
> several hours of debugging ACPI device/driver code (albeit learning a
> lot about ACPI as I go) just to find out that it was already doing the
> right thing - just very quietly.
>

I agree.

There are numerous EHCI drivers IIRC which, if compiled in,
unconditionally print some blurb, whether you have the hardware or
not, which is pretty annoying.

In this case, however, having a single line per successfully probed
device (containing the dev_name and perhaps the MMIO base address or
some other identifying feature) is pretty useful, and shouldn't be
regarded as log spamming imo. dev_info() honours the 'quiet' kernel
command line parameter, and so you will only see the message if you
actually look at the log.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
