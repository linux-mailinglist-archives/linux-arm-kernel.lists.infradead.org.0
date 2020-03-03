Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C3B3176DBD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 05:00:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qiYvoBv74QjmAlnmOYTUpkPsiJD4dnDrvQMfkvPE0Ac=; b=sEW0KrZPWTHukZ
	FIvU4AVPCuHhTr1mxuK0MWjtPEngScC91EfRl+0PZPnha+FhRLfY8lFnosXmVq6FYy3hujEaQGU0H
	9yvOvet8HGdrzElG9ZW+KA7ut7S90+0JiqeiksG3NJ5ngqAE+UVQs6ZOOkcQqJ7jFVsgo7LkdJxtD
	mWLCa3MudZN2tERiI9BbFk/74nbTOklIolSDD42SAwJXwUkkol9ExgIbtixpzf/VbcmLvNX+HGaY9
	Q621FEkSqvNTD/iDC++uL94bho6YlkJAztfGIEB0gUr4PQ6zmzlFCygdZ5AuJxeE4RPNQ3Pzx9AX/
	DV42pnFYpD9kuICxp6Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8yim-0008HG-Gq; Tue, 03 Mar 2020 03:59:52 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8yig-0008Fx-Kc
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 03:59:47 +0000
Received: by mail-qt1-x844.google.com with SMTP id 88so1856442qtc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 19:59:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fvgiEL+QVxL1O0iuln0ifrtO9JeYp774TkUNa+6Pqoo=;
 b=oRT8HZ4B32/7utrig5nxukRcBp2kXL+RB7l6+X9X21Z/lE1ng0lir/2XnCN4MCNCL/
 JCs+4EUTPXdEdohoncGhgZqyiZqG5StxthdVvUsRlip4ttwbFnATHlA+0ivVzJ98ojAQ
 etVMYVwNN7kp/A+P/eYeqexBN4sWYR0yfSxguyzTQG1EhWJdw4iRlCK7sIud2Lthti89
 Zuo/HkGECwJlpBAV4fXexo/XYscKNWFwieSqQ49/DIMqu7XmrjH3AMeI6QVVDMguhKKz
 71NuaFosTdSaKOq6pav7EEC9eGWRitBjA0RGj7UMjPCGezvoauU4Wy4VAvwjAe5K/rs2
 NUAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fvgiEL+QVxL1O0iuln0ifrtO9JeYp774TkUNa+6Pqoo=;
 b=fMNL2liXoOyoH3x7BmFpYmxXNS8qDSDZ5ymtRr/DcMnLcyDitUBOYwdEpkzsHq/fiW
 Jo1mYfzJTLFeLrgnb7vrBDm6zuTEg2AlJhW6O3zzZwSadsKhHA6YoT6pNQfh9Pd6fmY4
 JaDzXgLSO2YLl+S0IE1J5N2PdkURtl2LC2fW44oVHCwfPMBiD8GIyDrkW9FXjEXul65W
 ek1T0cZMJaQqVMcImFY8PGHpCX677O0+aqN+7wJ2RAeTQUjcpA7Y/qAnhlIRHp0IPreH
 IBtOq86hZWdzyB88bxFQJCtjVmOljwycHLeNeljFCJObZbKySXNca0xOc+wYJWMz5CHG
 YrQw==
X-Gm-Message-State: ANhLgQ3sNt4Q9D0DgB298Bav7/wWgFutEnQ2xz0jVuynXgFjKlM251Zd
 NpYyVH/f7jnL6tL2+E30FvMTiTjbC/QKNKm03mg=
X-Google-Smtp-Source: ADFU+vv2FItiQhj89T5uuRfiab6WkfDHcosumKkrglL71peu+YE/jk0AhS8fXeo7PG4qPrc7PTpI+QkNhWhZ/+gdSNI=
X-Received: by 2002:ac8:518a:: with SMTP id c10mr2808979qtn.360.1583207982044; 
 Mon, 02 Mar 2020 19:59:42 -0800 (PST)
MIME-Version: 1.0
References: <cover.1583039752.git.shengjiu.wang@nxp.com>
 <872c2e1082de6348318e14ccd31884d62355c282.1583039752.git.shengjiu.wang@nxp.com>
 <20200303014133.GA24596@bogus>
In-Reply-To: <20200303014133.GA24596@bogus>
From: Shengjiu Wang <shengjiu.wang@gmail.com>
Date: Tue, 3 Mar 2020 11:59:30 +0800
Message-ID: <CAA+D8ANgECaz=tRtRwNP=jMXBD0XciAE0HUYROH8uuo03iDejg@mail.gmail.com>
Subject: Re: [PATCH v4 1/8] ASoC: dt-bindings: fsl_asrc: Change asrc-width to
 asrc-format
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_195946_681588_A224CC7E 
X-CRM114-Status: GOOD (  15.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [shengjiu.wang[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Linux-ALSA <alsa-devel@alsa-project.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Timur Tabi <timur@kernel.org>,
 Xiubo Li <Xiubo.Lee@gmail.com>, shawnguo@kernel.org,
 Shengjiu Wang <shengjiu.wang@nxp.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Nicolin Chen <nicoleotsuka@gmail.com>, Mark Brown <broonie@kernel.org>,
 linux-imx@nxp.com, kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
 linuxppc-dev@lists.ozlabs.org, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

On Tue, Mar 3, 2020 at 9:43 AM Rob Herring <robh@kernel.org> wrote:
>
> On Sun, Mar 01, 2020 at 01:24:12PM +0800, Shengjiu Wang wrote:
> > asrc_format is more inteligent, which is align with the alsa
> > definition snd_pcm_format_t, we don't need to convert it to
> > format in driver, and it can distinguish S24_LE & S24_3LE.
> >
> > Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
> > ---
> >  Documentation/devicetree/bindings/sound/fsl,asrc.txt | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/sound/fsl,asrc.txt b/Documentation/devicetree/bindings/sound/fsl,asrc.txt
> > index cb9a25165503..0cbb86c026d5 100644
> > --- a/Documentation/devicetree/bindings/sound/fsl,asrc.txt
> > +++ b/Documentation/devicetree/bindings/sound/fsl,asrc.txt
> > @@ -38,7 +38,9 @@ Required properties:
> >
> >     - fsl,asrc-rate   : Defines a mutual sample rate used by DPCM Back Ends.
> >
> > -   - fsl,asrc-width  : Defines a mutual sample width used by DPCM Back Ends.
> > +   - fsl,asrc-format : Defines a mutual sample format used by DPCM Back
> > +                       Ends. The value is one of SNDRV_PCM_FORMAT_XX in
> > +                       "include/uapi/sound/asound.h"
>
> You can't just change properties. They are an ABI.

I have updated all the things related with this ABI in this patch series.
What else should I do?

Best regards
Wang Shengjiu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
