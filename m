Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 430881907BF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 09:35:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TZqWbmXz1KZxUG5vPffBmQchcZ2twvtlEy0jfNmlzhc=; b=jkhS3fBj07XSg5J4KciLB+R57
	5DH1MeU1UfeLgLZndEUntqlA+MxyDQecIqVZS9rZnonEk9oezzcHlU5U6B4kL0VZCaZCi1XT6vhf9
	evVYXyqqvN893klJuu4J6MsZMUMhTeVqd2ZjrXmRZ96ujSb0n599KwGDGyXSO3+zvc93evcHwM0cg
	lkXS+gsIPBKEwD5ZswbupM0wFp/eqoNbcOH6pbVyspvfZUI8B5r+Zr0tQvEr8+HgiPyDmyd6YaORP
	exJgft1zHOO2NzAVI6meG5r7ytI4FhP7KVX1kzYFftlrMyA2Jd2e7rDoJ/oJc+ViatjnfTVosD8Dc
	jYC4ul7Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGf2N-0001nT-Cb; Tue, 24 Mar 2020 08:35:51 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGf2F-0001iF-HR
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 08:35:44 +0000
Received: by mail-lj1-x244.google.com with SMTP id g27so8812897ljn.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 01:35:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=3b7FZkiDds06qo8TzF4qfUT61SceJd/XCklzwI25LFQ=;
 b=Wm/vJx6MM+SSPmtt/iK9wCEQekmmqneaEAvMnEdF5/SOxoH8/p5SpWS7d1L9HGbrw9
 jZmCPu2ipKcu+X6CDcRafunrtw4TmPKkFjGd6nNc0lp3lE558d+fF+l0gnycKybJJtX0
 yI0oAZp8n+c/5JL2hM0deT+ySjic8Mkdype1p9MZOrgqmJiJiSsgmUOuQdcU7lQfFghY
 72xVSbLydDr+NT9ghsLMHhE6u6/zym1DhdQtyvrxWrcv/eAgXcyYuPpiAl8nmigBYHlG
 Hy5/qfwaz5mCiRjqUSm04YLwzn9aqssmuGbjON2tY4BqwB7AJ5FTeAY7iHwvaqwG0SIi
 AR+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=3b7FZkiDds06qo8TzF4qfUT61SceJd/XCklzwI25LFQ=;
 b=jlS0aUUyPddRlPjn7YDX3oE9tncbI5Su3N9bkXr8CPvyTMOgKDrugcRUbCVbzim74b
 Jjpi4hBR2ukrqmpHwzUhhKd5ervsgkNlHi2UJ6/n5eIB3xxHbarm7bpaYm9el7NXzzT+
 8cprcLjT6YDb1+rzFURRZhwY4Zd0kPdxgKXbTNCWSZXsXnt6yBtOuGMYbjfd1tdHDMUj
 zIycZVeGmp3M7spXAE3NqQEQ9J0ln9eHTeade6m8fRgjOMDWGLaqfnvtCpRcGRRjx5aA
 iMNRr2pAQ8jFD7tF4CNOkwnd52hon30WL6R/ijGduhZDCemoyaia9mOcbIy3iIaEb+hP
 jh0A==
X-Gm-Message-State: ANhLgQ0lnAt20ZJkYcZOlycA+SkOY+MKcboRsUFV/NEY/d4ECGPU1Pot
 wHkZx8/zieI85ZExI1Fr9Vra0A==
X-Google-Smtp-Source: ADFU+vugTIUZH75uq8w/el+ZzqvPgN6W46s/AxHjqOiKpf9MdjPpWlDACKh3kiXwV+fGZHR3bRYS9A==
X-Received: by 2002:a2e:8e77:: with SMTP id t23mr16751281ljk.221.1585038941413; 
 Tue, 24 Mar 2020 01:35:41 -0700 (PDT)
Received: from ?IPv6:2a00:1fa0:810:155c:a932:22bc:6638:ad28?
 ([2a00:1fa0:810:155c:a932:22bc:6638:ad28])
 by smtp.gmail.com with ESMTPSA id m6sm9440075lfc.1.2020.03.24.01.35.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 24 Mar 2020 01:35:40 -0700 (PDT)
Subject: Re: [PATCH] usb: gadget: bcm63xx_udc:remove useless variable
 definition
To: Tang Bin <tangbin@cmss.chinamobile.com>, cernekee@gmail.com,
 balbi@kernel.org
References: <20200324062932.8364-1-tangbin@cmss.chinamobile.com>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <5f67315d-18c1-e444-03e7-a79a21d48b02@cogentembedded.com>
Date: Tue, 24 Mar 2020 11:35:35 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200324062932.8364-1-tangbin@cmss.chinamobile.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_013543_736295_BB178704 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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
Cc: f.fainelli@gmail.com, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello!

On 24.03.2020 9:29, Tang Bin wrote:

> In this function, the variable 'rc' is assigned after this place,
> so the definition is invalid.

    What definition? Did you mean assignment?

> Signed-off-by: Tang Bin <tangbin@cmss.chinamobile.com>
> ---
>   drivers/usb/gadget/udc/bcm63xx_udc.c | 2 --
>   1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/usb/gadget/udc/bcm63xx_udc.c b/drivers/usb/gadget/udc/bcm63xx_udc.c
> index 54501814d..a7afa8c35 100644
> --- a/drivers/usb/gadget/udc/bcm63xx_udc.c
> +++ b/drivers/usb/gadget/udc/bcm63xx_udc.c
> @@ -2321,8 +2321,6 @@ static int bcm63xx_udc_probe(struct platform_device *pdev)
>   	if (rc)
>   		return rc;
>   
> -	rc = -ENXIO;
> -
>   	/* IRQ resource #0: control interrupt (VBUS, speed, etc.) */
>   	irq = platform_get_irq(pdev, 0);
>   	if (irq < 0)

MBR, Sergei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
