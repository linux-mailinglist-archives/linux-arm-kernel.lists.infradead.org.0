Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D845F1068FB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 10:43:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=swXFc/eHodwxSOXFOM1x+GiqriGasuw73p+IHN7y7go=; b=ppMD/BnH1vpeXYvNh73volMgt
	B7iHSB13LZufyycYkxynS+q7ZQAgk2jvBPXxpvgYnB4S/HhyRZSnG1M4w8o7LZpi5Ks4+Qg/HLvtg
	CQKp+eLj05yTAJOyUcDPShf7syKdkVVtWrSkbHzPuO0zt0Ub5UI7FWMJSOWCJocpVih7ke1bsGQLc
	rGCUVXaF6GOWXnK+HuZ2AmUWrrpY21VywvExP7gugYG37CYoi8+nz0AglCgp/c09g2UFczE9ejdDp
	9Tm182qHw3v44zULlWZdUPwhGxr9mYKXEoXIZV3Fyg3fUqPo2h+XJsJDLBfgkDLgcBzRgA3UF0JSU
	DDty2s4iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY5TU-0007GN-VY; Fri, 22 Nov 2019 09:43:36 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY5TJ-0007FN-9f; Fri, 22 Nov 2019 09:43:30 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@misterjones.org>)
 id 1iY5T7-0006Qm-I2; Fri, 22 Nov 2019 10:43:13 +0100
To: James Tai <james.tai@realtek.com>
Subject: RE: [PATCH] arm64: dts: realtek: Add Realtek rtd1619 and mjolnir
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Fri, 22 Nov 2019 09:43:13 +0000
From: Marc Zyngier <maz@misterjones.org>
Organization: Metropolis
In-Reply-To: <7c94c59649c04442886a98c057c07654@realtek.com>
References: <43B123F21A8CFE44A9641C099E4196FFCF91BEFA@RTITMBSVM04.realtek.com.tw>
 <25fdd8eb-f1a0-82ae-9c4b-22325b163b0e@suse.de>
 <43B123F21A8CFE44A9641C099E4196FFCF920024@RTITMBSVM04.realtek.com.tw>
 <7a05ac2c-00bc-b2ac-0a33-be0242d33188@suse.de>
 <309cd67da48e4702ae3dcc4ca8ab4309@realtek.com>
 <279fd3a3-17dc-5796-f0b0-e39eb919081f@suse.de>
 <7c94c59649c04442886a98c057c07654@realtek.com>
Message-ID: <23f44f6f4aec90b412d5d7ff6f4d95f1@www.loen.fr>
X-Sender: maz@misterjones.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: james.tai@realtek.com, afaerber@suse.de,
 mark.rutland@arm.com, robh+dt@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-realtek-soc@lists.infradead.org
X-SA-Exim-Mail-From: maz@misterjones.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_014325_480567_DA256686 
X-CRM114-Status: UNSURE (   8.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-realtek-soc@lists.infradead.org,
 "'linux-kernel@vger.kernel.org'" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-11-17 15:39, James Tai wrote:
> Hi Andreas,
>
>> > Sorry for my misunderstanding. The RAM region don't require two 
>> cells
>> > for memory nodes, so I'll fix it in v3 patch.
>>
>> Should I then also change RTD1395 to use only one cell, or does it 
>> support
>> more RAM than RTD1619?
>
> Yes, you can. The memory capacity of RTD1395 and RTD1619 are the 
> same.
>
>> By my calculation 0x98000000 is less than 2.4 GiB! So, does RAM 
>> continue
>> between r-bus and GIC, similar to how it does on RTD1195? Then we 
>> need to
>> exclude those RAM ranges from the SoC node (adjusting 0x68000000).
>
> We need to reserve memory address for r-bus and GIC and exclude those
> RAM range from the SoC node.

Memory for the GIC? For what purpose?

         M.
-- 
Who you jivin' with that Cosmik Debris?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
