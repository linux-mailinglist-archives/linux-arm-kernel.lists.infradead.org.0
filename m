Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 011F8BD087
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 19:23:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zGRw7Wvc807B1DNO7dMsZ72dqNCfziPdti5TTrF56WQ=; b=aGPZDL+k8cjz1qlOZy1JOTBBA
	m8n3mthC9XY56RIj8vCEubcO9CnQ83qel3UBGOXgPwPdx1V4NSQwaMydHwgx5mHG9YfeB6+v303Pk
	x31dlRenYjGTohHUEZSjKwOnR228dL4kntLBL0BT4iLuU++wnc+ZlCPIt4Uo3tw7xs8PFWgIUj+oC
	CQYy4+fk0dMfhN0/+MfckMJau48HaIKQRd6RW1ZfoCpHM9uspLgTAr2OnfndW8U3i3j2iHTijeMx8
	12ltJZUW2uJ0LbjGAy7eC2TeWEpvGWeOYeUWctLpcJd9YVx1xW/SbQVeepRzLJJoCo3l671hYdvE0
	RemF/GIpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCoXM-00032N-70; Tue, 24 Sep 2019 17:23:40 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCoX3-000323-En
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 17:23:22 +0000
Received: by mail-wr1-x442.google.com with SMTP id l11so2853613wrx.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 10:23:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=zojDqhIDCVa616KN7v7PXKcR+n3TBwC2cffseILAS8Y=;
 b=V0acmw1iJ5RBkC5LpIbyw+IvcVgmzKokEwS7utek9s8pSqnOYmD545QAUQGVet8zNs
 6g+6V8Fds7Z2wu0dO4BufUP+UOAGIL5yk4vrfRXCNmXsuyHxPP8WbCyx5R3z53xAty0z
 E/A+HJ2vV6CvIFmfp9xG8Cc/0FAt/2AGAr2dM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=zojDqhIDCVa616KN7v7PXKcR+n3TBwC2cffseILAS8Y=;
 b=J8SeI7N2slHThmHAaXJAghc8YPBdl84D32M62WnYWE2jhIi6kqt35Z/t8mJCJ+IBZZ
 7yKRRTPrUPRckh0YpYuneqSToJQp29ttRG24T0bHMxb/jQMGV+hD62lnEpIwBS+eYbBq
 v+1xvj5MiWvQXiMqWSn/8aaRK/FybzynOKAILTJ0pkVuHIlbOm80rN1bNK0uwbpDOtyD
 +2x2hIaUDSRsTJUnAjKJqgDDB/RwSzzgybcPv+xrWRbXzqaVxYjs+EXD4NldJH5IcNXz
 AHLxh3a2vfxH0FTYIEAWHuqymjOZpzBLNJoVzvIOvhsjgA8M2qugOLSL5nKpj06F1G3p
 Q35Q==
X-Gm-Message-State: APjAAAW0QSZDJvpkJ3PmJ+dTY8wZvbwQx/Jn0bwzTcL5m48nHO2BaRrT
 uH5nzMnIA4Vm1+N4SkZk0WzUuw==
X-Google-Smtp-Source: APXvYqzr1eNgy01G5ZmPie1GWfVJKyFXlGRTrtigOTJblOF8z3EvSnaXA/4EHakD7hQmv1T23Zruag==
X-Received: by 2002:a5d:6951:: with SMTP id r17mr3365604wrw.208.1569345798765; 
 Tue, 24 Sep 2019 10:23:18 -0700 (PDT)
Received: from rj-aorus.ric.broadcom.com ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id o12sm4269440wrm.23.2019.09.24.10.23.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 24 Sep 2019 10:23:18 -0700 (PDT)
Subject: Re: [PATCH v1 1/1] i2c: iproc: Add i2c repeated start capability
To: Wolfram Sang <wsa@the-dreams.de>
References: <1565150941-27297-1-git-send-email-rayagonda.kokatanur@broadcom.com>
 <20190830125626.GC2870@ninjato>
 <3e70fa7e-de13-4edd-2e17-b7c56e91d220@broadcom.com>
 <20190831094940.GA1138@kunai>
 <540c4e2d-0dd5-5260-30b2-e1589b279d71@broadcom.com>
 <20190904213745.GG23608@ninjato>
From: Ray Jui <ray.jui@broadcom.com>
Message-ID: <5ab79d0e-eb54-8fe1-1ca3-e763a17c6426@broadcom.com>
Date: Tue, 24 Sep 2019 10:23:12 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190904213745.GG23608@ninjato>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_102321_502722_AA3F022E 
X-CRM114-Status: GOOD (  18.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi Wolfram,

On 9/4/19 2:37 PM, Wolfram Sang wrote:
> 
>> I think you are right that the controller does not seem to support
>> additional I2C features in addition to SMBUS.
>>
>> However, my concern of switching to the smbus_xfer API is:
>>
>> 1) Some customers might have used I2C_RDWR based API from i2cdev. Changing
>> from master_xfer to smbus_xfer may break the existing applications that are
>> already developed.
> 
> Well, given that you add new quirks in the original patch here, you are
> kind of breaking it already. Most transfers which are not SMBus-alike
> transfers would now be rejected. For SMBus-alike transfers which are
> sent via I2C_RDWR (which is ugly), I have to think about it.
> 
>> 2) The sound subsystem I2C regmap based implementation seems to be using
>> i2c_ based API instead of smbus_ based API. Does this mean this will also
>> break most of the audio codec drivers with I2C regmap API based usage?
> 
> I don't think so. If you check regmap_get_i2c_bus() then it checks the
> adapter functionality and chooses the best transfer option then. I may
> be missing something but I would wonder if the sound system does
> something special and different.
> 

We did more investigation on this.

First of all, like you said, there's no concern on regmap based API, the 
smbus_xfer only based approach should just work.

Secondly, for most i2ctools like i2cget, i2cset, i2cdump, there's no 
concern either, given that they already use I2C_SMBUS based IOCTL.

However, for i2ctransfer or any customer applications that use I2C_RDWR 
IOCTL, i2c_transfer (master_xfer) is the only supported function. And we 
can confirm we do have at least one customer using i2ctransfer for 
EEPROM access on their system, e.g.,  i2ctransfer 1 w2@0x50 0x00 0x00 r64.

In my opinion, it's probably better to continue to support master_xfer 
in our driver (with obvious limitations), in order to allow i2ctransfer 
(or any apps that use I2C RDWR) to continue to work.

What do you think?

Regards,

Ray

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
