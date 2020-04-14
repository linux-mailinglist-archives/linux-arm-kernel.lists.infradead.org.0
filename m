Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0EF1A78C2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 12:50:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fSqT6MAQ6vo7TKpsS+dGHm3Nb2OYpd0o2toll717bXM=; b=lTTUQUnaxoe0RSZ+4G5f2kLoZ
	PkZTauFQ8V0/wc+pCewrjD809laZYZHw3O/QdCyJvPk3an7OHScjasCRIlhNle/UhbIkMgb5hI4r+
	S5BvDT7J+CvF0Ne8BIP+57Bje/WsC1V+cqP6AugIP4NLwIQ+Sc3lsaB9+Zd1iohLTk40Y7b+CLHIU
	en8Vz7LJ1YpkN5zowwZLWms9F8XEvbNgBkaB3n+34jo9yiH18Y3aTVMDsK/icxfvSA1P9E+8HmCeI
	10mCoRUQH72dPwwRnaOUIoScdIPXWhpwCR5DU3CXEWjPpSiQNr5Uoab3iCt7YUKcCZ+hT/yFtToSB
	i7pltH16g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOJ8d-00062A-PK; Tue, 14 Apr 2020 10:49:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOJ8U-00061a-7I
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 10:49:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8154F1FB;
 Tue, 14 Apr 2020 03:49:45 -0700 (PDT)
Received: from [10.57.26.12] (unknown [10.57.26.12])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A4F883F6C4;
 Tue, 14 Apr 2020 03:49:42 -0700 (PDT)
Subject: Re: [PATCH] arm64: Optimize ptrauth by enabling it for non-leaf
 functions
To: Will Deacon <will@kernel.org>
References: <1586856741-26839-1-git-send-email-amit.kachhap@arm.com>
 <20200414100033.GA26395@willie-the-truck>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <075bd3bb-e3d8-bf51-ddad-a27f726c5806@arm.com>
Date: Tue, 14 Apr 2020 16:19:28 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200414100033.GA26395@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_034946_310377_07A24726 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org, Daniel Kiss <daniel.kiss@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 4/14/20 3:30 PM, Will Deacon wrote:
> On Tue, Apr 14, 2020 at 03:02:21PM +0530, Amit Daniel Kachhap wrote:
>> Compilers are optimized to not store the stack frame record for the leaf
>> function in the stack so applying pointer authentication in the leaf
>> function is not useful from security point of view.
> 
> I'm missing the reasoning here -- why don't we care about leaf functions?
> 
> Sounds like there's a performance/security trade-off that needs spelling
> out and justifying with some numbers, or is it clear-cut and I'm missing
> something?

Since lr is not stored on the stack so this function cannot be used for 
ROP gadget attack.
Sure this also provides performance benefit. I will provide the 
percentage of code size reduction.

Cheers,
Amit
> 
> Will
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
