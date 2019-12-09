Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19597116F04
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 15:33:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3g/S2UKRsdGByI6Q21ZbCzViWTbJETH2/t4LLuR9psw=; b=qCyzDZj2+5PraHqLTAuMFSMf/
	AvZD2kMjJDmjZ6ez9e2Ogdo9duPc9E9fqeGh/hlCtMB2w9+L54E4qOpYwLa6kxwm/IFhWf/+zUsS8
	m8BtOwM2B91r+s5t1WQqP5armvXrx7Nwt/mseCI+nsWiCJRzBz55xDVMitOn8tdBynQySSJIWTpnH
	XYIYbjkyUZuv59EbOur6P8KVRRBEttVljbiYwDeGUxhDg6uPHtNoKyr00yxeObvIreZ3vEt6dnjDx
	4dAY9wNyY6IDlpJGGDhuwkVhmznhQp0gQ+2oCnkty4IHo07cM+pfHbRy3iAQ/66IDp5FC92iInruS
	6FS0Fkq1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieK5z-0006xw-18; Mon, 09 Dec 2019 14:33:07 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieK5s-0006xQ-Ii
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 14:33:02 +0000
Received: by mail-pj1-x1043.google.com with SMTP id w23so5992536pjd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 06:33:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=uGbO5eA/EvkEthYW5iN8u16ydFfTV3nGR0kns1YSEq8=;
 b=P+6OgH3wRjDpQ2U5Q0rrRheWAfDz6brjGOolhAYrfI+XHpr9AJQXkrzLt5mnTANHHe
 6kjX5lrvWFn+Kzh7mCA2waxwenvqV2z7zOjWnVxPg5kZzDGIzdDBKdauuIKS687GFel4
 lK7kd6xWyU7bCZUz7nx79DGRRGBGE8rneh8ccRlEgXlT9lqhlgFzNMThTeTMquZgkga1
 77j618VNUcC6v9kkNAgOgrstKBJQc/7I2f1rcIHJiSrZfm+by5G7EgSWAtKROXXhSxqu
 kN/3KOK/W8oKCvmZHZjenE/aAPytUZ0+q/o31lIBe87UNs4W3H4i0sbAltwNvF26dfMu
 VmmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=uGbO5eA/EvkEthYW5iN8u16ydFfTV3nGR0kns1YSEq8=;
 b=ZzHlxPAvrz0Wx3IwmbwliY9ea0/4BtKWMCAJn+SFdbOcsD2d49MiAWyhD93lURCTpM
 ysC5U+Zu5wSxQ5LNm6yJy6qTHYbU60g8aieqdAodavPegWVR193wkavMKvBj7AzLIswZ
 j7QvXA63Rl7nGHh6BfOOKVMJGV9w69lmpam2qV7LZeySaaW5F4rKW6TFbIzX3qzr3Y/A
 LR2RDNV1fu8vWUmpOJltJhaSLvHEOWXCukqzLlzHMSCvKRJgr9plvDOYTMwrRC9gnaYj
 3E8WFHBvFlm+vj1MEMoriV65VwyZPLVDlsW0tv4vzfn8cwnOmzl0gSs724RyJWnnduHL
 EnAw==
X-Gm-Message-State: APjAAAWmJ2FVmX+KxplD+2pJHOopq/srCgrsPdtdodaNpAFmhMXq+ykv
 7inm/c7L4xTW/eSqhEtMQkI=
X-Google-Smtp-Source: APXvYqy4RVacHM5VEz6sKAsm+VK1Q9vv8Q+gX/BUj6bRNoFploDMVpcSqufihDBKA8rygFotaghXYQ==
X-Received: by 2002:a17:90b:8c6:: with SMTP id
 ds6mr18053912pjb.33.1575901980001; 
 Mon, 09 Dec 2019 06:33:00 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 h3sm12682121pfr.15.2019.12.09.06.32.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 09 Dec 2019 06:32:58 -0800 (PST)
Subject: Re: [PATCH 1/5] arm64: zynqmp: Add firmware DT node
To: "Edgar E. Iglesias" <edgar.iglesias@xilinx.com>
References: <20191018160735.15658-1-m.tretter@pengutronix.de>
 <20191018160735.15658-2-m.tretter@pengutronix.de>
 <20191208223814.GA21260@roeck-us.net>
 <dbba2a25-cbf7-60f4-99f7-056512e28d00@xilinx.com>
 <4821742f-2d60-b722-b954-263de975bf2e@roeck-us.net>
 <20191209074840.GP32392@toto>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <d2e63acb-c076-7bfb-c492-0355ec106cbf@roeck-us.net>
Date: Mon, 9 Dec 2019 06:32:56 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191209074840.GP32392@toto>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_063300_643153_4D0FEF6A 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Rajan Vaja <rajan.vaja@xilinx.com>, qemu-devel@nongnu.org,
 Michal Simek <michal.simek@xilinx.com>,
 Michael Tretter <m.tretter@pengutronix.de>, Edgar Iglesias <edgari@xilinx.com>,
 robh+dt@kernel.org, Rajan Vaja <rajanv@xilinx.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/8/19 11:48 PM, Edgar E. Iglesias wrote:
> On Sun, Dec 08, 2019 at 11:19:33PM -0800, Guenter Roeck wrote:
>> On 12/8/19 10:42 PM, Michal Simek wrote:
>>> Hi, +Edgar
>>>
>>>
>>> On 08. 12. 19 23:38, Guenter Roeck wrote:
>>>> On Fri, Oct 18, 2019 at 06:07:31PM +0200, Michael Tretter wrote:
>>>>> From: Rajan Vaja <rajan.vaja@xilinx.com>
>>>>>
>>>>> Add firmware DT node in ZynqMP device tree. This node
>>>>> uses bindings as per new firmware interface driver.
>>>>>
>>>>> Signed-off-by: Rajan Vaja <rajanv@xilinx.com>
>>>>> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
>>>>> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
>>>>
>>>> With this patch applied in the mainline kernel, the qemu xlnx-zcu102
>>>> emulation crashes (see below). Any idea what it might take to get
>>>> qemu back to working ?
>>>
>>> Driver talks through ATF to PMU unit(microblaze). I don't think A53+MB
>>> concept is working with mainline qemu. But crash is too hard. It should
> 
> Yes, QEMU doesn't support the Cortex-A53s along with the PMU MicroBlaze.
> 
> My workaround when using upstream QEMU is a modified DT without the PMU firmware
> and with fixed-clock nodes.
> 

I can't do that for my boot tests. Normally I would just disable ZYNQMP_FIRMWARE,
but that is hard enabled with ARCH_ZYNQMP. I'll have to drop those tests,
unfortunately, if the firmware driver is considered mandatory.

Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
