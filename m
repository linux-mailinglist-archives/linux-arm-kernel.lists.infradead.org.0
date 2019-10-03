Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCF74C9E13
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 14:11:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zSeNaMp42+UtuYtHlwab56KuegD6bp9wPzf6FgUMXkQ=; b=f7nPKF/9FFNrQcsuSBC1ANRW2
	dwHa0x/ySjLBK5//gTKQLDFbtsnlxMRYKvlwKGWbOOKzlYnl3QqG1TqS1TrhIUAfE23Q4hdjVPDXm
	Lni32dV1SH2f4uEJh8INohwhwjgDwuIakip5zor4jGssA+NVdXAX0q3Ht+0MKYHzY08eAazXHVOCq
	y6bwTSOPcTEI3ktFidEnd8d+GTnlE/dxdvAsyZDfbBamvnkxhLw36g3aHi3cdK+Z1/XyBu+cljTfR
	PTgEfZIHGhsQeB2bH+p2ocvPUjF4CFql3zuFD3Ehcf2HQ2cwpEHB+fqKM9kWr9N0ndBIoN3Ca/7s9
	TNPSCffcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFzwc-0007gU-7B; Thu, 03 Oct 2019 12:10:54 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFzwV-0007fu-5Y
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 12:10:48 +0000
Received: from [192.168.10.51]
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 926E420000B;
 Thu,  3 Oct 2019 12:10:33 +0000 (UTC)
Subject: Re: [PATCH v2] soc: at91: Add Atmel SFR SN (Serial Number) support
To: Nicolas.Ferre@microchip.com, Tudor.Ambarus@microchip.com,
 alexandre.belloni@bootlin.com, Ludovic.Desroches@microchip.com,
 linux-arm-kernel@lists.infradead.org
References: <20191003091636.21060-1-kamel.bouhara@bootlin.com>
 <8b8649d8-351b-8903-cb54-a56d7b6191df@microchip.com>
 <b3e10d4c-4cdc-4401-a488-0b3d101d9ad0@microchip.com>
 <741eeae3-666c-300f-23ba-6c646ad1252e@microchip.com>
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
Message-ID: <9b95fbb9-7521-ebe3-0869-a976436c894b@bootlin.com>
Date: Thu, 3 Oct 2019 14:10:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <741eeae3-666c-300f-23ba-6c646ad1252e@microchip.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_051047_357263_8BDD27A1 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.178.232 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: thomas.petazzoni@bootlin.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On 10/3/19 2:06 PM, Nicolas.Ferre@microchip.com wrote:
> On 03/10/2019 at 11:50, Tudor Ambarus - M18064 wrote:
>>
>> On 10/03/2019 12:40 PM, Tudor.Ambarus@microchip.com wrote:
>> cut
>>
>>> how about renaming this to struct atmel_sfr_priv?
>>>
>>>> +	struct device			*dev;
>>> this is not used, maybe you can drop it?
>>>
>>>> +	struct regmap			*regmap;
>>>> +	struct nvmem_config		*config;
>> where is priv->config used?
>>
>>>> +	struct atmel_sfr_drvdata	*drvdata;
>>> this is not used, maybe you can drop it?
>>>
>>>> +};
>> cut
>>
>>>> +static struct atmel_sfr_drvdata sama5d2_sama5d4_drvdata = {
>> struct should be const. And I'm not sure about the sama5d2_sama5d4 naming. Maybe
>> choose "5d4_drvdata" and use it for 5d2 too? Maybe Nicolas has a preference here.
> I'm not a big fan of "5d3/5d2/5d4" type of naming. If it appeared first
> in sama5d4, then this name ca be taken to describe sama5d2 reality as
> well => sama5d4_drvdata.
>
> Now it's dropped in v3: so we're good...

Yes, thanks for the review.

Kamel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
