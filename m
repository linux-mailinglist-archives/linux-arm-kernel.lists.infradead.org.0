Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A0633D36
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 04:33:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jgm1aRhBcFfbfNxe6z6K+zJ9A6n6Cf5EQvCNO+PFw2Q=; b=sMv0dQyNaoS+kK
	U16r/B3thVeWr/E0HvycFkkyucLAnF9EZ+Ig74PLSeNOnkaCdpKukmzS8/hqVMS2+o92cRTkfUZQm
	si+fzPqQIoOl/WJRlaNmu5FudBiJE7xfkTysFZ42Yw0G7tXA1SNNjREZnSBcCwIFpDs1XZtt0bMhr
	GrrJvnSHMFJsm/isK+xxKI3yWP0nUD9HLPkF8qkiKo2l85E3tSbIpOfW5pvMxePWMDEU+1OnefnDu
	zHFD+Xkqj4W+xr35apUXoVoY5JFP1sNPyEeUIick21VSQYcN6A14QFPWnnveo7Z6sKyBuc0vWaC32
	hL9719OYIql4M26BHjZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXzGf-0002DD-Te; Tue, 04 Jun 2019 02:33:41 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXzGK-000205-JN
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 02:33:23 +0000
Received: by mail-oi1-x241.google.com with SMTP id q186so14468816oia.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 19:33:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/efz5fBqwkKql5eaLioEbxPG0lpeX3IuNQzBKE0KZPY=;
 b=t0Tg5fNTxniTRmz/iZalyXNNLBLd+1rhT2xgBa8LZbek9rqjAlwbOGh00WHUB1ncrx
 Yo/H4u0aKaaEw1LY3oxY/qG/vRwpEj/gpqna5xGRMKtyhf3tetBrPBVEq5/wW5OunbmT
 6P+dBmhIXg4OTMvR81tWx1OWHYVdqp3+mTeW/erFR9g1OpVb3yvcUQDsNFS7/xBbe2Ix
 099d7LnpWWUcDprl9p4V7TN5UkrBzPDwAaJK9fx2m9ZdntdbcTThl4RrqZGvB8aLAESR
 7H5CqQB/OZL7Y8tzXpk5gqxdRBj4CkDWX7h78XUi9vUABQ5ElROPygSMfDoZJKEFAcyt
 5New==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/efz5fBqwkKql5eaLioEbxPG0lpeX3IuNQzBKE0KZPY=;
 b=iDLv31E1mnJVFEHLAGmD+aYsUM6vVKj7nvQT43Fv6pZrvgnnKtHGJFtGoIpuTqS8Ik
 LCQ/+M2UCj93LgHYIvhLIlzwpXNRkwq7URhzVFDO1fmdP67I3Z/dpv100WLDIdo4Xd30
 wG7MtKaF6jdHtuomgyI/IzyP4r1Ood2t0tIOUJWwyD2V+33MA8JgDd8eh0uGGX7zn17A
 p/kO3TjB+ImFU4N5QCBqlVEY6l6BBjD7QJtWKwkD/6HskI2Usm94aPP+yqTW6rETnEYl
 jAPhBlAwsqUdNqUmlxhMEaHTaQumXpEP/HLDj8kiAhBLSsgxyjvTEQ/x2Av5AtuIYDtX
 H1Ug==
X-Gm-Message-State: APjAAAVGKfoMAnO39rAwN8rBypfZARbQnM0dZp+JQ1I81gnAcngMkJGY
 bOGHZfkoHl3LoCsgzQ3GkBmGN0+kYeSbvZm6Y7FIaA==
X-Google-Smtp-Source: APXvYqxb/i7+n5YIjVsNZWPZfvdm7xM+4h6bvKEOeA1ig/CQVGfW4rtKxXeB0d4+sPhSP0CMWDZvMBprzf2J8CSGkSs=
X-Received: by 2002:aca:dd08:: with SMTP id u8mr74850oig.27.1559615599920;
 Mon, 03 Jun 2019 19:33:19 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1558346019.git.baolin.wang@linaro.org>
 <ee4ad0e7e131e4d639dbf6bd25ad93726648ce1c.1558346019.git.baolin.wang@linaro.org>
 <CAPDyKFrWiG3KJad+L3NOQ-dC2XnBM-8mQGVEsVB_Qg0ACTfVag@mail.gmail.com>
In-Reply-To: <CAPDyKFrWiG3KJad+L3NOQ-dC2XnBM-8mQGVEsVB_Qg0ACTfVag@mail.gmail.com>
From: Baolin Wang <baolin.wang@linaro.org>
Date: Tue, 4 Jun 2019 10:33:08 +0800
Message-ID: <CAMz4kuK+yX=V2zp-C4Xb-6ZjgLOY+ON2iHZU=HwONeXcJCkk4w@mail.gmail.com>
Subject: Re: [PATCH 2/9] dt-bindings: mmc: sprd: Add another optional clock
 documentation
To: Ulf Hansson <ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_193320_729440_D5DA6735 
X-CRM114-Status: GOOD (  18.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 arm-soc <arm@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Chunyan Zhang <zhang.lyra@gmail.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Olof Johansson <olof@lixom.net>,
 Orson Zhai <orsonzhai@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ulf,

On Mon, 3 Jun 2019 at 21:34, Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Mon, 20 May 2019 at 12:12, Baolin Wang <baolin.wang@linaro.org> wrote:
> >
> > For some Spreadtrum platforms like SC9860 platform, we should enable another
> > gate clock '2x_enable' to make the SD host controller work well. Thus add
> > documentation for this optional clock.
> >
> > Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
> > ---
> >  .../devicetree/bindings/mmc/sdhci-sprd.txt         |    1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/Documentation/devicetree/bindings/mmc/sdhci-sprd.txt b/Documentation/devicetree/bindings/mmc/sdhci-sprd.txt
> > index 45c9978..a285c77 100644
> > --- a/Documentation/devicetree/bindings/mmc/sdhci-sprd.txt
> > +++ b/Documentation/devicetree/bindings/mmc/sdhci-sprd.txt
> > @@ -14,6 +14,7 @@ Required properties:
> >  - clock-names: Should contain the following:
> >         "sdio" - SDIO source clock (required)
> >         "enable" - gate clock which used for enabling/disabling the device (required)
> > +       "2x_enable" - gate clock controlling the device for some special platforms (optional)
>
> This is a bit vague, could you please elaborate (and fold in that
> information to the doc) on what kind of clock this is?

Sorry for confusing. For some Spreadtrum platfroms like SC9860
platform, we should enable 2 gate clocks to enable SD host controller,
that means we have 2 serialized clock gates. I know that's a little
weird, but that's our clock's design.

-- 
Baolin Wang
Best Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
