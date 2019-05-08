Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 014D517D91
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 17:54:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n954OxJqsSUOz9OxW/404i/3womJaHAz50Lxwj3oIF8=; b=DBV7xcUAUSOILS
	G0PuvT/bC1qxHTQKmLVBJVA2CtMJwcz3z08anBu7Nd5nPsudjliDgJd+PBX4TVXIMf2VIDXniWdXd
	i4yQgVu7wLK05Zxw1h/W0lJ0DI/q760SHW+iRYaqu9ka8gT5RXvbWOW/sYokIkLQW5OK818mg5K0I
	oJEyApKtc2eAxmxEos5mEvn0ThaaBs60PLRFto42S5+4cLSVOIeLgjAUD+AvFT/0mTYAXhGGbRbds
	GRCPBSdUiBlb1BH8qNzuoMUwsVY79epkHg6+brD1slWwD/r6QrHIY65P8jww3mjSUAnvmbu2W8GGh
	UX/DAxf2fEkSRhPqlc+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOOtI-0003pq-GY; Wed, 08 May 2019 15:53:56 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOOtA-0003oV-DW; Wed, 08 May 2019 15:53:50 +0000
Received: by mail-wr1-x442.google.com with SMTP id o4so27897386wra.3;
 Wed, 08 May 2019 08:53:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/INLHFLoO3fwx8sE75gtH7ePrD+/xqNv4SqcqLzKke8=;
 b=GQmxEZhssi+c6wCO0ryHOulQS9xtfLbea9bWWK3dnWvZa1Mr2LayNbiBL//0MiXoGR
 QvkuGYnR5H06nWZPMiGl/Er6W0EVzKZWGW8lURQRfQUfixDOOy7loSZ5fP1FnPlFzprJ
 8Wsr4/99zcCql7GKJRwPZmXvvVA0MUCG9PBEppYJqoBq5l6O3RX9VJU6XjYTEBC2c4Ul
 771AipqXZZ01pvfx3O8ZdqY0wze0k31qsdzDy6tcHFTSle4CjV4u2fUAavAudvmi6ngA
 WcIgemZm1zxjwXmhB+7e3WNbtaPpcKwa4Obmeo8+5DtqmFg2KstIrkkKiHyB8M1CSrDo
 GQHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/INLHFLoO3fwx8sE75gtH7ePrD+/xqNv4SqcqLzKke8=;
 b=G5/CN4OPiFwWLGydIcN1rOL5AwYsrSCJ2rM4C1DrEVrFlAdlXXVtXEcAtTlGDcwHEC
 kF37/1O5ePr5ppgW5GfR58ypc65sUDXVRYjPi7y/eGn7cgEU9iSwJ4dtxHQveDxv0xxk
 7FgEatCmsTfAZhNZVjdqZoHRiFdMYObdM3vyP+wJdJsYoSBCQjupLxhnbXUWD2mO8F64
 culGkxdbbCen6USG19u2MLL5xoTw3MlZpGWs3YRAhfJaJ9umK3whlUXuHEcb1dE0bI98
 8kbvkc1h32Q6wQQ46tacwYREVWwm4rLc6QaaiAoX0hKWlERs41pFmNdovH2q+vaca5M8
 fxPA==
X-Gm-Message-State: APjAAAUDzyW3U3X5/iun+v7sU4t/0vMz7xC2uaByJNuQhqkkN57/QabB
 czElfL9/xeAxyfkpw+mZmmI=
X-Google-Smtp-Source: APXvYqyuKISPo+x4BFl9nEqc/t4WkE6l5uUP6rQxJIgo0rWfg1qBLWT64oRs+vPdbL/TkD99TG/c6w==
X-Received: by 2002:adf:edc8:: with SMTP id v8mr28669098wro.206.1557330824343; 
 Wed, 08 May 2019 08:53:44 -0700 (PDT)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id c10sm36912386wrd.69.2019.05.08.08.53.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 08:53:43 -0700 (PDT)
Date: Wed, 8 May 2019 17:53:41 +0200
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Loys Ollivier <lollivier@baylibre.com>
Subject: Re: [RESEND PATCH] gnss: get serial speed from subdrivers
Message-ID: <20190508155341.GA1605@Red>
References: <1557322788-10403-1-git-send-email-lollivier@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557322788-10403-1-git-send-email-lollivier@baylibre.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_085348_670260_FB96D3D2 
X-CRM114-Status: GOOD (  19.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Johan Hovold <johan@kernel.org>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Colin Ian King <colin.king@canonical.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 08, 2019 at 03:39:48PM +0200, Loys Ollivier wrote:
> The default serial speed was hardcoded in the code.
> Rename current-speed to default-speed.
> Add a function parameter that lets the subdrivers specify their
> default speed.
> If not specified fallback to the device-tree default-speed.
> 
> Signed-off-by: Loys Ollivier <lollivier@baylibre.com>
> ---
> Hello,
> 
> This patch moves the currently hardcoded, default serial speed
> to the subdrivers.
> If the default speed is not specified by the subdriver then it is read
> from the device tree.
> 
> Cheers,
> Loys
> 
>  drivers/gnss/mtk.c    |  6 +++++-
>  drivers/gnss/serial.c | 21 +++++++++++++--------
>  drivers/gnss/serial.h |  3 ++-
>  drivers/gnss/ubx.c    |  3 ++-
>  4 files changed, 22 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gnss/mtk.c b/drivers/gnss/mtk.c
> index d1fc55560daf..a1a89f0cc75c 100644
> --- a/drivers/gnss/mtk.c
> +++ b/drivers/gnss/mtk.c
> @@ -16,6 +16,10 @@
>  
>  #include "serial.h"
>  
> +static uint serial_speed = 9600; /* Serial speed (baud rate) */
> +module_param(serial_speed, uint, 0644);
> +MODULE_PARM_DESC(serial_speed, "Serial baud rate (bit/s), (default = 9600)");
> +
>  struct mtk_data {
>  	struct regulator *vbackup;
>  	struct regulator *vcc;
> @@ -69,7 +73,7 @@ static int mtk_probe(struct serdev_device *serdev)
>  	struct mtk_data *data;
>  	int ret;
>  
> -	gserial = gnss_serial_allocate(serdev, sizeof(*data));
> +	gserial = gnss_serial_allocate(serdev, sizeof(*data), serial_speed);
>  	if (IS_ERR(gserial)) {
>  		ret = PTR_ERR(gserial);
>  		return ret;
> diff --git a/drivers/gnss/serial.c b/drivers/gnss/serial.c
> index def64b36d994..706fc5b46811 100644
> --- a/drivers/gnss/serial.c
> +++ b/drivers/gnss/serial.c
> @@ -103,17 +103,13 @@ static int gnss_serial_set_power(struct gnss_serial *gserial,
>  	return gserial->ops->set_power(gserial, state);
>  }
>  
> -/*
> - * FIXME: need to provide subdriver defaults or separate dt parsing from
> - * allocation.
> - */
>  static int gnss_serial_parse_dt(struct serdev_device *serdev)
>  {
>  	struct gnss_serial *gserial = serdev_device_get_drvdata(serdev);
>  	struct device_node *node = serdev->dev.of_node;
> -	u32 speed = 4800;
> +	uint speed;
>  
> -	of_property_read_u32(node, "current-speed", &speed);
> +	of_property_read_u32(node, "default-speed", &speed);

Hello

of_property_read_u32 use u32, so no reason to use uint instead.

Regards


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
