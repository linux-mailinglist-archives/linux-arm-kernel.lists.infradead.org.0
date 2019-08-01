Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 214557DF90
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 17:59:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JTPniRXfC3H2Xbcorp3EmMkCPeNm2JU4hKH3V5psPG0=; b=Q5oQZbZSaq0L7T
	yTzLYvJcs4lAx6gte3WGrQYWK1Wp6/cGZLpS2v+pUpoxmy+CRIrIZXJzALOH65WjQogIJnc2xtKhI
	15/HQjGpWaRDWsi8ML7C/mhpa3oKo8u37XDgYHD23ajg+TkJaBDmct09D8f/CaC6wmgAQD5iIZDy0
	dUjHbOPdpRYaxpE7HhC2E5yANj/pR1Z5d9RZjLd/7Xus31B9FJFgT5ynx6WaVVNS+K2S80pwP6kPi
	e3e+80iYhZdGAE3CI68q1dzAL7TNTorNdq3T266vtiFkM6LLpB9io+MjGdzZF5A9/r1Z9KdBXwwqW
	EQAQi6ytZv/HipLCXpBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htDTg-0000YV-SC; Thu, 01 Aug 2019 15:58:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htDTV-0000Y9-Po
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 15:58:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 63AE61597;
 Thu,  1 Aug 2019 08:58:41 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2B3393F694;
 Thu,  1 Aug 2019 08:58:40 -0700 (PDT)
Date: Thu, 1 Aug 2019 16:58:38 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Jeremy Linton <jeremy.linton@arm.com>
Subject: Re: [PATCH v4 2/2] arm64: topology: Use PPTT to determine if PE is a
 thread
Message-ID: <20190801155838.GE23424@e107155-lin>
References: <20190801034634.26913-1-jeremy.linton@arm.com>
 <20190801034634.26913-3-jeremy.linton@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190801034634.26913-3-jeremy.linton@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_085844_256152_F0A340DD 
X-CRM114-Status: UNSURE (   8.19  )
X-CRM114-Notice: Please train this message.
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
Cc: lorenzo.pieralisi@arm.com, catalin.marinas@arm.com, rjw@rjwysocki.net,
 linux-acpi@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 will@kernel.org, linux-arm-kernel@lists.infradead.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 10:46:34PM -0500, Jeremy Linton wrote:
> ACPI 6.3 adds a thread flag to represent if a CPU/PE is
> actually a thread. Given that the MPIDR_MT bit may not
> represent this information consistently on homogeneous machines
> we should prefer the PPTT flag if its available.
>

Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
