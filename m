Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C7CC114404
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 16:49:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0DRrf33H/GpvfmPF0qpaBEWT2qKxYZDjY6SGUt+UGCw=; b=rzGfS+DQMhpxNC
	PZHlSVy9bi4KAlKwbbmJOU9qYjV7ZrnvVm4pI+hQ0JmnM99g6wUsKwGoK2eeyFUstcJQJEnjPMHF7
	vBaXcRiJIqgON0JMy7pHaJcZodSN95XQg+RMtBY4ruKkKD7khj2wKAPtp/QzeuqTWYt7tFnqf6RT6
	L82oCLeoJyK1rnahg18rOyKUBkoMGzpinM0dS3VGh7XkLNgQGAZ6Xv0dM9VY4+T9nRLRC20mdEtSu
	4zd4xXh8lNctfRzNX0BaqqrulScCZZh7Hu78hk+KJUcDW0g9PEN2a6eYa99ClbkpU6K5eayMzUZjg
	ZELIbyvIRHSYBH5Z1SXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ictNO-0001mh-Cp; Thu, 05 Dec 2019 15:49:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ictNF-0001m6-Ir
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 15:49:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1480F1FB;
 Thu,  5 Dec 2019 07:49:00 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EE6E13F52E;
 Thu,  5 Dec 2019 07:48:58 -0800 (PST)
Date: Thu, 5 Dec 2019 15:48:56 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: John Garry <john.garry@huawei.com>
Subject: Re: PSCI checker query
Message-ID: <20191205154856.GC20398@bogus>
References: <5c3c69bf-cae9-8ad5-9da2-c0af7a5932e7@huawei.com>
 <20191205133020.GA20398@bogus>
 <dadb80f1-53ec-0344-cdce-d8b36372dfbe@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dadb80f1-53ec-0344-cdce-d8b36372dfbe@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_074901_666301_FA8FA11F 
X-CRM114-Status: GOOD (  15.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Linuxarm <linuxarm@huawei.com>,
 "Huangming \(Mark\)" <huangming23@huawei.com>,
 wanghuiqiang <wanghuiqiang@huawei.com>, Sudeep Holla <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi john,

On Thu, Dec 05, 2019 at 02:22:01PM +0000, John Garry wrote:
> Hi Sudeep,
>
> > Both use the same firmware(or at-least the baseline) ?
>
> Well from the kernel logs provided we have for D05:
> psci: PSCIv1.0 detected in firmware.
>
> and for the D06 board:
> psci: PSCIv1.1 detected in firmware.
>
> Both seem to be using v1.4 ATF also from the bios logs (they don't tell much
> else).
>

Good, it's standard TF-A project. You should be able to run some TF-tests
easily then.

> Are there any
> > significant hardware or firmware changes around CPU power-off sequence ?
>
> Not that I know about specifically. I've cc'ed some of our firmware guys,
> who may know more details.
>

OK

> > If you are running same kernel image on both, firmware becomes easy
> > target to start with.
>
> Yes, same kernel build. That's v5.4 with some unrelated changes.
>
>  Have you run some tests on PSCI firmware ?
>
> Again, I'll have to refer to our firmware guys. BTW, I'll say now that this
> D05 board is legacy...
>

Just for your information, I am referring to these tests in TF-A [1]

I don't have must details myself as I tried them long back, but I just
had to refer to the user guide [2] back then.

--
Regards,
Sudeep

[1] https://git.trustedfirmware.org/TF-A/tf-a-tests.git
[2] https://git.trustedfirmware.org/TF-A/tf-a-tests.git/about/docs/user-guide.rst

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
