Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E94E01F57B8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 17:24:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UIH/piEoJBN9zu0w9njLgBscus+8DtBg94m1Pxiq0AM=; b=LvC290PzVA9ii1
	60zfrKYB/V/3/aNFKqiN4tEb8L+woBOPDDRB1HrLjEYXmDmpJhZDgvxHHaF+mShZznvZddiGRSGcD
	alDksA/JOzLUXDWmcCV+s9t3uN//U9DpsZaevxzOtmTA8S0s7jGK/phGmkAcOmvRLezt8Jvu67wv8
	3RS5bh9vrNh/qAqM1MH9Mg/F/x063A2+KpOI2YX+S9Tpz65PvVCwnY3+ttYn06NtDQzgEdl57BwKr
	+i06xBGGhqaVM5d2uYAtTKSIANWm0meesQCP+6eO0gD0LsHkOjMtXmiru1XkKe61WTBT9vbkZS7OT
	uFNWcyGPwW1Jpy4hZHlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj2aW-00080d-3O; Wed, 10 Jun 2020 15:24:24 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj2aM-000805-NC
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 15:24:16 +0000
Received: by mail-pf1-x443.google.com with SMTP id 23so1233772pfw.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 08:24:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=o5XQnO02H0fKrctspxTo+pKLyxRvYHKgJy5mnWAg2J8=;
 b=DnJQPEBGaSs22StiK/XmIEJixwrHcLpFw59LuvDPEuhTrZlIONMfkMnz4lAvBDtCF4
 wEzvpXzgnPaWsoQj5RPbhUEB2ixk1Kpyzy/3fGeiWiqw/x4NHfuFYEIDJefx/OkBsCvr
 7MZTF4mm9UfVcqPrylz8nO/3u5pf8QDDcYzDZvpxE981m/GBKFa+VC60p4H3xUbwyhxc
 upe69uaPxFjhkAhVe10O/6KIuOrw9R0xJJmyp+KUNH1uAuUW234e+8frFJFSMzvgGO8A
 kD4WMupFrDKSG7EhHr40wHf5mvx8MYCRjp4bFb90rxEz/GkyYy5ePH87jyEFxCPnGR50
 4mbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=o5XQnO02H0fKrctspxTo+pKLyxRvYHKgJy5mnWAg2J8=;
 b=b8B1Fg+HGj9MBGVD1nyk3Fgjhz2NnDUlq6A3l0IWU27scaeZTMkOoKT/217foivDk5
 zIqqC4xcBVD6MQ/2lOkuj+B9mEAzoZnTxPGILmImx3t6HAwGFse4/CnSb4VECsWDyt5M
 isJmcYR15C0KtEKMQJEAmL8F0b4to7DLT6pUmo+KG0acOoanjcYtrx9lR4argBbluLGf
 kbIqD85wPsyq2pzAZbHfdJ9QxISkVWjAJ30erfeLqHggQyZkoKsFtoJOZqPZEzcZykuP
 dY6E0fAt0kz6ueu5aR1F7CbTn5sr3wTLxYoUkYTkFS7NZbZJKPW+MJ+KEcrJKGi1G9A3
 oZ3Q==
X-Gm-Message-State: AOAM533pjC3hvkEFmONsQS2Fzy05AMdefBnOy79v4AvNCDQr9WDMw+lB
 j9E2kqF2MACp13oUfH+5S+8w+9DB
X-Google-Smtp-Source: ABdhPJw1fTlxizPaM70IutkwBiYtRCvKawKfiyPzN0ibNSUxNU8n5tvL+NWKirw4pGk+03aHkek4mA==
X-Received: by 2002:a62:8811:: with SMTP id l17mr3158370pfd.72.1591802653831; 
 Wed, 10 Jun 2020 08:24:13 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id q18sm196360pgt.74.2020.06.10.08.24.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Jun 2020 08:24:12 -0700 (PDT)
Subject: Re: [PATCH] net: mvneta: Fix Serdes configuration for 2.5Gbps modes
To: Sascha Hauer <s.hauer@pengutronix.de>, Andrew Lunn <andrew@lunn.ch>
References: <20200609131152.22836-1-s.hauer@pengutronix.de>
 <20200609132848.GA1076317@lunn.ch> <20200610062606.GM11869@pengutronix.de>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <9f85b076-dab8-63e4-5d2c-b48575979a02@gmail.com>
Date: Wed, 10 Jun 2020 08:24:11 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200610062606.GM11869@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_082414_760496_442C2357 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/9/2020 11:26 PM, Sascha Hauer wrote:
> Hi Andrew,
> 
> +Cc Maxime Chevallier
> 
> On Tue, Jun 09, 2020 at 03:28:48PM +0200, Andrew Lunn wrote:
>> On Tue, Jun 09, 2020 at 03:11:52PM +0200, Sascha Hauer wrote:
>>> The Marvell MVNETA Ethernet controller supports a 2.5Gbps SGMII mode
>>> called DRSGMII. Depending on the Port MAC Control Register0 PortType
>>> setting this seems to be either an overclocked SGMII mode or 2500BaseX.
>>>
>>> This patch adds the necessary Serdes Configuration setting for the
>>> 2.5Gbps modes. There is no phy interface mode define for overclocked
>>> SGMII, so only 2500BaseX is handled for now.
>>>
>>> As phy_interface_mode_is_8023z() returns true for both
>>> PHY_INTERFACE_MODE_1000BASEX and PHY_INTERFACE_MODE_2500BASEX we
>>> explicitly test for 1000BaseX instead of using
>>> phy_interface_mode_is_8023z() to differentiate the different
>>> possibilities.
>>
>> Hi Sascha
>>
>> This seems like it should have a Fixes: tag, and be submitted to the
>> net tree. Please see the Networking FAQ.
> 
> This might be a candidate for a Fixes: tag:
> 
> | commit da58a931f248f423f917c3a0b3c94303aa30a738
> | Author: Maxime Chevallier <maxime.chevallier@bootlin.com>
> | Date:   Tue Sep 25 15:59:39 2018 +0200
> | 
> |     net: mvneta: Add support for 2500Mbps SGMII
> 
> What do you mean by "submitted to the net tree"? I usually send network
> driver related patches to netdev@vger.kernel.org and from there David
> applies them. Is there anything more to it I haven't respected?

Here are relevant bits from the netdev-FAQ:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/networking/netdev-FAQ.rst#n28

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/networking/netdev-FAQ.rst#n78

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/networking/netdev-FAQ.rst#n210
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
