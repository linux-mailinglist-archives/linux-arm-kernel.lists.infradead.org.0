Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD66124A09
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 10:17:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xMD1Uk7IsPb7enc3Af4vuLsilVqFchRgIz74MqXtBEE=; b=LClvI92xtQb+jJdPEZo2RBy/L
	f2OOhqbpR9pMWlSWMSqsnOASf1aIaZIq5oHe4OrbYnukwzRHanYy6xL+18PcOIn5z9CFqJUBQ4/hu
	WjeIuI1sQgi/eelLdLblKhUC6UkCv77+voUYGJcrnRddIlbc3/tALyP7oosvsMhD9zFhcPeddJSt6
	LuUFrTEuFhQzLN1wmslZbODoLmUisATHk6JWFBUOJyR+PbSF7SFPGgrFtr8ccAnE2rG0N08kUUAjZ
	9JHdEGNIimvoLVaqSIZE0dJA16EcIjeQL63CIa8JiKsxJDZ+e+FBGMA5pReD/ma2gVBoY6YaWnK0s
	sHVqKAcew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSzxd-0006QV-8z; Tue, 21 May 2019 08:17:25 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSzxL-0006Gk-LG
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 08:17:08 +0000
Received: by mail-wr1-x441.google.com with SMTP id f8so11069295wrt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 01:17:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=dm92NMg/irWYm67dt8+YBn2/6jTQ9TzkOqtUWA6VrWI=;
 b=j1fa/TGzBbqgrrCXjtZgS+zq0QNWVwbDEU5c8TPHQ1e1b3kP/JPu1UYjeVj2+LrHDz
 fdfW3UE1IRUnx7dH5zHt0LBNPH/5v2BmxQTuVLWeblOmO9mDAq+j7hMs4jOiho+KBW0X
 kbyQ5lfQxwcYaStadZkLqKyv013QlA9TRAWhGiU8Xh63I1XeX4994xv0fUVS2IC9W9zY
 YHc5o370GHLpL7uI8+p/5f4P7oK1jAVHtsvEaAhJgF8YSmDPh/noT8XEfnbcPQDks3b7
 gxNzGEYNQLLZchP3HQb12ETLXt/8dFTyCcWTppIQlF2TeQraqDw4p2L+4yZ7PDXUr6ay
 JkNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=dm92NMg/irWYm67dt8+YBn2/6jTQ9TzkOqtUWA6VrWI=;
 b=Sx1BCEYaAwHuAlX9bpFipyls4Kk6RC5okQ3dYDsGIWiWF4deFuPgZ07OPnRcFxlec7
 +32hjEgIjpPkbVie6zcu6D+VlXWR8gAVla/3pw/li6TwruQd03Ucfdr1zu4MViDSand5
 wksWnxZOHKqiKQS/j+2QKZqj+y9WYF5p95qCqxaRWAVxhgMSabhEk4Xz/vFqYIpmOzb7
 yo2d7zX9qB/ito2TM5/4KD5tlClnLrCe036MpUtlyPUGWbuZFYrkf/trRXwoTVGv9J0P
 tZH+UeUgZDDzlkMtX/C327qv07c2A3UJAGMEURfH4uujzPr7OCQ10AnI63ob9OfsZIGP
 DgCA==
X-Gm-Message-State: APjAAAWwq245wy25HlTGqoXLF8Y717y8dBI2UmgRS9+BrYcpnnyFDHXF
 kUmCfgob5W+/MFbJZesd1v8Hxw==
X-Google-Smtp-Source: APXvYqz2SUUxfTRXqHXtROHqq1m4xLNgV7VQvQ3ExC8VNSaEKLn8PruSvg/xWzUGxMEw6RaeEAWrIg==
X-Received: by 2002:a5d:45d2:: with SMTP id b18mr14652442wrs.219.1558426626015; 
 Tue, 21 May 2019 01:17:06 -0700 (PDT)
Received: from [192.168.86.34]
 (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
 by smtp.googlemail.com with ESMTPSA id j28sm35644979wrd.64.2019.05.21.01.17.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 01:17:04 -0700 (PDT)
Subject: Re: [PATCH 0/2] nvmem: meson: update with SPDX Licence identifier
To: Neil Armstrong <narmstrong@baylibre.com>
References: <20190520143732.2701-1-narmstrong@baylibre.com>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <fccd03e5-98a6-90dc-a7bc-889fb0575712@linaro.org>
Date: Tue, 21 May 2019 09:17:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190520143732.2701-1-narmstrong@baylibre.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_011707_747603_1E5B21D8 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 20/05/2019 15:37, Neil Armstrong wrote:
> Update the SPDX Licence identifier for the Amlogic NVMEM drivers.
> 
> Neil Armstrong (2):
>    nvmem: meson-efuse: update with SPDX Licence identifier
>    nvmem: meson-mx-efuse: update with SPDX Licence identifier
> 
>   drivers/nvmem/meson-efuse.c    | 10 +---------
>   drivers/nvmem/meson-mx-efuse.c | 10 +---------
>   2 files changed, 2 insertions(+), 18 deletions(-)
> 
Applied!


Thanks,
srini

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
