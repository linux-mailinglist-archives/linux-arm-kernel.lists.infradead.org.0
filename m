Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B69649000
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 21:46:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NDCQpKAgReoQH2xo0TQBtbT5+yuGvluBtEPV0wJR+0k=; b=DdSOFGU0MDXWFE
	FYR1hRbA68IuuqeRz6DKTzn9n8D8F2QPhBYC0+bM57Md5cF4sCRCNZKzmEts+fxaP6s45hZmbTG1e
	GFl6Jq83yaw5q1aPclt58ECnX4odo0y8okjDu0sisYJie7UFXlQviz/ZZxCw/ZF97gAidHcJY6NVU
	1EF6bCIAwV/ddYAFzobwlccwOBeeRlVichhnpJw0qWZJXmHFk7bOmcJBPj4f+iEPr9u3H/9/oxu2F
	JnAnJD6n9xAG6HyOBJ6zdd5je4Ve7HBA6TH/s9zUDiFaVgQX8GrFNlD7hvorN1UPYYH7aDxYWhN8/
	KWmeI30If/4GC7lcQnMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcxaM-0006cL-TR; Mon, 17 Jun 2019 19:46:35 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcxZh-0006AR-VQ
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 19:45:56 +0000
Received: by mail-lf1-x141.google.com with SMTP id d11so7455234lfb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 12:45:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Pin+t3SQw4xphykuXVSln0ZpS8PlkIhkvTYeC1W+arw=;
 b=t3M9pwV5Nc2mU7uNt2Gvnyp5rug6s3gMOzSQhkbioeWsXDWGEqmXc6aaf3JVQnyynE
 39nqYCpdi6HwURW17MD79yYSW2tbCLpJ1q5lmBFV7s/6ICNjwvhTn5pZNy6i5e7k72Mv
 0EKw0i5EuazD6hktrnZTwjneWPeVMBkPYwKj7x3dB+DvHtQTzxPM9CPPJnDyx65FMlTr
 GF2EbWcgE/4M7bNuTTOKC3fkfc5gvFmiQBwxhHB1iOZa5cA1k4h57MHY6mr1BUw/lnaD
 sVG2heZ3+n7uX+iaIKkYj0QyROYLRWrbsWrOsnGpaNKVH3JHolf6DNjxdknje470eix7
 rHKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=Pin+t3SQw4xphykuXVSln0ZpS8PlkIhkvTYeC1W+arw=;
 b=hJ9TzqplTMbqgE/bRYDPPwF5qp059S58IlTYe0vRvkIdpE7ANcR6oLD64PmFzSv+N7
 3niASSTmlzdNPXATzA/KWeYIC4PpGeJD+naROoMgKqF1GTzkq+Hxdx02lzusu5N9lvhG
 2SkHFlsEaBnJU+ilnxMLm3kielhjyeVEKBW8T4trnGMa+xBaryaBfcPupSaX9KtFC4Oq
 LEcj9mzDBJc3R8KAwSjwKI5WeMK/wt3vcHItLNTcxbsJIXOlwNenxG+B5EQ1qMVhKE8s
 oPKm6fruOiXcYu4kAFkdBBsdYGMSIoRL0gjlNFVsOR28+Eyqq5zity0nF1o2pApYuCxL
 +WYA==
X-Gm-Message-State: APjAAAWZp2jp0dkUyU5027h48ynC4QfhwhCxN1YOikZ6q83ZvKkGojYw
 oSx1MoKJmWu2SKT7SUc7VO3OSA==
X-Google-Smtp-Source: APXvYqwnv9Uovhd1yzWG0Ky0E4Kuv0bMMTtpTFsQwdEAhIBty2VzHQTpmW1NoXnrE45jznhlWWBRCw==
X-Received: by 2002:a19:5007:: with SMTP id e7mr60037319lfb.76.1560800751924; 
 Mon, 17 Jun 2019 12:45:51 -0700 (PDT)
Received: from wasted.cogentembedded.com ([31.173.80.15])
 by smtp.gmail.com with ESMTPSA id z83sm2231722ljb.73.2019.06.17.12.45.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 12:45:51 -0700 (PDT)
Subject: Re: [PATCH v5 3/5] mtd: Add support for HyperBus memory devices
To: Vignesh Raghavendra <vigneshr@ti.com>,
 David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Boris Brezillon <bbrezillon@kernel.org>, Marek Vasut
 <marek.vasut@gmail.com>, Richard Weinberger <richard@nod.at>,
 Rob Herring <robh+dt@kernel.org>
References: <20190609103227.24875-1-vigneshr@ti.com>
 <20190609103227.24875-4-vigneshr@ti.com>
 <58e9608d-35ff-0436-6075-b2e4ed4b8594@cogentembedded.com>
 <f47d4d57-afb2-3b39-fae9-3ed740a2b8a6@ti.com>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Organization: Cogent Embedded
Message-ID: <9dbd8132-ce8f-9ce7-ddf5-d9826e2a1be1@cogentembedded.com>
Date: Mon, 17 Jun 2019 22:45:45 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <f47d4d57-afb2-3b39-fae9-3ed740a2b8a6@ti.com>
Content-Language: en-MW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_124554_503366_DAF7D701 
X-CRM114-Status: GOOD (  30.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 linux-kernel@vger.kernel.org, Joakim Tjernlund <Joakim.Tjernlund@infinera.com>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello!

On 06/11/2019 02:57 PM, Vignesh Raghavendra wrote:

>>> Cypress' HyperBus is Low Signal Count, High Performance Double Data Rate
>>> Bus interface between a host system master and one or more slave
>>> interfaces. HyperBus is used to connect microprocessor, microcontroller,
>>> or ASIC devices with random access NOR flash memory (called HyperFlash)
>>> or self refresh DRAM (called HyperRAM).
>>>
>>> Its a 8-bit data bus (DQ[7:0]) with  Read-Write Data Strobe (RWDS)
>>> signal and either Single-ended clock(3.0V parts) or Differential clock
>>> (1.8V parts). It uses ChipSelect lines to select b/w multiple slaves.
>>> At bus level, it follows a separate protocol described in HyperBus
>>> specification[1].
>>>
>>> HyperFlash follows CFI AMD/Fujitsu Extended Command Set (0x0002) similar
>>> to that of existing parallel NORs. Since HyperBus is x8 DDR bus,
>>> its equivalent to x16 parallel NOR flash wrt bits per clock cycle. But
>>> HyperBus operates at >166MHz frequencies.
>>> HyperRAM provides direct random read/write access to flash memory
>>> array.
>>>
>>> But, HyperBus memory controllers seem to abstract implementation details
>>> and expose a simple MMIO interface to access connected flash.
>>>
>>> Add support for registering HyperFlash devices with MTD framework. MTD
>>> maps framework along with CFI chip support framework are used to support
>>> communicating with flash.
>>>
>>> Framework is modelled along the lines of spi-nor framework. HyperBus
>>> memory controller (HBMC) drivers calls hyperbus_register_device() to
>>> register a single HyperFlash device. HyperFlash core parses MMIO access
>>> information from DT, sets up the map_info struct, probes CFI flash and
>>> registers it with MTD framework.
>>>
>>> Some HBMC masters need calibration/training sequence[3] to be carried
>>> out, in order for DLL inside the controller to lock, by reading a known
>>> string/pattern. This is done by repeatedly reading CFI Query
>>> Identification String. Calibration needs to be done before trying to detect
>>> flash as part of CFI flash probe.
>>>
>>> HyperRAM is not supported at the moment.
>>>
>>> HyperBus specification can be found at[1]
>>> HyperFlash datasheet can be found at[2]
>>>
>>> [1] https://www.cypress.com/file/213356/download
>>> [2] https://www.cypress.com/file/213346/download
>>> [3] http://www.ti.com/lit/ug/spruid7b/spruid7b.pdf
>>>     Table 12-5741. HyperFlash Access Sequence
>>>
>>> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
>> [...]
>>> diff --git a/drivers/mtd/hyperbus/hyperbus-core.c b/drivers/mtd/hyperbus/hyperbus-core.c
>>> new file mode 100644
>>> index 000000000000..df1f75e10b1a
>>> --- /dev/null
>>> +++ b/drivers/mtd/hyperbus/hyperbus-core.c
>>> @@ -0,0 +1,191 @@
>>> +// SPDX-License-Identifier: GPL-2.0
>>> +//
>>> +// Copyright (C) 2019 Texas Instruments Incorporated - http://www.ti.com/
>>> +// Author: Vignesh Raghavendra <vigneshr@ti.com>
>>> +
>>> +#include <linux/err.h>
>>> +#include <linux/kernel.h>
>>> +#include <linux/module.h>
>>> +#include <linux/mtd/hyperbus.h>
>>> +#include <linux/mtd/map.h>
>>> +#include <linux/mtd/mtd.h>
>>> +#include <linux/mtd/cfi.h>
>>> +#include <linux/of.h>
>>> +#include <linux/of_address.h>
>>> +#include <linux/types.h>
>>> +
>>> +#define HYPERBUS_CALIB_COUNT 25
>>
>>    Mhm, I think I've already protested about this being #define'd here...
> 
> I thought you had agreed that default optional calibration routine can
> be part of core code and thus this #define.
> 
> Anyways, what is your preference here? Drop the constant and use a local
> variable in hyperbus_calibrate()?
> Or are you suggesting to move hyperbus_calibrate() TI's specific driver?

   I'm just not comfortable with the common HF code using quite an arbitrary
constant...

>> [...]
>>> diff --git a/include/linux/mtd/hyperbus.h b/include/linux/mtd/hyperbus.h
>>> new file mode 100644
>>> index 000000000000..ee2eefd822c9
>>> --- /dev/null
>>> +++ b/include/linux/mtd/hyperbus.h
>>> @@ -0,0 +1,91 @@
[...]
>>> + * @mtd: pointer to MTD struct
>>> + * @ctlr: pointer to HyperBus controller struct
>>> + * @memtype: type of memory device: HyperFlash or HyperRAM
>>> + * @registered: flag to indicate whether device is registered with MTD core
>>> + */
>>> +
>>> +struct hyperbus_device {
>>> +	struct map_info map;
>>> +	struct device_node *np;
>>> +	struct mtd_info *mtd;
>>> +	struct hyperbus_ctlr *ctlr;
>>> +	enum hyperbus_memtype memtype;
>>> +	bool registered;
>>> +};
>>> +
>>> +/**
>>> + * struct hyperbus_ops - struct representing custom HyperBus operations
>>> + * @read16: read 16 bit of data, usually from register/ID-CFI space
>>> + * @write16: write 16 bit of data, usually to register/ID-CFI space
>>
>>    Usually? How to differ the register/memory transfers if both are possible?

> CFI + map framework does not provide a way to differentiate b/w reg
> access vs memory access. read16()/write16() is used to either access
> registers or for sending various cmds like lock/unlock etc or for
> programming a single word.
> For regular read/writes copy_from() and copy_to() are used.

   In my case only copy_from() would exist -- no proper acceleration for
writes...

> Looking at HyperBus protocol, controllers would not need to
> differentiate b/w registers vs memory transfers for HyperFlash devices.
> So, I think I can drop read16/write16 and redirect these calls to
> copy_from()/copy_to()

   Doubt it, frankly speaking.

> I mainly added these functions keeping HyperRAM in mind. Idea was
> drivers would look at hyperbus_device->memtype and set to register
> access mode for HyperRAM in case of write16()/read16(). Looks like the
> interface is not intuitive enough
> So, will drop these and add it back when adding HyperRAM support.
> 
> Does that work for your HW as well?

   Don't think so...

   However, my HyperFlash driver could make use of the following #define's in
the HyperBus header:

#define HF_CMD_CA47		BIT(7)	/* Read */
#define HF_CMD_CA46		BIT(6)	/* Register space */
#define HF_CMD_CA45		BIT(5)	/* Linear burst */

#define HF_CMD_READ_REG		(HF_CMD_CA47 | HF_CMD_CA46)
#define HF_CMD_READ_MEM		HF_CMD_CA47
#define HF_CMD_WRITE_REG	HF_CMD_CA46
#define HF_CMD_WRITE_MEM	0

MBR, Sergei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
