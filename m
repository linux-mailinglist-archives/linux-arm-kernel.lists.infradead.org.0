Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF55D6D79
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 05:13:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z9ubTpkJ87Dvfw4EMmWWNMDtlUiyWeZt0bjaK1oRQCw=; b=LAd5e8cwdAyoeF
	RZSHdHiiHqWfG8gwOZrz+KV1zE0bH2k0IzkBysxxNAfOxHype92Bb9J6bG/0sAuVrukSRgrkxyVqi
	Eqscr76rENKWiFQO8WcISobeg0rdtxIRpSvGJSFLUrU9o6DYlyKJde1EX9e0C9WjoKZJQtxpNwFT7
	oGSpOob0ANCEuyWktrHJyFXcvitO1h3JwPCvtvPMUMXdA04ZFaY+77JmPCX7qqMuW5/XIDKO/JxdC
	1Bt7voY2PxT74uwT9g6pr6TXwKT7EdRSfftT5xivhsL8F+f8LtNGUbvCSWYzSoP994257piBWboeS
	UwFjal0STK7ojZBbF7gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKDHI-0000C1-2T; Tue, 15 Oct 2019 03:13:40 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKDH9-0000BK-5P
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 03:13:33 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 5A4D272D82E6D5D0C390;
 Tue, 15 Oct 2019 11:13:26 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.439.0; Tue, 15 Oct 2019
 11:13:17 +0800
Subject: Re: [PATCH 3/3] arm64: configs: unset CPU_BIG_ENDIAN
To: Will Deacon <will@kernel.org>, Russell King - ARM Linux admin
 <linux@armlinux.org.uk>
References: <20190926193030.5843-1-anders.roxell@linaro.org>
 <20190926193030.5843-5-anders.roxell@linaro.org>
 <bf5db3a5-96da-752c-49ea-d0de899882d5@huawei.com>
 <CADYN=9LB9RHgRkQj=HcKDz1x9jqmT464Kseh2wZU5VvcLit+bQ@mail.gmail.com>
 <d978673e-cbd1-5ab5-b2a4-cdb407d0f98c@huawei.com>
 <CAK8P3a0kBz1-i-3miCo1vMuoM39ivXa3oxOE9VnCqDO-nfNOxw@mail.gmail.com>
 <20191011102747.lpbaur2e4nqyf7sw@willie-the-truck>
 <20191011103342.GL25745@shell.armlinux.org.uk>
 <CAK8P3a1ADTc0woWWNjpeqYEtgb=snj264P4QNWOj7ZRMDv8WNg@mail.gmail.com>
 <20191012145055.GO25745@shell.armlinux.org.uk>
 <20191014162416.uz33olqhgvzioqdk@willie-the-truck>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <bc3bfa97-af61-ce7a-5392-55cd50474a37@huawei.com>
Date: Tue, 15 Oct 2019 11:13:05 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <20191014162416.uz33olqhgvzioqdk@willie-the-truck>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_201331_751988_296E5ADF 
X-CRM114-Status: GOOD (  16.31  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Anders Roxell <anders.roxell@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>, John Garry <john.garry@huawei.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Olof
 Johansson <olof@lixom.net>, Chunrong Guo <chunrong.guo@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/10/15 0:24, Will Deacon wrote:
> On Sat, Oct 12, 2019 at 03:50:55PM +0100, Russell King - ARM Linux admin wrote:
>> On Sat, Oct 12, 2019 at 12:47:45AM +0200, Arnd Bergmann wrote:
>>> On Fri, Oct 11, 2019 at 12:33 PM Russell King - ARM Linux admin
>>> <linux@armlinux.org.uk> wrote:
>>>> 32-bit ARM experience is that telco class users really like big
>>>> endian.
>>>
>>> Right, basically anyone with a large code base migrated over from a
>>> big-endian MIPS or PowerPC legacy that found it cheaper to change
>>> the rest of the world than to fix their own code.
>>
>> I think you need to step off your soap box!  Big endian isn't going
>> away, and it likely has nothing to do with code bases.  Just look at
>> networking and telco protocols.  Everything in that world tends to
>> be big endian.  BE is what is understood in that world, and there's
>> little we can do to change it.
>>
>> Demanding that they switch to LE is tantamount to you demanding that
>> their entire world change - it ain't going to happen.
> 
> Oh, I wasn't demanding anything! Just interested to know if big-endian is
> actually being used because it's not something that I'm able to test
> sensibly and I haven't see anywhere near the amount of (public) effort to
> keep it supported as for little-endian. However, having asked the question,
> it's clear that it does have some users so we'll keep maintaining it on a
> best-effort basis and rely on those users to let us know if anything breaks.

Sure, we (Huawei kernel team) did that and we will do that in the future
as well.

Thanks
Hanjun


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
