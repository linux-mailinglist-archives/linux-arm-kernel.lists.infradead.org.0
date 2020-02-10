Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D66D158125
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 18:18:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QINvDwQfj3E0KL9NidzSXCvI3sDi1RgnGufMmn1k49M=; b=WeOZzq/QjZ+bGo
	g0EpHN4aA7INgUPhBchCsJ+dFf3bl3tpmgEKkVovofWti4Eoj+jldYkgxVP6q8kxN8cma8sVzw1BP
	oCdhOv0NWlOhLIVFUCJ8GhL+NBfVs8uRNx/NA6k5PVN+huc8fY+ZZik3hll4A8FIw/cm54I2Gpqcz
	HfBoBrgXV1ezNAk8g33JYyPeEsDQLZrdA+QO9yFbjQiPJt14rNELxpQUryIpTnbZrthpv9msYKGjr
	mPp5fQ61mk+dcLUxngRCuyPzAR8qDUvnNAjJrL+Qq2XBhwAFZCqFtQ2oSbI8QsIwmRhaGMIJiAMQn
	vkDKpotywgBTww9ZHp6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Cgv-0006yN-Su; Mon, 10 Feb 2020 17:17:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Cgj-0006sq-Fd
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 17:17:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 576381FB;
 Mon, 10 Feb 2020 09:17:35 -0800 (PST)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 807B03F68F;
 Mon, 10 Feb 2020 09:17:34 -0800 (PST)
From: James Morse <james.morse@arm.com>
Subject: Re: [PATCH] arm64: sedi: Annotate SEDI entry points using new style
 annotations
To: Mark Brown <broonie@kernel.org>,
 Punit Agrawal <punit1.agrawal@toshiba.co.jp>
References: <20200122221045.24857-1-broonie@kernel.org>
 <87lfpynae4.fsf@kokedama.swc.toshiba.co.jp>
 <20200123215438.GC5440@sirena.org.uk>
Message-ID: <2fe62b34-acf9-71bc-1211-7377084c60fd@arm.com>
Date: Mon, 10 Feb 2020 17:17:31 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200123215438.GC5440@sirena.org.uk>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_091737_594590_93EDE4CF 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On 23/01/2020 21:54, Mark Brown wrote:
> On Thu, Jan 23, 2020 at 12:01:55PM +0900, Punit Agrawal wrote:
>> There is a typo in $SUBJECT and the commit log. The code itself appears
>> to be fine.
> 
> You're right, fixed locally thanks.

Acked-by: James Morse <james.Morse@arm.com>


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
