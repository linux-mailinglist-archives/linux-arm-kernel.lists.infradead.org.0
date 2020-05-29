Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE601E8772
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 21:15:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TI75NyhxF45pzgkRrDorSM05lr4HgGT3p93nzCQRajo=; b=SurD2S0PjTIioy/q3BrWQq2iS
	josJepwNK65lKMvc0X1CDR7lV4tRutPvP6bz7IQfprrv0XYLc/4pGZsLf81EIEO2aziIrXIlXthjR
	Xbt11wMayonLtO3G3zEehc83cMW66iQaeME87X63i27kqazmIbDfpVbL/RxIC9WlgGLhrzHzzsqZK
	CyhENozKGysS0cDzJtnDMUzTwm/OHlY8fRV/wO03Kuq9M1ahUrU1k2mcQWP1F+Z2MfxZDKUW/6E7F
	PyqMQvcjoQKb4T7+tPARzZPzLn6GpMaPCnd7pTl8XBiRVEste/oulCdDIlxTP2m5du98tWDBVhgBq
	8aTA6QtsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jekTa-0002ZQ-PT; Fri, 29 May 2020 19:15:30 +0000
Received: from hqnvemgate26.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jekTS-0002Yd-Nx
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 19:15:24 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate26.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5ed15f3c0001>; Fri, 29 May 2020 12:15:08 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Fri, 29 May 2020 12:15:20 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Fri, 29 May 2020 12:15:20 -0700
Received: from [10.2.87.173] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 29 May
 2020 19:15:20 +0000
Subject: Re: [PATCH 0/3] misc: xilinx-sdfec: convert get_user_pages() -->
 pin_user_pages()
To: Dragan Cvetic <draganc@xilinx.com>, LKML <linux-kernel@vger.kernel.org>
References: <20200527012628.1100649-1-jhubbard@nvidia.com>
 <DM6PR02MB41405A1300813F8A511BE449CB8F0@DM6PR02MB4140.namprd02.prod.outlook.com>
X-Nvconfidentiality: public
From: John Hubbard <jhubbard@nvidia.com>
Message-ID: <c01d2d45-250f-e8a9-cfc0-0f0df6db13b4@nvidia.com>
Date: Fri, 29 May 2020 12:15:20 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <DM6PR02MB41405A1300813F8A511BE449CB8F0@DM6PR02MB4140.namprd02.prod.outlook.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1590779708; bh=fzhGtzZMcfGKFcA4Tvhs0mwDOSypFMG8kMfO5rPUm/E=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=e+r/k5WqVFkAi2PibQRZ6bmKhraegciNQsi76G3cRF+zPtEfWvG/Fptuf90ZMBfnc
 20fqiotqN8AdRUzB6gPpRSJFcRRzRQX9/XdpQb7nScTTu876Bz7/PsSZCa0XzfIiEn
 5M2ut6nC9ozgHHDK3uTQWTMSfMtsMkJdpm0jlWx1CzTkoe4N9jHBilpG6wQ8hoGMDE
 hCsDoWDlGmfXlB3BpEl72NLx0PixwbxJM/2i4ojGR2ECEtd4XpcTlmE7ikP9mzjp3S
 xz2H5RgtgoEf4qPfE2o/eU2TFtKNRDcKTP+m8qwgjI/0tO4UIDPsQIBWaJ2JpnMVDF
 j49Xc5ebg7z4Q==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_121522_786797_6EC2CBE5 
X-CRM114-Status: GOOD (  14.24  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michal Simek <michals@xilinx.com>, Souptick Joarder <jrdr.linux@gmail.com>,
 Derek Kiernan <dkiernan@xilinx.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-29 01:29, Dragan Cvetic wrote:
> Hi John,
> 
> Thank you for the suggestion, please find my comment below:
> 
>> -----Original Message-----
>> From: John Hubbard <jhubbard@nvidia.com>
>> Sent: Wednesday 27 May 2020 02:26
>> To: LKML <linux-kernel@vger.kernel.org>
>> Cc: Souptick Joarder <jrdr.linux@gmail.com>; John Hubbard <jhubbard@nvidia.com>; Derek Kiernan <dkiernan@xilinx.com>; Dragan
>> Cvetic <draganc@xilinx.com>; Arnd Bergmann <arnd@arndb.de>; Greg Kroah-Hartman <gregkh@linuxfoundation.org>; Michal Simek
>> <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org
>> Subject: [PATCH 0/3] misc: xilinx-sdfec: convert get_user_pages() --> pin_user_pages()
>>
>> Hi,
>>
>> There are also a couple of tiny cleanup patches, just to fix up a few
>> minor issues that I spotted while converting from get_user_pages_fast()
>> to pin_user_pages_fast().
>>
>> Note that I have only compile-tested these patches, although that does
>> also include cross-compiling for a few other arches. Any run-time
>> testing would be greatly appreciated!
>>
>> Cc: Derek Kiernan <derek.kiernan@xilinx.com>
>> Cc: Dragan Cvetic <dragan.cvetic@xilinx.com>
>> Cc: Arnd Bergmann <arnd@arndb.de>
>> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>> Cc: Michal Simek <michal.simek@xilinx.com>
>> Cc: linux-arm-kernel@lists.infradead.org
>>
>> John Hubbard (3):
>>    misc: xilinx-sdfec: improve get_user_pages_fast() error handling
>>    misc: xilinx-sdfec: cleanup return value in xsdfec_table_write()
>>    misc: xilinx-sdfec: convert get_user_pages() --> pin_user_pages()
> 
> 
> Reviewed-by:
> 	Technically there is no problem in this patch, but as you said this should be tested.
> 	Currently due to Covid-19 I'm not able to access the HW and I cannot validate this suggestion.
> 

Hi Dragan,

Thanks for the review, and for *wanting* to do the testing, even though you
can't right now. :)

thanks,
-- 
John Hubbard
NVIDIA

>>
>>   drivers/misc/xilinx_sdfec.c | 30 +++++++++++++++++-------------
>>   1 file changed, 17 insertions(+), 13 deletions(-)
>>
>>
>> base-commit: 9cb1fd0efd195590b828b9b865421ad345a4a145
>> --
>> 2.26.2
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
