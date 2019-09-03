Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 214B9A7776
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 01:11:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tKsOsqDvAfEPq6nwY8sg/V8mFTrusmIgXL7wh+dWd7g=; b=Havul9CPH1a3SMuLy7PkZd1lG
	l73kDQqEye+xfawIfDFBA8Kz3CL3e55rspql+1RuFKE3pUVfLpUDWijvZk8fL8RYm50ni0fxXHWS1
	/BATfujbtWasTalOoLwgDa/X1HEgoNTLV/bBavtz8kguUH17CYIcF6JeW48mGqxY0u15ZXVQL6EV5
	NA70RPrp6Uta5+kA6D+EIF0q+1BVSPlByJqNUeeWfh9k5pZGIKPVFiqdTqgBrxfLsM2SGguMt0hNc
	O9zNSFDhly0U9PJ3pqjUa4a1gHkMfilLNYhNzOZeu1PMERm5p7kCzbyVn4gNArqKtF2wcqziHTFoF
	EzTTDpi9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Hxa-0003zf-K0; Tue, 03 Sep 2019 23:11:38 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5HxN-0003zD-A8
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 23:11:26 +0000
Received: by mail-wm1-x342.google.com with SMTP id y135so1114826wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 16:11:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=O1IX4sE++65Y4ZZlb31D7PSxnB7F1eURR0p9HiU+wok=;
 b=GN1lxLL77dx6OpxYsAzcRowiCyZNoduNxno0mwMUs5BgtQA4I1tsuuVAT8pEJiIKH5
 aMMRR5iXVzB9nSZaxZCC8Fall2B9JlTkfMxyyrBN4eA3IKq7TYtxWUDC+nyAF5OdaJ+/
 A9LuEnE/5h0F2/mIen8Joti9/624aDslqpLSY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=O1IX4sE++65Y4ZZlb31D7PSxnB7F1eURR0p9HiU+wok=;
 b=BRvn0dFd11I8aHHmZc2ciPtV7QBrjozRUYGv9rdg978E4/VeqXZZYZq8UAL+GXN1M8
 TJGbssWVWfi2JRdWEKPeImXuigkrcL/CYBeIYG3BQPvFKvbi6Rt8KfbLXXA4JmiR3wmQ
 3X/BbuS9TpH2ZPA8J6Ut7RPuFLoxx8x6Sf72g0pConMgBQFRYfBjqzNouabKdbcY1Jf2
 IDQ8La0Avpp295TKyBwvVvZ0GQkmkt20ZTn8NPqkLiwaAoUz9pi+sygSQb/AmSwrV2/V
 rMJqt2YKhBMjWJMzUshboqjF3lOAfv1Hs450XwMA/ZGi82smryHZF+s/PbTHxwW7Lh80
 qPCA==
X-Gm-Message-State: APjAAAWTrJ9jb+PtslCfVX7zfi9TkkwB3wfbx7LSsBTqtZNF4Fus6g/h
 MJ/EHdjBhQV8pshvAyQ/tSSDNA==
X-Google-Smtp-Source: APXvYqw0nbdYJ7kcbtwu+coOAy8z5E8zaUK+TSpgMcoATdcQSuYsagRGgIBexHatzxh6Gy5qz+Gbzg==
X-Received: by 2002:a1c:9ec9:: with SMTP id h192mr1877598wme.105.1567552282880; 
 Tue, 03 Sep 2019 16:11:22 -0700 (PDT)
Received: from rj-aorus.ric.broadcom.com ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id v6sm1649818wma.24.2019.09.03.16.11.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 03 Sep 2019 16:11:22 -0700 (PDT)
Subject: Re: [PATCH v1 1/1] i2c: iproc: Add i2c repeated start capability
To: Wolfram Sang <wsa@the-dreams.de>
References: <1565150941-27297-1-git-send-email-rayagonda.kokatanur@broadcom.com>
 <20190830125626.GC2870@ninjato>
 <3e70fa7e-de13-4edd-2e17-b7c56e91d220@broadcom.com>
 <20190831094940.GA1138@kunai>
From: Ray Jui <ray.jui@broadcom.com>
Message-ID: <540c4e2d-0dd5-5260-30b2-e1589b279d71@broadcom.com>
Date: Tue, 3 Sep 2019 16:11:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190831094940.GA1138@kunai>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_161125_356703_EC3FAE4C 
X-CRM114-Status: GOOD (  17.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Lori Hikichi <lori.hikichi@broadcom.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Shivaraj Shetty <sshetty1@broadcom.com>,
 Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>,
 linux-kernel@vger.kernel.org, Icarus Chau <icarus.chau@broadcom.com>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 8/31/19 2:49 AM, Wolfram Sang wrote:
> Hi Ray,
> 
>>> With all the limitations in place, I wonder if it might be easier to
>>> implement an smbus_xfer callback instead? What is left that makes this
>>> controller more than SMBus and real I2C?
>>>
>>
>> Right. But what is the implication of using smbus_xfer instead of
>> master_xfer in our driver?
>>
>> Does it mean it will break existing functions of the i2c app that our
>> customers developed based on i2cdev (e.g., I2C_RDWR)?
> 
> If the customers uses I2C_RDWR (and it cannot be mapped to i2c_smbus_*
> calls) then this is an indication that there is some I2C functionality
> left which the HW can provide. I'd be interested which one, though.
> 
>>
>> 1) Does
> 
> Maybe you wanted to describe it here and it got accidently cut off? >

I think you are right that the controller does not seem to support 
additional I2C features in addition to SMBUS.

However, my concern of switching to the smbus_xfer API is:

1) Some customers might have used I2C_RDWR based API from i2cdev. 
Changing from master_xfer to smbus_xfer may break the existing 
applications that are already developed.

2) The sound subsystem I2C regmap based implementation seems to be using 
i2c_ based API instead of smbus_ based API. Does this mean this will 
also break most of the audio codec drivers with I2C regmap API based usage?

Thanks,

Ray

> Regards,
> 
>     Wolfram
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
