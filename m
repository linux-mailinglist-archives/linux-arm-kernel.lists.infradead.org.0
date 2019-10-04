Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D187DCB761
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 11:32:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fS4Wbj4XuMlXteLxpXEQvJAH1/V7atC1ST+nnE5hd8M=; b=V5/0Xp8AY190zUpdm+4fbGlWr
	IG7vIRGmXaq2StiiboRgYQ2uNTAkUifv2cMAM0bM+N95IAaavWcqHS6awRTUFozPsiPanwo9V/Drv
	x4iMAScO4XUxWQ5LMeq4qTdaY4BXiO6rNp29ijH3ijSLH6mEGOGp7kVIZbbILmH76/RzxSNDXn3kc
	3KkZ0y9DESJ0j53H4+Ma9WdGbq43lF/LH08AZbP+bdGudvfmdKFwJgDZVoJLGnQ2XfdVACQjLUTuL
	MqbUJ/RfsHvQv9ioZP+YrqYqiz+YhBmIccTPlWliYBAPVY+xwk3Zt6S3AOyoclWN2eDQLrGtIOf0X
	c2y+lOPbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGJwc-0006kk-G7; Fri, 04 Oct 2019 09:32:14 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGJwT-0006jz-Df
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 09:32:07 +0000
Received: from [192.168.10.51]
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id B863A20001E;
 Fri,  4 Oct 2019 09:31:52 +0000 (UTC)
Subject: Re: [PATCH v3] soc: at91: Add Atmel SFR SN (Serial Number) support
To: Tudor.Ambarus@microchip.com, Nicolas.Ferre@microchip.com,
 alexandre.belloni@bootlin.com, Ludovic.Desroches@microchip.com,
 linux-arm-kernel@lists.infradead.org
References: <20191003114606.7846-1-kamel.bouhara@bootlin.com>
 <0b863bf1-7950-a139-92c5-d983821e8021@microchip.com>
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
Message-ID: <b0fe8886-618e-5406-4bff-0ac5211c70eb@bootlin.com>
Date: Fri, 4 Oct 2019 11:31:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <0b863bf1-7950-a139-92c5-d983821e8021@microchip.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_023205_610038_6AB165A8 
X-CRM114-Status: GOOD (  19.20  )
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

Hi Tudor,

On 10/4/19 9:29 AM, Tudor.Ambarus@microchip.com wrote:
> Hi, Kamel,
>
> On 10/03/2019 02:46 PM, Kamel Bouhara wrote:
>> External E-Mail
>>
>>
>> Add support to read SFR's read-only registers providing the SoC
>> Serial Numbers (SN0+SN1) to userspace.
>>
>> ~ #  hexdump -n 8  -e'"%d\n"' /sys/bus/nvmem/devices/atmel-sfr0/nvmem
> nitpick probably it's better to print the SN in hex, so %08x instead of %d
Of course, it is just an example of user space command, this is 
completely up to user to choose the relevant format.
>> 959527243
>> 371539274
>>
>> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> Tested-by: Tudor Ambarus <tudor.ambarus@microchip.com>
>
> Is the SN unique for each device or it is unique per SoC? For example, for
> sama5d2, I get the following (in hex):
>
> root@sama5d2-xplained-sd:~#  hexdump -n 8  -e '"%08x\n"'
> /sys/bus/nvmem/devices/atmel-sfr0/nvmem
> 4643524b
> 02010657
>
> If this is unique for each device, then maybe is it worth to add the serial
> number in the entropy pool (with add_device_randomness()?)

Yes it is. Maybe it is not suited to throw a non random 8 bytes (only) 
number to the entropy pool ?

By the way, some SoC drivers do it already.

Shall I propose a v4 for this ?

>
> What was your use case, why do you need to print the SN?	
It can be used in a factory process to associate a mac address for 
instance... but I'm sure there is lot of use case using a unique identifier.
>
> And you have a blank line at EOF, but probably the maintainers can remove it, if
> the patch will remain as is.

OK, thanks for you review, If so, it will be fixed in v4.

Kamel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
