Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC8971C41F9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 19:15:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BlwM/Bdw0ezkKNOD55LKf+5Rv/ID5UThLU1UZE/werk=; b=TSC7npP1NJwakW
	0JXE70DaEYIWY135MRgdIqOxJj0P5Ag5eCaMiixUk6oCrF9asORGSk0XnSEYB+ftSSYsB/9891wpS
	L/C54Xnjzxiap1wtO/At1UyrUVMxRjOu8YpAdkqU40hdPbbFQJReThdyicNO0khlhhdRl7KTT50jm
	CTsGtb70LdhFJwPusoVyRFHd1wErnsxVOYsBZUrT/Nj9W05kBPXDqJl+Px+EI/AeVbQmQDF7crnqr
	YySy6g5mbdkaNZACdypUATx9BBVkgKmBai4i2MB+2QRnAKOzy33JRooWM96ZMPtO1rYRukwEYqIxV
	oDPy2zIiFBwP2QGkjkVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVegg-0007nQ-1S; Mon, 04 May 2020 17:15:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVefz-0007V8-Nq
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 17:14:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 34D0D1045;
 Mon,  4 May 2020 10:14:43 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7A5753F68F;
 Mon,  4 May 2020 10:14:42 -0700 (PDT)
Subject: Re: [PATCH] firmware: arm_sdei: Drop check for /firmware/ node and
 always register driver
To: Sudeep Holla <sudeep.holla@arm.com>
References: <20200422122823.1390-1-sudeep.holla@arm.com>
From: James Morse <james.morse@arm.com>
Message-ID: <bcadd00b-cd76-8321-e1c9-0a076fe64deb@arm.com>
Date: Mon, 4 May 2020 18:14:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200422122823.1390-1-sudeep.holla@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_101443_812721_E362A71C 
X-CRM114-Status: GOOD (  11.43  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 "will@kernel.org" <will@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sudeep,

(CC: +Will and +Catalin)

On 22/04/2020 13:28, Sudeep Holla wrote:
> As with most of the drivers, let us register this driver unconditionally
> by dropping the checks for presence of firmware nodes(DT) or entries(ACPI).
> 
> Further, as mentioned in the commit acafce48b07b ("firmware: arm_sdei:
> Fix DT platform device creation"), the core takes care of creation of
> platform device when the appropriate device node is found and probe
> is called accordingly.
> 
> Let us check only for the presence of ACPI firmware entry before creating
> the platform device and flag warning if we fail.

Reviewed-by: James Morse <james.morse@arm.com>


Will/Catalin, any chance you could pick this up for v5.8?

Original message:
https://lore.kernel.org/linux-arm-kernel/20200422122823.1390-1-sudeep.holla@arm.com/


Thanks!

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
