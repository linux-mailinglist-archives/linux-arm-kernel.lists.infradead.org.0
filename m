Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E81E6AA954
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 18:47:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AM9UwmSADExySXwwpd28PneIks8eBT+KWFjDCjhixb4=; b=lrflbBUu7oOD1/wMeGtjy3PlD
	Ey1oLWvuyD/HwwYYKhbgzoRT4r4eJueO4VE9T3M9ckNzPDMYssOzxBVWte1XUEwW7NVdPYHv70wOA
	VZG9TFxVaRkbXrUWmq7jQYP6LwiUAVt6hEp5AcOs4+D11qvMXKGX6km0h8as+ykEIiu7mA0xAOdQU
	t3JalqSbywbmePRl3T3om88Yus75+AKHLq4LCeoNDMw+FoK5NXireyBSZLTasOQodTuHQarQ7fcEX
	6xZuKM7ZRl9F3dXwig9frIKC2zA/mu9sc9nSePjvYjqKO+sKxZef0G53nVdmf+gUQzYZmYR9H0J8m
	Uo7v7/WFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5uuR-0007rM-KB; Thu, 05 Sep 2019 16:46:59 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5uuJ-0007r0-EY
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 16:46:52 +0000
Received: by mail-pg1-x544.google.com with SMTP id d1so1726459pgp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 09:46:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=L9WHyJ99KP39xuH8ZsBbeD/D63ObFkXNBLywQqZYCeQ=;
 b=IcLjJF6Drj/jNnHL/b3X6MBESCOo9YBQ726xZEEEmWRXc8xz/NMkPi5oQm1CTl46ju
 10h5rfJrJmPahQG5I7wfMHm3Fmn2auuA4hO62jagzIOVh3dGJ1gcyIxA2phxbSqlEL8c
 65/MGCgUUJ5lOBWoETWECotdK7cREeFHnQuuE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=L9WHyJ99KP39xuH8ZsBbeD/D63ObFkXNBLywQqZYCeQ=;
 b=MwYNwvuA0BTYuXWSodIOtmIy6IltRCi0RTFviqjZ6f/zcm+lFFsqqNwN8mgodjribO
 iyipUkdxwI9oKYMEnJoYickyCiA10uRuDvq7JyreG6hftxUUgoJTSGvUNV03Q1/djQB9
 O98hDWhXRbbGN0SyS5Um5KSKnBdSeuEcffUIUcTzMmLpH+FoLaQn8hZYe6IkZpeRw6P3
 A2sCrz3/soSodowlUInShKzYeYVAB5BzRhqPxW9W4BBq2n5SkhjTEyRrgQYlipP9hDS3
 Lz4Z8y6p1shncjDtQJyz5/0a4sopcN05hZN/bKHzicA+Bdtn3rt2P+vQrs/O9bHF9dAf
 LKBA==
X-Gm-Message-State: APjAAAUqeV/voxN2bdWqA/ZFDluwD5zYvAtqMvjhZ3hAw8EmCKQuigkz
 5xnytSAfmpeHiiCbM9AtOCfO4A==
X-Google-Smtp-Source: APXvYqy0sZl+jGcPJei+V5sF4FXAeaGn9GQV14FyFINPWV2xmay1Mt/P6SirlNi+G2x6Daricnqaag==
X-Received: by 2002:a65:620a:: with SMTP id d10mr4029784pgv.8.1567702010015;
 Thu, 05 Sep 2019 09:46:50 -0700 (PDT)
Received: from rj-aorus.ric.broadcom.com ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id x11sm7683567pja.3.2019.09.05.09.46.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Sep 2019 09:46:49 -0700 (PDT)
Subject: Re: [PATCH] pinctrl: bcm: remove redundant assignment to pointer log
To: Colin King <colin.king@canonical.com>,
 Linus Walleij <linus.walleij@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20190905140919.29283-1-colin.king@canonical.com>
From: Ray Jui <ray.jui@broadcom.com>
Message-ID: <190fef22-fe90-dfa0-0943-4d30b10b6b1d@broadcom.com>
Date: Thu, 5 Sep 2019 09:46:46 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190905140919.29283-1-colin.king@canonical.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_094651_499571_4EEF27D7 
X-CRM114-Status: GOOD (  18.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 9/5/19 7:09 AM, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> The pointer log is being initialized with a value that is never read
> and is being re-assigned a little later on. The assignment is
> redundant and hence can be removed.
> 
> Addresses-Coverity: ("Unused value")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>   drivers/pinctrl/bcm/pinctrl-cygnus-mux.c | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/pinctrl/bcm/pinctrl-cygnus-mux.c b/drivers/pinctrl/bcm/pinctrl-cygnus-mux.c
> index 44df35942a43..dcab2204c60c 100644
> --- a/drivers/pinctrl/bcm/pinctrl-cygnus-mux.c
> +++ b/drivers/pinctrl/bcm/pinctrl-cygnus-mux.c
> @@ -923,7 +923,6 @@ static int cygnus_mux_log_init(struct cygnus_pinctrl *pinctrl)
>   	if (!pinctrl->mux_log)
>   		return -ENOMEM;
>   
> -	log = pinctrl->mux_log;

Yes, this indeed looks completely redundant.

>   	for (i = 0; i < CYGNUS_NUM_IOMUX_REGS; i++) {
>   		for (j = 0; j < CYGNUS_NUM_MUX_PER_REG; j++) {
>   			log = &pinctrl->mux_log[i * CYGNUS_NUM_MUX_PER_REG
> 

Change looks good to me. Thanks!

Reviewed-by: Ray Jui <ray.jui@broadcom.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
