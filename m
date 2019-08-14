Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E63FD8D509
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 15:39:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3iZaFYa7I0AJTd5gGq639U7AYLKjQcP7dzWv5MRlcdQ=; b=FjHMPISWP+uCVX
	FSkVPz0OihsBzPablwnaZ6g4hg30/Qs4QPY+vdF7LetKFgO3Uqiao3CZRN8Ra4UGZ1BBH6kVn79A0
	1Ijui8Minmm0w2t3ZKYyC2UiYh+FhpB2iabvhoTjVXxN0MyoRGSKYzNANWvDbKv4o3N2tlFe0uu6x
	Jyoja5mbNLji3MpFxvRrUSlJOAubB0A8JcTBuk7v/ejpjGPPVrhde4hGsL/2mH64WDHKWOUjxTUjM
	+ok3syoyqeD1FMBGIedBWyyKEbZueYeFLrw1/ZsrSRAKW+5xpT3IkcEdj0OnuTh/6ctz9PP3BLkHE
	OIkYDJKu86jxYE9kXkqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxtUv-0000Je-6z; Wed, 14 Aug 2019 13:39:29 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxtUh-0000IO-3P
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 13:39:16 +0000
Received: by mail-pf1-x442.google.com with SMTP id w16so1086007pfn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 06:39:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=pEriqsQ7CQvEEvoCUgLilgpVMRHXmKM4NZ9ssbqI1u8=;
 b=iBwFtKvZ9Q7SNkpgJ55uaD8NoFW3yFTFslHTK7AC5RzcwI/2HQh/2HUnK7lN0X4Gp1
 I/fZ6a5699/WPbci9Yvf5/XDJu0eKE3A279hAovvbsfrRzXCDmqPSLt1iikVfehqSmxA
 F6APPLlwkqj731BP1W08E/b8aa92nOl8xsT/OlBKcuAojZhvxtpyzs7RsG3aRm2joXnc
 bUOVazG0hF7MQYW7zuQVadNGixMzjUYmhPcR/IvO7xprlLGEviJzCBU0sHBcrO5GwlhQ
 VLRIDqeKl2OcDXRY27iIKJNRW7vWTgLaqnPUT63TkYDlpXxN3lf3xP9BRAcNiiMPo00J
 TXPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=pEriqsQ7CQvEEvoCUgLilgpVMRHXmKM4NZ9ssbqI1u8=;
 b=R8BZmxSIDGZjlMjR9W6NDprjfCmQvboOa+Pb8SMkGC9H71NoZ76PLgFUKnQjdecW7n
 9++8N7SXveLUvuqJz2GE1Dg93lA3sXGy6gGMjmu7ieBFgllk7FHDJ5bHRAy1mGoxRtux
 Gp8Jq3092Z3M6nybRYl7ipVEVRdobTdLiRMLh+iyepFQHELnyfTQ6gyLJynGWZYoAg2W
 KTfy3vKtSAPVffHtheLGlUq7jQp7sz173OwZBRjv8v5YQae4DUNkafeCu6YRI6OrJ2bQ
 Fgas8z0vr3L/EMQX4RPg+igf3DollNK9/atycrprxQVpLpEsWvWKNeIvpo/4rHuuQq5b
 vLUQ==
X-Gm-Message-State: APjAAAW5tOHz+A2p2EjYXL3As9Tdpm0KQwPIaqiRR/czf701HJ4645VJ
 vhJzkU9Ge7VO2XCKghFcQPM=
X-Google-Smtp-Source: APXvYqwd4cYb6Hn+fTUOTqBOuQ3rOnxuBdLj5GdN/aMaxEctRsLNddhbrvjtpfPjobi5nALjn1Jecw==
X-Received: by 2002:a17:90a:d792:: with SMTP id
 z18mr7252334pju.36.1565789954050; 
 Wed, 14 Aug 2019 06:39:14 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id f20sm144273462pgg.56.2019.08.14.06.39.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 14 Aug 2019 06:39:13 -0700 (PDT)
Date: Wed, 14 Aug 2019 06:39:12 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH 2/3] hwmon: raspberrypi: update MODULE_AUTHOR() email
 address
Message-ID: <20190814133912.GA3222@roeck-us.net>
References: <1565720249-6549-1-git-send-email-wahrenst@gmx.net>
 <1565720249-6549-2-git-send-email-wahrenst@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1565720249-6549-2-git-send-email-wahrenst@gmx.net>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_063915_141020_DC038075 
X-CRM114-Status: GOOD (  16.15  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-hwmon@vger.kernel.org, Jean Delvare <jdelvare@suse.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, netdev@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 08:17:28PM +0200, Stefan Wahren wrote:
> The email address listed in MODULE_AUTHOR() will be disabled in the
> near future. Replace it with my private one.
> 
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>

Applied to hwmon-next.

Thanks,
Guenter

> ---
>  drivers/hwmon/raspberrypi-hwmon.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> --
> 2.7.4
> 
> diff --git a/drivers/hwmon/raspberrypi-hwmon.c b/drivers/hwmon/raspberrypi-hwmon.c
> index efe4bb1..d3a64a3 100644
> --- a/drivers/hwmon/raspberrypi-hwmon.c
> +++ b/drivers/hwmon/raspberrypi-hwmon.c
> @@ -146,7 +146,7 @@ static struct platform_driver rpi_hwmon_driver = {
>  };
>  module_platform_driver(rpi_hwmon_driver);
> 
> -MODULE_AUTHOR("Stefan Wahren <stefan.wahren@i2se.com>");
> +MODULE_AUTHOR("Stefan Wahren <wahrenst@gmx.net>");
>  MODULE_DESCRIPTION("Raspberry Pi voltage sensor driver");
>  MODULE_LICENSE("GPL v2");
>  MODULE_ALIAS("platform:raspberrypi-hwmon");

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
