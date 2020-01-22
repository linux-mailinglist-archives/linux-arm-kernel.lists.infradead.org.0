Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48BDB144DD0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 09:39:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/dyMKDOXiczDLuOEY7oHNt8l7/WdJ1+aBKiDjU1gRys=; b=kuJanco+m9GWrwBqZ+WWPEfnq
	a2r3ka2xphx89ewBBA7kXI7MCbR23phk+XO22pln7Dp0JfVQRxn6f6pQ0qkNfvr1b1s6EY1CkXM/v
	ALoLljKIPE+jKOdshvf7t+6iR0VlgPKd5wbngLdB76DOJ6BSNOnOe8prRQxgyW2E6+VKr9iTWfxVP
	vobv4b7CHb4oGfVMMSJSPqPHUzepT8pfrGVTsEb/HFY3R6f14B6fEPAdTbphwKvbF6OOCgzgkQo2O
	sgqEtlt3wZXWBpy0pLdSMNkI+zvh96zaGOzkQRk3xqL751m9Y7mNv3bTx1SNK+U3Ev/criEd7ZGye
	x5hnE7bXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuBYB-0004pa-9O; Wed, 22 Jan 2020 08:39:47 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuBY0-0004ot-M0
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 08:39:38 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 1C7F2A414E;
 Wed, 22 Jan 2020 09:39:29 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de
 [80.241.56.117]) (amavisd-new, port 10030)
 with ESMTP id OTOX_JrSnXZq; Wed, 22 Jan 2020 09:39:26 +0100 (CET)
Subject: Re: [PATCH V3 0/3] Add i.MX6ULZ SoC support
To: Shawn Guo <shawnguo@kernel.org>, Anson Huang <Anson.Huang@nxp.com>
References: <1538278348-7716-1-git-send-email-Anson.Huang@nxp.com>
 <20180930073332.GO26692@dragon>
From: Stefan Roese <sr@denx.de>
Message-ID: <0581e252-2ebc-c813-9c93-a8d542a9a7f6@denx.de>
Date: Wed, 22 Jan 2020 09:39:24 +0100
MIME-Version: 1.0
In-Reply-To: <20180930073332.GO26692@dragon>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_003936_868836_E5CCC947 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:67c:2050:104:0:2:25:2 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Aisheng.dong@nxp.com, fabio.estevam@nxp.com, ping.bai@nxp.com,
 linux-arm-kernel@lists.infradead.org, Linux-imx@nxp.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30.09.18 09:33, Shawn Guo wrote:
> On Sun, Sep 30, 2018 at 11:32:25AM +0800, Anson Huang wrote:
>> This patch set adds i.MX6ULZ SoC support, i.MX6ULZ is a new SoC of
>> i.MX6 family, compared to i.MX6ULL, it removes below modules:
>>
>>      - UART5/UART6/UART7/UART8;
>>      - PWM5/PWM6/PWM7/PWM8;
>>      - eCSPI3/eCSPI4;
>>      - CAN1/CAN2;
>>      - FEC1/FEC2;
>>      - I2C3/I2C4;
>>      - EPIT2;
>>      - LCDIF;
>>      - GPT2;
>>      - TSC;
>>
>> And i.MX6ULZ has same soc_id as i.MX6ULL, but SRC_SBMR2 bit[6] is
>> to differentiate i.MX6ULZ from i.MX6ULL, 1'b1 means i.MX6ULZ and
>> 1'b0 means i.MX6ULL. i.MX6ULZ reuse most of i.MX6UL/i.MX6ULL code,
>> just add the new CPU type and remove those non-exist modules from dtb.
>>
>> Anson Huang (3):
>>    ARM: imx: add i.mx6ulz msl support
>>    dt-bindings: arm: add compatible for i.MX6ULZ 14x14 EVK board
>>    ARM: dts: imx: add i.mx6ulz and i.mx6ulz 14x14 evk support
> 
> Applied all, thanks.

I'm currently starting work on an i.MX6ULZ custom port, which will use
the EIM interface. While starting the pin-mux configuration for this
board, I noticed that the pinfunc defines available for MX6UL
(imx6ul-pinfunc.h which is used for i.MX6ULL/ULZ as well AFAICT) does
not match the reference manual descriptions for the EIM pin muxing.
One example:

i.MX6UL:  EIM_DATA00 is available on pad LCD_DATA08
i.MX6ULZ: EIM_DATA00 is available on pad GPIO3_IO13
...

My question now: Is a i.MX6ULL/ULZ specific pinfunc.h header available
in any (NXP?) downstream Linux repository?

Thanks,
Stefan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
