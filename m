Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70BD2102BBF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 19:35:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gYsklr8rHBCPyp1rdCKzbrVjEmhwF0q4eozqrxSuJoM=; b=tertXKJ4cWBand
	ei7ctLzDiHR4CT5ZSNqKQ8xKnPBAO8YI6iDAgaTo76wdyOhmVO1KqOKgp88JvWqixY024nJ9QDZpM
	dNfJMKVEjjfzvfZsShhmn4BP3pRP/xHNztK3PabVTiMFA4Uc6SyVaQHxttapxCPGtwVv6TT6bExq0
	Bfh15aobfnebt7aUwX3xz/UAwdmfqlNpjYNJ7NhFJHGJoBVoMxTHuCyVrQX0ezpGYRW4o/mYaBHSr
	FmVVyZY6eGP5WSGV8chS0KVmdevQSL7WXA81hVV7QPx6SQBX2zzWvtn8oLMorHwlIuW6hVFZ4DmVc
	LNwQrTAjivQAKnqyqI6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX8LN-000898-LV; Tue, 19 Nov 2019 18:35:17 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX8LD-0007fp-MC; Tue, 19 Nov 2019 18:35:09 +0000
Received: by mail-ed1-x543.google.com with SMTP id a21so17917739edj.8;
 Tue, 19 Nov 2019 10:35:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=NNpBzdNFmhhSd7kNBXtOOm8GfDDoueWx/oNpEAx7AKg=;
 b=YltOPiP+y8ocen03LqqKSkh4PraaV02MkXioAXWpnhO02i5mNfCeSiT4g4fjY+Mu6Q
 dRDG9LB9zMdCD6WhKEOUJ0S+u4NSI1+qRR+AIiC26GbYvAbz1ivAxTay+U4HVmCWnIZP
 NdFEF80+3WT4zudYpb5xNAw3k+C6JLsxmMplRIh0WEM45uRhNzqJ0Di84vluu4sKahfu
 KrsoOXFJwwspF6qxSobyAHxTsXwMZWzV9UpN62X1yHrHvkkS9e9OTYe8aObqjrYPdopD
 os41snqAIUg/XUu6n5aqZJqAVJj4qAzZUvaUEyMdVdTinwy99sqB3OTskc0WO6htxuHk
 e75g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=NNpBzdNFmhhSd7kNBXtOOm8GfDDoueWx/oNpEAx7AKg=;
 b=rsUS4y0QnfL7gYSSwlyMXVDddqxntwwcLtYG0s5O0VX/P3k3fFODteu2W2jM2dgbsn
 93zjUBHPDCH33bYCXhxdS4M9C7ktGKKEGQ1RH2AcyfKJtmv/jvTRF/TLB645Jgj9/6i0
 bQNzFqZRW1TLYs2rF6kYj5TelNGzIAF1Ncg6MfHAZ1TkXalYz1ivVxQY/2LEQXeKDHil
 1c1dYTWKmiKe/zDX8MBayVeVkfHpAe9Lh7d1U0PFULLoL6PQdR1gd3+UEm9IQWIOUSzT
 Kyv9BxATr0LzIJoAkl2VVLGOsScm9OSJwl0ya9orahbRPNcrp6qMTsHjFqq+F1n/pUO8
 GbFA==
X-Gm-Message-State: APjAAAXipDSmE6H5coK4pRgdCZAWSOKlVY3WE/g8ZOk4jVInPlSh7yE1
 E9IW5pe4lKM2xq2c/QHVSSAfIlLk
X-Google-Smtp-Source: APXvYqykTIVTr3uFQI73JbWTPd5Y29MlxGD7+P2U0cVQNdyhAt6FIsUdh7xYiubyb41i6v4eyUgn8w==
X-Received: by 2002:a17:906:4913:: with SMTP id
 b19mr36345801ejq.61.1574188505047; 
 Tue, 19 Nov 2019 10:35:05 -0800 (PST)
Received: from [10.67.50.53] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id e19sm613164eds.71.2019.11.19.10.35.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 19 Nov 2019 10:35:04 -0800 (PST)
Subject: Re: [PATCH v2 4/6] PCI: brcmstb: add Broadcom STB PCIe host
 controller driver
To: Andrew Murray <andrew.murray@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
References: <20191112155926.16476-1-nsaenzjulienne@suse.de>
 <20191112155926.16476-5-nsaenzjulienne@suse.de>
 <20191119162502.GS43905@e119886-lin.cambridge.arm.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 M5kY0ACeNhCZJvZ5g4C2Lc9fcTHu8jxmEkI=
Message-ID: <8b5ea071-d7a1-ea31-c7fe-3b4585d9cc36@gmail.com>
Date: Tue, 19 Nov 2019 10:34:59 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191119162502.GS43905@e119886-lin.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_103507_762248_61838B09 
X-CRM114-Status: GOOD (  21.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, mbrugger@suse.com, maz@kernel.org,
 phil@raspberrypi.org, linux-kernel@vger.kernel.org, jeremy.linton@arm.com,
 Eric Anholt <eric@anholt.net>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 james.quinlan@broadcom.com, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/19/19 8:25 AM, Andrew Murray wrote:
> On Tue, Nov 12, 2019 at 04:59:23PM +0100, Nicolas Saenz Julienne wrote:
>> From: Jim Quinlan <james.quinlan@broadcom.com>
>>
>> This commit adds the basic Broadcom STB PCIe controller.  Missing is the
>> ability to process MSI. This functionality is added in a subsequent
>> commit.
>>
>> The PCIe block contains an MDIO interface.  This is a local interface
>> only accessible by the PCIe controller.  It cannot be used or shared
>> by any other HW.  As such, the small amount of code for this
>> controller is included in this driver as there is little upside to put
>> it elsewhere.
> 
> This commit message hasn't changed, despite earlier feedback.

Please strip out large parts of the original patch that you are not
quoting for future responses.

[snip]

> 
> I'd rather see use of the pcie_cfg_data structure removed from this series.
> 
> I've seen the comments in the previous thread [1], and I understand that
> the intention is that this driver will eventually be used for other SOCs.
> 
> However this indirection isn't needed *now* and it makes reviewing this
> patch more difficult. If and when a later series is made to cover other
> SOCs - then I'd expect that series to find a way to apply this indirection.

I am not completely sold on the difficulty to review given that the
indirection is in place for only 3 registers which are used in only 3
functions:

brcm_pcie_bridge_sw_init_set()
brcm_pcie_perst_set()
brcm_pcie_map_conf()

but if you think that is a deal breaker, then, okay, let's get rid of it
and we will add it back for other STB SoCs in the future.

> 
> And if that later series is more difficult to review because of the newly
> added indirection, then I'd expect an early patch of that series to apply
> the indirection in a single patch - which would be easy to review.
> 
> The other risk of such premature changes like this is that when you come
> to adding other SOCs, you may then discover that there were shortcomings
> in the way you've approached it here.

2711 is the latest SoC that has actually been supported by this driver,
every other ones that this driver will support in the future has been in
production for years and all the quirks/subtleties are known. This means
that 2711 was added while fitting in the existing abstraction and
Nicholas took out every other chip to leave 2711 only.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
