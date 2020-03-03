Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FECD176A20
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 02:41:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3lKex+6qE+9MEbAePGnOUBM++X5MYW1mb7xnotkLOZE=; b=G/O/o6PVPDmIx5
	JcK//U3XC4zgF6yrB5NXWyE8/5O9w6ciPGoHgdIY6XMQ2aBbTU+xD1FgC25Dz2Ic8JPIhupk5C9qd
	bbeR+2Mld3P440OzkWfKvV8F9OESQTNF5G+vmokt84uFdktS+kqwH/QufTNZkYkYefwc9vh4JReAN
	3+4GCAZX4FzzuS4XM12BYCWnHzAz6SNGPLznH78J1ryu3t4iy3PdoQYbRwv+dJUMaPjF3OSyONutV
	ocoAHe0UlXY2nRqYzeT+dox1cNWIPf82MekBAlD8qhKs26Tw7Ew6S6gm8GdvtWYCy7NZ/9y5gapNd
	W9C5VbWz4JIQk9N3r1rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8wZ7-0005b7-Br; Tue, 03 Mar 2020 01:41:45 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8wZ0-0005aC-8A
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 01:41:39 +0000
Received: by mail-ot1-f66.google.com with SMTP id i14so1421702otp.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 17:41:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wTmd93QvHJKnRP/iE9AlgpSex86ml4dgAiKBLvXi4d8=;
 b=j7edoqBbfbisCWGOrMmI3VSGd+Bkw2j42czNqPOMcbKKwk2Gv1AJ41kA+vtMquHJxE
 o6s5J14ezR6+Ztj7qF2kd7Hw+HX2bOlbJISo23H7+HDFpM473W3lZvN5avsnogbEGhUj
 LOFYOUb3kbpyxoiA4s9b26FxOH/e5RwC47U9BzkW0W2UZMXPxXGYOADK95BS/JKOVfxQ
 yd2QS6NAjEVHAY7mOPva2XxHIXV0TOYLEF6wfzQFwXhYdcmdrxAOomDykIbsLhofayQG
 iFvLWBVEeDpHh1yvlKdRAWI9zERjd7cGc/FsN9z3vE1VnpzjsYchgz0Us7bTx3DUcCaa
 AYsQ==
X-Gm-Message-State: ANhLgQ2zlGCv22hH4vb5IMnlzSx9EoQG4XAEKf8+3n3ZQcO2t3Yr5RXs
 2iN2uLxSYocfwRb0aCdcSQ==
X-Google-Smtp-Source: ADFU+vsdNg78DFlU+1lj7jVL9V1hy4eNjciajaJxnlZGh0to9M1K+WoyXSAT3r6zp73f0HaM+PIrow==
X-Received: by 2002:a9d:836:: with SMTP id 51mr1698659oty.318.1583199694975;
 Mon, 02 Mar 2020 17:41:34 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 16sm6365123otc.33.2020.03.02.17.41.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 17:41:34 -0800 (PST)
Received: (nullmailer pid 25998 invoked by uid 1000);
 Tue, 03 Mar 2020 01:41:33 -0000
Date: Mon, 2 Mar 2020 19:41:33 -0600
From: Rob Herring <robh@kernel.org>
To: Shengjiu Wang <shengjiu.wang@nxp.com>
Subject: Re: [PATCH v4 1/8] ASoC: dt-bindings: fsl_asrc: Change asrc-width to
 asrc-format
Message-ID: <20200303014133.GA24596@bogus>
References: <cover.1583039752.git.shengjiu.wang@nxp.com>
 <872c2e1082de6348318e14ccd31884d62355c282.1583039752.git.shengjiu.wang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <872c2e1082de6348318e14ccd31884d62355c282.1583039752.git.shengjiu.wang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_174138_291834_48E8027B 
X-CRM114-Status: GOOD (  14.57  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, timur@kernel.org, Xiubo.Lee@gmail.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, tiwai@suse.com,
 lgirdwood@gmail.com, perex@perex.cz, nicoleotsuka@gmail.com,
 broonie@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Mar 01, 2020 at 01:24:12PM +0800, Shengjiu Wang wrote:
> asrc_format is more inteligent, which is align with the alsa
> definition snd_pcm_format_t, we don't need to convert it to
> format in driver, and it can distinguish S24_LE & S24_3LE.
> 
> Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
> ---
>  Documentation/devicetree/bindings/sound/fsl,asrc.txt | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/sound/fsl,asrc.txt b/Documentation/devicetree/bindings/sound/fsl,asrc.txt
> index cb9a25165503..0cbb86c026d5 100644
> --- a/Documentation/devicetree/bindings/sound/fsl,asrc.txt
> +++ b/Documentation/devicetree/bindings/sound/fsl,asrc.txt
> @@ -38,7 +38,9 @@ Required properties:
>  
>     - fsl,asrc-rate	: Defines a mutual sample rate used by DPCM Back Ends.
>  
> -   - fsl,asrc-width	: Defines a mutual sample width used by DPCM Back Ends.
> +   - fsl,asrc-format	: Defines a mutual sample format used by DPCM Back
> +			  Ends. The value is one of SNDRV_PCM_FORMAT_XX in
> +			  "include/uapi/sound/asound.h"

You can't just change properties. They are an ABI.

>  
>     - fsl,asrc-clk-map   : Defines clock map used in driver. which is required
>  			  by imx8qm/imx8qxp platform
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
