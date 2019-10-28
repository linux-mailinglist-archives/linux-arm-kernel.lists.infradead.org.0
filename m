Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2424DE6E90
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 09:55:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fhSAFBC51K5tDeOt/2/oKHlNlEIrdmNVyCYFV5F5IjI=; b=qcBGGoKjBwuad4
	N41fQ04WHm4ikKK0izqns5zrIm4PksFkIRbr7gWo2VxcQpVRjoMxJnxHw4toorPi2P9XEhmBWoUHw
	Lix/c5RAesGcrafZPANe+zF73QORS2OsrH7i5vxI77uH7bWVOcNPvrRyToM7D+mxg0ISiN1UwNWQl
	dUJVUWqSLyHKJNQKiibGJIFqPxcb4eU3XiqDNsWf9tgq3X1QrPjLAF6X/KHx56LhnwTWs0v2p4aQx
	DHnmo+auq1YjG/7eWW+59ySLBwDUNoF9D9hFAHlL1hKYPqQliQo2eP7MwE7B2z+JQ+WMWWknFajOf
	uga724ot8nXO40rG5OuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP0nh-0003Kh-Oj; Mon, 28 Oct 2019 08:54:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP0nV-0003Js-Vl
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 08:54:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6CBAA1FB;
 Mon, 28 Oct 2019 01:54:45 -0700 (PDT)
Received: from [192.168.1.103] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5AB153F71E;
 Mon, 28 Oct 2019 01:54:44 -0700 (PDT)
Subject: Re: arm version of generic VDSO?
To: Arnd Bergmann <arnd@arndb.de>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <CAK8P3a2RDBTnKZ-yOJkqY5+2LBeeqvGJ3AMnf+cnqbDVPeUf6g@mail.gmail.com>
 <df19494e-589b-fbf5-bf19-8e8752b5e5be@arm.com>
 <20191025191735.GE25745@shell.armlinux.org.uk>
 <20191025192843.GF25745@shell.armlinux.org.uk>
 <CAK8P3a3o517utXmG0zVxtOFDRLrP6vTnmpXsoUdr2nXSh4dEQw@mail.gmail.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <08d12d3a-421a-d972-5e24-8a8231600f3c@arm.com>
Date: Mon, 28 Oct 2019 08:56:50 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a3o517utXmG0zVxtOFDRLrP6vTnmpXsoUdr2nXSh4dEQw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_015446_068216_AD06F73F 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: y2038 Mailman List <y2038@lists.linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,

On 10/25/19 8:33 PM, Arnd Bergmann wrote:
> On Fri, Oct 25, 2019 at 9:28 PM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
>>
>> On Fri, Oct 25, 2019 at 08:17:36PM +0100, Russell King - ARM Linux admin wrote:
>>> On Thu, Oct 24, 2019 at 01:47:24PM +0100, Vincenzo Frascino wrote:
>>
>> Okay, having discussed with Arnd what the current situation is, he
>> points out that he needs an additional patch to solve some further
>> build issues with the generic VDSO patches - caused by the Kconfig
>> changes in your first patch.
>>
>> I'd rather that gets fixed up before I apply the patches, rather
>> than applying a set of patches and a fix on top.
>>
>> Please re-spin with Arnd's Kconfig changes included.
> 
> For reference, this is the change I needed to get randconfig builds working
> in configurations that did not enable CONFIG_VDSO:
Thanks for this.

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
