Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F062144AAE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 05:05:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZoENGPxBSgzStxFBRFlfUZsDgLNH7FKU2uXgpBnG5BY=; b=MIQ0wMudnrLihj
	WVZv/k9cooRpwRfI9IMQAYQdFvkwoJDecrYR+byXfyYue5FxRN9YaGE6i5frSTkyEzFEbfKvERM0R
	xEfYaHlGVdIaQzBLngOnbc1n7zWbpfmg3kXcdTDxNhsP5YQqskyN7VQF3C282jrZ+AnWCnYMV+6kW
	RyrCanhVLl6JYq3GZbkxT64o0JsOcR1duxTyPTW2hVDFSef1VoSo6Xm8VwLbwoJIB+5x0A4E2myIP
	9WIeD1CNwSlfNT8VINXdOIoUQSXrrl4gTK4ghSAyQHSsraG7Y+xUl1513Fnu27xgaXrpRWVlK9Tw0
	+k6hctIbYV2q02bmysBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu7GX-00054m-II; Wed, 22 Jan 2020 04:05:17 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu7GE-00054K-Q1
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 04:05:00 +0000
Received: by mail-wm1-x341.google.com with SMTP id d139so3460124wmd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 20:04:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=QnP3I9MQH2rjvN4odqaiJfYKIdwE2UEnGytQrH/isCo=;
 b=uhsGKyNygZhXrZu7vjW5rzhzl2zOR80ETGG0fo6Wx++dxDeZPl5EoBK2tzjxMJjxOd
 LeCOLr3vGDWeAVm06DUuLADW5K7S2/+mHDDLpGgRO0THcQL9JHtv7u3BvEBlJr0jP7Ak
 BE0RqXczHjodZn+Vo8L+XL/tls839WQqTk5qM/cWm6LihNu2HGaeeTmQ7BPScl7wWilc
 BaHpHzEbnqUYBFufqdTq8c+gHF7PTC94LXv6YhCXMiIXkJPB8Cb5UrHI5ADMRLjA42zo
 nLMeVAii95vUSkdWBg5b7poNaR1WUrM6yM2b2w7gN2l1Z0s8bZCpIZe+3tTbA8O4xFEI
 DIxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=QnP3I9MQH2rjvN4odqaiJfYKIdwE2UEnGytQrH/isCo=;
 b=NNW0i1DldDAaOmoYz5JHGepq7lb7RdIaQgMuuyQvxab6e6VI3PgyB9gTDRPhOQqq4X
 zzCRufkBieyijEEjJilyMgnfW7qM8C4CS8AsgBsfItwBUgnajeBwyHoEsw6GI0k3vYgp
 b0BrdFs4azHWsw0DFwL9joqzLDfv2OS6yAeawaU3vcTxj+ajZp/g/2rTBD/cHEEHqI8h
 AMYFmte6qRaPFMZ6Xt1RJsLE763kBOThweD8eJDjAKcThjU/Vw122DkkSUrZeAeaeXHV
 jT1FElXQENuktPNjfzv503U+eK2Na2wxa281pgR1KkiVUnz71rsfBs47sOAKdhhAjM8u
 mH7g==
X-Gm-Message-State: APjAAAWrhKah5hoiD8SYJMUN8ilPmjrYfGAD4t2SpdlanBmSiMRzgZlQ
 r/RIH6tLtYkG0lyMoUMxAy4=
X-Google-Smtp-Source: APXvYqy5KkRy1uXxqtjC4MyYoj8JskrPlSRfUong+9Z73j995d4xccxTBqgnHi3V+SoQVsINzFgxaw==
X-Received: by 2002:a05:600c:2959:: with SMTP id
 n25mr481678wmd.185.1579665897027; 
 Tue, 21 Jan 2020 20:04:57 -0800 (PST)
Received: from [10.230.28.123] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id m3sm53812768wrs.53.2020.01.21.20.04.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Jan 2020 20:04:55 -0800 (PST)
Subject: Re: [PATCH v2 net-next] net: convert suitable drivers to use
 phy_do_ioctl_running
To: Heiner Kallweit <hkallweit1@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 David Miller <davem@davemloft.net>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Doug Berger <opendmb@gmail.com>,
 Pantelis Antoniou <pantelis.antoniou@gmail.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>, Salil Mehta
 <salil.mehta@huawei.com>, Vladimir Zapolskiy <vz@mleia.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>, Timur Tabi <timur@kernel.org>,
 Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
 Steve Glendinning <steve.glendinning@shawell.net>,
 Michal Simek <michal.simek@xilinx.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>
References: <2db5d899-a550-456d-a725-f7cf009f53a3@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <9d2dbcc0-7e22-601a-35f6-135f2a9e6f99@gmail.com>
Date: Tue, 21 Jan 2020 20:04:50 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <2db5d899-a550-456d-a725-f7cf009f53a3@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_200458_873459_5DAB7C81 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Linux USB Mailing List <linux-usb@vger.kernel.org>,
 linux-renesas-soc@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 1/21/2020 1:09 PM, Heiner Kallweit wrote:
> Convert suitable drivers to use new helper phy_do_ioctl_running.
> 
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
The vast majority of drivers that you are converting use the following
convention:

- !netif_running -> return -EINVAL
- !dev->phydev -> return -ENODEV

so it may make sense to change the helper to accommodate the majority
here, not that I believe this is going to make much practical
difference, but if there were test cases that were specifically looking
for such an error code, they could be failing after this changeset.

For bgmac.c, bcmgenet.c and cpmac.c:

Acked-by: Florian Fainelli <f.fainelli@gmail.com>

Whether you decide to spin another version or not.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
