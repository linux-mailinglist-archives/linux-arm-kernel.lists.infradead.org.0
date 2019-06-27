Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A1358622
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 17:41:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gGPgKxEf17qQn+uXuahZDCGToepbWMM3UUwe7Djy26g=; b=NgsMXjundpVII1
	lQmUMbGdhoaBe6rLvb39KtiZGK+wn+OcaWD71bsD3gR5qRFBZ0W/fGubMbaUI77tFVQb1Ya0BZt2f
	Cs8gL9APgZ8d0qrZbY1JOC2003DUu9wVGt9YBdC8SWiF3zr0tN3Hi/atEgIOrvnfDwwT2OcTyTIRB
	IJhAd1l7IuEAheS4Uy0YpiuG9wSX1dbj9bPvHKNDShNZVpP69q9D5H2dkRat9zXFnEkhR29NHtkcu
	15lZ2LYLK4M6WBEjQQ7Sc/XqvCd5sIY4e+jXU2xaizSeBYyw/P8jVA1lhPlEqQbFVA80aJQx9bR8I
	26rNGDRR89cClcou8IJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgWWo-0006qO-AM; Thu, 27 Jun 2019 15:41:38 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgWQj-00011B-Oh
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 15:35:23 +0000
Received: by mail-io1-xd44.google.com with SMTP id s7so5646438iob.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 08:35:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ew65NdQeWdu6ts+znlBo27RNRnMo72PlEu7opKONVnc=;
 b=CCujgUsfDUJBMm/1+DVLnAObXbiS31yQeSTYaoo3w1FffDIc2rOAt/xrmHsOCBgjVM
 F+Sf2YMshFednTVHUgDhAGXkPWJK9YcFn5Nk262C5aOpeHBK9VemWG0XsebQU4Be1CxS
 Wj/nd+vdyDPRf7hMBOj2TTwXRkQ+CzxkcItKrQgvyz/jOgu0+3DAMraeInF0z288DLE2
 vHbRj9JEFBO5wtgtTDnuGht0bGPTSqQQEhNfAQeeDWzlHCR6PBg1vg4nsR1K4gDorlJc
 HQINotdlfWc0Z2E42uymRL/Gmxs1edVCi1mS2YHEGXiC5/1HB+SYOyKQ/82hGZVT1B6o
 zIag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ew65NdQeWdu6ts+znlBo27RNRnMo72PlEu7opKONVnc=;
 b=cUocjt0a3gB2cLWBFOrF3K2hUiovXS+wBYYAJ25CtxkURRbyuh6WAdWLuaxMMXZeMC
 cJFn1vQpLlcKOMqLBuQxG7RkHvX9KTr/eNjeaNebSYahJLXH5E/FeRhNsHEtSVagrUD3
 vnAKszvfeiGAJBCVN8cHUxx9iLhqqqSaJyIh4vHW//DSZKLrFMkY5eBTGXDAO5PLxImz
 3p9p16CbyN6mpEMtefnMn6msSduwSrS+mM3ay25VsN6O67DBlgBpSBvBci+NmuGLow0y
 /+vKWm5m1C6+x+zXB+QSlzbBRCMlKagP/wwP5HQwk7CSYhBncQZSgM1KT/XYf9EwaTvh
 uHsw==
X-Gm-Message-State: APjAAAX6ae8FksjtHHc3PRvumN717cezEJyf92saQ4raV5rsnQMhrTQK
 hbgVySn92nUuRSLqVIlmB/VkR/Mr3rShMJuHV+M=
X-Google-Smtp-Source: APXvYqwg3PYWeUGHyhMme0iwy5kq3Cmr+PX1m/57RKHe66tNyAj4mzHUFcmyehlNfPoAvmKjpdMBLKPyFI9E4dYiF9w=
X-Received: by 2002:a6b:5815:: with SMTP id m21mr5363729iob.171.1561649720155; 
 Thu, 27 Jun 2019 08:35:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190513140259.17525-1-festevam@gmail.com>
 <1557756459.3997.4.camel@pengutronix.de>
 <aea4106a575d0e623442c53cfd50917b@www.akkea.ca>
 <1558623713.2624.54.camel@pengutronix.de>
In-Reply-To: <1558623713.2624.54.camel@pengutronix.de>
From: Chris Healy <cphealy@gmail.com>
Date: Thu, 27 Jun 2019 08:35:08 -0700
Message-ID: <CAFXsbZo_yJDOviv7M-5phziUPfGauT1_g0kZfP-1E=MOtOfebw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mq-zii-ultra: Operate I2C at 100kHz
To: Lucas Stach <l.stach@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_083521_842936_ACD59984 
X-CRM114-Status: GOOD (  16.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cphealy[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Fabio Estevam <festevam@gmail.com>, Angus Ainslie <angus@akkea.ca>,
 linux-imx@nxp.com, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Regarding this patch and errata, I found the following NXP patch which
is against the same errata:

https://source.codeaurora.org/external/imx/linux-imx/commit/drivers/i2c?h=imx_4.19.35_1.0.0&id=5d355407812025e5157f82b7763580e7295a40fd

Perhaps this is a suitable solution for upstream?

On Thu, May 23, 2019 at 8:01 AM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> Am Donnerstag, den 23.05.2019, 06:19 -0700 schrieb Angus Ainslie:
> > Hi Lucas
> >
> > On 2019-05-13 07:07, Lucas Stach wrote:
> > > Hi Fabio,
> > >
> > > Am Montag, den 13.05.2019, 11:02 -0300 schrieb Fabio Estevam:
> > > > According to the i.MX8M errata document [1], there is an I2C spec
> > > > violation when the I2C clock frequency is 400 kHz:
> > > >
> > > > "e7805: I2C: When the I2C clock speed is configured for 400 kHz, the
> > > > SCL low period violates the I2C spec of 1.3 uS min"
> > > > Avoid this problem by running I2C at 100 kHz instead.
> > >
> > > Does this fix a real bug? The same issue is present with the i.MX6 I2C
> > > controllers, but we are still running a lot of i2c busses on i.MX6
> > > based boards at 400kHz, with no issues whatsoever.
> > >
> >
> > We've definitely seen issues running at 400kHz with the librem5 devkit
> > and it's using the i.MX8MQ.
>
> I'm not claiming that the erratum will not cause any issues on a random
> system, as that's obviously dependent on the board design and connected
> i2c slaves. All I'm claiming is that the i.MX6 has the same erratum and
>  we have no issues with running those busses at 400KHz on the RDU2
> board, which is pretty close to the Ultra board that is changed by this
> specific patch.
>
> But then IIRC you don't need to reduce the i2c speed all the way to
> 100KHz to work around the low time violation. You only need to reduce
> it slightly to to 375KHz to get in line with the i2c spec.
> Most of the i2c issue I've seen in the wild have nothing to do with the
> host controller, but are caused by issues in board design, like weak
> pull-ups or ground bounces.
>
> Regards,
> Lucas

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
