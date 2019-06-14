Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C31464EB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 18:48:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wUdNPDC/6568UkQrrOeAZE5kc+xghnV1BJ2hFV1ZWO0=; b=HpQWlDZsNucjTJ
	5o7IviZTCrMkVNoeS/gb1wypWXJXb+Eh73xuVhRQ83LCfsSu5v+nRePgzs1fKWS46ZI/hlwfE9RV8
	e3dZApsXI9fPJWH8aNYO0oYYiz55JC7FfYRiWXqRiADBrn1ro79jGH/JQLJZ0eiiUCPkWUR3Ztxm6
	tyYSujAG1amylrNsJTKSvwYeKEzIt8dpr+cNoGATnMMcw38Nqu2tXbZHl3CRfbJbfIY6nb6R9xnak
	W5h8dBshWRrinxLtA+48JOxF3PjUa4VFcc6i9IkKXD0jZwunpVD8SpgXeqBGjVR9zUQ+w26zNpkXn
	UjzXDctnMcCQKav239IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbpNL-0005sG-UC; Fri, 14 Jun 2019 16:48:27 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbpLA-0003UY-Tg
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 16:46:17 +0000
Received: by mail-pl1-x642.google.com with SMTP id t7so1234880plr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 09:46:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=z0Q8djqHX6ZMfWsK/PWD8i+5lV9BAONQ6vZFum0/x6M=;
 b=nuer/AobPoxP8KxkPKIEp1Pi4bj1OThodc7YnaduLgelE+l0GQKCmRr/yADUxqFazs
 0MRyGpcxmigz70ZivLMmBCV6QlSBJG62YKtUaJBR8SPq1dyA6a9S3vHpY4ZWGeJYGahV
 SS9P7gw0joJ2q1FzO3NgGsPLKXcAHByLH0zCm5nfIj1mLtB28XB2dbZoU/iV1QEx0dDr
 byc+3Eu0tePDzDCYi/ymYIFFeWVsn+r5y1rCOS/cZeAlHm6EVrf0Qx5PD1ZsePldomuX
 QaR1i58UD4J29VBGZOA03DeCsZWcJpMLKqJtBdYJqynWj5tVoSNODXu52nRsqYNPIjdW
 fg2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=z0Q8djqHX6ZMfWsK/PWD8i+5lV9BAONQ6vZFum0/x6M=;
 b=g67TdgVSYEOrdbTXjMhBoi119wY9iM9UaHoGZ5LGkXtINe9XZDyQ1yKNxd5fW1Ad0P
 sYn7MXKgMEt6tusPhx6vzhCdeyyzQ3XUTBx/0g2Qt2vAy4mpPgiC+ov0CbF8jYKfGMEH
 KZxccm76du61jr5xgOBZPlQ5eeBxXcpXXH8bVSBNVHDATZ4008NdYY1eFELzk8ns4D5q
 tJq5S5gYjdp6JRB2Kdix9NY/3mAL+1kggcA93JHmeP+CmNGdABqI6cO+OIWc4HA/sPlp
 oijVkcPpC/Vrg4EGWgR8SIOKdn2urz3h8V2FW76oM8tLUvqjlrkhAsIL8WntKdhn/BPz
 OlFA==
X-Gm-Message-State: APjAAAVRu+f/tRHqL5Hf3DQH9Nz3rOAp4fH8YgXWOaFjYB679qY1hA90
 ybchMaDqED+ZTZsWKqmSfkxTMwe7
X-Google-Smtp-Source: APXvYqwz29BHb+7kecHv8rdqjLtchfGJlP2LhtF80HB0TpaLtUPO64PROcPKpcZVRwui3EO+D5ubyw==
X-Received: by 2002:a17:902:988b:: with SMTP id
 s11mr67503607plp.216.1560530771670; 
 Fri, 14 Jun 2019 09:46:11 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id 139sm3433474pfw.152.2019.06.14.09.46.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Jun 2019 09:46:10 -0700 (PDT)
Date: Fri, 14 Jun 2019 09:46:09 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Ken Sloat <KSloat@aampglobal.com>
Subject: Re: [PATCH v2 1/1] watchdog: atmel: atmel-sama5d4-wdt: Disable
 watchdog on system suspend
Message-ID: <20190614164609.GA29814@roeck-us.net>
References: <20190614125310.29458-1-ksloat@aampglobal.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614125310.29458-1-ksloat@aampglobal.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_094613_009354_DEE3B24D 
X-CRM114-Status: GOOD (  21.42  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ludovic.desroches@microchip.com" <ludovic.desroches@microchip.com>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 12:53:22PM +0000, Ken Sloat wrote:
> From: Ken Sloat <ksloat@aampglobal.com>
> 
> Currently, the atmel-sama5d4-wdt continues to run after system suspend.
> Unless the system resumes within the watchdog timeout period so the
> userspace can kick it, the system will be reset. This change disables
> the watchdog on suspend if it is active and re-enables on resume. These
> actions occur during the late and early phases of suspend and resume
> respectively to minimize chances where a lock could occur while the
> watchdog is disabled.
> 
> Signed-off-by: Ken Sloat <ksloat@aampglobal.com>
> ---
>  Changes in v2:
>  -Consolidate resume and resume early statements.
> 
>  drivers/watchdog/sama5d4_wdt.c | 21 ++++++++++++++++++---
>  1 file changed, 18 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/watchdog/sama5d4_wdt.c b/drivers/watchdog/sama5d4_wdt.c
> index 111695223aae..0d123f8cbcc6 100644
> --- a/drivers/watchdog/sama5d4_wdt.c
> +++ b/drivers/watchdog/sama5d4_wdt.c
> @@ -280,7 +280,17 @@ static const struct of_device_id sama5d4_wdt_of_match[] = {
>  MODULE_DEVICE_TABLE(of, sama5d4_wdt_of_match);
>  
>  #ifdef CONFIG_PM_SLEEP
> -static int sama5d4_wdt_resume(struct device *dev)
> +static int sama5d4_wdt_suspend_late(struct device *dev)
> +{
> +	struct sama5d4_wdt *wdt = dev_get_drvdata(dev);
> +
> +	if (watchdog_active(&wdt->wdd))
> +		sama5d4_wdt_stop(&wdt->wdd);
> +
> +	return 0;
> +}
> +
> +static int sama5d4_wdt_resume_early(struct device *dev)
>  {
>  	struct sama5d4_wdt *wdt = dev_get_drvdata(dev);
>  
> @@ -291,12 +301,17 @@ static int sama5d4_wdt_resume(struct device *dev)
>  	 */
>  	sama5d4_wdt_init(wdt);
>  
> +	if (watchdog_active(&wdt->wdd))
> +		sama5d4_wdt_start(&wdt->wdd);
> +

The call to sama5d4_wdt_init() above now explicitly stops the watchdog
even if we want to (re)start it. I think this would be better handled
with an else case here

	else
		sama5d4_wdt_stop(&wdt->wdd);

Guenter

>  	return 0;
>  }
>  #endif
>  
> -static SIMPLE_DEV_PM_OPS(sama5d4_wdt_pm_ops, NULL,
> -			 sama5d4_wdt_resume);
> +static const struct dev_pm_ops sama5d4_wdt_pm_ops = {
> +	SET_LATE_SYSTEM_SLEEP_PM_OPS(sama5d4_wdt_suspend_late,
> +			sama5d4_wdt_resume_early)
> +};
>  
>  static struct platform_driver sama5d4_wdt_driver = {
>  	.probe		= sama5d4_wdt_probe,
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
