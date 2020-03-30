Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFAAA1981D7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 19:05:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zb/0ZAvJP7xJkBZPvwGD00PGWVEAeo0GWl9NMqe6u8I=; b=V7lJattN1UrtBZ
	fYqRcBsM1OhsoW5uiUYXsJwxo3Uful3We8OqNzYHkJOnZ7S0qWeE393ZhNJOdj1ExSuwjhh/RUqEM
	9lTjcwC9QN96ay+yF314Y5pHSwA257HCYDM4LCzXH5ZNpneHcCr2INY0es6ibDXd05dsHWMBUsZlg
	TiGXNN9LawgvRe89gGtdk43X3wFMQvdWHnl9QNAsE+aIsX006w9OwI+vojaBYdWTzQuVX1ZoAYlqM
	xJMh6FqBF9UYsU61Pjf5lIrWqlkRbjet33g9afpPVZPm3/bqBKag9bCxcE9I9RCez005CjKETXLuG
	cAOrqz8yThsGtDIrdjVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIxqI-0006dt-NH; Mon, 30 Mar 2020 17:04:54 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIxq8-0006cm-Rd
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 17:04:46 +0000
Received: by mail-wm1-x344.google.com with SMTP id j19so4028583wmi.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 10:04:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=qqStv1Lo1qg4gRg7lDrcQqRCTc9QZc+NG4mrfiQbFjE=;
 b=Uh4bVVfaNPgqBDf14A/tNlnFlIMgcAjfpCWcb+Uzrx//iiYZNWzYxkVZtoxnnBGNE7
 JUng1z3YWhf3Ee4gCS+2rK3YV4eaABGB5nQVH/R8tVtdVZInAAMkT1GD+hjo00JOuZqN
 FvOAi1z1lfK4wW+rdBnYnyco/ZYm94ggobg0Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=qqStv1Lo1qg4gRg7lDrcQqRCTc9QZc+NG4mrfiQbFjE=;
 b=Asn2CaDJN0quXb7eIz1RyFKGVytHD21QLtqsxPoWy1gFPVx0Jho+WNj8uW8LeruFKc
 ZvNbenOFdPiaT7C09mhgQavo/MnWZaInpsrqkc47hmjG9zACvaG8c9l5Jh9k9FhI16u0
 d9D+dqau56xv3wZ8gz60zF6asJsY+9UzqAM1Wac5lZTOBAZK2KzIoCUaKDaX+sY0NxgR
 lrrrwhSacfH0nxFMjrN2jmZM2NV6arA2ys7qsKz5o2g/vrXwl3c0SKTRyMCW0QmnFyeY
 CSBwb3pcM/IIOse7nBlhtD8W6gcznExcNtfWHgDaSIgkSq/yBuEBJwZmMz9VDyvXQdNa
 E0Ew==
X-Gm-Message-State: ANhLgQ02u+bM4WFlSNFUh2DvYJIk0MGV3Ddd02vMWcxvmL5XQd5nUH10
 gE4a9LJyGfUYXG+BnZnzh2x8oQ==
X-Google-Smtp-Source: ADFU+vvo+5kRarlX8ncgn7tFCSQDq8v2Ad0Bb+4DKkjHRYgiSGCpdbHJ7aZZkfTIo2aaSImThdshhg==
X-Received: by 2002:a05:600c:2202:: with SMTP id
 z2mr263068wml.64.1585587881418; 
 Mon, 30 Mar 2020 10:04:41 -0700 (PDT)
Received: from [10.230.26.36] ([192.19.224.250])
 by smtp.gmail.com with ESMTPSA id t126sm192175wmb.27.2020.03.30.10.04.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 30 Mar 2020 10:04:40 -0700 (PDT)
Subject: Re: [PATCH 1/3] PCI: iproc: fix out of bound array access
To: Bjorn Helgaas <helgaas@kernel.org>
References: <20200326204807.GA87784@google.com>
From: Ray Jui <ray.jui@broadcom.com>
Message-ID: <0fec2db0-fb56-615d-eed4-d702d1bc37fb@broadcom.com>
Date: Mon, 30 Mar 2020 10:04:35 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200326204807.GA87784@google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_100444_899696_8A17A959 
X-CRM114-Status: GOOD (  27.84  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Srinath Mannam <srinath.mannam@broadcom.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Bharat Gooty <bharat.gooty@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 linux-kernel@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-pci@vger.kernel.org,
 Andrew Murray <andrew.murray@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 3/26/2020 1:48 PM, Bjorn Helgaas wrote:
> On Thu, Mar 26, 2020 at 01:27:36PM -0700, Ray Jui wrote:
>> On 3/26/2020 12:48 PM, Bjorn Helgaas wrote:
>>> ...
>>> It's outside the scope of this patch, but I'm not really a fan of the
>>> pcie->reg_offsets[] scheme this driver uses to deal with these
>>> differences.  There usually seems to be *something* that keeps the
>>> driver from referencing registers that don't exist, but it doesn't
>>> seem like the mechanism is very consistent or robust:
>>>
>>>   - IPROC_PCIE_LINK_STATUS is implemented by PAXB but not PAXC.
>>>     iproc_pcie_check_link() avoids using it if "ep_is_internal", which
>>>     is set for PAXC and PAXC_V2.  Not an obvious connection.
>>>
>>>   - IPROC_PCIE_CLK_CTRL is implemented for PAXB and PAXC_V1, but not
>>>     PAXC_V2.  iproc_pcie_perst_ctrl() avoids using it ep_is_internal",
>>>     so it *doesn't* use it for PAXC_V1, which does implement it.
>>>     Maybe a bug, maybe intentional; I can't tell.
>>>
>>>   - IPROC_PCIE_INTX_EN is only implemented by PAXB (not PAXC), but
>>>     AFAICT, we always call iproc_pcie_enable() and rely on
>>>     iproc_pcie_write_reg() silently drop the write to it on PAXC.
>>>
>>>   - IPROC_PCIE_OARR0 is implemented by PAXB and PAXB_V2 and used by
>>>     iproc_pcie_map_ranges(), which is called if "need_ob_cfg", which
>>>     is set if there's a "brcm,pcie-ob" DT property.  No clear
>>>     connection to PAXB.
>>>
>>> I think it would be more readable if we used a single variant
>>> identifier consistently, e.g., the "pcie->type" already used in
>>> iproc_pcie_msi_steer(), or maybe a set of variant-specific function
>>> pointers as pcie-qcom.c does.
>>
>> It is not possible to use a single variant identifier consistently,
>> i.e., 'pcie->type'. Many of these features are controller revision
>> specific, and certain revisions of the controllers may all have a
>> certain feature, while other revisions of the controllers do not. In
>> addition, there are overlap in features across different controllers.
>>
>> IMO, it makes sense to have feature specific flags or booleans, and have
>> those features enabled or disabled based on 'pcie->type', which is what
>> the current driver does, but like you pointed out, what the driver
>> failed is to do this consistently.
> 
> There are several drivers that have the same problem of dealing with
> different revisions of hardware.  It would be nice to do it in a
> consistent style, whatever that is.
> 

Sure, agree with you that it should be handled in a consistent way
within this driver, and the current driver is not handling this
consistently.

>> The IPROC_PCIE_INTX_EN example you pointed out is a good example. I
>> agree with you that we shouldn't rely on iproc_pcie_write_reg to
>> silently drop the operation for PAXC. We should add code to make it
>> explictly obvious that legacy interrupt is not supported in all PAXC
>> controllers.
>>
>> pcie->pcie->reg_offsets[] scheme was not intended to be used to silently
>> drop register access that are activated based on features. It's a
>> mistake that should be fixed if some code in the driver is done that
>> way, as you pointed out.
> 
> That's actually why I dug into this a bit -- the
> iproc_pcie_reg_is_invalid() case is really a design-time error, so it
> seemed like there should be a WARN() there instead of silently
> returning 0 or ignoring a write.
> 

I think 'iproc_pcie_reg_is_invalid' is a fall back protection. We should
aim to prevent this from happening in the first place using whatever
means we determined appropriate, and do that consistently. In addition,
I also agree with you that there should be a WARN instead of silently
returning zero (for reads) and dropping the writes.

We'll be looking into improving this as you suggested when we have a
chance. In the mean time, I think both of us agree this is out of the
scope of the issue that this patch is trying to fix, which is actually a
pretty critical issue that can cause potential corruption of memory and
the fix should be picked up ASAP (and for older LTS kernels too).

Thanks,

Ray

> Bjorn
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
