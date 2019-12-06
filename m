Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C628B115809
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 20:56:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XCfJDCOpkrIOYFkj6vHZY8vzwJiYGG4gbOOKqaZ64rw=; b=PH5qQW2KvM1fqc
	rq7JBq5TfYC3hQFYOGe3+U+2TjOP/SlcI10QNxp4FZmdGP6Cnsys5HjmPMANbheVg1TXn7JtGAsAy
	F18owL58rv9ox+dBeCDEEWk861qXVnyQK/DD2BDH6IAjTS0o8pwpjqVFIPvAE5dmAVs32R2suTUVT
	vqZ1OmZRfF4OC5lGBSTkQ/WFSalXDm8dKJrhOYI7ohQh8cymcn3ju0p8Lprw1DwEVb4/G3gB1Izy7
	tE6ec1icCYVNsXcR51rmVvPEcrRJML/J9auQfGl2UNb5PgssrpomGc2H15SEGc/X2jI5hgF0Fq4WG
	p1/T/MVOhXVX1zdsesYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idJhw-0002CR-Oh; Fri, 06 Dec 2019 19:56:08 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idJhk-00020i-3T
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 19:55:57 +0000
Received: by mail-il1-x141.google.com with SMTP id t9so7290542iln.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Dec 2019 11:55:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DTgSv4IR0PpwmqQTfS7L4oC63RYA+jjFi0H391aqaRo=;
 b=FoabJm/VAHEA72IkwsIyNnv2Lb0OAfzfxwsi0xcKcZSGC/zIOq4hoVvRBGyq823LgA
 5QvG4cpHa9qGCS74ERmwipoNQna4LCng8AHcMhbc9m4BhXQOHxQ6mvZZKk2bfFIAgEz5
 yCdmoq909w9OxHbSYp6/VZGJWug7Qzv815CNhPRhlrmZQyJsut/ofMwtRpnhdfr7L7wq
 e3kd9xPjIxAq2hPa/iqD9PA8SldEqPRF8KjCeHFmqZPRC67+2/7pHKP/RieCINQwe0Sq
 slOAoDOnpoUgeBlKBoO7eu77aInhlnhWoBvQWjxkNfgsBIjtEme8zib6OybCBex/+M/j
 8jrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DTgSv4IR0PpwmqQTfS7L4oC63RYA+jjFi0H391aqaRo=;
 b=ks/zt3E8URkhp5HJGDa8wOnh+ocYeJFrE0RvKkZe4uXJK2irUvkgZsCWESNrVaBPMi
 p43x24MgIxgmL+O5eEFlxjp4Mb9zODb9T4O/9sYcFPKfRBfm5a1dgcCUvguLPVToZ0dc
 +FH+CVUO1BlziA51boTFldZ7/8J2yPfm6qn1c9yhvR3Cle3KZd4SRJkZulZXmHltBlj3
 PReMs2xCBTI+nYUaWBLGqNzmegWo6LN40sRBH+NWPxG2Plip8KFMz0EAwo7eMHaLoNub
 gyV/ePkjSPmKeKzrl6Y8ubPByXLuEJ4jqZqF+IjlduvCx/Y6HLs5/zeYOctwNiFG2Ycw
 GbJA==
X-Gm-Message-State: APjAAAXa37hABbtNB07/uKWpPRfkicJ/m4LRT3i1L5Opb6+cxlPAwNOd
 HbsGOTOClvAIK+lSZVlTZR+m4s3kHFx46x2iGpM=
X-Google-Smtp-Source: APXvYqxfst5CvLGkDYX1hM+1pCwvA12wTlx4CfhcmvnK7rSdpwqjzuJODINqQZ2f1SUQGfzkdM7TqkiZnSP6UkBHKvE=
X-Received: by 2002:a92:1588:: with SMTP id 8mr15690935ilv.276.1575662154375; 
 Fri, 06 Dec 2019 11:55:54 -0800 (PST)
MIME-Version: 1.0
References: <20191130225153.30111-1-aford173@gmail.com>
 <e8e429dd-4508-9835-fd01-825d2de8871e@kontron.de>
In-Reply-To: <e8e429dd-4508-9835-fd01-825d2de8871e@kontron.de>
From: Adam Ford <aford173@gmail.com>
Date: Fri, 6 Dec 2019 13:55:43 -0600
Message-ID: <CAHCN7xLkV1WC=9ACj1Mi8+uE8kRCEjCEe+Y36pXwkNeNrgrNVg@mail.gmail.com>
Subject: Re: [PATCH 1/2] crypto: caam: Change the i.MX8MQ check support all
 i.MX8M variants
To: Schrempf Frieder <frieder.schrempf@kontron.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_115556_417495_3B0F95EF 
X-CRM114-Status: GOOD (  21.42  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Aymen Sghaier <aymen.sghaier@nxp.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 =?UTF-8?Q?Horia_Geant=C4=83?= <horia.geanta@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 4, 2019 at 5:38 AM Schrempf Frieder
<frieder.schrempf@kontron.de> wrote:
>
> Hi Adam,
>
> On 30.11.19 23:51, Adam Ford wrote:
> > The i.MX8M Mini uses the same crypto engine as the i.MX8MQ, but
> > the driver is restricting the check to just the i.MX8MQ.
> >
> > This patch lets the driver support all i.MX8M Variants if enabled.
> >
> > Signed-off-by: Adam Ford <aford173@gmail.com>
>
> What about the following lines in run_descriptor_deco0()? Does this
> condition also apply to i.MX8MM?

I think that's a question for NXP.  I am not seeing that in the NXP
Linux Release, and I don't have an 8MQ to compare.

I was able to get the driver working on the i.MXMM with the patch.

NXP  Team,

Do you have any opinions on this?

adam
>
> drivers/crypto/caam/ctrl.c:
>
>         if (ctrlpriv->virt_en == 1 ||
>             /*
>              * Apparently on i.MX8MQ it doesn't matter if virt_en == 1
>              * and the following steps should be performed regardless
>              */
>             of_machine_is_compatible("fsl,imx8mq")) {
>                 clrsetbits_32(&ctrl->deco_rsr, 0, DECORSR_JR0);
>
>                 while (!(rd_reg32(&ctrl->deco_rsr) & DECORSR_VALID) &&
>                        --timeout)
>                         cpu_relax();
>
>                 timeout = 100000;
>         }
>
> Regards,
> Frieder
>
> >
> > diff --git a/drivers/crypto/caam/ctrl.c b/drivers/crypto/caam/ctrl.c
> > index db22777d59b4..1ce03f8961b6 100644
> > --- a/drivers/crypto/caam/ctrl.c
> > +++ b/drivers/crypto/caam/ctrl.c
> > @@ -527,7 +527,7 @@ static const struct soc_device_attribute caam_imx_soc_table[] = {
> >       { .soc_id = "i.MX6UL", .data = &caam_imx6ul_data },
> >       { .soc_id = "i.MX6*",  .data = &caam_imx6_data },
> >       { .soc_id = "i.MX7*",  .data = &caam_imx7_data },
> > -     { .soc_id = "i.MX8MQ", .data = &caam_imx7_data },
> > +     { .soc_id = "i.MX8M*", .data = &caam_imx7_data },
> >       { .family = "Freescale i.MX" },
> >       { /* sentinel */ }
> >   };
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
