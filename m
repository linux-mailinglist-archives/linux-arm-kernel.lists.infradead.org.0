Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAEB7150598
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 12:45:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wIi7za8/AlBa3/fAEGtkbTe558h2yXkQt0N8CuCfY6c=; b=Av20PnS13snhqb
	HlQBbOa78FuFKThEvGeXLmmvrQKsSbm5dHTq8C23mkMrqb3kqR9jC0HRESx29RnMJXzcOh7mC6zua
	U8oITyORqJ8ePCczh9vtOLph14LXLmDQE+atxMFY/sz0tSarGce1kq+p6MCAMRy+KKtjo+Yl96kyX
	D8zQg3Rys7veqffNOgwGIDurvR6hh5oPeSqrDrf00OXpl7VTqKtbpAKIjhZ2pKWjUc6WPo9ByfMsU
	ItSvszC7gMVBrkrmYoGaYTKgMAaBhAEDHBuZItdT4vab5nGy0fFfnB/kGxTgveG4Y5uQQHyaKoh8s
	g5yYJWajdcKee5OkuRhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyaAY-0000uJ-FK; Mon, 03 Feb 2020 11:45:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyaAR-0000t3-AB
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 11:45:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1A85BFEC;
 Mon,  3 Feb 2020 03:45:23 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 500A93F52E;
 Mon,  3 Feb 2020 03:45:22 -0800 (PST)
Date: Mon, 3 Feb 2020 11:45:17 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Gavin Shan <gshan@redhat.com>
Subject: Re: [PATCH] drivers/firmware/psci: Hide ACPI state during
 initialization
Message-ID: <20200203114517.GA38195@bogus>
References: <20200202230626.6598-1-gshan@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200202230626.6598-1-gshan@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_034527_398515_0B7779F2 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com,
 linux-arm-kernel@lists.infradead.org, Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 03, 2020 at 10:06:26AM +1100, Gavin Shan wrote:
> Either psci_dt_init() or psci_acpi_init() s called depends on ACPI
> enablement state, which isn't so nice. In this case, two functions
> have to be exported from PSCI module.
>

I am confused, we don't export any functions as you mention and both
are __init functions which can't be exported.

> This hides the ACPI enablement state insides PSCI module so that we
> only need to export a function, to make the code a bit simplified.
>

For me it's just the preference. I will leave it to maintainers' taste.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
