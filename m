Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C09D1D4E04
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 14:47:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ZZ55xSiOhusbeMNQmvLKmz8UGABHROAutMhjqhpuag=; b=Z79kR2LP1p8tnI
	NDJXMNZ62aQugW91XjqcCExMZ/O2SmnorfAdQvUMuC7UwmC9v+nhOGRoM5lpsfsOmmHEuHhZNukvl
	tArrew760DN3+tmUgK6nZ19xnwoS6JjLItEb4241h4Le7PUxIT3y43Wywo92+ni+AKXRwBQULqgKb
	kS8BYiE8V9yWIpf3qVSEsgNX7yNd2B9K7Dbv6qgKfLv/yOuI9tA+yLUz5Zy3LVmzF9ZKhi7o8zUjc
	7fiHzR9HftcBCDEUcvWDEW6gRh3mnXOh9V4yI8O4TrQFhy5sKCn+HqCxTS47e5JZza/lgY/4/33lR
	SnNjfSGcTxbHuEalwHig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZZk7-00066U-LV; Fri, 15 May 2020 12:47:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZZjt-000668-T2
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 12:46:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 28A061042;
 Fri, 15 May 2020 05:46:57 -0700 (PDT)
Received: from bogus (unknown [10.37.12.6])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2DF343F305;
 Fri, 15 May 2020 05:46:55 -0700 (PDT)
Date: Fri, 15 May 2020 13:46:48 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v3 2/7] firmware: smccc: Update link to latest SMCCC
 specification
Message-ID: <20200515124648.GA1591@bogus>
References: <20200506164411.3284-1-sudeep.holla@arm.com>
 <20200506164411.3284-3-sudeep.holla@arm.com>
 <20200515113744.GB67718@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515113744.GB67718@C02TD0UTHF1T.local>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_054657_979660_D41DD5D9 
X-CRM114-Status: GOOD (  17.17  )
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Steven Price <steven.price@arm.com>,
 harb@amperecomputing.com, Sudeep Holla <sudeep.holla@arm.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 12:37:44PM +0100, Mark Rutland wrote:
> On Wed, May 06, 2020 at 05:44:06PM +0100, Sudeep Holla wrote:
> > The current link gets redirected to the revision B published in November
> > 2016 though it actually points to the original revision A published in
> > June 2013.
> >
> > Let us update the link to point to the latest version, so that it
> > doesn't get stale anytime soon. Currently it points to v1.2 published in
> > March 2020.
> >
> > Reviewed-by: Steven Price <steven.price@arm.com>
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
>
> Changing the link is fine, but could we also add a line to make it clear
> which version of spec was written against, e.g.
>
> | This code is up-to-date with version DEN 0028 A
>
> ... as that was previously implicit in the documentation link, and it
> makes clear what the code is aware of and what it is trying to handle.
> Iknow we'll have to update it periodically, but I think that's
> worthwthile.
>

Makes sense, I will update.

> With that:
>
> Acked-by: Mark Rutland <mark.rutland@arm.com>
>

Thanks.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
