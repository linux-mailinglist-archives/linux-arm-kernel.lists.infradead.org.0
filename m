Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A52148D72
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 19:06:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mX9qZ6SacbTYPc5oho25XMiPyyo7ex1Bl/A6KDo2qwA=; b=gho2vDXF10+Gmt
	NXClnaT9ppRXQ7LKvmB6ak2swplK/mRal4LsIq968W6+BcUwnkZ5WomDFYaBbr/Cf0krvF+OoeEWZ
	iCRUnSa1kaC3Ezv6bAn+rZBpVgUaaJvsjGwUyrShaxvj/WNyRCpAIzmK70RMKTdL42bCIO4EUXyj6
	e+X/c+L87bN/+134rNMj7ERbhFcA3RDLHrfDjFVn3UozVpRXEiwY97+YBQJvThJLI6paWhbKjC0Zo
	o+OBSn2Dt46d4tQ8iMVoHS5THh2iR/EpFJqHh38+rPhkHMNS+bErMjj+zn2oxeidEYJzEbho9u2lj
	HdCcH3ElehZrIJSJMJSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv3LI-0005xg-Gz; Fri, 24 Jan 2020 18:06:04 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv3L7-0005wi-CJ; Fri, 24 Jan 2020 18:05:55 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00OI5kqa057284;
 Fri, 24 Jan 2020 12:05:46 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1579889146;
 bh=OTh91vvqx5FkwJrVpzCRzAv6h7V2/gVJYW+HKZ6IZhk=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Yqe3fCW4F0O3F0vumSdxgo2GnRdaUfq0AWbDcXGU+dqLjOP3xlCcCBhJ16Aca+MfL
 E/gWOMP7bcC4dGea61P/6/F39CAi8K9HbX6fOPyFH5TvUw0Se9JHvDYgeqOaV9e16M
 /I5Dwto69rOrxwTdIuOOXDUdv3BAdtg7tMD4dp9w=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00OI5kiS098350;
 Fri, 24 Jan 2020 12:05:46 -0600
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 24
 Jan 2020 12:05:45 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 24 Jan 2020 12:05:45 -0600
Received: from [192.168.2.10] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00OI5gfU118628;
 Fri, 24 Jan 2020 12:05:43 -0600
Subject: Re: [PATCH for-next] arm64: defconfig: Set bcm2835-dma as built-in
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, Ulf Hansson
 <ulf.hansson@linaro.org>
References: <C043QOCZ7SMB.2XXX2ESS1ZJ98@linux-9qgx>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <e29e23fd-cb60-56b9-e53d-ecbafc12bf8c@ti.com>
Date: Fri, 24 Jan 2020 20:07:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <C043QOCZ7SMB.2XXX2ESS1ZJ98@linux-9qgx>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_100553_542821_665D2200 
X-CRM114-Status: GOOD (  16.15  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: f.fainelli@gmail.com, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

On 1/24/20 4:47 PM, Nicolas Saenz Julienne wrote:
>> If you need MMC rootfs then the DMA needs to be built in or have initrd
>> with the modules.
>> The driver expects to have DMA channel and it is going to wait for it to
>> appear unless the request fails.
>>
>> Without moving the DMA as built in and removing the deferred probe
>> handling form the MMC driver, one can just remove the DMA support from
>> the mmc-bcm2835 as it is not used at all.
> 
> Oh sorry, I meant to ask if the 'Fixes:' tag was really needed.

Complements: or Needed-for: would be better, but with the Fixed tag this
patch would be picked in case the dma_request_chan() conversion patch
gets backported for stable.

> The
> patch itself is very much needed since not everyone uses initrds in the
> RPi world, and we want to keep being compatible as much as possible with
> older device-trees.

Sure. Just checked on my RPi with libreELEC that at least they have the
DMA built in, I assume other distros do the same.

It would be great if this patch would make it to linux-next as soon as
it is possible for sure.

>> I wonder why this is not signaled by automated boot testing, if any
>> exists for bcm2835>
> Actually now that you mention it, it's failing since today here:
> https://kernelci.org/boot/bcm2837-rpi-3-b/

Oh, so you can even have a bug report to back this patch ;)

- Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
