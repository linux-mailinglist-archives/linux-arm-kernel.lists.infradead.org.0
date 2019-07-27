Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEAF2777B3
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 10:38:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KtKNX6kjoXtsgiLGcQ6IK3QGEYs/ZHqJFVI0Nm7nB54=; b=Q3aJvXBNm9lVgI
	mwkbF/5vrpPG8c1ZdofkSDjXn3K3343gs0n2fL+yoaei4Wkvmbe4VWYxam4ZyvOcNIyeHTvQaoQyf
	rEcsyAR5g2cyKmxLC9QMome/nLje3aZOG9mlvtO8pE2YqjkvNxfDFYASZapdkoMdExS7JXLhPM1N9
	ujcrkDvEowgSe+AwKDHNfLezVnB/VF44QxIpCNInSYY3lL16w6uv0ueyKOe9izdnWCeBsFPzbVVmQ
	kZX5nrHCrMe/ufHEmLNFAVEMSRwe9ziUyXLr+mBzZen719h9iJnaelr+XrUy6A+qs2JFQ6dLC/Peq
	45SVetXsZWAHveiYp1xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrIE4-0000wJ-Ku; Sat, 27 Jul 2019 08:38:48 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrICY-00008x-GM; Sat, 27 Jul 2019 08:37:16 +0000
Received: by mail-wm1-x344.google.com with SMTP id g67so45330330wme.1;
 Sat, 27 Jul 2019 01:37:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=SzX7m4bwjQSdn4Mqmgypetc/V+AxipBx0rG9jo0B898=;
 b=EXEMfZRNCrK5o19CdDFNvjY8x/NPixnOmIGHa0kP0IoDeEnHssWRDbGji5jecDOJX7
 Q7Kkn0suWsfJq+MeNii4gTAOjnhEUt/9N34noz9HQ3KXZ3JwvveHToYmD0x+C1yhAOEi
 8qjnDcu4i4dgFlnqdudAwadzwDROYZrdVbVbvTVzcsrnJqF1pggjG6S25GJBbbXsJiih
 uJ6QGoFQMGt7TGQX0zuiXoSvw1bBPPjTcY2VUbB+qUsHCaNH/m/yEvXQ4k3mXBrq2zAA
 o31yf4GOMDVDMhsHH2DzKhDq6hngBDwJ7QwDIl3ywJ27SC4plc9AC1702Iy+dss4dyN6
 PN3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=SzX7m4bwjQSdn4Mqmgypetc/V+AxipBx0rG9jo0B898=;
 b=GdkmxsJ02AuxUGakHQSzfUDyebDYfutLlRneJGexCcOlYtEreWa30BouFuw8nMKtN3
 7GVTevTgp3WwU8B8Jz4AZrYslksuBYmQQiPR7nO7ZRimfe4g9LOA/rQX6PEG8WZXMUkU
 Y6UPYnJrHZdWv1KkGXiWe3AdejcSMzEkyFzyuPhQPI+FpyikLSavN2b6/Wh8X0gm2G9w
 Hlp5KYkrJsM66xMTmCnfvFWd1kgo0jkZHuO9w7nyorQpD4MLL7HHmSfSw2NX1W6Msr99
 rzVhN5fF/LV3w/Gqbl11NjtfB6KSCAu6F/MYCEaBt1+iu351t4XUEsKRTwN4N8KJfNzt
 AQpA==
X-Gm-Message-State: APjAAAWeWVxCic2LkJ9uqboOuWjPzsPWCVSCdThGY4jOvJoj1FWOWGkb
 GkYImmFOIdomDShbssKtQg2+2DMuwUA=
X-Google-Smtp-Source: APXvYqzuIqWCcyBbW5jro/eGOjzE9P+2FE186dnOFl7zd8DPXlIUYfzc5WmzVu8t2AUKnEJjfO39NQ==
X-Received: by 2002:a1c:6454:: with SMTP id y81mr63961053wmb.105.1564216631543; 
 Sat, 27 Jul 2019 01:37:11 -0700 (PDT)
Received: from [10.230.35.19] ([192.19.248.250])
 by smtp.gmail.com with ESMTPSA id m24sm33183707wmi.39.2019.07.27.01.36.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 27 Jul 2019 01:36:56 -0700 (PDT)
Subject: Re: [RFC] ARM: bcm2835: register dmabounce on devices hooked to main
 interconnect
To: Christoph Hellwig <hch@lst.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
References: <20190723161934.4590-1-nsaenzjulienne@suse.de>
 <20190723163433.GA2234@lst.de>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Message-ID: <f15ef16e-8e5c-4e9b-1cb2-c6602b15a4ec@gmail.com>
Date: Sat, 27 Jul 2019 10:36:46 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190723163433.GA2234@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_013714_608382_25DCEE4C 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mbrugger@suse.com, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 7/23/2019 6:34 PM, Christoph Hellwig wrote:
>> +static int bcm2835_needs_bounce(struct device *dev, dma_addr_t dma_addr, size_t size)
> 
> Too long line..
> 
>> +void __init bcm2835_init_early(void)
>> +{
>> +	if(of_machine_is_compatible("brcm,bcm2711"))
> 
> Odd formatting.
> 
> Otherwise this looks good to me.

Is this really the right way to solve this problem? First this is ARM
32-bit specific, and second, should not we have a way to indicate via
device tree that all peripherals behind the "soc" simple-bus parent node
are limited to 32-bit of DMA masks, but the specific memory map of the
BCM283x/BCM2711 makes it that only the last 1GB (0xC000_0000 -
0xffff_ffff) (which dma-ranges conveys already) is suitable for DMA into
the VPU uncached alias?
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
