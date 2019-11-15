Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCED8FD7C3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 09:12:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UXkZZdKHPLwmcmhESONrjYerHeFzqd+XzBXngn30e28=; b=aImKr5twYu3dbd
	o2mt0a5lNvkMLvX2tg1DhhYfQBYRIxeCKbF5NvfjM2qdgAUPLVbg6yptuF6M0i6TjBQ/5goNB9ASL
	XLx2vu6KJgKqddwwbiPo02Vpqfs1jB4RP3XhA+TXuEy08EHRHoUvOrQvBTPlyeQaKNnWygyUU6W5w
	KQZfGS9n0qtk/WiugKYM68gJiLl1coUqlVTjycrei4fR2XKEFyMMyAAKfomZuJQYqmVXK5ZTNd+Wu
	z0qLnB5wmsCji6FhvJ8OZfwydhzOtbCoAkSjzW8FiCY9XomC7yTUSs0c3U7t1qIxcKTWftR5vdxGN
	6DQ54oS8Nm6bD7bvQQnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVWhw-0003fq-Dp; Fri, 15 Nov 2019 08:11:56 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVWhl-0003f2-EX
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 08:11:46 +0000
Received: by mail-lf1-x141.google.com with SMTP id v8so7288518lfa.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 00:11:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=cSkg4y8vQ0fWUekpUvYTG37APlVQNKH+BU4UyQZbeZs=;
 b=bhvYGZ1lTQHiSLEBGy316WOg8uJmr19WMwnbnCNIAe+g9dECIpGAveiykIv51Zsp5H
 q5H02EIco+WEDC56pAH5UpavswZnVJ6/TzgN01/XvbZ3WOk6dfiSFEIqLOP91nIopmjO
 i5sekMVyCaqS+WJFufl8nVmciwx4GpUp4vHh4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=cSkg4y8vQ0fWUekpUvYTG37APlVQNKH+BU4UyQZbeZs=;
 b=bASvwNJj/VVkJOZ/qQgZz5ZBTMmvbP0bAP7aJeAX4sTKbnEY8XsZ2VV77KdmE87UwR
 ExXxsgd2fzyoDJAqmq7710cV6Wn/8iPqkjI8v3I29bhPRIPklRGp+A5+UpwMx7IPdX7w
 aWyIpRLkP8C5+c4ulzGg2X9OTCY7Qdc76JWpdQpcAsAgM808SLcM1AMZujiKvEY7XvQV
 nnwXgGfvSCZPBoyZgsYwt6wmKSHAf3vzI7qIuUmQk8yvQL5xeK3thB73p6hP/NUsEbYQ
 RM76bE7P3teLuCEzOSAqexlidy4Uw9c/hKnXQrRJMy1xpr5JorHtBv3xgwAADrpTRIqS
 4lfg==
X-Gm-Message-State: APjAAAVuBALhODY9+vxT6ZWE5rTKEbYoTLMBuSxuoL6Q3CHamfCA282i
 aJ9giCdUfCkheMAkXrV2Z2/omWIYRef88boH
X-Google-Smtp-Source: APXvYqx6iGcHvwJhuRwgIveFwGhIs3bltyGjSHCtX4coi17em4/eMuEjk9toc+eYfX3AS6UqL2gs4g==
X-Received: by 2002:a19:8104:: with SMTP id c4mr317478lfd.165.1573805503320;
 Fri, 15 Nov 2019 00:11:43 -0800 (PST)
Received: from [172.16.11.28] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id m8sm3414243ljj.80.2019.11.15.00.11.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 15 Nov 2019 00:11:42 -0800 (PST)
Subject: Re: [PATCH v4 07/47] soc: fsl: qe: qe.c: guard use of
 pvr_version_is() with CONFIG_PPC32
To: Timur Tabi <timur@kernel.org>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
 <20191108130123.6839-8-linux@rasmusvillemoes.dk>
 <CAOZdJXXHK9U_Y7_VgVmuOFKDAh4OqBJ7hZx58hisZZ6Cz6xE2w@mail.gmail.com>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <027c2b7a-a235-cecf-9f08-f71736f2ea55@rasmusvillemoes.dk>
Date: Fri, 15 Nov 2019 09:11:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAOZdJXXHK9U_Y7_VgVmuOFKDAh4OqBJ7hZx58hisZZ6Cz6xE2w@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_001145_491391_0FE37430 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 lkml <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Scott Wood <oss@buserror.net>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Qiang Zhao <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15/11/2019 05.50, Timur Tabi wrote:
> On Fri, Nov 8, 2019 at 7:04 AM Rasmus Villemoes
> <linux@rasmusvillemoes.dk> wrote:
>>
>> +static bool qe_general4_errata(void)
>> +{
>> +#ifdef CONFIG_PPC32
>> +       return pvr_version_is(PVR_VER_836x) || pvr_version_is(PVR_VER_832x);
>> +#endif
>> +       return false;
>> +}
>> +
>>  /* Program the BRG to the given sampling rate and multiplier
>>   *
>>   * @brg: the BRG, QE_BRG1 - QE_BRG16
>> @@ -223,7 +231,7 @@ int qe_setbrg(enum qe_clock brg, unsigned int rate, unsigned int multiplier)
>>         /* Errata QE_General4, which affects some MPC832x and MPC836x SOCs, says
>>            that the BRG divisor must be even if you're not using divide-by-16
>>            mode. */
> 
> Can you also move this comment (and fix the comment formatting so that
> it's a proper function comment) to qe_general4_errata()?
> 

I actually thought of doing that, but decided against it because the
comment not only mentions the SOCs affected, but also explains the
following math/logic. I mean, without that comment nearby, the code is

  if (qe_general4_errata())
     if (some weird condition)
        divisor++;

In contrast, I think the qe_general4_errata() is pretty self-explanatory
- is this a SOC affected by that errata (whatever that errata may be
about and what the software workaround is).

Rasmus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
