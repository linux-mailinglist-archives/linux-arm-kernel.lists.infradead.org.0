Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 996B6158816
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 03:03:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=i6yIJrumqvpyByHUyGmpEHjP7BpB79qVA/TlBTKtYk0=; b=Jj7e5eVhmGJXUREsL5PbpEZQI
	KLR4KtDANV29arRmaySEImjWGNdvuHLGy5vkd7E51RO8rcp8PtwoouWUcV14EGAH2xH1oRgmDiY4X
	HZmcFJVJN2O3gQv4u66BiH+Cm9aIfDJHcsxbeb5llDoN+Sq1CjUihznx8vaKBsk6U4TNZ9iTiV0+e
	FTTmTW1wPdXmuzZvvhh9JdtolzG9SUgq0w62GF2+QhEDS0NHJVAMke4331pfcnEpwQuZ2ciFJs2ZY
	m8YvW3I9Sneuu3wH+RPvtJlkUQNPVkCkDnRsiFrt80nC0XqK9m314g36cGBF/2A9Z5eARhKVwYPdr
	onQ2WNsvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1KtF-0005uG-Qu; Tue, 11 Feb 2020 02:03:05 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Kt7-0005tc-Nt
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 02:02:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581386573;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=VEtwvK69JMblOvObhHhhWP+N0CAD/J0ArqUV73a9llY=;
 b=KT1p/l9qiNlvj6ZhWag1VNCQENvoDFxawvOIH8E0uD6NWTipI0fVsfTSxUyI01qirqaI8V
 vPGz4v3WQf/Q3xqaYfR/KTJDziiCxjgjh5qoKwk+ynE6HwRfL1RvHtW5LVnPLjJNnLUIaC
 Sx/PhQd8qhMZAar7Kwazbti+YUHhmhg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-16-kBFys6tZP4Kea8PPbEU8uA-1; Mon, 10 Feb 2020 21:02:50 -0500
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C693A477;
 Tue, 11 Feb 2020 02:02:48 +0000 (UTC)
Received: from localhost.localdomain (vpn2-54-51.bne.redhat.com [10.64.54.51])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2E88D87B2F;
 Tue, 11 Feb 2020 02:02:46 +0000 (UTC)
Subject: Re: [PATCH] drivers/firmware/psci: Hide ACPI state during
 initialization
From: Gavin Shan <gshan@redhat.com>
To: linux-arm-kernel@lists.infradead.org
References: <20200202230626.6598-1-gshan@redhat.com>
Message-ID: <15169cd9-a22f-9ab2-b7e4-d050aee334cd@redhat.com>
Date: Tue, 11 Feb 2020 13:02:44 +1100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200202230626.6598-1-gshan@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-MC-Unique: kBFys6tZP4Kea8PPbEU8uA-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_180257_855074_B3EE6487 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, sudeep.holla@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi Sudeep,

On Mon, Feb. 3, 2020, 11:45 a.m. UTC, Sudeep Holla wrote:
> On Mon, Feb 03, 2020 at 10:06:26AM +1100, Gavin Shan wrote:
>> Either psci_dt_init() or psci_acpi_init() s called depends on ACPI
>> enablement state, which isn't so nice. In this case, two functions
>> have to be exported from PSCI module.
>>

I missed your reply and sorry for late catchup.

> I am confused, we don't export any functions as you mention and both
> are __init functions which can't be exported.
>

The words "export" here means "declared". Two functons (psci_{dt,acpi}_init())
are declared and one of them is called depending on ACPI is enabled or not. If
we hide the ACPI enablement state inside the driver/module, we just need to
declare one function (psci_init()), to make the code a bit cleaner.

>> This hides the ACPI enablement state insides PSCI module so that we
>> only need to export a function, to make the code a bit simplified.
>>

> For me it's just the preference. I will leave it to maintainers' taste.
>

Sure, lets see what comments Mark will have then. It's not bad to make
the code cleaner, even just a bit :)

Thank you for your time on this.

Thanks,
Gavin


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
