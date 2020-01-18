Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (unknown [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ED1F1415B7
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Jan 2020 04:35:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oF+0l1SSFm9x0XL4bDJBLxHSs3R4ZGJBHjVaB2mtkdk=; b=b5wr0LmfQOQ6un
	zBwTszDBnKwU34pGKbZbILTD0dzsUQUYXkqbtEFiiYXkVcahulxwbECTvqlIGxcuS6z4T1Y3cvQqf
	i9TnhT7gol/sfpkyPFcp+31JgNfZLfoULuHWV61Na3sDuZcFiG97tG1VigxYrdiU/ZOh40QHxiLDe
	WxLyTqVnP8smRcp1eSY6ouq2+aINy3c5IkSNFmDR6UtnGHIqWcdXe79zanvuBzqCNstzPKZW64z5W
	RXNQhxajk7V+ZyhwrWwgqMkbL3hKA+BmI1FoihsAqDrsekLpRrTbo5cvbSukBEfa2evzn68/rE059
	0tN0FRZpu0aNioAAoFCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isesL-0002Vr-Cs; Sat, 18 Jan 2020 03:34:17 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isesE-0002VI-MG
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Jan 2020 03:34:12 +0000
Received: by mail-wm1-x341.google.com with SMTP id t14so9463075wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Jan 2020 19:34:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ba2MtuTw27AUAebdutVnK6LOAzRCvoWZBTJDiTOGfVw=;
 b=XFcn2WQojjjJA9w03YqZW8FY3bUR877w3hdMfgnLCAGmvkuucC+mudkG25MbQ62tin
 2LbfZRHh6/YFmba4qprwpmzVflqnhnMCO7VCcKi3ucFhnZNqZALHcWTQIqDE8fMm4sdl
 Ac2EwDnFLC3Hz9jE1y60iGcKngaj0LdOSs5HqgEm+DmpZIGoIjEDgLNZDOMvK/9mI9Hh
 AisGJVW3ZBSuVNoEX80QAu12+qgb8O71iWn9/V9AJyCS5vaL5WlYbRo6i7DthDRNGsvQ
 LJTS9qaj3fSmCzJcuM+bXodBXy/wPVA8MlCm6gX6edDmIhBIvbAX+Aw5mml427Tl+Owk
 uUgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=ba2MtuTw27AUAebdutVnK6LOAzRCvoWZBTJDiTOGfVw=;
 b=oSbKrxReMcIHM2gsKVeYnutB8eGgPuuUqDznB3JNNbqZA/v3iFzam9lmrppdsO67UH
 mhUBlu1CdmoXsDYGpQrhPiLtypumlLoc4ujpKX+NJB+0Cg5v5xMN0Ut7kQkUl5JgzU/G
 W00XlB9tDLCmLZu+bmiAx6x59DiNG5ruPcAU1C8o3avyneFOtPXXEyJsuRrJDipXBzFU
 xvjHfiEWtiFaqsXM7/s/5SPnQRENmWxsDi7Ca9jbMRDTmDJ/57+e8p5be8LTBpbKtSrt
 7Rf4A3CcKqwcxWasMEDcohOYeoQ1KeGZRgEdGp/1m9LZ9gYqWMICk7g2yZK6Ey7EyuhW
 y0KA==
X-Gm-Message-State: APjAAAUr5Y6bQ07zbGfW/hQHHMxdlREiYs2tHLcVdk1uxPjrmnRDCb0o
 e5XyLplHF7gSMyszYE3lCVI=
X-Google-Smtp-Source: APXvYqxB0L16meLZvtckCSUzUYSjNJuLs0936JsHGnR073VQFkfdrWXWb/kGpesTWhMYcwO3dWOtSA==
X-Received: by 2002:a1c:ddd7:: with SMTP id u206mr8073878wmg.159.1579318448775; 
 Fri, 17 Jan 2020 19:34:08 -0800 (PST)
Received: from [10.230.28.123] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id r5sm36170623wrt.43.2020.01.17.19.34.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 17 Jan 2020 19:34:08 -0800 (PST)
Subject: Re: [GIT PULL 3/3 part 2 v2] Broadcom maintainers changes for 5.6
To: Olof Johansson <olof@lixom.net>, Florian Fainelli <f.fainelli@gmail.com>
References: <20200117222705.25391-1-f.fainelli@gmail.com>
 <20200117222705.25391-3-f.fainelli@gmail.com>
 <20200118011041.bjbdhjbp6wzsjcbi@localhost>
From: Florian Fainelli <f.fainelli@gmail.com>
Autocrypt: addr=f.fainelli@gmail.com; keydata=
 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
 a9BQwACgnzGuH1BVeT2J0Ra+ZYgkx7DaPR0=
Message-ID: <cf9cb8ca-15c0-2a21-ec1c-40a98baf5676@gmail.com>
Date: Fri, 17 Jan 2020 19:34:04 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200118011041.bjbdhjbp6wzsjcbi@localhost>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_193410_729396_E46F28FA 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
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
Cc: arnd@arndb.de, khilman@kernel.org, soc@kernel.org,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 1/17/2020 5:10 PM, Olof Johansson wrote:
> Hi,
> 
> On Fri, Jan 17, 2020 at 02:27:05PM -0800, Florian Fainelli wrote:
>> The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:
>>
>>   Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)
>>
>> are available in the Git repository at:
>>
>>   https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.6/maintainers
>>
>> for you to fetch changes up to 7f4d4e232f3789bb4bd418d01cf97f195a76b2de:
>>
>>   MAINTAINERS: Add brcmstb PCIe controller (2020-01-15 15:39:48 -0800)
>>
>> ----------------------------------------------------------------
>> This pull request contains Broadcom SoCs MAINTAINERS file updates for
>> 5.6, please pull the following:
>>
>> - Nicolas adds an entry for the Broadcom STB PCIe Root Complex files for
>>   both BCM7xxx (actual STB SoCs) and BCM2711 (Raspberry Pi 4).
>>
>> ----------------------------------------------------------------
>> Nicolas Saenz Julienne (1):
>>       MAINTAINERS: Add brcmstb PCIe controller
>>
> 
> My addition of checking scripts seem to be paying off already. You missed
> signing off on this patch when you applied it. :-)

Indeed my bad, I have now added Stephen's check_commits to my pull
request script, thanks!

> 
> Btw, this could have gone in with the pcie controller patchset too. But either
> way, mind respinning with the sign-off fixed?

True it could have gone through Bjorn's tree. Now done:

https://lore.kernel.org/linux-arm-kernel/20200118032935.1346-1-f.fainelli@gmail.com/

Thanks
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
