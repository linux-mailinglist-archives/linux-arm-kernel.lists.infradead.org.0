Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD6BDCF55B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 10:54:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SjoI+SLq2uVdpm2243tOCBhW55znOjXIBHregh6JsCA=; b=fkrIaq+4GCQlhGNyjIqXF8VOyZ
	1L9jQENff68OTjvCdt9yf3aIt9p7og11bOzCu13C6J/4AmYY6UG0LtG5smiw/VTAqSFVIPHHcSWd7
	n7IUk8ykKRpIW/UxUXhR3tFgh8E+Ubu8iw3m1z1yfL6Qhlqq9TW3TPPRh1vEHe+1P/zpuipXmiIV5
	NZmbwURZxvDLrDaxVccu5OVoQcxT1aWL8wbmm8TPn/PTN1es0taoZrNOHXQ1baalr/doa56R6ibDK
	k9yqVz2PVWPq2IWv+vh5gO0ojxy0ZfQr20cU+0skTxU6WMGfLFmjT9oCp+88iAffaZ0AV2L8mcMOA
	2mnzd8Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHlGP-00034i-Um; Tue, 08 Oct 2019 08:54:37 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHlGJ-00033G-EW
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 08:54:32 +0000
Received: by mail-wm1-x342.google.com with SMTP id m18so2240965wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 01:54:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=references:user-agent:from:to:subject:in-reply-to:date:message-id
 :mime-version; bh=jPjc7kEf9F+Pv9xjqePtdYZ594Xw4pebrrSpcO4H5N4=;
 b=VXbQXbEiRyeIqlW0AZpSfsqRElc3PukoxYh/xW9e2HGTceQ5yawq4mum9YQutGvzhI
 0RLQSx6WZ33d1ebeiZyKWg2KdYU/hzjwfAl++HsNPCDFIQqrqlqOsSoazQWcJlJL01tZ
 38ZpAVJ1R0scyy+S3wEqiI4JfYYMuasN8lYUUevJ4vsryturfwddfvGSXJzd07fbiyan
 7tOI/H0Ghup0R9vvIp6Fg0bYBmAbF4+7ZfZ+Z+wLJBwr0dnnvfeVNXxhGu/uNm6c7ShG
 N01T7YXz96jpOGivMBq7UDtFKrLnuzCJc1p78wOZXdkkJnsUNR4RoJvNiZh0w37P0yiw
 wGcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:subject
 :in-reply-to:date:message-id:mime-version;
 bh=jPjc7kEf9F+Pv9xjqePtdYZ594Xw4pebrrSpcO4H5N4=;
 b=kJ20IjcFkL9guUHaS4n+6D9kGQwuPao6tgWRmVr7w3FSjnumwtPb1r+wcigLiKNEwo
 bN4WuLd9WVCQURU9KqNpeG2Pfgzo+yNtswLqSLo88prP9nqvbt5OafGWwcUURealCg+k
 KzGqPQhsNztJXNBe5BuwXRhUGcxemVfwqtjeGWSfJJvDgzNUKs4I5Y9lQSTvTo+XlniO
 sn0//ZEHnBKQPDRPoQXSqeaoGQU3R/HXemkt64wDIIon2jrDzPyBV0jB1LIl3gFsFxn7
 nAbXRzt04jvf5R9bohsKMfy14AziRIJbCvjYHFzg4/04rw/1PfrMHddOPcagN4QLVrbI
 7hZw==
X-Gm-Message-State: APjAAAWp3fEFahnmkbKv9aCy6kg4JVXltMAo5a19Q6A2kv6vTySuL4IM
 Jjr+kFiOiL7+U+BsJftC1LQ=
X-Google-Smtp-Source: APXvYqy/HvGfAU/ArSF6LuxodfAOeqkQ5yg5iRJ5pMsJAj0kWWuPbGswQqfOhH3/3PSGAbUKm97rGA==
X-Received: by 2002:a05:600c:305:: with SMTP id
 q5mr2772331wmd.67.1570524869566; 
 Tue, 08 Oct 2019 01:54:29 -0700 (PDT)
Received: from arch-late (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id g185sm1948555wme.10.2019.10.08.01.54.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 01:54:28 -0700 (PDT)
References: <1570515459-25609-1-git-send-email-hariprasad.kelam@gmail.com>
User-agent: mu4e 1.2.0; emacs 27.0.50
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: media: imx: make use
 devm_platform_ioremap_resource
In-reply-to: <1570515459-25609-1-git-send-email-hariprasad.kelam@gmail.com>
Date: Tue, 08 Oct 2019 09:54:26 +0100
Message-ID: <m3lftv62il.fsf@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_015431_515030_475C4358 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: 1.4 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 1.0 HK_RANDOM_FROM         From username looks random
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rmfrfs[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hariprasad,
Thanks for the patch
On Tue 08 Oct 2019 at 07:17, nobody wrote:
> From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
>

Something went wrong formating the patch email, no To: nor From:

>
> fix below issue reported by coccicheck
> drivers/staging//media/imx/imx7-mipi-csis.c:973:1-12: WARNING: Use
> devm_platform_ioremap_resource for state -> regs
>

Sorry, but someone else, Jeeeun, already sent a patch for this
[0]. Thanks anyway.

---
Cheers,
	Rui


[0]: https://lore.kernel.org/linux-media/m3wodvgec4.fsf@gmail.com/

>
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> ---
>  drivers/staging/media/imx/imx7-mipi-csis.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
> index 73d8354..bf21db3 100644
> --- a/drivers/staging/media/imx/imx7-mipi-csis.c
> +++ b/drivers/staging/media/imx/imx7-mipi-csis.c
> @@ -947,7 +947,6 @@ static void mipi_csis_debugfs_exit(struct csi_state *state)
>  static int mipi_csis_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
> -	struct resource *mem_res;
>  	struct csi_state *state;
>  	int ret;
>
> @@ -969,8 +968,7 @@ static int mipi_csis_probe(struct platform_device *pdev)
>  	mipi_csis_phy_init(state);
>  	mipi_csis_phy_reset(state);
>
> -	mem_res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	state->regs = devm_ioremap_resource(dev, mem_res);
> +	state->regs = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(state->regs))
>  		return PTR_ERR(state->regs);


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
