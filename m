Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A878F119
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 18:43:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pFkm90M9+Y6U+IuHRCB9+VYi1uWKQUSz1IDN4BTfXKs=; b=ULKQHNnwMAaFHbLxi9D3xLniG
	IOMEibMzwTVTU/sThfJbqnqfhzOJVsu93t0brp/5jr7P+ApEb2iFDOo7uVCKzc4HfZpHEmalwkTmj
	clBpwX7+ADIRfVcsiwOaLPheMv+obU13zEDiUBCaY4qTZacQJhWm3X17k+fm6tLtheK5AGfLYrcVq
	AJFPq3FTrrfoAqk6CQoQvQbkq0keK4ZIZkTZvF1fTtKfM0xVPOUOUXWflqcYfa2J2s3tf5kbYWDEh
	1cHziY3HxmdnjGrAAHcj9Ed+1w7feZbaevRrVe/tzXF202GmHxBr9/mt9WBse55tbhV5+RIIGzTfh
	+CAJfvdqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyIqV-0008Kg-Pb; Thu, 15 Aug 2019 16:43:28 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyIqB-0008GQ-VF
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 16:43:14 +0000
Received: by mail-pg1-x542.google.com with SMTP id w10so1524196pgj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 09:43:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=RDP6dCH5SfbePXj50Yif9P0DeSA7UpHTBf1zvPFWOKs=;
 b=CCU74OVLrLaosPhbhlWUvm/fK344mtCf8+8LUVUjq11XQdbsdrcBpxuBasG+4dcLxk
 iNOVq5P9Ta2MM1OBqw4OTlhpq9lk9k2P8j4ElxzhsLM9qgcsq7yg45xJTpWr7SwkSIBo
 B9/XWFBlccxgCvJB3KUE5OUm2YJOK0RlcZKDM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=RDP6dCH5SfbePXj50Yif9P0DeSA7UpHTBf1zvPFWOKs=;
 b=tGHgpvOVZ0HtKYRMOkiWK0/jkUJU/N1Dw8+Ywl9+rNG6X4DeuJQdDqigkoOopGx0n4
 qEVWpkaXJ6Q+lWoJZvPJGXewu+Psa/73SNztIcxsuYtkHhRD1VcVZYtRe7oLr8YM5ShX
 0Vj96i4+tI/017qlEAujabiWTr8CaRFNxeYPEJiNbgQP0O70at/iiImVjUxzEi4jjDfW
 QzquVqXNKufkstGzWti0jJ6RTjZLZpZ+MbmmSOoAc1JSfTiX3RObCS0WjTXbxKBWq3mu
 vJZZ1oGwwB1w7fIjaOfU6Aw9YOxvtawOKLJLyrsZC8h2F2EVRxRnS/hp/Fu5eIMr1z7v
 l5qQ==
X-Gm-Message-State: APjAAAUFzPFsB8r0KaOOOYMOoJs1OfXR+Wgic3ibnv0fzsFZTLn4eZwj
 JeQhFYQcCYh0O44IUX4KmSpnKtezDt67idDg7njVAKZNOO8LTBBM9b4EZcRZ2z26N01nv65+9II
 58zhQntABXoIb+W3dlSShgvrGNM8sRAyUsD/0qrqd3NADcIsikjDGtFXIaIe8bkMz0Lacu3YIf5
 7hgtykoPatP8k=
X-Google-Smtp-Source: APXvYqyO/A5C+feWKubTl5Y5Nbg7TZpKOd/uYePnUOe+USwqkcuzntM3zu9WjAvZpaD+PLDWAUGONQ==
X-Received: by 2002:a17:90a:bb91:: with SMTP id
 v17mr2937162pjr.84.1565887385590; 
 Thu, 15 Aug 2019 09:43:05 -0700 (PDT)
Received: from rj-aorus.ric.broadcom.com ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id s6sm3142547pfs.122.2019.08.15.09.43.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 15 Aug 2019 09:43:04 -0700 (PDT)
Subject: Re: [PATCH] i2c: iproc: Make bcm_iproc_i2c_quirks constant
To: Nishka Dasgupta <nishkadg.linux@gmail.com>, rjui@broadcom.com,
 sbranden@broadcom.com, bcm-kernel-feedback-list@broadcom.com,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20190815055550.1588-1-nishkadg.linux@gmail.com>
From: Ray Jui <ray.jui@broadcom.com>
Message-ID: <4f71a174-9ded-172e-9c34-c492aee3c3e8@broadcom.com>
Date: Thu, 15 Aug 2019 09:43:03 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190815055550.1588-1-nishkadg.linux@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_094308_007385_96A5D886 
X-CRM114-Status: GOOD (  17.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nishka,

On 8/14/19 10:55 PM, Nishka Dasgupta wrote:
> Static structure bcm_iproc_i2c_quirks, of type i2c_adapter_quirks, is
> only used when being assigned to constant field quirks of a variable
> having type i2c_adapter. Hence make bcm_iproc_i2c_quirks constant as
> well to prevent it from unintended modification.
> Issue found with Coccinelle.
> 
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
>   drivers/i2c/busses/i2c-bcm-iproc.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/i2c/busses/i2c-bcm-iproc.c b/drivers/i2c/busses/i2c-bcm-iproc.c
> index d7fd76baec92..e9f0e5b6eadc 100644
> --- a/drivers/i2c/busses/i2c-bcm-iproc.c
> +++ b/drivers/i2c/busses/i2c-bcm-iproc.c
> @@ -805,7 +805,7 @@ static struct i2c_algorithm bcm_iproc_algo = {
>   	.unreg_slave = bcm_iproc_i2c_unreg_slave,
>   };
>   
> -static struct i2c_adapter_quirks bcm_iproc_i2c_quirks = {
> +static const struct i2c_adapter_quirks bcm_iproc_i2c_quirks = {
>   	.max_read_len = M_RX_MAX_READ_LEN,
>   };
>   
> 

This looks good to me. Thanks!

Reviewed-by: Ray Jui <ray.jui@broadcom.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
