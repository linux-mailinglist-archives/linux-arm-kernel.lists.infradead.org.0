Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E3E7177034
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 08:38:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UnUoA4z0uN3S2HatAM17gR0pzrlIBrSSN51WjV389vQ=; b=C9azZRecfLZbzA
	ub/AVJjQ70sKKXnJIO0tS3uVYWQxBzG7xgZSMI2oW7wEGJOUTlmwbXhCzDBn3IasfUJPwnl4c/tK9
	8LgrNDs277yAnSH4QXUmECMxlrjxsVlBwGt0BrEWKeUugk0IFLVfDF2R5xHGp4aFE0q/CZgSwqjJH
	ckTUt+q31tkTQvz2/S6Y5zCReIk6XX5sPz4snbggGlDsAM4d1kr+0aoGm7e+K9PTRxJKxGsa5+gSP
	Cv1xPSF/aTBFgIzIBDAB8XKhRVipIrXQyBE10B18+APDhevhu9sR5iQs2ZViuXHwfe88OHLPpw/Si
	d8UT0W5Z0JYdJSbLZVVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j928A-0006aa-7G; Tue, 03 Mar 2020 07:38:18 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9281-0006a4-Ib
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 07:38:10 +0000
Received: by mail-pf1-x442.google.com with SMTP id p14so1038982pfn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 23:38:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=lp++SjSydgt9rFdJFF3CB/lDlkmkywlwzPGaMF0zRlA=;
 b=N2hhA1DHJRr48b03MdRwK7wZT+y/IIbu0elhvz7gKyVzfWBwfAl0mdXhHechKW3w5h
 wBxpbplnqcGuRCe2aCyqhLZ2wpo+o2zcRsqCG1KdGYHdSJxY32PohGGlo4aMczuoJHna
 CMWMl9Exwvu57I8hyLPt/3Q4RBQTH5w67lBRMPCFvGriXxlrcvaH322RGt4kpMoBHUxh
 3E4JEzdChP8g3QMeRMTmn351CirQyx390iw1AbTyvsytm9dZSNigQYXyPmQAa74sAYIC
 Pj+UjOdxqIfBRBpzjWssycX5jwrJViK8MAIoJf3vZquhGT10/uKK0BZsNZxEY15fRJdw
 35Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=lp++SjSydgt9rFdJFF3CB/lDlkmkywlwzPGaMF0zRlA=;
 b=Kr5FsHWO9tYIk4c58p/wLJNtcSd9tGeHY8JcH1PD03MGChs2K3KSypJ1bSA5pP+B65
 lUyyiy+QoExKu3C/B79JWYlbjruh+/gB6psH5mYMQF+oFEiryYkt8lkWkCLoDU84pybY
 YHCnV4ttyG+bLd9sjhs3bzRIccMwyZLM8oRG6GgziV1emF67qHuC1SKl85jF6OQ3mErl
 Ok/ppeSeKAB8f3gzZFAVjppmEn7aNNXrdyECs5/q9WB31MSTQAI2HNxlFR6oe5flIKBV
 eJdfa08gDN+J37opdveVEEeHVtZ9sw8y8xchzKypcK0lmwOzKtAyFAvuQAvPSvnu6jJX
 Dg7Q==
X-Gm-Message-State: ANhLgQ0WW0X2eCoBw/P1753Rs6KRKPA+WKXs0Q0cTOVQTig7k/Ila8zv
 1Q3mseXEqQ4V23WMdJP+6Io=
X-Google-Smtp-Source: ADFU+vvzwWp+30x2055lNCAa+QhYWY8R2yyZZoSUjWYJZln5Koehw7RijTiQ1fkyuH3SDxsLzC7qTQ==
X-Received: by 2002:aa7:8582:: with SMTP id w2mr2820931pfn.89.1583221088207;
 Mon, 02 Mar 2020 23:38:08 -0800 (PST)
Received: from Asurada (c-73-162-191-63.hsd1.ca.comcast.net. [73.162.191.63])
 by smtp.gmail.com with ESMTPSA id
 p94sm1516093pjp.15.2020.03.02.23.38.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 02 Mar 2020 23:38:07 -0800 (PST)
Date: Mon, 2 Mar 2020 23:37:46 -0800
From: Nicolin Chen <nicoleotsuka@gmail.com>
To: Shengjiu Wang <shengjiu.wang@gmail.com>
Subject: Re: [PATCH v4 1/8] ASoC: dt-bindings: fsl_asrc: Change asrc-width to
 asrc-format
Message-ID: <20200303073745.GA2868@Asurada>
References: <cover.1583039752.git.shengjiu.wang@nxp.com>
 <872c2e1082de6348318e14ccd31884d62355c282.1583039752.git.shengjiu.wang@nxp.com>
 <20200303014133.GA24596@bogus>
 <CAA+D8ANgECaz=tRtRwNP=jMXBD0XciAE0HUYROH8uuo03iDejg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA+D8ANgECaz=tRtRwNP=jMXBD0XciAE0HUYROH8uuo03iDejg@mail.gmail.com>
User-Agent: Mutt/1.5.22 (2013-10-16)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_233809_617308_92C00CBA 
X-CRM114-Status: GOOD (  23.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [nicoleotsuka[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Timur Tabi <timur@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, shawnguo@kernel.org,
 Shengjiu Wang <shengjiu.wang@nxp.com>, Xiubo Li <Xiubo.Lee@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Mark Brown <broonie@kernel.org>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linuxppc-dev@lists.ozlabs.org,
 s.hauer@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 03, 2020 at 11:59:30AM +0800, Shengjiu Wang wrote:
> Hi
> 
> On Tue, Mar 3, 2020 at 9:43 AM Rob Herring <robh@kernel.org> wrote:
> >
> > On Sun, Mar 01, 2020 at 01:24:12PM +0800, Shengjiu Wang wrote:
> > > asrc_format is more inteligent, which is align with the alsa
> > > definition snd_pcm_format_t, we don't need to convert it to
> > > format in driver, and it can distinguish S24_LE & S24_3LE.
> > >
> > > Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
> > > ---
> > >  Documentation/devicetree/bindings/sound/fsl,asrc.txt | 4 +++-
> > >  1 file changed, 3 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/Documentation/devicetree/bindings/sound/fsl,asrc.txt b/Documentation/devicetree/bindings/sound/fsl,asrc.txt
> > > index cb9a25165503..0cbb86c026d5 100644
> > > --- a/Documentation/devicetree/bindings/sound/fsl,asrc.txt
> > > +++ b/Documentation/devicetree/bindings/sound/fsl,asrc.txt
> > > @@ -38,7 +38,9 @@ Required properties:
> > >
> > >     - fsl,asrc-rate   : Defines a mutual sample rate used by DPCM Back Ends.
> > >
> > > -   - fsl,asrc-width  : Defines a mutual sample width used by DPCM Back Ends.
> > > +   - fsl,asrc-format : Defines a mutual sample format used by DPCM Back
> > > +                       Ends. The value is one of SNDRV_PCM_FORMAT_XX in
> > > +                       "include/uapi/sound/asound.h"
> >
> > You can't just change properties. They are an ABI.
> 
> I have updated all the things related with this ABI in this patch series.
> What else should I do?

You probably should add one beside the old one. And all
the existing drivers would have to continue to support
"fsl,asrc-width", even if they start to support the new
"fsl,asrc-format". The ground rule here is that a newer
kernel should be able to work with an old DTB, IIRC.

One more concern here is about the format value. Though
I don't think those values, defined in asound.h, would
be changed, yet I am not sure if it's legit to align DT
bindings to a subsystem header file -- I only know that
usually we keep shared macros under include/dt-bindings
folder. I won't have any problem, if either Rob or Mark
has no objection.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
