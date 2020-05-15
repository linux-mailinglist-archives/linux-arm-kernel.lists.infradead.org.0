Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E17021D53FC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 17:15:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R/xaKDqfNuSYDN3NqDchp2zh6CcOmSextgXPkmIYwmM=; b=oWWe8Q5pO82JY3
	4aEQsVvQN4hdVSQxCPIWb0P3dwDSC4rKPGVsP6qaN1838txoagzUnj00u6sYxKn0gUeaJoSyPQPlT
	khkuiLOBCh3xXn2Viqt28zz/UdHP9OSxuXQxpcxkvS8i/MVP3A8W21OefUB7nrAdkFRdIipynV3C+
	jK5RUyVD58fAAcWhSc7OZLeVRGtiQU8VkrJdY5KHs/AM2WBs5WyvX3JqzX8iOAkX9JH37auznN4jl
	AOHpbbPFWGpVTSvYJZaQ9fbHGOJYoJDKXxqxGuiyGgDLAsuUEptfSf5jeRpUUAbmTW+nYPInTQsHJ
	OJ9hz/OZGgF/12zg1PFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZc38-0002pD-4Y; Fri, 15 May 2020 15:14:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZc2n-0002mU-Bg
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 15:14:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 924242F;
 Fri, 15 May 2020 08:14:36 -0700 (PDT)
Received: from [192.168.2.22] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 549BC3F71E;
 Fri, 15 May 2020 08:14:35 -0700 (PDT)
Subject: Re: [PATCH v3 16/20] arm64: dts: juno: Fix GPU interrupt order
To: Sudeep Holla <sudeep.holla@arm.com>
References: <20200513103016.130417-1-andre.przywara@arm.com>
 <20200513103016.130417-17-andre.przywara@arm.com>
 <20200513182405.GE27686@bogus>
From: =?UTF-8?Q?Andr=c3=a9_Przywara?= <andre.przywara@arm.com>
Organization: ARM Ltd.
Message-ID: <a1dd3eda-fa8b-630a-a64c-479dcbd053ae@arm.com>
Date: Fri, 15 May 2020 16:13:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200513182405.GE27686@bogus>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_081437_461983_9279CC19 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, devicetree@vger.kernel.org,
 Liviu Dudau <liviu.dudau@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/05/2020 19:24, Sudeep Holla wrote:

Hi,

> On Wed, May 13, 2020 at 11:30:12AM +0100, Andre Przywara wrote:
>> The Mali binding insists on the GPU interrupts to be in ordered as: job,
>> mmu, gpu.
>> Sort the GPU interrupts and interrupt-names properties accordingly.
>>
> 
> I assume this is not a bug fix, just clean up to make it 100% binding
> compliant. Things work just fine without this too. Just for my info.

Yes, that's true, it works either way right now.
Originally I was under the impression that the purpose of
interrupt-names was to allow any order of interrupts, but according to
Rob this is just to support optional IRQs (so having a shorter list).
The bindings require a certain order, and the dt-schema validation
complains if that differs in the DT.

Cheers,
Andre

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
