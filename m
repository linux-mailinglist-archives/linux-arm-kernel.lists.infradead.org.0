Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B528C171AED
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 14:58:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eMXb2hyF9AOn10vpYJFSxAtIdSy9GE9nDQwjzSGD5XI=; b=q5pb5mOaTsJbXL
	Rc4XiEswdt24iupeDh8LugqUUq9Q6O3TqcJKsft9LVfFSSVrRdGH5B1czXqp66V2M8gefGGg+mZMH
	Q40TMBoFcW07dY+XqvlBJ5psK+raqzzjZlJmCcdvuH9C/gZssL9HkBz3cjL1Qdl8zuHqzlJAePS8M
	VHw9LITPATPfpoc+P+k8s20JLlnGTV56f3RlEAoEwMM/zET5N4GUFHHihs8Z2xiXeHcaQDk8j2Z/d
	nhhHqTXEMUJgamX+V8gfnm+p1VIzOOoB+sqi3nfmiRKOjlKpciEXmj7ud3foDuyLstgaKDRCiES5A
	hXfExHydcWA0jxdHDNJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Jfu-00028a-19; Thu, 27 Feb 2020 13:58:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Jfj-00027q-Q9
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 13:57:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 210A030E;
 Thu, 27 Feb 2020 05:57:50 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 5674D3F881; Thu, 27 Feb 2020 05:57:49 -0800 (PST)
Date: Thu, 27 Feb 2020 13:57:47 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Randy Dunlap <rdunlap@infradead.org>
Subject: Re: [PATCH] arm64: fix NUMA Kconfig typos
Message-ID: <20200227135747.GF3281767@arrakis.emea.arm.com>
References: <2c69f4d8-03a1-20a6-e8ef-a4518a7c6d07@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2c69f4d8-03a1-20a6-e8ef-a4518a7c6d07@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_055751_886544_7CC28389 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 LAK <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 31, 2020 at 05:51:06PM -0800, Randy Dunlap wrote:
> From: Randy Dunlap <rdunlap@infradead.org>
> 
> Fix typos in arch/arm64/Kconfig:
> 
> - spell Numa as NUMA
> - add hyphenation to Non-Uniform
> 
> Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org

Queued for 5.7. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
