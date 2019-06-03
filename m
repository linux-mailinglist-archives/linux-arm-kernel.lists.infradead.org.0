Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2AD133B0C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 00:18:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OC0s7GJjCIFfb6JZYBHd53/E9For3HzwuwR1XCWUFlk=; b=OjPqFsS76gNGMF
	+GMO3A8FNi6mPZiazS3DEByxHWZUvGPjM47iuOP1pp7mFpNc3SWULi3KmZjffExsWGNqm1y6nKdcO
	PczxqDWttEbbOu+Zph4q50EazfAP8XGCIht6so1KBD21YwIkiqLWz2uBizCoSfhAVNan7okAQBfpM
	sB1ANHCz95DGK+VKSDCYpZnhf5Gn4PBqadYVauzIe94em5B/5wyPiECBSdJFWGhpLURchvZoKu3Lw
	u6L6RGRai4VkjYH4FqAS3Tpct+hyV9kJj5R0kg5p7f38uEvyAPqVdoL+JFpMapKVRnWGIdMGeOyOD
	golqaSajMDoJoPryaVKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXvI6-0007yp-06; Mon, 03 Jun 2019 22:18:54 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXvHx-0007wN-L1
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 22:18:47 +0000
Received: by mail-pf1-x442.google.com with SMTP id a186so10694977pfa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 15:18:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=lng3YCfvWetNAz2+44DaHDxjjqaun6E9sSpFqRzVz88=;
 b=swVmE75Gx9Icf78XSIxk0xvUmHLSxKYl4ZJf6JejS2/x2g/+q3CBP1aebGn9Vh7xnq
 HCt9rTiXWhZISUMAu/ATX+gJckPqApnN8GQH2CRXsvMb567x7Rr3miNccLFWWebgI061
 9qweJrPVvZ9ZWI0J82decXcuBhHRMOy5uTEBuhQdoMU1vS7NCJcEoDWh9Xz3VwgFWsU8
 npBt6fkSqvCHEt9pUAT9lq84e8bQunHY1NuIMzcK+KvyCY32GrZ44PEzTQLw9B3l2QMD
 5jvv5crEUgKIM/SjAA4VIMl8AHEQTBT+Nhc1XB4u286VbUV3L5gs6SIvjnhUGYMYliaG
 wjnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=lng3YCfvWetNAz2+44DaHDxjjqaun6E9sSpFqRzVz88=;
 b=ctivT+IAr0uHec8cWzF9bQt2qFlPd7qA66Z6pDL/1v8MnEzXODisLOw+7YD1poeWjD
 hWvrvzB+UY2aatU9xtFJIuWOAceh9MEIN0iDB+8xS5b2RKORDT4oZQn3aKDBj73+SAwj
 h7PrP6e07dboMmcpcPV0WK5Q4LJzkdeQ/+J9foKIVLQF7NEQEGJ2/v5wcNCVCAervHNq
 I7KsRtK6NiKKJ4pqtAD9nLOf+3rn3vhL39W2Z7hqiXPczzf4awlD4Yrk0QCe9C3gzIDw
 aSQRkkID/HscZ+5Yt+VESsq1QgJWkh1w9jIR9qKZdIW8zZQ/aKm9IuryvQlwlE8w9fOr
 spGg==
X-Gm-Message-State: APjAAAUXHC5SkNPdLYph/N2YuQ7zhFj+97ALnE6VVnrwin3DGlWurGK8
 YXn6UXfWHzUeNzV37DNA0vEcJQ==
X-Google-Smtp-Source: APXvYqz1uHqZZKUs881sATdhhromAIfPEI6o4+UmjIEM+WLgGPKPchtRCk86aJfCmtLcNlhsietZTQ==
X-Received: by 2002:a63:680a:: with SMTP id d10mr31248979pgc.117.1559600324710; 
 Mon, 03 Jun 2019 15:18:44 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.googlemail.com with ESMTPSA id f2sm12757024pgs.83.2019.06.03.15.18.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 03 Jun 2019 15:18:44 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: hex dump <hexdump0815@gmail.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH 1/1] ARM: dts: meson8b: mxq: improve support for the
 TRONFY MXQ S805
In-Reply-To: <CAKTihDVyQqq82KKofCTKoUYJOyT6T738uq_A=kiEqahDx9YQfA@mail.gmail.com>
References: <20190524181936.29470-1-martin.blumenstingl@googlemail.com>
 <20190524181936.29470-2-martin.blumenstingl@googlemail.com>
 <CAKTihDVyQqq82KKofCTKoUYJOyT6T738uq_A=kiEqahDx9YQfA@mail.gmail.com>
Date: Mon, 03 Jun 2019 15:18:43 -0700
Message-ID: <7hlfyiia7w.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_151846_158026_4AA87C76 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

hex dump <hexdump0815@gmail.com> writes:

> Am Fr., 24. Mai 2019 um 20:19 Uhr schrieb Martin Blumenstingl <
> martin.blumenstingl@googlemail.com>:
>
>> The TRONFY MXQ comes with either 1GB or 2GB RAM.
>>
>> Both variants share (like most boards based on Amlogic reference
>> designs):
>> - 10/100 PHY (IC Plus IP101GR) with GPIOH_4 being the reset line and
>>   GPIOH_3 the interrupt line
>> - SD card slot with the card detection GPIO at CARD_6
>> - VCCK is generated by PWM_C with a period of 1148ns and XTAL as input
>>   clock
>> - USB OTG exposed on one of the USB-A connectors
>> - 4-port USB hub with 3 ports exposed to the outside
>>
>> There seem the multiple board revision out there according to various
>> forum posts:
>> - storage: eMMC or NAND flash
>> - wifi: Ampak AP6210 or Realtek 8189
>>
>> Add support for the following functionality:
>> - SoC temperature (hwmon)
>> - changing the CPU voltage
>> - Ethernet connectivity
>> - SD card
>> - USB
>>
>> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
>>
>
> Tested-by: hexdump <hexdump0815@googlemail.com>

Thanks for testing.

Queued for v5,3,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
