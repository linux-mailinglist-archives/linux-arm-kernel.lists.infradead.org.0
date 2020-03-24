Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F9E191399
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 15:50:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0s+e5dY2Vl74BP2zfJiiEPSv/Q9BWH2/qT4Y1mvi6Hs=; b=ObALXYJk+lzrGR
	iLgrr0yarujpQ489ah0Oxlt/hozJmvyrr/1oGOuvX0mKhHUwP7r2pzIiNPdRo9UwmGTT8c4WC24Ad
	NcYpHJU2nJF9qGLlV3FfP11+YqmsGLZvpc1TN3IpBkNwj69fxl2HvR8wOIjEsPql3x7T9dOE5gRCT
	F/5mfIfelsQmFvTrg0fuf185i+K9jx0lkuUsBZDSb3hVVoWRd3asUfQKqR15NHQzvek7YjjDFAOJl
	DkpzPw9Djny6/+32HbNVX1JlwDaAKrIdkWCQfaQJ3uaaSu3Q6NUtQKiCqLblrJdpWaxJWA/3Rxavj
	9jFbGLwQUTDygXdMqKTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGksm-0005sX-Ao; Tue, 24 Mar 2020 14:50:20 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGksd-0005s8-V1
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 14:50:13 +0000
Received: by mail-lj1-x242.google.com with SMTP id n17so8539019lji.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 07:50:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=46/qQ50l1vh+J9wzA3xpUZxvvo8d7tioQFsg4+TJ/o8=;
 b=bvYpkG8m/ns3rG4ZA+zT/M4MjsHPmDeoGGnpZ5cpYzMvSfGA4iOGMFepedJZweWbNe
 2iyBmESEUeF6IAQJfDmsoYgZ5UsV0INu6mmp3Yare9tsponpOhbkMHgg+tPLmXvgBtpe
 8jeYLQx+pLubdj8l4AUXte+u0jX5TjBmNmpw79Qd/FNhuoQS4mUrMfs6399CzGjQNsxt
 +cIiJC7mz00fj6BWt/lAM9WLf99bZ7mzCNNef1hULoqwBw6HjopoNZdlf8423OjoRHx+
 34/AGy3xW1NxXaHFhRAmQu0tBqSNYOitMsFSXZBpS8G4+ZNExQxXFjHa75IYB247HWho
 VgYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=46/qQ50l1vh+J9wzA3xpUZxvvo8d7tioQFsg4+TJ/o8=;
 b=DU3s2mcm/L1D4JR+Ole/2SiDgOpPnI2ODTd4/1Zttlb2sZNEd/a9CIeMS00QzEaQbE
 YoNZJIbUMjBZ96SnIQyahQuqE4HSdjSYG/YbXAkgGWD8FSMX0un+TRfapN23Y05nsRf6
 32iAkqKkCVB8DV8iNxlPrc0d0i1d1Ux4cWAt1MUhKWVBz4agy4ipNSrBCHhizeYAyGZG
 RPtIRJzWyVY3odFeqbRt/elm0qg6u6XvQ43aI6SP2Zbj/ifOpjKarLc1YhtJIT8a122i
 PpJZcXcJIqz1tiVvonaCTHpwYODnL+E+4CnXqmVBnig2H5Of1BqGvCHRXsDV2QpIt20q
 R9jg==
X-Gm-Message-State: ANhLgQ19EByunIRUuugD5IESkoZQgX1wO8iGJht42VAbS6cfKMcugopP
 7+J3e1t6e11cLZhSd57wcl6X2w==
X-Google-Smtp-Source: ADFU+vsduWqt1Gs363mlpwe4KUHBbe4xPS+tER4rFbeA45hsI3KGrYgm1BWdEuzCSeE6tQZKCp8hmQ==
X-Received: by 2002:a2e:9f07:: with SMTP id u7mr11833365ljk.115.1585061409797; 
 Tue, 24 Mar 2020 07:50:09 -0700 (PDT)
Received: from wasted.cogentembedded.com
 ([2a00:1fa0:42d3:3567:1f77:9f32:8c0:b337])
 by smtp.gmail.com with ESMTPSA id x11sm1431543ljm.7.2020.03.24.07.50.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 24 Mar 2020 07:50:09 -0700 (PDT)
Subject: Re: [PATCH v2]usb: gadget: bcm63xx_udc:remove redundant variable
 assignment
To: Tang Bin <tangbin@cmss.chinamobile.com>, cernekee@gmail.com,
 balbi@kernel.org, gregkh@linuxfoundation.org
References: <20200324132029.16296-1-tangbin@cmss.chinamobile.com>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Organization: Cogent Embedded
Message-ID: <a0afd44f-177d-ad21-02b5-93b15b29399e@cogentembedded.com>
Date: Tue, 24 Mar 2020 17:50:07 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20200324132029.16296-1-tangbin@cmss.chinamobile.com>
Content-Language: en-MW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_075012_075923_2BAAE83F 
X-CRM114-Status: GOOD (  18.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: f.fainelli@gmail.com, bcm-kernel-feedback-list@broadcom.com,
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello!

On 03/24/2020 04:20 PM, Tang Bin wrote:

> --v1------------------------------------
> In this function, the variable 'rc' is assigned after this place,
> so the definition is invalid.
> 
> --v2------------------------------------
> In this function, the variable 'rc' will be assigned by the function
> 'usb_add_gadget_udc()',so the assignment here is redundant,we should
> remove it.
> 
> Signed-off-by: Tang Bin <tangbin@cmss.chinamobile.com>

   NAK.

> ---
>  drivers/usb/gadget/udc/bcm63xx_udc.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/usb/gadget/udc/bcm63xx_udc.c b/drivers/usb/gadget/udc/bcm63xx_udc.c
> index 54501814d..a7afa8c35 100644
> --- a/drivers/usb/gadget/udc/bcm63xx_udc.c
> +++ b/drivers/usb/gadget/udc/bcm63xx_udc.c
> @@ -2321,8 +2321,6 @@ static int bcm63xx_udc_probe(struct platform_device *pdev)
>  	if (rc)
>  		return rc;
>  
> -	rc = -ENXIO;
> -
>  	/* IRQ resource #0: control interrupt (VBUS, speed, etc.) */
>  	irq = platform_get_irq(pdev, 0);
>  	if (irq < 0)

   This *if* branch goes to the 'out_uninit' label which uses 'rc' (and it should
be negative).
   In principle, if you change 'rc' to 'irq' below, this patch would be sane.
It's not as is.

MBR, Sergei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
