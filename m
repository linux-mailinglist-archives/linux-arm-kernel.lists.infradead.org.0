Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E752189D2F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 14:42:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=31ab6luoOKX/SWgY0LZQzrc/vuvWhW6464Dg0rhFsSI=; b=IRE2pAC2aLUEW9EXzXKb4BEhc
	RBmRPeSUdp15yoH9bT0mLy0Lp1BLbWBwXjNqE8I2kBAQDM7j2rk46DEFW0+nCRdt4h7EaHce+7qt0
	RhYD2aPL7TXmWfsDQMnQt/UDs1tAuUiyllSaPVQ5NXSKl01YrPTLN+l47tXLRNu8FSYmXok9fCwdn
	LRnD6Adi9/nZM8JUMWA3H2NErP1Wzvk3y2k+1R3vRP+Xfb5sClWV+YZRbXnWCGNnbsD8/XkYEBaZE
	OBkRQmxUvKift5R+w7YXcwFXsPMT/LWtyWs808VzWJTVgiYpjwH6ZkN45fhISRhjy0RZUr876BhR5
	aKMFA2hMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEYxJ-0002nT-9E; Wed, 18 Mar 2020 13:41:57 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEYxA-0002n3-Cp
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 13:41:49 +0000
Received: by mail-wm1-x344.google.com with SMTP id 11so3440692wmo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Mar 2020 06:41:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=GNDxVoBT2iKzZolV+xo2w6dbpJfkDsJ6BSfw16sOYh4=;
 b=fYHVDqiYbiglR3W237Zvt5ckqSN9N6Q6zO4fBKJ9Fd7+rF1WPB/fvlcOwexOEPh7Fb
 m0cxV7CYrClIBgW/dCitam3IYK/kK9RXdfEzOSXEqfjgs0O3BwFXdDpPrJGiAPRPJUWr
 kGsmPvk49eXKbX4lBXn7qHxUr5DOmWXmDPe9YEt3G4ZY9b37i7TnZ9z/ShYhMXngrFz7
 Y0tSUj7gqmuaJK1nbuealQsIkALKe5D0kbEBtLg1hk8j39cTh1elqKJCcMFzj6y88zRM
 0mBd8Rof+ii3evFfgsoRutA0ya0X2v6VuGCEnweI4SdZqEX9tSmDmRb5Nstu/KUWJtBj
 xfSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=GNDxVoBT2iKzZolV+xo2w6dbpJfkDsJ6BSfw16sOYh4=;
 b=rn64dch+98PwwbSVEB0e88QW2HkPnF4Sb3JmgT1LbM4L5pAg8+xXeeBQh2Z8eyWNmI
 V3bqcAX0K87sS1ZgSh0PrmlBkLsuWY9Y2jZ7RB+7ZjHdBwQeIOAqnKBh8sO/bKcvoBVK
 ZYw83me2W2R5a1aRBy725aqyyxXvpi0kx/o9X81iiOfss+rqGrkbRwpvkaaWV/oH/fV9
 ZdU/N+6WTY3RiYVwlMV6bElz3bTP5IqXx8oa0Lmll+TmW+ruLgs+1EJp8mWSZi1Y1M9O
 WdmfSE4jLm0nzWVwkgxd5jgmD1QfB4GiRx+icYfRVPELpufAG9B6BBv0KwlVorvz4o6L
 Z9/Q==
X-Gm-Message-State: ANhLgQ3MEk3g6Il51ODuNJkapTUEEkdjQ6orkVgffdZRScNhO9T+Hv0J
 DgALREdxx7ZpcZYXj7D1S/9Ayg==
X-Google-Smtp-Source: ADFU+vv3kSjyk96xe6Y/4OCtIVE9ioLklBRUOBX5s/Swg6e48yVxbLcyRaFKAOeohGdQWbV4rZCyng==
X-Received: by 2002:a1c:dc55:: with SMTP id t82mr5272895wmg.6.1584538906267;
 Wed, 18 Mar 2020 06:41:46 -0700 (PDT)
Received: from [192.168.86.34]
 (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
 by smtp.googlemail.com with ESMTPSA id n4sm9224120wrs.64.2020.03.18.06.41.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 18 Mar 2020 06:41:44 -0700 (PDT)
Subject: Re: [PATCH] nvmem: mxs-ocotp: Use devm_add_action_or_reset() for
 cleanup
To: Anson Huang <Anson.Huang@nxp.com>, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <1584169871-418-1-git-send-email-Anson.Huang@nxp.com>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <81390f07-a968-7e90-64e5-78fa7db868f6@linaro.org>
Date: Wed, 18 Mar 2020 13:41:43 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1584169871-418-1-git-send-email-Anson.Huang@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_064148_436523_43063145 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linux-imx@nxp.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 14/03/2020 07:11, Anson Huang wrote:
> Use devm_add_action_or_reset() for cleanup to call clk_unprepare(),
> which can simplify the error handling in .probe, and .remove callback
> can be dropped.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>   drivers/nvmem/mxs-ocotp.c | 30 +++++++++++-------------------
>   1 file changed, 11 insertions(+), 19 deletions(-)
> 

Applied thanks,

srini

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
