Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 960C71AD03E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 21:22:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6ygWQRLk5LGsKvSfO25AoPsaADJJ0iPYHNJvml3utFw=; b=pClX0+wvvjvWTIR8tmqyiL41c
	GNwPJi6ZSziU0lO1M3Vvr6QaDPNOECrwp+c1fQEK4BchCjhb4O49MDtE8/Hb35bg/tkCp5DNVCoyk
	L+s2dJ18gqTrW0nzhTqCJbtWtNMFy+mxv74jgRWkz/6HGK+akiKiGoq9aalcCADghWEOO4Dbibvbq
	49q06PPluKgT7fUEcz57g+MfAllaDaYXvt9D9ts7C8ifEhMkzmCyNjR+a6BmIIh46xXPhFHgw5G/x
	9zusCLGSt856ohu7qXUIejzzveoFfdeauEUw4YqpT+kdy7XY/ephHKUvghYkjT4i6Nl8QF8ZQaSte
	ioM7/fw9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPA5M-0002mB-5m; Thu, 16 Apr 2020 19:22:04 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPA5A-0002lL-0G
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 19:21:56 +0000
Received: by mail-pj1-x1044.google.com with SMTP id t40so1777489pjb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 12:21:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=dFDogiNpUViieseD8B7i4gvtR0lN48l0uboJ699HzYA=;
 b=F8w4ZBPU9xUvd/XqTVXfpEGzJ6UvGc18kyPdt9NNzgZIPgK2YGN7E7UUf5suhykuBc
 HVC3T0kfNEMVm5PARoiA0pEsZu3SG+q1xTTwu5cDM1kK+ZkcXk6CM9TN6nmWcH5UJk6+
 Uvl3ZZW8R7LXNE39U3AA/kjFZ5qREJlqJpOOYG8si0uNNGqCV4yT7HP7TFN0juFWgWb8
 I79Maxj70yPJa8T8s0FnOb6Vt0zCnRl7OHWEEKVBPOB6gS2HZKGGYwFmOfB510roPZcd
 OY8WgwoTyzpRUmPNVwfjCVSd7wevVFMStKScXQeiTyny63qVw09vNOorv0PSJbmhIQUt
 xvQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=dFDogiNpUViieseD8B7i4gvtR0lN48l0uboJ699HzYA=;
 b=nWppxrVECWqpF66qtJMkm0ozI1pWmL9kL2xX4hYlTJOnTjJswGsM4nio6YoIbUrxlO
 8VTAMIPgMr8rH11RYK3ZEGWSfdo8mq/oHvV83v2SnctBctJtNokub8OrDTzPXPRaSGY1
 ARIeTIDwNGdouvNUBV9DsJv++waShe2zM9fE9tB5kMke2vsEl8pasD0rHUu60zYHIVZ7
 msU6kfQ+ope1oSPDVsTTDozXHQen0HiPautXMBalFzbi3jXALQ+t/ASKYwP2lK13Muj1
 Dd+2UR7LkWNzHf+JAnXMiiQcdTRNj7+ArUqPOjECw4jOJbnzq4zzIK2tL5z89B+4uss5
 CKfg==
X-Gm-Message-State: AGi0PublPW5bIBYpE5vJOXJCAdKI5cAXfCuxcwlkXDVoyNJQt33peSq9
 tWGyPHTRWUkuRhEtudaT/Xw=
X-Google-Smtp-Source: APiQypJIFpvXsaqK1CuKunLdTv+/kNGuIhIdVi5mAVZbcf9+poZ592wZxOzGRpiFbGsZPU0pwfeTRg==
X-Received: by 2002:a17:90a:fa87:: with SMTP id
 cu7mr6856550pjb.92.1587064911434; 
 Thu, 16 Apr 2020 12:21:51 -0700 (PDT)
Received: from [10.230.188.26] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id mq18sm3834503pjb.6.2020.04.16.12.21.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Apr 2020 12:21:50 -0700 (PDT)
Subject: Re: [PATCH 2/5] net: macb: mark device wake capable when
 "magic-packet" property present
To: nicolas.ferre@microchip.com, linux-arm-kernel@lists.infradead.org,
 netdev@vger.kernel.org, Claudiu Beznea <claudiu.beznea@microchip.com>,
 harini.katakam@xilinx.com
References: <cover.1587058078.git.nicolas.ferre@microchip.com>
 <3d41fc5ef84dfb2b1fa4bb41c0212417023d4d97.1587058078.git.nicolas.ferre@microchip.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <631f9716-bb21-4309-ee6e-ef2594b93a4b@gmail.com>
Date: Thu, 16 Apr 2020 12:21:48 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <3d41fc5ef84dfb2b1fa4bb41c0212417023d4d97.1587058078.git.nicolas.ferre@microchip.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_122154_979991_BDDA29A9 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
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
Cc: andrew@lunn.ch, Alexandre Belloni <alexandre.belloni@bootlin.com>,
 sergio.prado@e-labworks.com, pthombar@cadence.com, antoine.tenart@bootlin.com,
 michal.simek@xilinx.com, linux-kernel@vger.kernel.org, linux@armlinux.org.uk,
 Rafal Ozieblo <rafalo@cadence.com>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 4/16/2020 10:44 AM, nicolas.ferre@microchip.com wrote:
> From: Nicolas Ferre <nicolas.ferre@microchip.com>
> 
> Change the way the "magic-packet" DT property is handled in the
> macb_probe() function, matching DT binding documentation.
> Now we mark the device as "wakeup capable" instead of calling the
> device_init_wakeup() function that would enable the wakeup source.
> 
> For Ethernet WoL, enabling the wakeup_source is done by
> using ethtool and associated macb_set_wol() function that
> already calls device_set_wakeup_enable() for this purpose.
> 
> That would reduce power consumption by cutting more clocks if
> "magic-packet" property is set but WoL is not configured by ethtool.
> 
> Fixes: 3e2a5e153906 ("net: macb: add wake-on-lan support via magic packet")
> Cc: Claudiu Beznea <claudiu.beznea@microchip.com>
> Cc: Harini Katakam <harini.katakam@xilinx.com>
> Cc: Rafal Ozieblo <rafalo@cadence.com>
> Cc: Sergio Prado <sergio.prado@e-labworks.com>
> Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
