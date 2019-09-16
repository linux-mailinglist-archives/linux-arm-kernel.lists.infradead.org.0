Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62376B37DC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 12:15:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vnx4XtlMcIIqxGtJnVhfB3f9oarwnnTUStoaubInUL4=; b=h1FshC8ExT6ihE
	6I16vcVZ8oth+Jz+jlL31jrdbch+8pFdZXS7MfXB7H+xN0nID7AjhCPWLS4UFspMuZBiw8STqvE55
	tmI1510e163SCAwkCPj6kLOk2ddE2K9Nu2rJfxuHea1QyryULUgA35XNG7z8CaslTzSZ1IFmlGOYH
	NfxwqsLm2/xxgVbzrVcaNB8jAh0KQ1ssYv00CyaNE8exqNj2vPqMh0uKaT3C8tQ0dNQzaXl5ZFfXa
	crGEah65f5AYkwx4X/Raz7HFq9AoXynewAWnjWGbhYZDvnHBcI+9OKIOm6ISXbdIwLxiFeqK0LflN
	hcUsJmyEh7rRTQTmzZHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9o2h-0007Ly-C9; Mon, 16 Sep 2019 10:15:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9o2K-0007LL-Ek
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 10:15:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3683B1000;
 Mon, 16 Sep 2019 03:15:08 -0700 (PDT)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BAAC83F59C;
 Mon, 16 Sep 2019 03:15:07 -0700 (PDT)
Date: Mon, 16 Sep 2019 11:15:05 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Sujeet Kumar Baranwal <sbaranwal@marvell.com>
Subject: Re: [EXT] Re: SCMI & Devfreq
Message-ID: <20190916101505.GB6109@bogus>
References: <BYAPR18MB24387C9DDE32067F1763B6DEAFB00@BYAPR18MB2438.namprd18.prod.outlook.com>
 <20190913102304.GC2559@bogus>
 <BYAPR18MB2438723658EF1F0586170CDDAF8C0@BYAPR18MB2438.namprd18.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BYAPR18MB2438723658EF1F0586170CDDAF8C0@BYAPR18MB2438.namprd18.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_031512_540940_084D0F10 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 16, 2019 at 05:22:02AM +0000, Sujeet Kumar Baranwal wrote:
> Thanks Sudeep.
>
>>> Good, but just a quick question to check if this is ACPI or DT based
>>> platform ?
>
> DT based.
>

Good.

>>> Yes it needs some work and I do have some prototype, but with no users in
>>> the upstream, I haven't added it yet.
>>> What kind of devices are these ? There was some work around generic
>>> devfreq driver that I had seen >>on the list and my plan was to do
>>> something similar, I need to dig up details as it was while ago.
>
> These are devices needing dedicated clocks like dsp engines. There is a need
> for a userspace dev governor controlling the frequency in different
> situation.

Okay, thanks for the info.

> Could you please share your patches and any instructions if needed.
>

It needs some polishing before I post them externally, they are still
hackish. I will do soonish.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
