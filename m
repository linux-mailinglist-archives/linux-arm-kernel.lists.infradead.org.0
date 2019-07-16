Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EAEB6AC3F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 17:53:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aKI6Du9riaGyUBJYR+fXyhyGRkHSIXTD/e81YlMWOXU=; b=Qyk4YHtG0CdGo5
	Kt7P0FKRs0atXVKXtTnIrecg0GozTYZDtkxyBvwmgioD2g/w0v2rxW3xvSnh47CgdMbUaBcz0dcMG
	PINPe56Gbh8xpnI5dBWc6sFxv/XT9Ncb95OBQ9Qr8mtzJmBZTYZPyb835SwUF24X4r87n8qnbUK0d
	+w7bBUqYLwwA1yvIiK9v3kYadf5vIwgkteBdc+LTqCjC6gCFvsZ3SsnYyanbCJQoRQZ5dcpB0SDL3
	GhFv/GTMAqn6MzIHD+TYYNyMU7TWDd9XQMedTJp48u3Zen2z2tNIGLUvdFL5C3RHWkqjhfqHxlSDQ
	5CgPCQBaLv/sf/z6Eglw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnPlY-00067R-U7; Tue, 16 Jul 2019 15:53:20 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnPl3-0005tV-1o
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 15:52:50 +0000
Received: by mail-wm1-x342.google.com with SMTP id s3so19189128wms.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 08:52:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=JHEJAcHpxpqB/5WwCVp7qv0sj+5JXZzrvNuF6df3GOM=;
 b=ryj1mNYfTGZoWWwcTcXw/EOHE4YvwjuhI8m8R3lIwQPFl3Xkn2yivg9ZDbpwWTVgco
 oKO5nPBPttR30M0505XzZygey9PRJ5IVnbW3ajsZnzZvi/Rz055QaWaE0X1h+iVtj3Nm
 H1JO2fj7rE39WJNMyVOLELFTofA8DRCaVSgjyz3ssxx+Spev0nJa1nPdKNAAR+5lGOuX
 kiuH0Y3HaxxfLzvJ1uBjSuCm3LFaCR4DlaVw5PqRHkQwCRXpAPbqraCjub9/I0DutHV4
 CYcpIWj3wxV9eFmnXBgKsz401uR3M/H5MA4E84tJCMM3LhYJAn+/gBmLrtlYZrtVeCKP
 CUGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JHEJAcHpxpqB/5WwCVp7qv0sj+5JXZzrvNuF6df3GOM=;
 b=Fbm+sc78djTQi9kweWj9wtg0sVjFAZRT70FSajQH0Jnrrjjvyde4Ol9YNysjGDxjEG
 VO/MGcFYiyrQVVVshQN/M0Y/2TE1F9vCV+V4gUtuJEb32ObY373Lr9uCeVQluKXJBZ0X
 gMKNFmxUwingfFocnIrNKEXv38pnzMLVbQrwlhMQ2myU65GmkZG4bX/h5uyVnNmeL2Hj
 mzSzxmmC8lvbSJ345vm1X6fCdAC5/UlsRnuuqlT3gzS9o3AdSFu8KNBqN9trs545XXZ0
 m4Gdj29k7JRakEZpVSHyimnm1CCklznS5nKhWo8gSAgjsE/Rxc2kIzao8Xr3SX/YNZc1
 liNQ==
X-Gm-Message-State: APjAAAW56j9iU+FUyrxJT9fDGnt1soa3S14wTNPofWl74KSh4TcrORzb
 uwrj5JUfjvxB5mhFKuwktWI=
X-Google-Smtp-Source: APXvYqyErcXiLrrh4SRjL3HTBO2DkdGSpCuxmTLN02YykIsCihI8eV96X3gn+bCTQy26xG6LJJAuqg==
X-Received: by 2002:a05:600c:20d:: with SMTP id
 13mr31417888wmi.141.1563292367161; 
 Tue, 16 Jul 2019 08:52:47 -0700 (PDT)
Received: from localhost (smbhubinfra01.hotspot.hub-one.net. [213.174.99.146])
 by smtp.gmail.com with ESMTPSA id
 o20sm48698020wrh.8.2019.07.16.08.52.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 16 Jul 2019 08:52:46 -0700 (PDT)
Date: Tue, 16 Jul 2019 09:32:13 +0200
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Mukesh Ojha <mojha@codeaurora.org>
Subject: Re: [PATCH 2/5] Input: mxs-lradc-ts.c: Use
 devm_platform_ioremap_resource()
Message-ID: <20190716073213.GB1182@penguin>
References: <1554362243-2888-1-git-send-email-mojha@codeaurora.org>
 <1554362243-2888-3-git-send-email-mojha@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1554362243-2888-3-git-send-email-mojha@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_085249_092028_E73A4633 
X-CRM114-Status: GOOD (  14.68  )
X-Spam-Score: 0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

On Thu, Apr 04, 2019 at 12:47:20PM +0530, Mukesh Ojha wrote:
> devm_platform_ioremap_resource() internally have platform_get_resource()
> and devm_ioremap_resource() in it. So instead of calling them separately
> use devm_platform_ioremap_resource() directly.
> 
> Signed-off-by: Mukesh Ojha <mojha@codeaurora.org>
> ---
>  drivers/input/touchscreen/mxs-lradc-ts.c | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
> 
> diff --git a/drivers/input/touchscreen/mxs-lradc-ts.c b/drivers/input/touchscreen/mxs-lradc-ts.c
> index c850b51..af047fa 100644
> --- a/drivers/input/touchscreen/mxs-lradc-ts.c
> +++ b/drivers/input/touchscreen/mxs-lradc-ts.c
> @@ -615,7 +615,6 @@ static int mxs_lradc_ts_probe(struct platform_device *pdev)
>  	struct device_node *node = dev->parent->of_node;
>  	struct mxs_lradc *lradc = dev_get_drvdata(dev->parent);
>  	struct mxs_lradc_ts *ts;
> -	struct resource *iores;
>  	int ret, irq, virq, i;
>  	u32 ts_wires = 0, adapt;
>  
> @@ -629,10 +628,7 @@ static int mxs_lradc_ts_probe(struct platform_device *pdev)
>  	ts->dev = dev;
>  	spin_lock_init(&ts->lock);
>  
> -	iores = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	if (!iores)
> -		return -EINVAL;
> -	ts->base = devm_ioremap(dev, iores->start, resource_size(iores));
> +	ts->base = devm_platform_ioremap_resource(pdev, 0);
>  	if (!ts->base)
>  		return -ENOMEM;

This driver did not implement error handling properly (should have used
IS_ERR()/PTR_ERR()), I adjusted and applied.

Thanks.

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
