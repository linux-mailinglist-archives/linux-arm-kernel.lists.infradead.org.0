Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9E1C084D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 17:06:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gQ5ikEA3Qcm1FCaCJUhgcM1lOgSP9awjgXyajEsHLvs=; b=kG5OE+fs+vWwOI
	OFvBvD07HFcCWje2dzcb8oeKDCPH6fAy69sUqJ5ZJjcI2OVcHNCid698RxIm0BpzaWNRCqds3Xdco
	fJW1o0MV3ykHOlvJJ7UKPSy4cwlC270Aod8py4hVecH1JjgoQ93s0FF3Q+YvOIZiGQZe+7qA/pjuw
	xA3ddc3ay7YS0Zo766AbISqXIhz2jdZ+X7BC7kzTTtaq+7gCDoGWyGiNPKxql5rv9zSK8HMKDX65H
	VO8V3eV3uEnGX29bnJJpBdvn7rGFgEyEF7TZjXV9k48Mr1FColtlVEj61TrBBPes8Dyv0BPUtw4+J
	2EP5iMpCKR4NulyOxiyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDroy-00043w-JI; Fri, 27 Sep 2019 15:06:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDror-00042j-JA
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 15:06:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DCE5028;
 Fri, 27 Sep 2019 08:06:03 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D91B03F534;
 Fri, 27 Sep 2019 08:06:02 -0700 (PDT)
Date: Fri, 27 Sep 2019 16:06:00 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Masayoshi Mizuma <msys.mizuma@gmail.com>
Subject: Re: [PATCH 1/1] arm64/sve: Fix wrong free for task->thread.sve_state
Message-ID: <20190927150600.GR27757@arm.com>
References: <20190926190846.3072-1-msys.mizuma@gmail.com>
 <20190926190846.3072-2-msys.mizuma@gmail.com>
 <20190927125228.GQ27757@arm.com>
 <20190927143801.tpaohgbuzdheiwp3@gabell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190927143801.tpaohgbuzdheiwp3@gabell>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_080605_672591_A5A3A471 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
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
Cc: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Julien Grall <julien.grall@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 27, 2019 at 10:38:02AM -0400, Masayoshi Mizuma wrote:
> Hi Julien and Dave,
> 
> Thank you for your comments!
> Dave's suggestion looks good for me, many thanks!
> I'll post it as v2.

Please add Fixes and Cc: stable tags as appropriate.

(I'm happy not to push this patch myself, but I would expect to see a
Suggested-by tag...)

See Documentation/process/submitting-patches.rst,
Documentation/process/stable-kernel-rules.txt if unsure.

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
