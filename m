Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D63DF1710B3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 06:55:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y3UpgCS5WIiCvuVSBSBEa9qs5yxKTe2HHdBS/Vy6Duk=; b=YbjCS/0q5K/tb+
	8ET1ar+wi3BGkkPjMMQwpA65YRP3ExaoqJhc6g90XnhxrOMkiUNDEWdNNSMTYA+NlKXFddQb951JB
	SR0qYrpxLsO4HU4JLD1m06GjsW0259PuL+yoj2mqkQnlAAGTNQkFrTpzaAyB9C4i4aIMBJkVaaaO4
	jXfLJlGB7i3SNnMv67bcUCrDGGvneA+zcAczoG34PeQsDOHcvcXki47RKdeabJRj2vNnhY+rpddIC
	pX1fK5I4UH0PnKXrk2V1djzwlst+6jOjXCqDq+s6gcmGvU/JDvUeWN26mGIYKSKe54uZP7vD4WX/m
	R68L6yP8//akc3K+4WVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7C8Q-00035b-UD; Thu, 27 Feb 2020 05:54:58 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7C8F-00033o-CH
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 05:54:48 +0000
Received: by mail-qt1-x844.google.com with SMTP id d9so1415904qte.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 21:54:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=E2Lzw+6DwIXD5wFIdGhdMkBNEqUvLgerW4Hymt2eRxg=;
 b=AFGunOiDTG9tUPYAnoVO+elFcJSM3Whfz90g8CbpJOtUYOijJJZriLWq9n8qE6lJT1
 i4dHPMZdW8OhQtDMX5HxuWkwbDdB0jJnc+s+eMT6QS5whv9ZInYZY9K8S1pOGjMU+Dtf
 tyFC4J9uj5HsUQ0/+A44qRNAPPWY2CCtzm0Yk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=E2Lzw+6DwIXD5wFIdGhdMkBNEqUvLgerW4Hymt2eRxg=;
 b=uGY+FY5/UYHdhNwYXrumN93CZDKWI9v1oKoAH101/d950j0VXHkVxyws8enZqv0i0/
 olFVR07xuFsK3bNxVVxLnZV1MBXFCsAJcv+11FCVhyrPdIGbMVO8KHBP5CGg4JwwiUrZ
 pIXOLr0bC0MxQGie3Ig7zUnqUFp1FyCvx1lZyaoKDySBCgvVsicodHse3UyDiOu/ncnz
 W+vskNa6zsB4fhTsfEr6srddkxLMVRqoUlpAIZBINFAiLhP1Jn+b/mybP4f89pg7wlKF
 oJQ/Je3oS4xwvcHJrXq+9fBAxRetwsVfwu6mfurv1QjPWhYnm1nNrrWr2qAqHaDTt+Cj
 m00w==
X-Gm-Message-State: APjAAAXFAFxAhu/YXVhMT06vkqTJbqf7SruU7QL8vOH2RrG1Y7u05vE+
 0p2wnOe0iS3P2VPkyCmSjuz0voqr4bsC7ufcEXA=
X-Google-Smtp-Source: APXvYqzkUWO9RFM7Di6p87wS+Vk/jUfjgdcxe/+ZDF1v3BDViIFdLlrzgrk/5NcaTxAv+I2EX+x/Rkh3OZXw908Xzio=
X-Received: by 2002:aed:3841:: with SMTP id j59mr3043607qte.220.1582782886154; 
 Wed, 26 Feb 2020 21:54:46 -0800 (PST)
MIME-Version: 1.0
References: <20200226230346.672-1-rentao.bupt@gmail.com>
 <20200226230346.672-7-rentao.bupt@gmail.com>
 <83d7b817234f99c92272f7950129c56a58f4de54.camel@kernel.crashing.org>
In-Reply-To: <83d7b817234f99c92272f7950129c56a58f4de54.camel@kernel.crashing.org>
From: Joel Stanley <joel@jms.id.au>
Date: Thu, 27 Feb 2020 05:54:34 +0000
Message-ID: <CACPK8XdkPLZVJTpAc2u3Q0W0KoRrC4hfHjy27VKpGDRF45JByg@mail.gmail.com>
Subject: Re: [PATCH v4 6/7] ARM: dts: aspeed-g4: add vhub port and endpoint
 properties
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_215447_433284_4E41A4D7 
X-CRM114-Status: GOOD (  16.92  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Felipe Balbi <balbi@kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 devicetree <devicetree@vger.kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>, linux-usb@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, Tao Ren <taoren@fb.com>,
 Tao Ren <rentao.bupt@gmail.com>, Colin Ian King <colin.king@canonical.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 27 Feb 2020 at 04:11, Benjamin Herrenschmidt
<benh@kernel.crashing.org> wrote:
>
> On Wed, 2020-02-26 at 15:03 -0800, rentao.bupt@gmail.com wrote:
> > From: Tao Ren <rentao.bupt@gmail.com>
> >
> > Add "aspeed,vhub-downstream-ports" and "aspeed,vhub-generic-
> > endpoints"
> > properties to describe supported number of vhub ports and endpoints.
> >
> > Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
>
> Acked-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>

Reviewed-by: Joel Stanley <joel@jms.id.au>

I will take this patch through the aspeed tree for 5.7.

Cheers,

Joel

>
>
> > ---
> >  No change in v2/v3/v4.
> >    - It's given v4 to align with the version of the patch series.
> >
> >  arch/arm/boot/dts/aspeed-g4.dtsi | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/aspeed-g4.dtsi
> > b/arch/arm/boot/dts/aspeed-g4.dtsi
> > index 807a0fc20670..8e04303e8514 100644
> > --- a/arch/arm/boot/dts/aspeed-g4.dtsi
> > +++ b/arch/arm/boot/dts/aspeed-g4.dtsi
> > @@ -164,6 +164,8 @@
> >                       reg = <0x1e6a0000 0x300>;
> >                       interrupts = <5>;
> >                       clocks = <&syscon ASPEED_CLK_GATE_USBPORT1CLK>;
> > +                     aspeed,vhub-downstream-ports = <5>;
> > +                     aspeed,vhub-generic-endpoints = <15>;
> >                       pinctrl-names = "default";
> >                       pinctrl-0 = <&pinctrl_usb2d_default>;
> >                       status = "disabled";
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
