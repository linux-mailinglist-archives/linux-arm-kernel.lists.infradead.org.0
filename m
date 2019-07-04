Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E29F55F25C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 07:44:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4x2QUQAlhJ0tCG8D6s8wpWEqUBo0iUycG9xKRNQqbA4=; b=t+4HHOx8R5sPyC
	jD3Rn53CB1c+0zHmZbZM+mruHS0l9c93mRqKRyKLODS0huTC6qUrIQYvURtzxyUi24S4Mc+VsOemg
	Lt8znlwVhHBZca1iy7aZInydZmLNRZ7G3Wwt7uS1j2/Qf6U5qGojmdQQ1vojCdMYPBOjbauY9B+Hs
	/j3DMTlOwdv6rx+rR6yzMnWA6zKzGt2P/kx6zO4X9AuMvLe+TyaXD4GwnC7ilcWzIz78LF64tT7nH
	K08ni5j38p8Azj+wxrph77ecbrz+QoAbz6QKRSB8lzErSVzWOQ/n/LTr8NMi2LLvYecdnz1LuhxiD
	pGbvHpW3cbvzeF/xMj3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiuYC-0005iA-HF; Thu, 04 Jul 2019 05:44:56 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiuXy-0005h4-UJ
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 05:44:44 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x645ibfs072388;
 Thu, 4 Jul 2019 00:44:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1562219077;
 bh=EVhEn5SNjk6DFUpfMbARfkLAt+eli2X/lQdLrgCRKT8=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=lW5JI5VwE8TQPvMUiSX79gKRrh+I5ejJaR2lXq7YtuHbcZDbxzY67n6MsXJbyhxVP
 TyRYBrffij1F2S9lf3rEUxbd5Svd/Q/Y8l7r+Z281QzwFq/MBcm04hWPzkjsWz8MZY
 dkNp5sbnbq5eguSxKeE/s6qrq5YF/tXOZgq2i6IQ=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x645ibut124203
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 4 Jul 2019 00:44:37 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 4 Jul
 2019 00:44:37 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 4 Jul 2019 00:44:37 -0500
Received: from [172.24.190.172] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x645iYR5082836;
 Thu, 4 Jul 2019 00:44:35 -0500
Subject: Re: [GIT PULL] DaVinci fixes for v5.2
To: Olof Johansson <olof@lixom.net>
References: <3c31314e-1ac1-324d-5dfa-80b0c5074919@ti.com>
 <CAOesGMgh_6Ymxpsm3xG27+jgdSZLkL7PB7r38xh60sV6NiDs2Q@mail.gmail.com>
From: Sekhar Nori <nsekhar@ti.com>
Message-ID: <cdf15991-8d44-6563-873b-1b85a9f4dcaf@ti.com>
Date: Thu, 4 Jul 2019 11:14:34 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAOesGMgh_6Ymxpsm3xG27+jgdSZLkL7PB7r38xh60sV6NiDs2Q@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_224443_067017_FE4DAC61 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 ARM-SoC Maintainers <arm@kernel.org>,
 Linux ARM Kernel List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Olof,

On 03/07/19 3:44 AM, Olof Johansson wrote:
> On Tue, Jul 2, 2019 at 8:27 AM Sekhar Nori <nsekhar@ti.com> wrote:
>>
>> The following changes since commit 6fbc7275c7a9ba97877050335f290341a1fd8dbf:
>>
>>   Linux 5.2-rc7 (2019-06-30 11:25:36 +0800)
> 
> It would have been nice to base it on an older -rc, generally go as
> old as possible. :)

Okay, I was trying to get some fixes I had sent earlier into an -rc
baseline. Looking back, looks like I could have used -rc6 as well. Will
do for next time.

Thanks,
Sekhar

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
