Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E53B8E32A8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 14:45:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2AynyKYOPQygodrAGvwNJ2OdScg1B3gl7G/7ZuTQ3aM=; b=nBcWW8+wStXrFvxAlg1yY28D55
	MwZmToEVA0Gs27oiYp40nngM8CN/fnAXEKrfWzDBhQ0uq8ekaqQQzberCbDz985qNwErusekUKv82
	ncqOmGAaDtl/nbyzBU7VoQrRhZhrkFxZOceG7bYxNcTWRsLFF4LYh8B4gteVwoA0iiGyKgeukuML0
	OClbHjtlD6gjS48783ZYEb4cdJJliMqq+33rLXbSHEfl05L2Ax4OOA5IjyE7WKi3JRdrRgPZFHn7y
	aXRgWX1vdmTYnCY376eWbMxfV0LGBlVUN4vQzcOTzUOH83+YMWnnjR7Fc2qiopwf9EGMSPUYUZL36
	CAypcivA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNcUo-0001Dj-W1; Thu, 24 Oct 2019 12:45:42 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNcUg-0001D1-D9
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 12:45:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 31D4BD75;
 Thu, 24 Oct 2019 05:45:21 -0700 (PDT)
Received: from [10.37.9.200] (unknown [10.37.9.200])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 583133F71A;
 Thu, 24 Oct 2019 05:45:20 -0700 (PDT)
Subject: Re: arm version of generic VDSO?
To: Arnd Bergmann <arnd@arndb.de>, y2038 Mailman List
 <y2038@lists.linaro.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
References: <CAK8P3a2RDBTnKZ-yOJkqY5+2LBeeqvGJ3AMnf+cnqbDVPeUf6g@mail.gmail.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <df19494e-589b-fbf5-bf19-8e8752b5e5be@arm.com>
Date: Thu, 24 Oct 2019 13:47:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a2RDBTnKZ-yOJkqY5+2LBeeqvGJ3AMnf+cnqbDVPeUf6g@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_054534_488883_698BE9D9 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,

On 10/24/19 1:34 PM, Arnd Bergmann wrote:
> Hi Vinvenzo,
> 
> I'm looking through some of the remaining y2038 work, and noticed
> that arch/arm64 has the new generic vdso implementation, but arch/arm
> does.
> 

This is correct, arch/arm does not have support for the generic vDSO library.

> Do you patches for using the same code on arch/arm?
> 

The patches were send for review together with the arm64 ones and the rest of
the architectures supported but they did not get merged yet and I do not know why.

>        Arnd
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
