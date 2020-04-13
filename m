Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D9A1A61C9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 05:40:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FQolch3OfX7fpk8HXvRYoN6Fe5zLXFbJue0vJh/+Ljw=; b=hP88mapK21eaOY
	UuaH9F25J6vUqPJfUdVo5SbDw4YwPilEktjZTcxNXxDIBw9tNbIOyV1um58KONc7VgDGmzaG2vHXF
	J9+hOJeGgqxx6sZnbtI6axSTiFFRHIT1f1l6x2zF3LOAdpKxJk2ep0YDjRYg3uOLwO/1fbFSCZS3y
	re5+sMgyZIuYrGDNM01nouqmHd6D6ZjxwRopCv65MBfGTbJgm5vg9wNbfsNnXE1wuvIKgCs1SKar/
	loTraTW7Su5glmQDaaF2oEXLpoAxcpRVusfmI6HIGns/ZfiNrzGZ73sNXoIuKQIxEFxz92Pr9zwUY
	5CLUpF18BDRh/wXeVGqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNpxH-0005SP-MF; Mon, 13 Apr 2020 03:40:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNpx6-0004Yj-Qs
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 03:40:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EB47630E;
 Sun, 12 Apr 2020 20:40:03 -0700 (PDT)
Received: from [10.163.1.49] (unknown [10.163.1.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8DFCC3F6C4;
 Sun, 12 Apr 2020 20:40:00 -0700 (PDT)
Subject: Re: [PATCH 5/6] arm64/cpufeature: Drop TraceFilt feature exposure
 from ID_DFR0 register
To: Will Deacon <will@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>
References: <1580215149-21492-1-git-send-email-anshuman.khandual@arm.com>
 <1580215149-21492-6-git-send-email-anshuman.khandual@arm.com>
 <bb4d5175-1c72-a1a6-1e79-116991717fdf@arm.com>
 <20200409125255.GA13078@willie-the-truck>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <42122aa6-9cce-c45e-d67f-f672badce675@arm.com>
Date: Mon, 13 Apr 2020 09:09:52 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200409125255.GA13078@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_204004_920363_163F8627 
X-CRM114-Status: GOOD (  10.57  )
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 james.morse@arm.com, maz@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 04/09/2020 06:23 PM, Will Deacon wrote:
> On Fri, Mar 20, 2020 at 06:19:21PM +0000, Suzuki K Poulose wrote:
>> On 01/28/2020 12:39 PM, Anshuman Khandual wrote:
>>> ID_DFR0 based TraceFilt feature should not be exposed.
>>
>> ... to guests.
>>
>>  Hence lets drop it.
>>
>> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> 
> Hmm, doesn't dropping cause it to become NONSTRICT? In general, I'd prefer
> that we list all fields in these tables, rather than have implicit behaviour
> in their absence.

Just trying to understand, so we should just leave it unchanged.

ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 28, 4, 0)

> 
> Will
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
