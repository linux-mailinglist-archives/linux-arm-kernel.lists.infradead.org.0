Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E9BC1913B9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 15:55:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cLn2JM2s9KfnccP25khTLDhbboGDjmAKhS4y43umQ1w=; b=ZkTgsUzPVft+/L
	+VAtM7KQdTszlVREwzQJSVbLbW/XDQx0+6dMi0bhlQH5PJYr3eYX6UKqzYzeKQI91QhIzgC+254mR
	Ur+6zKJPR7q3rcQXvgoviiPPddrjARUYZPsHg+3HGYymP1tfOw2T6ATHT46W2Lr72qIOlIfvlWH0w
	WhqdE8PGfBe8p1KqVRA8F6zmw3Mp7q/Em2cXRd+JAHw/hQT/rgbaccY8bTPxYkT+cR3n5fIehmNNc
	3y5HejAaE1X7B77HOmcGxIo8pQ0pqDFt8QVBagAxiS9sNyHTkv45ze/fZU38Q+D5l4Tk34SqBr0VB
	bDS1t7silk/8UJulxSjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGkxw-0007ev-GF; Tue, 24 Mar 2020 14:55:40 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGkxn-0007eN-Dx
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 14:55:32 +0000
Received: by mail-lj1-x243.google.com with SMTP id k21so2844195ljh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 07:55:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:from:to:cc:references:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=BNd0h3fsVcT6k8d64lGb4UxIfYz4swlJdfLJY5I84Pk=;
 b=LnXgAgYwJnh4LyNLf6Ei0tES9O4ek/ykjW3ITZ+X43dvYS7Ob00W597ztY5ZO6ftDg
 LAyQ8TkGy2IMIv1mwYwM3GUW2wGTlOEZtL+pcWQMoan2Xztfv0St5RZkqg5C83J37JkZ
 HXAqLmlpJBkZ1yPXRbL/b1lbZbU7+4UbmCV0ucehy7Jj2u+AoNpVWpYvu8fffUdGhm55
 LKsz9OvlTP3PSTVn9lqnGP16ngUvc8PzX1mqq1h6yiO4iPPTMuEmKkoLdbh5mOqPqSCU
 vhIT5t1FPMsUV3B1NmUfy7F5cLdqk6wDO14j7xTO43eecWD9nIal5MK3PBWXhKoWKkzq
 Ndrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=BNd0h3fsVcT6k8d64lGb4UxIfYz4swlJdfLJY5I84Pk=;
 b=BD/rgVSFPQrODHorkitgl83ojHpbht20dYyCio7PTQABjvAWbayJOgmcNKb/QgnJa+
 O8pBAtRakk/BNedxz6qdkFhzcJR39Og0/bAxl/DnRU7JOTVqoG5RfMSf7W+vmXOcnnRa
 +dpxvnXEs99qBCVyRnmOwQDaoOJGeHX1bzsWVFlRnhQZV1hqIobZ2fIeIwYPieSUfCOS
 43GId6X4olUYNqfFjBV0Wn+n3radAkkY3f9sMX8lW24N3JKwIUXn0uhdIjNJStvIo2DO
 Ij5wdjRwLTzJNSbonOszl8VS4+QNbJLU+LhAVbBOvZYsoy6T04lsyVELkFvXBZBX9AoE
 zf4Q==
X-Gm-Message-State: ANhLgQ0hItAJSl2hRsiGlVqJAmqc2q94UJ1PefFoIbPoDma/s1UAn0V5
 BZKgD60jSJphCHjvzZopUkdJ/w==
X-Google-Smtp-Source: ADFU+vsBL16mOCk78Gq17PBMvQLAA6Qth2JMTHL5EZhA1UfaBW61ACz13l083keat7MBz0Xg2o16kg==
X-Received: by 2002:a2e:858d:: with SMTP id b13mr9091346lji.227.1585061729549; 
 Tue, 24 Mar 2020 07:55:29 -0700 (PDT)
Received: from wasted.cogentembedded.com
 ([2a00:1fa0:42d3:3567:1f77:9f32:8c0:b337])
 by smtp.gmail.com with ESMTPSA id q8sm3440800ljj.77.2020.03.24.07.55.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 24 Mar 2020 07:55:28 -0700 (PDT)
Subject: Re: [PATCH v2]usb: gadget: bcm63xx_udc:remove redundant variable
 assignment
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
To: Tang Bin <tangbin@cmss.chinamobile.com>, cernekee@gmail.com,
 balbi@kernel.org, gregkh@linuxfoundation.org
References: <20200324132029.16296-1-tangbin@cmss.chinamobile.com>
 <a0afd44f-177d-ad21-02b5-93b15b29399e@cogentembedded.com>
Organization: Cogent Embedded
Message-ID: <82d75ffd-0df5-d41c-7b3e-615d97c1838a@cogentembedded.com>
Date: Tue, 24 Mar 2020 17:55:27 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <a0afd44f-177d-ad21-02b5-93b15b29399e@cogentembedded.com>
Content-Language: en-MW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_075531_470478_330360B9 
X-CRM114-Status: GOOD (  16.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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

On 03/24/2020 05:50 PM, Sergei Shtylyov wrote:

>> --v1------------------------------------
>> In this function, the variable 'rc' is assigned after this place,
>> so the definition is invalid.
>>
>> --v2------------------------------------
>> In this function, the variable 'rc' will be assigned by the function
>> 'usb_add_gadget_udc()',so the assignment here is redundant,we should
>> remove it.
>>
>> Signed-off-by: Tang Bin <tangbin@cmss.chinamobile.com>
> 
>    NAK.
> 
>> ---
>>  drivers/usb/gadget/udc/bcm63xx_udc.c | 2 --
>>  1 file changed, 2 deletions(-)
>>
>> diff --git a/drivers/usb/gadget/udc/bcm63xx_udc.c b/drivers/usb/gadget/udc/bcm63xx_udc.c
>> index 54501814d..a7afa8c35 100644
>> --- a/drivers/usb/gadget/udc/bcm63xx_udc.c
>> +++ b/drivers/usb/gadget/udc/bcm63xx_udc.c
>> @@ -2321,8 +2321,6 @@ static int bcm63xx_udc_probe(struct platform_device *pdev)
>>  	if (rc)
>>  		return rc;
>>  
>> -	rc = -ENXIO;
>> -
>>  	/* IRQ resource #0: control interrupt (VBUS, speed, etc.) */
>>  	irq = platform_get_irq(pdev, 0);
>>  	if (irq < 0)
> 
>    This *if* branch goes to the 'out_uninit' label which uses 'rc' (and it should
> be negative).
>    In principle, if you change 'rc' to 'irq' below, this patch would be sane.
> It's not as is.

   Still, the other *goto* out_uninit in te loop below shoild be changed as well.
Otherwise, if the result is overriden to -ENXIO, e.g. deferred probing is borked.

MBR, Sergei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
