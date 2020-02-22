Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93FE2168FE9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 16:56:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/8k4bLgNav6Q4vNsP1+9cLuf5jQeSniJy8a2ONnTR4s=; b=O/kwwX/MBd+fROJX0aFVRN+mB
	4AtjIh0ppOZVHCAPXG5TW6Vv5hxPljLfg9SuMDFnvjvDyWvpzKz14xS6z0x6y5vSIj4kzYueLE9A6
	BcMXRPeyz9Uv2L0jdvqcYXYyjM0JD0YUGkvbcbxd7j6w7VqXNQiazsspGDPzyFnFaE86CpKcSOPo4
	CDSQ8i18xCXj7NW3NI+2eZ/pTCSdLVDuJx2/F8jZPObNSg8KGeeTUHxOFU5ftFofiA9QGE1QFmh5q
	gCiZpnTlPQ1w+46PoQAptv2X/uszNGVJjDy7v7X1IvS0ubFCDyZWc38sdBIfryJTUTpuF17GavVN8
	6KjKwOreA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5X8H-0005sJ-2A; Sat, 22 Feb 2020 15:55:57 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5X89-0005rn-PK
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 15:55:51 +0000
Received: by mail-pj1-x1043.google.com with SMTP id j17so2121393pjz.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 22 Feb 2020 07:55:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=xBBBMhUIQhUE2f9rKIV0ran2b+vF87fdNtOXyBakS7w=;
 b=Vex6A7caHfueCivvuB68sR3wUUvABHwkEuux7USfTw6eBrrIWO4trPVm66SQy0njXD
 2FzojX2T/Bz7mCjktrl7sAJhJRXjO2d+NUYyJjSXrqEuqD96p7psuvdvPy3E9e2NJGBB
 2PzTANbFlc7KFR9OsIL/tg7I2iHCGWHqxtqZAhCokXPLXyPiDAB3ca/Vv7TEnild+j4f
 Gye9cjWaPoRu/bAsy0prcJynaZseQwFjzOTSJm9zUJ4rrJOkrIdBrieTsL3ZLu66hJmt
 h2bZ+RCuMMNMTLAydAJeCnREaaCCND1d9JeImVv2ZJVrJO10UWhY7B4TdpFxR4+IIErb
 y8UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=xBBBMhUIQhUE2f9rKIV0ran2b+vF87fdNtOXyBakS7w=;
 b=kr3bXHTEKq6NEmrvKDPuxnot3vLtLptwWWHT0Dv4HGoT20J2nV4abVi9pxb5ClCvP+
 3NZ7o+/2shXvDZsOt5VrbkUwj1JBrHhy8xSAd6j8gYBe0Q0tjVtV5bLBAOdk+6B0Zydh
 vU7jgWMq1255P7X7+fBbdP+xWSHe0rFl0cKg4QLuCt0dt6+MKR0fP4e58XFtoXYULekB
 K0fj0LVtoQSUVMnLIyIK1v93b9JYAvMhtCmu9XqSNBFOKwx891XEaTCOQVnX7OpYSn7Q
 n6b73AKGqYRKPIf7/HAX4kT0qsSRAGA1gqDpgeR9SjS3WjJLmm4aaLF9e/tcw6/DQQZN
 Eskw==
X-Gm-Message-State: APjAAAWq5bQKLmy6IaFxa02BCL6eTOwLvCLFU3yfMsK0d+FLrFZkN0s3
 Y4j8CRtbLKoF4ved3+6O5tA=
X-Google-Smtp-Source: APXvYqxarWw25HR6eJgr5jn1aGOQGyPF2NF5phA2vFgKlpU8qKGocjNHXL74q/xw5OO5iLYG0mkIPA==
X-Received: by 2002:a17:902:b484:: with SMTP id
 y4mr41025827plr.126.1582386948559; 
 Sat, 22 Feb 2020 07:55:48 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 o6sm3342655pfg.180.2020.02.22.07.55.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 22 Feb 2020 07:55:47 -0800 (PST)
Subject: Re: [PATCH 1/3] watchdog: imx_sc_wdt: Remove unused includes
To: Anson Huang <Anson.Huang@nxp.com>, wim@linux-watchdog.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-watchdog@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <1582250430-8872-1-git-send-email-Anson.Huang@nxp.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <74657776-ebee-555f-431c-00b65ba83ca9@roeck-us.net>
Date: Sat, 22 Feb 2020 07:55:46 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1582250430-8872-1-git-send-email-Anson.Huang@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_075549_824586_A45B86CC 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linux-imx@nxp.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/20/20 6:00 PM, Anson Huang wrote:
> There is nothing in use from init.h/reboot.h, remove them.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>   drivers/watchdog/imx_sc_wdt.c | 2 --
>   1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/watchdog/imx_sc_wdt.c b/drivers/watchdog/imx_sc_wdt.c
> index 8ed89f0..60a3246 100644
> --- a/drivers/watchdog/imx_sc_wdt.c
> +++ b/drivers/watchdog/imx_sc_wdt.c
> @@ -6,13 +6,11 @@
>   #include <linux/arm-smccc.h>
>   #include <linux/firmware/imx/sci.h>
>   #include <linux/io.h>
> -#include <linux/init.h>
>   #include <linux/kernel.h>
>   #include <linux/module.h>
>   #include <linux/moduleparam.h>
>   #include <linux/of.h>
>   #include <linux/platform_device.h>
> -#include <linux/reboot.h>
>   #include <linux/watchdog.h>
>   
>   #define DEFAULT_TIMEOUT 60
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
