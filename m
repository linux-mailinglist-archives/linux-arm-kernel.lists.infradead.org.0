Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23FFF19179B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 18:29:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oHq7ceqg7OL9Tj/CLfeCLnu31qAQvpa1Jm3IZ2q3ZV0=; b=cfwnWuy84p9K0S
	62tA+2Ey1UY4RXKZ886ZtSYvKO3GoaQAJZvs8BgaIHX3HGyNkONRmQ33MPNmtpUvmnwkt1qCI9GjU
	w5ppUYDgvpKkfqS8GwrfD2aB/rL6py5gkUN/5sz4qQze6h1qmtUcCvvolFLNOS5ewoCkREA9cHtz+
	FJ2EIR+hVIM9QTUzOVh4jc2KdIDXPZ0v3nCBHFibtdW+7O9QrBLtoB8bvHMH7zig76XQ0i6QI6Jwn
	s9jM/9KFIhIdUk+jy4WT3cnxu091eBOaNQOed4istdfp9Q2Cyx6Dd/G5KDfzV+f0ms9LAHNHg9QV6
	BU4ycNHbnyVlBpJa5UCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGnMv-0004ZW-Mr; Tue, 24 Mar 2020 17:29:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGnMo-0004Z5-3t
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 17:29:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1A9BB1FB;
 Tue, 24 Mar 2020 10:29:28 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 56DAA3F71F;
 Tue, 24 Mar 2020 10:29:26 -0700 (PDT)
Date: Tue, 24 Mar 2020 17:29:23 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Gavin Shan <gshan@redhat.com>
Subject: Re: [PATCH v5 0/4] arm64: Dereference CPU operations indirectly
Message-ID: <20200324172922.GG3901@mbp>
References: <20200318230145.72097-1-gshan@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200318230145.72097-1-gshan@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_102930_202493_124C49B2 
X-CRM114-Status: UNSURE (   7.40  )
X-CRM114-Notice: Please train this message.
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, robin.murphy@arm.com,
 shan.gavin@gmail.com, sudeep.holla@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 19, 2020 at 10:01:41AM +1100, Gavin Shan wrote:
> Gavin Shan (4):
>   arm64: Declare ACPI parking protocol CPU operation if needed
>   arm64: Rename cpu_read_ops() to init_cpu_ops()
>   arm64: Introduce get_cpu_ops() helper function
>   arm64: Remove CPU operations dereferencing array

I queued the first 3 patches for 5.7, they are useful on their own as a
code clean-up. I'll wait for the debate with Mark to settle on the last
patch.

Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
