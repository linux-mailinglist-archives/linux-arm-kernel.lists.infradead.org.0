Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A18158E57
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 13:21:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aOquPccF4Ym69wzb9ZERoSBcDpg5Ueewwa1N/F9CMQ4=; b=JfKwGFc6E43nv8
	QaKsCrs3qzpL3lDHqNCTebZ5lnbyHKol/MG9iQnnN7N7T847lUcvwuEe2layCOZMYhafeLd3nq/dr
	FCqsNH5Amv8O3Dla/YjwCoWR4GZyQ0jy3g8CiAXXD+lUZFaESWekXcvIaM66/jt0gTFA0im0xOtq0
	HyZx8qoXMz1AJYFdIMu/ftxxzp5/EVa1pYhbl112eq4eA7AX7Xj/PImQiKtkyLBzzv92joc87X+wC
	58wwBiD6oq/cnW+ydIKHX7G2ELole/Shj7Xj8sdYDWa1sZaIJuRmsnLoBH+pRt5teynWe+o4uoWUB
	gRIY66qwf3CycEHv3uoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1UXp-0000p7-1w; Tue, 11 Feb 2020 12:21:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1UXL-0000Si-Dv
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 12:21:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 015B9FEC;
 Tue, 11 Feb 2020 04:21:07 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 528033F6CF;
 Tue, 11 Feb 2020 04:21:06 -0800 (PST)
Date: Tue, 11 Feb 2020 12:21:04 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Gavin Shan <gshan@redhat.com>
Subject: Re: [PATCH] drivers/firmware/psci: Hide ACPI state during
 initialization
Message-ID: <20200211122104.GB21093@e121166-lin.cambridge.arm.com>
References: <20200202230626.6598-1-gshan@redhat.com>
 <15169cd9-a22f-9ab2-b7e4-d050aee334cd@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <15169cd9-a22f-9ab2-b7e4-d050aee334cd@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_042107_538646_A21A04D2 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, linux-arm-kernel@lists.infradead.org,
 sudeep.holla@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 01:02:44PM +1100, Gavin Shan wrote:

[...]

> The words "export" here means "declared". Two functons (psci_{dt,acpi}_init())
> are declared and one of them is called depending on ACPI is enabled or not. If
> we hide the ACPI enablement state inside the driver/module, we just need to
> declare one function (psci_init()), to make the code a bit cleaner.
> 
> > > This hides the ACPI enablement state insides PSCI module so that we
> > > only need to export a function, to make the code a bit simplified.
> > > 
> 
> > For me it's just the preference. I will leave it to maintainers' taste.
I am not too fussed either way. As code is now though at least we know
acpi_disabled was {set/clear} before PSCI is initialized. Hiding the
ACPI/DT switch in PSCI code can be a problem if we move the boot code
around.

I don't necessarily see this patch as an improvement, again it is
no big deal regardless.

Thanks,
Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
