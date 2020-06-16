Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B981FBFE2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 22:20:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O2V13+sq2lpKdDBqgSJEBHREyqVlsNfv5DSjXAsE6EI=; b=jnfmIM0VK82AfN
	ZKIfdvTkrjt3RMuVhKUE+Tv/2i2GIsxwVbdQIbHt4PTdMZ6yVFM+CTi2aOLynmfKj3xTmVGCpy0Lw
	jm6/7xPLm7MuzAzk/u+y8XFaTYR76NxXGionPX0754Wr6XKWlWaYxEKyy76e18MR5LUtyHABTzWz7
	HAk0SxZJ0bz3S/4b814j6x98mTM3XLPEMqNKQJEPjwDUUxor1Nkl3iLCpTI7Jk6U6jioszzJ7yGVt
	G6IgJK/MqC63wWSJLG9+YBq6sb8U/yX/krq99OHh6tK/G1c0DPPRHxwf8gZ0EKTn2iGkiefVlgLHl
	oR6ng2KLY/bqyPq/fljQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlI4B-0005xC-Pr; Tue, 16 Jun 2020 20:20:19 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlI3t-0005Mt-0r
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 20:20:02 +0000
Received: by mail-wm1-x344.google.com with SMTP id c71so4069409wmd.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 13:19:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=3wFm9ppO8ULkxiCADJKRnXA2iDnjr8ZjowAIpexl/Hc=;
 b=N81wUKNPQIZUxYmgUDgnPT/wwOQ2Xk7LebNpYpXXzRQPKKBe9DdvyeRK31obFJjroO
 zS8w1RE2w04XzBodYo9FCnghtQ0ona725X6rYAfrpPePssH0Fkm4TR9TYbcjsc2A+AX1
 e2OB7Idnj7AwlP6OLaY/Je77kZmqr2ylq2TTvZwE0ETfXY0XoAgwd24WHg/2WB+ixAL0
 jxTt81dtKTKfmJwldzEpoOeca8EQQjwCQGFx1sY8D7JK+BIADYT2Zi0Q81hD8xH98ZF1
 pv6Gcg2qp/ZTIFu0bRidEGUZmB4OfAf1adxMZSVcM0PkJGdtBobDeocd26fA+iWz8FEQ
 /zWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=3wFm9ppO8ULkxiCADJKRnXA2iDnjr8ZjowAIpexl/Hc=;
 b=pWuiw9qBDpsbGmn7InbJ321nS5/OGYY+2RIJqMKyV1waSeviAyZQAIe8ndODcp6euv
 lg+kSCnByDj24x5sfSKBEdjZ4k8SLr6JxREV+vNIFqTMeInTwIcRZ5l47OJA2jWUcLKa
 +9R7jJIkl3UquuctGP5cb3fOaf/naZ3jSeS0AeM5GCSreddfAdv8zGTl2quzF5SThLEa
 TOEFrfTPcMftJApMkU7K5XFfVL85t67pQP6W3unIKr9hiUDzEQMEqyPdok2zjEfv/W8y
 6yJAobw3dBkAkwsiUe7/tYOyRjnLsr8InjFqpcX8ERFRBnN1c2Opot8MWSVTzgIi59nI
 ndwg==
X-Gm-Message-State: AOAM533880pbSCBO5OfAnZeAGsHjlogVmaiYq9a3jt+L1NXYLSW9CPsf
 ETa/aZA2xkvAuQ/VksXi5DH8KgFW
X-Google-Smtp-Source: ABdhPJwTLjwBRYfFzDikwfA1l4lRZVBR11j6vEk91mXAzf1GLkWmxFGBWFgj3BG3+hwuJCDXmu9Hqg==
X-Received: by 2002:a1c:22d7:: with SMTP id i206mr4862866wmi.186.1592338797117; 
 Tue, 16 Jun 2020 13:19:57 -0700 (PDT)
Received: from localhost.localdomain (haganm.plus.com. [212.159.108.31])
 by smtp.gmail.com with ESMTPSA id i10sm29871318wrw.51.2020.06.16.13.19.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 16 Jun 2020 13:19:56 -0700 (PDT)
Subject: Re: [PATCH 2/3] ARM: dts: NSP: Correct amac_base lengths, mailbox reg
 and add amac3
To: Florian Fainelli <f.fainelli@gmail.com>
References: <c19be985a3e7abc8ac05fc30678475aeadb73c50.1591719237.git.mnhagan88@gmail.com>
 <d638e006713d82d1a6af4bdbcfa516f425264bf6.1591719237.git.mnhagan88@gmail.com>
 <c08a06a8-de71-d1cd-541d-2e15a23f130a@gmail.com>
From: Matthew Hagan <mnhagan88@gmail.com>
Message-ID: <acbf9159-375c-5dcc-3353-e9d60496516e@gmail.com>
Date: Tue, 16 Jun 2020 21:19:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <c08a06a8-de71-d1cd-541d-2e15a23f130a@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_132001_084163_896DCD64 
X-CRM114-Status: GOOD (  21.28  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [mnhagan88[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mnhagan88[at]gmail.com]
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



On 14/06/2020 23:28, Florian Fainelli wrote:
> 
> 
> On 6/9/2020 9:58 AM, Matthew Hagan wrote:
>> According to gmac/src/et/sys/et_linux.c, IORESOURCE_MEM end address for each
>> mac is IPROC_GMACx_REG_BASE+0xbff.
> 
> The datasheet shows an entire GMAC to end at 0x1000 from its base offset
> which is likely what was used to construct this DTS, I do not believe
> this is a functional change, and if we look at the register details, the
> last register starts at 0xb44 so 0xc00 is giving a little bit of
> headroom. In practice it does not change anything since you are still
> going to need a full 4KB page frame to map the registers.
> 
>>
>> The FA2 mailbox is specified at 0x18025000 but should actually be 0x18025c00,
>> length 0x400 according to socregs_nsp.h and board_bu.c. amac3 is at 25000.
> 
> Yes, FA2 definitively start 0x18025c00, and ends 0x400 later, so I did
> split this patch in three patches:
> 
> - one that fixes the FA2 base address, which can be queued to stable
> kernel branches
> - one that changes the AMAC register size
> - one that adds the AMAC3

Since AMAC3 has been added with interrupt 150, should the mailbox
interrupt not also be incremented to 151?
> 
> Such that the first patch can be queued for -stable fixes, whereas the
> other two, not being functional changes are candidates for devicetree/next.
> 
> Result here:
> 
> https://github.com/Broadcom/stblinux/commits/devicetree/next
> 
> Thanks!
> 

Thanks,
Matthew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
