Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EC0A1FD7FA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 23:55:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ws5S/2mqAnaBnBwpF7NhPY3DuYmuLq7EK1WtxJv+5ro=; b=lTUaK0m9Zbkl2D
	1oaHytaH9fjD2wfhqHOnjZnEFmZa4F5M98/jBMxOE+eLjEq1iqTNsTjgxiY0pe47KCBfThNAA2u5v
	gCSEAYZ25tjatcG1fOZnfmQ3/F/rLyKJSE8PGkJbTTngL+kHAxlXNonA9ufX2+IqEsPl7Q14GJOXz
	6MolqBmucG8OEBz9u1fBFmoebs80+Xr19P2cZUyCQ6JYqNdf6eiU8Pjl96LWC7YVlbvHdiSbbdfXp
	Kv6z0iyeHT6E+wXjKZN7yW5vFBT/v0xRtZJX+MtHcNtoTQ7o9jyEyFfiKyHi8mgj02TNY1CnKUqk1
	PruHoAf70HZ1o+rzOjDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlg1T-0005Un-9M; Wed, 17 Jun 2020 21:55:07 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlg1B-0005UE-4b
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 21:54:50 +0000
Received: by mail-pf1-x442.google.com with SMTP id d66so1792448pfd.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 14:54:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=46xOyQU+v3NV/CJLyPbLOw899ccTH8LTSgYcpk2EzN4=;
 b=tCo06sn3op54JvIYIGimsSl3+IokHrqUiQ5lR552G5bdsThYIziJ5NWp++fz9Oje3h
 S29QE6KyyXUzsBqlTd7uVWlYpA4BWpFewBts75lhI8f6zm5epX5BYRrjkgl5ax88AgoY
 PXWfyxV8kQmeFa/Tl1ZkfBxzORNCLJBV3aEN8RbGOQftIflMH+Qw1vQ/94zV3nDZjlqg
 8QKsFD7i+1GTWzjUP2a7e5JIKmSRF08c4ae3tRWGT+zFWuXjPlbzJ4fANNy2vN6LkS9/
 5J3N6gbmO1BopTYn25WXO/XKsP3AouucUiaksuss5anaH44dkeuZZ3yaqwvGnRfCHnQk
 x9vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=46xOyQU+v3NV/CJLyPbLOw899ccTH8LTSgYcpk2EzN4=;
 b=nISuE/MWuv67U3IhRHxUgy7Bi53ma5wVIDUc52VsFKMHD1ZXEnG8SNIgIm7r51Dk7U
 iWicROLYiF7YRNagSZmuDJRqnjVU7vJmj2IkwIs8Of9+o5DI7Hosbeutmc8mTQs+psZy
 5kXYUcdY6G1xKjQ56BI/wMKU6LN9Zvigvoq0bmvZTesUl3ViNP1aJ+NyAXK7M78AfVnp
 aNUU2phrZZm1h5enqsBqJWZvW7EwFRlw7zYZcPuf3RsAEDXhMKp2ocEG+e8mOMkMAOYE
 rMAZHt6DUbHItSgMRl2w+didUFncnEJgKniT//0V0A+SrSQaUchFGfpml02g9Ln359pV
 W0pA==
X-Gm-Message-State: AOAM530d8gK6mrvnBu0jVQuTXuPPG/XPtQYrOEluLBlhKwsRJ9rS4XJU
 lNg/qusWoqXlSKoXxE9jtu54Reqs
X-Google-Smtp-Source: ABdhPJyttGR14qLF9+fTbEmdgcInGze9ALFGtp9gSX/oG8ylUKbyjYBKpOV/57HiPDgHTO3N5X9+3w==
X-Received: by 2002:aa7:8813:: with SMTP id c19mr790565pfo.220.1592430888010; 
 Wed, 17 Jun 2020 14:54:48 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id b19sm755393pft.74.2020.06.17.14.54.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Jun 2020 14:54:47 -0700 (PDT)
Subject: Re: [PATCH 2/3] ARM: dts: NSP: Correct amac_base lengths, mailbox reg
 and add amac3
To: Matthew Hagan <mnhagan88@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>
References: <c19be985a3e7abc8ac05fc30678475aeadb73c50.1591719237.git.mnhagan88@gmail.com>
 <d638e006713d82d1a6af4bdbcfa516f425264bf6.1591719237.git.mnhagan88@gmail.com>
 <c08a06a8-de71-d1cd-541d-2e15a23f130a@gmail.com>
 <acbf9159-375c-5dcc-3353-e9d60496516e@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <1b85f9bd-bc4c-6eaf-81c5-fcc247baf0b7@gmail.com>
Date: Wed, 17 Jun 2020 14:54:45 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <acbf9159-375c-5dcc-3353-e9d60496516e@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_145449_202148_6A6A319B 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, Russell King <linux@armlinux.org.uk>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/16/2020 1:19 PM, Matthew Hagan wrote:
> 
> 
> On 14/06/2020 23:28, Florian Fainelli wrote:
>>
>>
>> On 6/9/2020 9:58 AM, Matthew Hagan wrote:
>>> According to gmac/src/et/sys/et_linux.c, IORESOURCE_MEM end address for each
>>> mac is IPROC_GMACx_REG_BASE+0xbff.
>>
>> The datasheet shows an entire GMAC to end at 0x1000 from its base offset
>> which is likely what was used to construct this DTS, I do not believe
>> this is a functional change, and if we look at the register details, the
>> last register starts at 0xb44 so 0xc00 is giving a little bit of
>> headroom. In practice it does not change anything since you are still
>> going to need a full 4KB page frame to map the registers.
>>
>>>
>>> The FA2 mailbox is specified at 0x18025000 but should actually be 0x18025c00,
>>> length 0x400 according to socregs_nsp.h and board_bu.c. amac3 is at 25000.
>>
>> Yes, FA2 definitively start 0x18025c00, and ends 0x400 later, so I did
>> split this patch in three patches:
>>
>> - one that fixes the FA2 base address, which can be queued to stable
>> kernel branches
>> - one that changes the AMAC register size
>> - one that adds the AMAC3
> 
> Since AMAC3 has been added with interrupt 150, should the mailbox
> interrupt not also be incremented to 151?

Yes indeed, now corrected:

https://github.com/Broadcom/stblinux/commit/ac4e106d8934a5894811fc263f4b03fc8ed0fb7a

(have not merged it back into devicetree/next yet)
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
