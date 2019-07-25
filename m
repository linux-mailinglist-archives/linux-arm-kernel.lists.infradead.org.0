Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9B874778
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 08:47:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AkEZ0dQ56ktMsyBLluF+sT5/RQWP3qEx9ImVnfS1Occ=; b=oTsFRhlR8EwFSe
	nhWcb4AugwR9w6omdORTa2lumFZ/7TuMJ8qWtivqovElPiKISbH/2d6iR1HJYAk/LE7OZw/90Z9Ph
	lfXt/vjNH7o0MRPSEGeDJReiHqZCq1RTuwuLvu0yKsSvu/5qTPg3FdVUmBR+drRoZXcBA/6PmwzYw
	v6buv233v7HCzJDht8ztF1JW8aA9SODHdrUXgs4mVmigVrBM1AXPJk1z8UnKb1GBWANYIIqpj17ir
	Gz5+FciY5jO1bIhLKBQ73MwR+sDmnnFPVMaHyDqMIALrdISWLAemwgBbEIWdoRSJQubnopIiGKan8
	INdDHM3+sxpu7ILZWw+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqXXE-00066k-6T; Thu, 25 Jul 2019 06:47:28 +0000
Received: from lb2-smtp-cloud7.xs4all.net ([194.109.24.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqXWu-00065e-Vc
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 06:47:10 +0000
Received: from [192.168.2.10] ([46.9.232.237])
 by smtp-cloud7.xs4all.net with ESMTPA
 id qXWchBe9YLqASqXWfhRkfQ; Thu, 25 Jul 2019 08:47:00 +0200
Subject: Re: [PATCH 11/12] staging: media: cedrus: Fix misuse of GENMASK macro
To: Joe Perches <joe@perches.com>, Andrew Morton <akpm@linux-foundation.org>, 
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>
References: <cover.1562734889.git.joe@perches.com>
 <cd543a5f26b031a0bbd3baa55e1f15813f59f107.1562734889.git.joe@perches.com>
 <be536d37a3b58557cdacd33943915d397bcb5037.camel@perches.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <14f2eda2-9f39-0b7c-fabc-bd860efae23a@xs4all.nl>
Date: Thu, 25 Jul 2019 08:46:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <be536d37a3b58557cdacd33943915d397bcb5037.camel@perches.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfBXVwhl7PyoGh7Hlw1FjrXvvJ1p514+omG88Y0Ob0C09kM/d1f/mQGakj+OLgifwvX9PflPPcNJWHsoNYwl6JxwVW6J1UV/ys10YpJcPHIckkKGi6yhP
 83U5TMAFLTRrRJe6Z2qGSUdmtYfkQQylHN2QlFKssXAaOwDEis2rZFcC6cQWYrk1ToI4dbUKjkdav7CTywVts7Z6so1iDdjnk1EONG992bLeEooJCjEvTweD
 78k+5+lM1XZc8fNHkf4DBeOlZ9s1HrA8hsI3voVAROqqS/FPCqKWyD3JCCHQG381m5a1uA2uMRI/XVnmN+qO8Wz0QAELKHeFbnTXuJK6PlaXNHmPOziJ4WQL
 nHXevkefPT8O9A4yEjCR/b17LIr87mztD5PwMaK8SmnVWn6vzCNDRusl4y9xnbxp2Lr6BR+H7/TQzvNH13J2eBfiOdJ6CBidXzKBN6noOCuHaILCovDaB0qX
 0XRyTfThgl3XjTG6iqj3arhOshgqkwYHkVgNFKXvDQOzoHmEz8SOujjpj/umUQyX/X2uioog8uoVQxJC
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_234709_175785_662B2301 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.28 listed in list.dnswl.org]
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/24/19 7:09 PM, Joe Perches wrote:
> On Tue, 2019-07-09 at 22:04 -0700, Joe Perches wrote:
>> Arguments are supposed to be ordered high then low.
>>
>> Signed-off-by: Joe Perches <joe@perches.com>
>> ---
>>  drivers/staging/media/sunxi/cedrus/cedrus_regs.h | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
>> index 3e9931416e45..ddd29788d685 100644
>> --- a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
>> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
>> @@ -110,7 +110,7 @@
>>  #define VE_DEC_MPEG_MBADDR			(VE_ENGINE_DEC_MPEG + 0x10)
>>  
>>  #define VE_DEC_MPEG_MBADDR_X(w)			(((w) << 8) & GENMASK(15, 8))
>> -#define VE_DEC_MPEG_MBADDR_Y(h)			(((h) << 0) & GENMASK(0, 7))
>> +#define VE_DEC_MPEG_MBADDR_Y(h)			(((h) << 0) & GENMASK(7, 0))
>>  
>>  #define VE_DEC_MPEG_CTRL			(VE_ENGINE_DEC_MPEG + 0x14)
> 
> Greg?  ping?
>  
> 

It's actually me and I'm about to pick this one up and make a PR for Mauro.

Regards,

	Hans

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
