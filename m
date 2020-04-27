Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9AF1BAB4C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 19:30:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=d2RYIqDGC/wsf0oX5v/RxAeng1Lmuosxi+o8Mg1i64o=; b=C0HxH098vscG2Hbq5sd8sF1FjF
	Xl+GX0CLF1jp+2lOSWOtTZufxunZP3vXF/iO8nGmvRgVVy3L+B5m88GqcrZdCHualjuzkRx826t61
	a70hzdzZlNHXjLiX8EnwjrDvpFM10yfAVVr6PGEKHgT5+NybzHIF4480ZLnrQwehqIerMpeC/vG94
	wwElXmwbYzC2B2YwVgc67C8cL7roCxuD8XUKhy9yR6vyeTDk9negl5ur9qVgA6gHxGX1BRuZs1Xrs
	2w3dbXRyHnUTPMSi/BLpez2o+zajBIzrRNnHCMXjGHvm4nh8HYCabsWRKfptkhZwrR8+UBHStZy5u
	RUJV5euQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT7aH-0008H3-B7; Mon, 27 Apr 2020 17:30:21 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT7Zy-0007lG-B6
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 17:30:03 +0000
Received: by mail-pf1-x443.google.com with SMTP id d184so9328273pfd.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 10:30:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=SCLyDRiJjkisSI5+I7kNMlITwcAUmvW5WBS3LcGSTZs=;
 b=f7u4o2sKuPfQQUUeIiWva27PcW47sExOw2ojdV1iJqO2YiekLlLQPdnrUK+CgZhhfG
 cJ+ZgM4cPD7Y5oXHfP1JI9yj1gmTLQnN42FMZiF4iS0jQG9ocWgmH7gSirxMIvMmnn37
 /lKlbgE9xfA929pEOUYZiTjseraB5PJQgyhO23j194oD+QjFpU1H46lSOKsyuh93rsEk
 35afT3WPxbKMLvr22/qWiT1enHGec0iP/pL33VaHplNezHvl02oBGpKQ3YTOr3YjRB2P
 3Ij9FTxtADBjH4qD0IK8bbqe7j3tXMbRQLrit3H3nqsBJwOQfm/2ExV+mpjsXDupHPec
 hr1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=SCLyDRiJjkisSI5+I7kNMlITwcAUmvW5WBS3LcGSTZs=;
 b=JSM7fitEi9FyFpgokbaMG70kNT4m3vd7YwNqsW2dQarMq2KNtn/i9a8SzJXaEP+Vel
 iZalbZw7vZMRmw1Ey4KNc2tEmEwzTrRV3bjb7TL9W3QSePWdbcXiZGADJsY3VLwoNYBD
 VAhGl1Wmutj5dcdTOmGCnigWAKCILj5wYBfsZMwH511PqLdFcv2GMTZ1+UDYBWXhDfKu
 86t8NY4A+D9HztDFQDBv4KUQwnL7mSjhPnDaaUD9HCV2soOfhKK7QJyJNL00xjOJuk5q
 WEaknqpBtAVe74Gk8qhaSBl2YGFZzMQ8pH67NzxXj3/klrPBH/+tmYT6ddyOK9mlWuLy
 uu8A==
X-Gm-Message-State: AGi0PuZ6qa3vJ1ospQQkF6TlTLG/wEezqgc7LDaOHx8aqUS6FFrJMSps
 6BQp4+nJkFji8CoGNbEd0Xg=
X-Google-Smtp-Source: APiQypLAkvMyKxt4+GqBWPPQov4z6yuIinvDdHdu3rfRqyLGtyrl9GGPdWcRQ69bAKSDmiis+wgM8A==
X-Received: by 2002:a63:f843:: with SMTP id v3mr24542277pgj.421.1588008601102; 
 Mon, 27 Apr 2020 10:30:01 -0700 (PDT)
Received: from [10.69.79.32] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id ml24sm11558508pjb.48.2020.04.27.10.29.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Apr 2020 10:30:00 -0700 (PDT)
Subject: Re: [PATCH -next] tty: serial: bcm63xx: fix missing clk_put() in
 bcm63xx_uart
To: Jiri Slaby <jslaby@suse.cz>, Zou Wei <zou_wei@huawei.com>,
 gregkh@linuxfoundation.org, bcm-kernel-feedback-list@broadcom.com,
 linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <1587472306-105155-1-git-send-email-zou_wei@huawei.com>
 <4cd8f963-9292-faef-1e24-df90821274d6@suse.cz>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <73c4cebb-467b-e5d5-89bf-8a6fe29cf858@gmail.com>
Date: Mon, 27 Apr 2020 10:29:58 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <4cd8f963-9292-faef-1e24-df90821274d6@suse.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_103002_423172_7460760D 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 4/26/2020 11:19 PM, Jiri Slaby wrote:
> On 21. 04. 20, 14:31, Zou Wei wrote:
>> This patch fixes below error reported by coccicheck
>>
>> drivers/tty/serial/bcm63xx_uart.c:848:2-8: ERROR: missing clk_put;
>> clk_get on line 842 and execution via conditional on line 846
>>
>> Fixes: ab4382d27412 ("tty: move drivers/serial/ to drivers/tty/serial/")
>> Reported-by: Hulk Robot <hulkci@huawei.com>
>> Signed-off-by: Zou Wei <zou_wei@huawei.com>
>> ---
>>  drivers/tty/serial/bcm63xx_uart.c | 4 +++-
>>  1 file changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/tty/serial/bcm63xx_uart.c b/drivers/tty/serial/bcm63xx_uart.c
>> index 5674da2..ed0aa5c 100644
>> --- a/drivers/tty/serial/bcm63xx_uart.c
>> +++ b/drivers/tty/serial/bcm63xx_uart.c
>> @@ -843,8 +843,10 @@ static int bcm_uart_probe(struct platform_device *pdev)
>>  	if (IS_ERR(clk) && pdev->dev.of_node)
>>  		clk = of_clk_get(pdev->dev.of_node, 0);
>>  
>> -	if (IS_ERR(clk))
>> +	if (IS_ERR(clk)) {
>> +		clk_put(clk);
> 
> Why would you want to put an erroneous clk?

Doh, somehow I completely missed, you are right this does not look legit.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
