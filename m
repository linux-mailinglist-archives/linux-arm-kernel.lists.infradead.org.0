Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA7DA1F38F0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 13:03:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sr3QooKDP4nu9HWuzk41SaJYdtasRr8do7q+27Plfi0=; b=NgriWUBCzk3N4c
	NJTsWflbSyW9IkzRDVd1DZBbosIbchU/79dTK+ACrwLURG8uOxX0zrMPl0BPl+b6AOsNSUFmrb04M
	WvExAH6ureWQIEoPVjwo49/Nk0AALip4w/HM5Ac7R1f2MWoHaczMIBg5vyHWQPdOsttIzOa0m15BO
	WNP4ajAC0SNsSM0munK6PWIWxmi4BowcUDBAXtkseD62GZiaaaGiuSa01x29w7wTvTM9IeeIU45eu
	6d0knMU6Dc5NIOV9V+7SUa8lS6LKxOiZWqsx/Ip/5xSz3zw+IVxmrGKHLOH+DoS9ONZXmsqQPg3Zx
	GK+mCLZ7t9yOdA80yl9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jic2l-00058z-Bm; Tue, 09 Jun 2020 11:03:47 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jic2c-00058Z-FU
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 11:03:39 +0000
Received: by mail-wr1-x443.google.com with SMTP id l11so20809840wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 04:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=cc:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=aJNdMPWPrN93u2hPRulOatep/HuM2hucF4eVhI1US+c=;
 b=ii3Kp2RazJaBkch/duwZbyVhWvA96NeuRemtYCHvICOVqGMZ9fqAL+tv4aY2oloHs9
 UDYcukqmHcoFgL1W35n3tPruj6T2zltrIhmnjVJKYcMzdw3kY4cbMa6748DdrnJPCnUJ
 oSraDkPINlOIYc4UrVHatbWB/WE89OiSccHp4nT5Wjet9duVIlwNst85oyGlpoRrJ+a3
 muWcYaRPuobHejZXDq9R7ANwndujzG0KmaUSe0wFZSrDNgX9eTmjralrY64We/7YDXyy
 L2/o77bqjU49hUmJCIIck8JsCiJuelfBRK8GHBQFVmDUsUTp8mDjKmR/SnqRJjXNnFL4
 ExTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:cc:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=aJNdMPWPrN93u2hPRulOatep/HuM2hucF4eVhI1US+c=;
 b=GQQziA9qQT3TTe+Qhhax+MzruYnctA3lezZeN6QqZFjdaWM3NFWzGp+i6V0Itz+/vv
 hjCtWgh6yqvWfdhguVTTJOZkA/QKQ4kIXPCT9uq+giulLMfdbDyD2f/WEVCZpouqU+8Q
 EUKYZOPIMFissj8Yw2ZofEZka7rL74q8uICeKMqjXs8RfyQaZmGXG0FafiOi5Aoq9Tdo
 Fmxc7jtbcjNdIMDW5Dikd+W1/3zdMy8EU29f9fWSW8W33aJob2KrjdzZp58CNdEPE5hD
 BFo7vmLY73t+pg90W7gRjDJqq8J+p7mVQEC1cKjRlaFiVNfjjVfb54SER2+/Nc6EXyIC
 nkNg==
X-Gm-Message-State: AOAM5307dY6VgvHUFik3x92pL6zEIAqo5DpGOHYHkKFS3fW0p9KPm/66
 1VbQ1HM5+jU8g2NKgBB0QPM=
X-Google-Smtp-Source: ABdhPJwVUqzL+yIQWFnqQp/zOzCZpAquIuPC80KWKaHY3VIwX9zTyBdZ/zHOQLPn14UQtgHcjaViHg==
X-Received: by 2002:a05:6000:100e:: with SMTP id
 a14mr3732821wrx.349.1591700616981; 
 Tue, 09 Jun 2020 04:03:36 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604?
 ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
 by smtp.gmail.com with ESMTPSA id 23sm2503265wmg.10.2020.06.09.04.03.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Jun 2020 04:03:36 -0700 (PDT)
Subject: Re: [PATCH v2 5/6] prctl.2: Add PR_PAC_RESET_KEYS (arm64)
To: Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>
References: <1590614258-24728-1-git-send-email-Dave.Martin@arm.com>
 <1590614258-24728-6-git-send-email-Dave.Martin@arm.com>
 <20200609100202.GB25362@willie-the-truck>
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <7571ba40-7b4e-ca6d-efb1-691b1c4a6d04@gmail.com>
Date: Tue, 9 Jun 2020 13:03:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200609100202.GB25362@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_040338_519902_1C79601D 
X-CRM114-Status: GOOD (  15.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mtk.manpages[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch@vger.kernel.org, linux-man@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, mtk.manpages@gmail.com,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

Thanks for reviewing.

On 6/9/20 12:02 PM, Will Deacon wrote:
> On Wed, May 27, 2020 at 10:17:37PM +0100, Dave Martin wrote:
>> Add documentation for the PR_PAC_RESET_KEYS ioctl added in Linux
>> 5.0 for arm64.
> 
> [...]
> 
>> +If the arguments are invalid,
>> +and in particular if
>> +.I arg2
>> +contains set bits that are unrecognized
>> +or that correspond to a key not available on this platform,
>> +the call fails with error
>> +.BR EINVAL .
>> +.IP
>> +.B Warning:
>> +Because the compiler or run-time environment
>> +may be using some or all of the keys,
>> +a successful
>> +.IP
>> +For more information, see the kernel source file
>> +.I Documentation/arm64/pointer\-authentication.rst
>> +.\"commit b693d0b372afb39432e1c49ad7b3454855bc6bed
>> +(or
>> +.I Documentation/arm64/pointer\-authentication.txt
>> +before Linux 5.3).
>> +.B PR_PAC_RESET_KEYS
>> +may crash the calling process.
> 
> I might be misreading this, but this looks like the kernel reference appears
> mid-sentence. 

It's hidden as a comment (.\").

> Regardless, I think we should drop the kernel doc reference,
> as I mentioned on the SVE patches.

I actually request that people add these kinds of comments in the source.
It helps me verify details in patches, and is also handy when checking
details in the future.

> With that:
> 
> Acked-by: Will Deacon <will@kernel.org>

Thanks.

Cheers,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
