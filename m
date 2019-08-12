Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6842089FB9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 15:30:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/ZAFusEfvBKech17+cpzSCbvcaVPfKtOYqtCDiMO93U=; b=iZ2xenvTXxmgZIRFE87ScZlsz
	RfNXmMXAh9fwcMcPbZCzw3D7z0N98Rr8Y/x03RFTlHndRExPKWAzXmzX2fxLDrlPafC1bIsvOQfHm
	J1tb2FEk5Iu3HGXxKOSmXzdHuad06aggxbNKnSCUKRGr/IgkrvGXiJ8zEPj7ffGbdZJ1UmOYUEnBV
	4x4d1qmHZ7mJT82G0kgAMH3AhMR0kCGhnR0lduGVRE2K2EyN0L//9PXOod6eVlZXWtDvIPIAzgJNn
	n9XCHhcaJA8+p+DWO5rIL8wBNg+oj0MYxBpVV1c22wEO2P8l+LKHfuieCSltYIxQACS9h5g1QhGNe
	YDj6I0vdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxAP7-0000dn-17; Mon, 12 Aug 2019 13:30:29 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxAOs-0000d0-C0
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 13:30:15 +0000
Received: by mail-pl1-x643.google.com with SMTP id a93so47824828pla.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 06:30:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=LzmsQjTfCAGfzgibtgJwWGGyOUUejcSfXVXPD/fec0Q=;
 b=amI4Hi4DT6040meOqfNQLY2WyBYscAzRYwN6NIwGbgHq5vJuPvt+GjCO+OqaZbS5+n
 VVRYwOqdCv125crYWfUlXLIkcpJyFTzEn+cOmfGegKjmOQiKXSQdHODgyXXfUqGLN3WB
 KmB8ODgHLEy6fGHVju3bNibRry7jW2hRVi0tPH8nR4gPHY7wEbh80/DMsTpSJRG32aNu
 s8i/zn/do1aJfY2rnIdINvOmhe+NdjskEzgNgJJ43pnhTRzW3TcNfGejpmvRGHZSiQ+1
 X2estHNsOoeeEddAwvLDkmejJmzYZH6W8tsj0/6N6PT1f18MhXmQeJfLGUfTMWpVY5sz
 jNqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=LzmsQjTfCAGfzgibtgJwWGGyOUUejcSfXVXPD/fec0Q=;
 b=H16kyIHn3SceN2NACefWJL3sNHw4kkhaQcy140eNNVqDrVlboK8eY+fXDkQxC85mIo
 BJu512V//6xeOHRImb89dY3xahk29SjF21svcL0sdfNTfr5sRNnxeJoFL3VymRC5A/EF
 a7B4pJwUxF+HldvgWxcuFCKyRhlUEaqvsBE/HtuhVwp94b2p8CzmQIcaNqpmlv9FXuP6
 C3/AVYS4r8etPj+opiClbuUqqey7IXWXK0O/3eZweSGWF10c385svANpWrYXUaxFNkl+
 tXbtMVn3xEP28Oi8NR+iDK145Uh70QP9rlxpiTQWNZ5w8b5IOsd2aix7nU/Ri+Hpm3XZ
 74UA==
X-Gm-Message-State: APjAAAW1m4k7TOfIYUtxTdG16Y82eyUkIKglXmUS1cM/XFW9vYLxQtFU
 f5EfmZFpgehc1i7VZAQQPew=
X-Google-Smtp-Source: APXvYqzopTD9eHQVPq9aezbMoLuvpwalDJYSit6Z18zj7hBJORCL//WTJigjX27R5vaD8/VkptKZXg==
X-Received: by 2002:a17:902:d917:: with SMTP id
 c23mr32901603plz.248.1565616612021; 
 Mon, 12 Aug 2019 06:30:12 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 v138sm120654857pfc.15.2019.08.12.06.30.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 12 Aug 2019 06:30:11 -0700 (PDT)
Subject: Re: [PATCH] watchdog: imx_sc: Remove unnecessary error log
To: Anson.Huang@nxp.com, wim@linux-watchdog.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-watchdog@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20190812084434.13316-1-Anson.Huang@nxp.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <611fe8c6-f907-d022-3484-ff53b2bd4331@roeck-us.net>
Date: Mon, 12 Aug 2019 06:30:10 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190812084434.13316-1-Anson.Huang@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_063014_413234_150651EF 
X-CRM114-Status: GOOD (  18.38  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
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

On 8/12/19 1:44 AM, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> An error message is already displayed by watchdog_register_device()
> when failed, so no need to have error log again for failure of
> calling devm_watchdog_register_device().
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>   drivers/watchdog/imx_sc_wdt.c | 5 +----
>   1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/watchdog/imx_sc_wdt.c b/drivers/watchdog/imx_sc_wdt.c
> index 78eaaf7..9260475 100644
> --- a/drivers/watchdog/imx_sc_wdt.c
> +++ b/drivers/watchdog/imx_sc_wdt.c
> @@ -175,11 +175,8 @@ static int imx_sc_wdt_probe(struct platform_device *pdev)
>   	watchdog_stop_on_unregister(wdog);
>   
>   	ret = devm_watchdog_register_device(dev, wdog);
> -
> - 	if (ret) {
> - 		dev_err(dev, "Failed to register watchdog device\n");
> +	if (ret)
>    		return ret;
> - 	}
>    
>   	ret = imx_scu_irq_group_enable(SC_IRQ_GROUP_WDOG,
>   				       SC_IRQ_WDOG,
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
