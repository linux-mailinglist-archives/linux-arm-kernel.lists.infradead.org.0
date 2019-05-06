Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D18A314958
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 14:08:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pLcIh5mIUfye/1Rh1vQ1QYgIPCpVpb/BOsqjv4GOap0=; b=HTCIykQl136mHU
	rnzH4AKm7YP8dKEUJ5uDONR8973ZhVFo0ilA/F0224f+Z3AO98uaw9U8E+iPZ2YnJTmulftZERlQY
	E5HjDE9/7Rx3CzHFrWA+w7EI5SVE9Zkdt3t/wtKE4r9bU2j87WAQ8p7plv9nnjhsx4jKxZHjee3ZB
	RLgH/1wtj9Vn8sm/Eysgf7NTNFOx0QqTqwbhp0cL+z7wbYG3wV3wFCaUmhHX0CWNavpW8xyOwvu3i
	CMTgO2aZkMsoR4OJoWgIrZfvILyp7g4n0KcAF5JfLcFzzJNvkESRqy1rsfXZoyWxOaWf5GC/RJRAw
	li0zaANP+59lPQpwjOYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNcPi-00054U-AU; Mon, 06 May 2019 12:08:10 +0000
Received: from cloudserver094114.home.pl ([79.96.170.134])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNcPb-00053u-AI
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 12:08:04 +0000
Received: from 79.184.253.223.ipv4.supernova.orange.pl (79.184.253.223) (HELO
 kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.213)
 id 8f8b8ef4e30ad709; Mon, 6 May 2019 14:07:53 +0200
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Jeremy Linton <jeremy.linton@arm.com>
Subject: Re: [PATCH v2 1/5] ACPI/PPTT: Trivial, Modify the case of CPU
Date: Mon, 06 May 2019 14:07:52 +0200
Message-ID: <9111298.efd3gzfPJI@kreacher>
In-Reply-To: <51abea94-15d6-e712-411e-bf7fcf2902b6@arm.com>
References: <20190426220309.55654-1-jeremy.linton@arm.com>
 <CAJZ5v0hNj-pWqxQkVjRrvEHswTk+qJsuj0JM8ckZWCbqzRuLGA@mail.gmail.com>
 <51abea94-15d6-e712-411e-bf7fcf2902b6@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_050803_521991_EDECA9FE 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, John Garry <john.garry@huawei.com>,
 Will Deacon <will.deacon@arm.com>, Linuxarm <linuxarm@huawei.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wednesday, May 1, 2019 5:46:49 PM CEST Jeremy Linton wrote:
> Hi,
> 
> And sorry about the delay...
> 
> On 4/29/19 3:50 AM, Rafael J. Wysocki wrote:
> > On Sat, Apr 27, 2019 at 12:03 AM Jeremy Linton <jeremy.linton@arm.com> wrote:
> >>
> >> CPU is an acronym and customarily capitalized. Much of the
> >> commenting in the PPTT code has been using "cpu" rather
> >> than "CPU". Correct that, and other human readable strings.
> >>
> >> Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
> > 
> > It would be better to say "Modify the spelling of CPU" in the subject
> > IMO, but apart from that
> 
> Hmmm, spelling doesn't seem quite right either, how about "capitalization"?

That would work for me too.




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
