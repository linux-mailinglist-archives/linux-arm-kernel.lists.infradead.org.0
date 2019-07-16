Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E746AC4B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 17:54:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CLF1+KWF954+5yZk0rNu6sj5FsgshhQKNL8DQ/vt8qM=; b=DuNnDm9eWnSN3g
	qzjPgdVQ9XwcuyDY8Pq3Ve41Aj9irAHG6L0JeKCmFkD1dcRhNeXrAvMMzEGWBofY1AC+1fnuyr3Kf
	GVg7utCecdBPVDDFQjiDJteEsY6dG7tM385+h1XAfF5yCi7pRKN/kDaTU6rqJEhcyFJUTBOumzJb0
	6kOLyk5V5+JlBdiwUntz3cwylaSKSQiOHf+QVNB5Gsb9NNWAPLfLO3hVILNs1mCjYG9d2PToWtgFU
	Z8epIZUxxEfOFUmNEYI/tLyMQ+a6xiDEDkgpaAOc3j15+SCMtBfhx8Dh/Lu9P1i89JTbSwkM5T68w
	ngt8dZkCEFdSgjIaw8XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnPmS-0006sn-Gb; Tue, 16 Jul 2019 15:54:16 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnPl8-0005xu-F5
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 15:52:55 +0000
Received: by mail-wr1-x443.google.com with SMTP id p17so21498059wrf.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 08:52:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=g4/LnDdA+06sof/xLsQmMbQHRCzvaeIzQEgPXpxIcrY=;
 b=DNEhFa5155bma4gi9Edf1Yj6PaP8/rc64s5VvCx5Add/DmSL9t9o9qxi6Y4JeFZycp
 aF0srA3QYWm0c187KyWift4NAb9VVcocltiiVaybGE6yT6+Uh2KwzdetEmAlNAGcIsSa
 HLVvDuMiQGQ1io8snnkxyqVGXyDT0n2jIU48TMij3UY0BVBCeKeR88VzjZtNmuXcZCuN
 OsHX/vh5B1MmMZ5R6CGo2DqUcXWAy3KHcJSFNod4qJDcm7vKsVnrnybw/8XVRr6j6w9z
 E+bei9n1sGX1uBiSCOGt1d9UoYxEJehyloJHixgirg97AfKq9xh04y3eIWFrOi6UsNph
 6HtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=g4/LnDdA+06sof/xLsQmMbQHRCzvaeIzQEgPXpxIcrY=;
 b=DRRcz/4NhIszJyYy0YI3FcQB+lxAmCgY8gOQQ6G+Gj9TTNuBk38idb4kWCYsVNXgiw
 doqOIw/COnewqBfg5RSoFyGUEtVpUtyrQ0/wOmlA693+IDMr08TizWd0suGp6Vinh7EI
 VzkPo11XfwJw1eLs4NdeQczy1Jn96zZVe5RldWtTdPZOGs4kwHqmkFRLn2ntVlIygI9x
 lAuIFXcHUmj+s9TqhAOtf80NH3tc+M4/54D3gvL/Ph/Ds/fhpUrvMzw2RiEcKVBEsmht
 jmRzcgaBHU4tLIrKos0ezhBmZibMQzPK4aPONXWrBteneoc62rwIsNPBB/FE3A1FiH3o
 0y/Q==
X-Gm-Message-State: APjAAAXI8I/Yw08B1Pr+mVsPVuVgciGI+ib6KgZaI9NliYO5soqNHKLA
 pJgD/JG0Z9OA4pbr9lrbARM=
X-Google-Smtp-Source: APXvYqz9reS0wYGZ0qWcAIyFS+EYd27c7NNOotzJmQRly+vqVmbCg6t6xud29k42XqvOCXkjL+vVJA==
X-Received: by 2002:adf:ed8a:: with SMTP id c10mr38084747wro.33.1563292372646; 
 Tue, 16 Jul 2019 08:52:52 -0700 (PDT)
Received: from localhost (smbhubinfra01.hotspot.hub-one.net. [213.174.99.146])
 by smtp.gmail.com with ESMTPSA id
 5sm19746642wmg.42.2019.07.16.08.52.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 16 Jul 2019 08:52:51 -0700 (PDT)
Date: Tue, 16 Jul 2019 09:39:35 +0200
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Mukesh Ojha <mojha@codeaurora.org>
Subject: Re: [PATCH 3/5] Input: s3c2410_ts: Use
 devm_platform_ioremap_resource()
Message-ID: <20190716073935.GE1182@penguin>
References: <1554362243-2888-1-git-send-email-mojha@codeaurora.org>
 <1554362243-2888-4-git-send-email-mojha@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1554362243-2888-4-git-send-email-mojha@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_085254_534256_1C269924 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: 0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 1.1 DATE_IN_PAST_06_12     Date: is 6 to 12 hours before Received: date
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 linux-input@vger.kernel.org, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mukesh,

On Thu, Apr 04, 2019 at 12:47:21PM +0530, Mukesh Ojha wrote:
> devm_platform_ioremap_resource() internally have platform_get_resource()
> and devm_ioremap_resource() in it. So instead of calling them separately
> use devm_platform_ioremap_resource() directly.
> 
> Signed-off-by: Mukesh Ojha <mojha@codeaurora.org>
> ---
>  drivers/input/touchscreen/s3c2410_ts.c | 10 +---------
>  1 file changed, 1 insertion(+), 9 deletions(-)
> 
> diff --git a/drivers/input/touchscreen/s3c2410_ts.c b/drivers/input/touchscreen/s3c2410_ts.c
> index 1173890..e11cdae 100644
> --- a/drivers/input/touchscreen/s3c2410_ts.c
> +++ b/drivers/input/touchscreen/s3c2410_ts.c
> @@ -242,7 +242,6 @@ static int s3c2410ts_probe(struct platform_device *pdev)
>  	struct s3c2410_ts_mach_info *info;
>  	struct device *dev = &pdev->dev;
>  	struct input_dev *input_dev;
> -	struct resource *res;
>  	int ret = -EINVAL;
>  
>  	/* Initialise input stuff */
> @@ -277,14 +276,7 @@ static int s3c2410ts_probe(struct platform_device *pdev)
>  		goto err_clk;
>  	}
>  
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	if (!res) {
> -		dev_err(dev, "no resource for registers\n");
> -		ret = -ENOENT;
> -		goto err_clk;
> -	}
> -
> -	ts.io = ioremap(res->start, resource_size(res));
> +	ts.io = devm_platform_ioremap_resource(pdev, 0);

This is not an equivalent transformation: the original code (rightly or
wrongly) did not request the memory regions described by 'res' while new
variant does.

Also you can't simply slap a single devm resource in a driver that does
not use managed resources as it messes up the release order.

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
