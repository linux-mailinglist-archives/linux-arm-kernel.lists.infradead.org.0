Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF4616FDFA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 12:39:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SJx+xfPMLYZ8ime1Hm38Pnh1Y9yKMwTzAU+d40szzxE=; b=RjqW4QynMax5HL
	OZF9UEVyoT1F2K1k/uqXrwQdDe7Mn2bEZuq8bOqcjSNtQ0H1DeNnUSpP67Hxdwn1cG3tLilNDcJYY
	o6wWVFL0DrrQJ06WEJmqW5ZsBQNZE+cqhlimXKr9dlsUcE/6gQeamNM5LyObixyPDx3AZGhNR1u84
	aKD1OAmU/Lr7gDKS5TXt55XbfZoclKxt0b+pX/C8zdrNrKY7r/3i8ExwYEPOAi1S1fCXlQ8h3oXJt
	UKFRKMj4SxXtph3JP6y8PG7lN6cSIEo+nqyAuiwipcaGZ6inehil3ZVeok7rA0LKSWiM0c7oVAsj2
	tV5Upierh7XDkvzaJvAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6v2V-00043l-Bi; Wed, 26 Feb 2020 11:39:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6v2N-00043J-2N
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 11:39:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3962F1FB;
 Wed, 26 Feb 2020 03:39:31 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 821F03FA00;
 Wed, 26 Feb 2020 03:39:30 -0800 (PST)
Date: Wed, 26 Feb 2020 11:39:25 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH] ARM/arm64: dts: Rename SMB bus to just bus
Message-ID: <20200226113925.GA8613@bogus>
References: <20200226110956.135214-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200226110956.135214-1-linus.walleij@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_033935_156183_5F8731BC 
X-CRM114-Status: GOOD (  12.61  )
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
Cc: Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 26, 2020 at 12:09:56PM +0100, Linus Walleij wrote:
> Discussing the YAML validation schema with the DT maintainers
> it came out that a bus named "smb@80000000" is not really
> accepted, and the schema was written to name the static memory
> bus just "bus@80000000".
> 
> This change is necessary for the schema to kick in and validate
> these device trees, else the schema gets ignored.
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> Hi Sudeep, if you agree I can merge this patch with the bunch
> of new YAML schemas, I can also split it if you prefer that.

LGTM,

Acked-by: Sudeep Holla <sudeep.holla@arm.com>

Let me know if you want me to pick for some reasons.
You may have to split this anyways IIUC as (ARM)-SoC guys pull
ARM and arm64 separately.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
