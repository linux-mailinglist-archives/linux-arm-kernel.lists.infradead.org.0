Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D286F1EE8BA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 18:40:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gedHfkV+yZbB8LXuVBJHLImOBPhDZjgSpg8437I3Egs=; b=ucLqhYteTXOgIU
	NgRCj4tH+IivB5soHzLIo7+ZY4ctfjH8vZM0rf4pffF5npcuYdJSK+IQtWGISmuGaJaU/FsTRSefI
	/EzHmTM+nRoYL+2Bf3W17Dn3xkH44fe48UkrKaWr8Jmzodi+Yxd7RMnitxFg8eYup3h2PW38jXNKE
	xgess0C2BTT/6rNdDCK+4+qQYMrGyPTXxjVaN8AT7qZr7KGcixS4wuHX28w1AB93PYnQpTiQxunoh
	zuhgSPSJdo/cleHltewKLii1IS9jEB/G0kY2Y7nApwXZFlRyHl8Jr28eL3hqUP2+4/Ug21HKUr3nQ
	ycCQzrf4uek3e1ZLXA/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgsun-00080R-Qd; Thu, 04 Jun 2020 16:40:25 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgsuh-000800-Nj; Thu, 04 Jun 2020 16:40:20 +0000
Received: by mail-pj1-x1042.google.com with SMTP id ga6so1353936pjb.1;
 Thu, 04 Jun 2020 09:40:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=A3i1Y/uWZjvOKPJmr6UpXk+ssrbNL04u8CPNIJtcrUM=;
 b=Ib7Wc1GnX3qN2AImWV6NMbcrCTmw3Q2G02/8t7+ZAdbp5pnq9zar82fav50SR9V44Z
 bHjAdfvge/2orXyJV5wgsojwuGWWeM8BgfXjl8HSXxmLvi+1qEokqYWq7UmS1fhwRdLr
 elmkEava9W0hOtXbWzHrlRGI17+TdRAKuAL94+RbdHYU3oQBIM8UkNzUBmPd6WOV1QpC
 OxLxBZeLEdsfu+h1pDPd9m26bbqadt8vw+l3N2zfGSLoVqLR0QfzZ/inWMB6FTkxcD33
 WalkNDwcneAwdvMp+8b6LeV/4ICyRepKs/T5hOcVuQFGKLaH3ok60zkF8ci34OXkMZYT
 1B/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=A3i1Y/uWZjvOKPJmr6UpXk+ssrbNL04u8CPNIJtcrUM=;
 b=GcF3pCitwTKy/E8rNnqIhwjWIpglL6MZkkqST7hdmLWiw7Xd2q+7JUNkJzv+Dey58D
 n+CCPfTXeH+T3WqkrABh/pl8mII/U0bCzMqcA9krB02mSiZ3VfNXIVFBEDVofpNAlK1n
 UYZEXTjkNaUsiuf6H4QaKxut+paMKR8xBvDZ+f6U7S3/QQTaFJ/2IfFrsVYzOhCgEkzd
 dmpC1WWPJMfycaGY7AHQNddVKHjPea27B7EFbERt5YiWcD86jow3qmeic/LUN11wGM2r
 NN7WsIWDNfm/j3aq0i3sCKTubdNtBGeAmrv+57SNSZlP3V5zK9kgBMrlFGRjswNocjGi
 iRNw==
X-Gm-Message-State: AOAM530iBx7M3EwFc69jhxhNWUN64aIJvHC71kyY+/4MJkJUbjJPDEVm
 PuooDkAY1fckHrWkKR5pV58=
X-Google-Smtp-Source: ABdhPJwHCqIPELRZMH+m8w5zHxSff7d/Jnxr6zWedksxAa4bE5qv/P/51TM6EZ2sLGPMS2V0vMUnJA==
X-Received: by 2002:a17:90b:3651:: with SMTP id
 nh17mr7093309pjb.4.1591288818763; 
 Thu, 04 Jun 2020 09:40:18 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id j8sm5807508pjw.11.2020.06.04.09.40.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 04 Jun 2020 09:40:16 -0700 (PDT)
Subject: Re: [PATCH 2/3] ARM: dts: bcm2711: Update SPI nodes compatible strings
To: Lukas Wunner <lukas@wunner.de>, Florian Fainelli <f.fainelli@gmail.com>
References: <20200604034655.15930-1-f.fainelli@gmail.com>
 <20200604034655.15930-3-f.fainelli@gmail.com>
 <20200604042038.jzolu6k7q3d6bsvq@wunner.de>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <15c3995e-87de-0f2b-3424-5dd698b181d3@gmail.com>
Date: Thu, 4 Jun 2020 09:40:12 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200604042038.jzolu6k7q3d6bsvq@wunner.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_094019_774670_37B2C8E4 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 "open list:SPI SUBSYSTEM" <linux-spi@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Martin Sperl <kernel@martin.sperl.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/3/2020 9:20 PM, Lukas Wunner wrote:
> On Wed, Jun 03, 2020 at 08:46:54PM -0700, Florian Fainelli wrote:
>> The BCM2711 SoC features 5 SPI controllers which all share the same
>> interrupt line, the SPI driver needs to support interrupt sharing,
>> therefore use the chip specific compatible string to help with that.
> 
> You're saying above that the 5 controllers all share the interrupt
> but below you're only changing the compatible string of 4 controllers.
> 
> So I assume spi0 still has its own interrupt and only the additional
> 4 controllers present on the BCM2711/BCM7211 share their interrupt?

Correct, there are 5 instances, but only the 4 that were added for 2711
actually share the interrupt line, I will correct that in the next patch
version.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
