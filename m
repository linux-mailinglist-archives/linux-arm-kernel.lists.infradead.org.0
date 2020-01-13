Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 395F2139682
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 17:40:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ugnizuI4x22houaULT0OTRLrSZkYUJnxvvgSGwhbeo=; b=m5hi/7Zu5OQc7L
	/OO7BtIqLZHt8wBOu4OAlSRvRU/JLuCslGncgrcK44ugjQC63V/DTCmY87xGKmBZHyjNtueT4txZ7
	mQwqS64qSBPjRj+CyW0YTQBIEz6kar0y0YtGF+6RA/b59TPCRPyKOuKLDcq+HJD16ZQ/9H9Jv7aDS
	hyOLsNiQbQgCwg2yVCpmQHdAcS0JyyWofPcqdMHbY0MjW4G2G1wBDsc3B5ZjFo+Z4XipevSAq/AVI
	jxnJ26eBhgPEuQF3KUEnmhgFpRxZ8lg09D2cScxKr59CH0ZZHYrbPsG3wRuwEDuzTOnI03AVO3zw4
	hf1XwREqjAjo9yGMO/Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir2lg-000832-JY; Mon, 13 Jan 2020 16:40:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir2lY-00082H-Qq
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 16:40:38 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A6A1C21569;
 Mon, 13 Jan 2020 16:40:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578933635;
 bh=sCmFCwYbsvnNPm2PkRZEhJA1442m+QaJCHhH5zkDbgM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aJR9K9bFdFK7SVbODxkwPKvqlChV/1xoJ/6AECR8oQ/b9Ga67JCoa2iqvC7O6ZkjW
 PjIz4V4LSComMuz2EKx/7aDA0KTg0oKFTGG6EyftvOZMW4d2Xl2VGEDVI1U+gd7197
 1qodocFPpKwz//GfBSb6NyziIq0TLQlWIVj0dBJc=
Date: Mon, 13 Jan 2020 16:40:29 +0000
From: Will Deacon <will@kernel.org>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [RFC PATCH v3 00/12] Unify SMP stop generic logic to common code
Message-ID: <20200113164029.GE4458@willie-the-truck>
References: <20191219121905.26905-1-cristian.marussi@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191219121905.26905-1-cristian.marussi@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_084036_888525_8FC43A24 
X-CRM114-Status: UNSURE (   8.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch@vger.kernel.org, mark.rutland@arm.com,
 sparclinux@vger.kernel.org, dzickus@redhat.com, ehabkost@redhat.com,
 peterz@infradead.org, catalin.marinas@arm.com, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux@armlinux.org.uk, hch@infradead.org,
 takahiro.akashi@linaro.org, mingo@redhat.com, james.morse@arm.com,
 hidehiro.kawai.ez@hitachi.com, tglx@linutronix.de, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 12:18:53PM +0000, Cristian Marussi wrote:
> the logic underlying SMP stop and kexec crash procedures, beside containing
> some arch-specific bits, is mostly generic and common across all archs:
> despite this fact, such logic is now scattered across all architectures and
> on some of them is flawed, in such a way that, under some specific
> conditions, you can end up with a CPU left still running after a panic and
> possibly lost across a subsequent kexec crash reboot. [1]

Is this still the case even after 20bb759a66be ("panic: ensure preemption is
disabled during panic()")?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
