Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79DFC1C9CA1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 22:45:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UBvsrJRCmPa5kUUTx3BeTD0dFbNkZbFM0HPBhOblA+0=; b=WQ/f8+q5Eoiu+vRwhov6im5id
	l+s0zGYsUnmdOZ2DQN/nt9ssikQKphHloSq4fY6SaAGNxP14p4TGfbislqUu15/1BemEF8Quu3Rl5
	IV5Vvd72A4baa7mt6odXEbtf/7h3e9qN8gutMMlI74JSThIaGkD40GsBqDgPcNzmhhTXt7IPQhKwj
	YjlD8PXFdr1fwkrABzpDo/DaXT90IznbRd4K17CUO2tI8vPPVVskmjg3AjxwycTF8yb2IVLpZ7CZW
	9E0POIpvpaqZm85bKrFctYorwLpFZXR1xhytz55ab3UARxY2firKw2Z871uJIGqLkE2p8DrSgiNLs
	HcQiawUhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWnOu-0004lz-7W; Thu, 07 May 2020 20:45:48 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWnOm-0004kl-6j; Thu, 07 May 2020 20:45:41 +0000
Received: by mail-wm1-x342.google.com with SMTP id h4so8049510wmb.4;
 Thu, 07 May 2020 13:45:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=EgSenpJ9WdkZ8OKwBXP2DgQKftDc5f3xLrRoRS99rrY=;
 b=LENSQd08QX5NaqMQv2LT6RIu0jqhyK1RA9jx74+JCuyjPGutBwzMG1dggwylsZeGry
 zcHma3C9ZM9PMeoGg8/AEkpAaDsrbTW6jSpiysq1eAo7nnR72upnpLcCWRgbNMWb5i2+
 FLcoKaTjjpl2+IVGe+jWgpwcac4SNjKsDq79VncKZlK5ZNsPMff5Qu5U62EsBlmn6hAP
 +PPd57+B2mw4lwDsHNlkjO/y6IttDvZOqt5mvLdgcaiZY0XL3i4kKV83/PvOGtop+nfz
 rN3Q+1gp1pJq4fDV/qddFhuTepVjeKqMlcabI5hUhhsHr5sih40lklDBoxgLn3gXNaq+
 zHqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=EgSenpJ9WdkZ8OKwBXP2DgQKftDc5f3xLrRoRS99rrY=;
 b=KSH7O1hGyFE6EfmUGk167b3tk70a5TWAaDOFhxXxqfOgojtaiMJY8g4Qr5mNpJ4hHG
 4FcMaCnPxaKnIzrUZWGutIa80wgMnYIySCEvVInPLGwIPWKN4fAqfcVnF7RT8xUxZeSa
 RfM2bTESzLFoDabxYkWsjCG8hDAbswuJagCiGHBQazvaGoYNX7CbpL6ajgQsvTa1/pva
 rNDiYAmByMPseQhSuBDfVwjCkhRqCWAGaslv3Sw4M4HA6Tq2IdD9hC3D0A1Sxt9x5a5W
 0a7kHohMg3u5ci9PDFHSFvgH6iyyB7mSylmca0+fdI0MHlOhEBvjjMrM4mWYk1XWY5Gk
 L6CQ==
X-Gm-Message-State: AGi0Puah1cuB4s7pkASnegF559b410WGBiztYD6Km+qjT8HHITMjTvzC
 aijAX59ACyDSZIq2PUzh8EE=
X-Google-Smtp-Source: APiQypJDPtO7u5KS/TvTk4SarG2mbA6/1SMRO98Kuhx1nMuJH/xjhRVJBu9DL7rHxZEaEaKeYQlR3Q==
X-Received: by 2002:a05:600c:2941:: with SMTP id
 n1mr12743483wmd.25.1588884337413; 
 Thu, 07 May 2020 13:45:37 -0700 (PDT)
Received: from ?IPv6:2a01:110f:b59:fd00:5df1:24f5:998f:ae84?
 ([2a01:110f:b59:fd00:5df1:24f5:998f:ae84])
 by smtp.gmail.com with ESMTPSA id 19sm9451068wmo.3.2020.05.07.13.45.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 07 May 2020 13:45:36 -0700 (PDT)
Subject: Re: [PATCH v1] Add support for MediaTek regulator vibrator driver
To: Pavel Machek <pavel@ucw.cz>, Xing Zhang <Xing.Zhang@mediatek.com>
References: <20200429081759.26964-1-Xing.Zhang@mediatek.com>
 <20200507174519.GD1216@bug>
From: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Message-ID: <49089bf3-d64b-2a50-269c-623a6ea9c14c@gmail.com>
Date: Thu, 7 May 2020 22:45:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200507174519.GD1216@bug>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_134540_268313_A71E2FFB 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jacek.anaszewski[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Dan Murphy <dmurphy@ti.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-leds@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pavel,

On 5/7/20 7:45 PM, Pavel Machek wrote:
> Hi!
> 
>> This patchset add regulator vibrator driver for MTK Soc. The driver
>> controls vibrator through regulator's enable and disable.
> 
> We'd prefer not to have vibrators in led subsystem.
> 
>>
>> Xing Zhang (3):
>>    dt-bindings: add regulator vibrator documentation
>>    arm64: mediatek: Add regulator vibrator support
>>    Vibrator: Add regulator vibrator driver
>>
>>   .../bindings/leds/regulator-vibrator.txt      |  39 ++
>>   arch/arm64/configs/defconfig                  |   1 +
>>   drivers/leds/Kconfig                          |  10 +
>>   drivers/leds/Makefile                         |   1 +
>>   drivers/leds/regulator-vibrator.c             | 450 ++++++++++++++++++
> 
> OTOH, connecting LED to regulator might make some sense. I can take the driver with
> vibrator functionality stripped, provided it is named the usual way...

We already had an attempt of solving this in more generic way [0],
but you opposed then [1]. Just for the record.

[0] 
https://lore.kernel.org/linux-leds/20170913175400.42744-1-dtwlin@google.com/
[1] https://lore.kernel.org/linux-leds/20170914205804.GA24339@amd/

-- 
Best regards,
Jacek Anaszewski

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
