Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F921B2DFA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 19:16:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=o+UVuu9dLViugC/qMXKm7L19DDisTgaGGciYI9SOfhA=; b=KK6k07tq44cAxd2dliEyoHwwD
	3j4D4Vi6CgrRXN95pEztH+wmYoMRRWFDW3tTdrURr9C7EtLzqSems4jVoAdEJBDHvl4Y1/0vK03vq
	lwZEpY6N91RM+WFfKT3x7NSligHOqwzO7pL4H117+DahHrCceJzi7cuT6/coUgjtsI7u/YuxFV84z
	PvUHu0i9pDNB1v2i5rq9mWO8qhZtxI4f2VmzgL2b+IHIMIkh7xMSJ6hrDwZRnF2RCtOafcs4S9lCk
	jQnGg2O4+rz1uwPpv8pNgZeTDtgjHzICxWnVNfv/Sj8E9yRVSqeSmv88LTmr4MMWgM1pS5khd712a
	1fMPne+Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQwVS-0006nw-Mk; Tue, 21 Apr 2020 17:16:22 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQwVK-0006mV-1e
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 17:16:15 +0000
Received: by mail-pl1-x641.google.com with SMTP id n24so5461133plp.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 10:16:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=SuckAMHK0J9TxQjKnzD2CE098tmVLnHq2SeW0xvPDps=;
 b=cMMkRxQ86GGlqNkJGvwQoeUvGlDud6Uro3gXunD/gzd9NLLvSi2bb53jKBZvZBny/G
 C+/pdqoL3eXoxp4VXCIWbjivQct4e76nTJkpQTiKLo/21f6/a04orlW+5dBfQIg99DGW
 bz0wZs0rQHSgVwEWp7RY6t6uxClwfK8lwoGkX/Xik0Q+AE3Uldi/aZkhJRqdwz3uRSJv
 lbsDr4kdMsbqsEVrdjsZ3d+oXFVQdpvt8elBeSq82VHg8ne/GfA5YAJ2OdhQRw/OM7P1
 1PSiigkkgxGR1INAezSEOscuHTw6kBYbFibicTzh3fYX0kEEYf4ehOsEXucrU+C/GfLf
 FDFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=SuckAMHK0J9TxQjKnzD2CE098tmVLnHq2SeW0xvPDps=;
 b=f95d7Cc00mdV80i2qP3pwBakwatbZae7ky69NsZQPoA2yMmcmZ8KhiwUkTSWej7udQ
 nxIkujYQJjG6lMBoZGxxIOdJvkzBKJ/dbgL8122SI9eudwtQErd5P84dsKB3n/oy2UEC
 b/HdUJFJG6q2ede+V7abLYS6JzVS2ODJVCMykPM18Scd8Y30qvYba1No2sGaRGZ4Cmxc
 HRWW0P6N15bC/8sGGngqNLJayetHMZeJ8mou1j+3K0ZNufJ5cHFISChwCjmld+JBnG2p
 edHPSgm+idBk4U7y/PtWV1vS8mYVX4iOB1Va4lxtdbWqeCfJOI8C9tlqJC6TkF2Izd4Z
 heqw==
X-Gm-Message-State: AGi0Pua0J8/6+s1t3WVgDKxNzzGAzl5PivzlvY4VcJ4x+i8ecUtNx5Sb
 nBQL7Em0zuxzYj6l2aVvQW4=
X-Google-Smtp-Source: APiQypIFAPwJpPEVEHOCEKVvNouwB6PiSYEfQcX5nw02w8SVidnCIWD7Km2Q1I3UFRGQQGJ1VYqjdw==
X-Received: by 2002:a17:902:7489:: with SMTP id
 h9mr20122939pll.212.1587489373350; 
 Tue, 21 Apr 2020 10:16:13 -0700 (PDT)
Received: from [10.230.188.26] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id q2sm2972804pfl.174.2020.04.21.10.16.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Apr 2020 10:16:12 -0700 (PDT)
Subject: Re: [PATCH v2 4/7] net: macb: fix macb_suspend() by removing call to
 netif_carrier_off()
To: nicolas.ferre@microchip.com, linux-arm-kernel@lists.infradead.org,
 netdev@vger.kernel.org, Claudiu Beznea <claudiu.beznea@microchip.com>,
 harini.katakam@xilinx.com
References: <cover.1587463802.git.nicolas.ferre@microchip.com>
 <da134cb7ffbdfcad1f8e7f2348b66c31f3a35680.1587463802.git.nicolas.ferre@microchip.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <d74ac8a0-8990-be30-0fb5-d6a1f0b043a0@gmail.com>
Date: Tue, 21 Apr 2020 10:16:12 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <da134cb7ffbdfcad1f8e7f2348b66c31f3a35680.1587463802.git.nicolas.ferre@microchip.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_101614_090309_76DBFFEC 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: andrew@lunn.ch, Alexandre Belloni <alexandre.belloni@bootlin.com>,
 sergio.prado@e-labworks.com, antoine.tenart@bootlin.com,
 michal.simek@xilinx.com, linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 4/21/2020 3:41 AM, nicolas.ferre@microchip.com wrote:
> From: Nicolas Ferre <nicolas.ferre@microchip.com>
> 
> As we now use the phylink call to phylink_stop() in the non-WoL path,
> there is no need for this call to netif_carrier_off() anymore. It can
> disturb the underlying phylink FSM.
> 
> Fixes: 7897b071ac3b ("net: macb: convert to phylink")
> Cc: Claudiu Beznea <claudiu.beznea@microchip.com>
> Cc: Harini Katakam <harini.katakam@xilinx.com>
> Cc: Antoine Tenart <antoine.tenart@bootlin.com>
> Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
