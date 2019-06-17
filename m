Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E8748282
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 14:33:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lOmGl/lEbSzoFkdwHla4+mRPkfQeoXHhEey5tpeOQNU=; b=iogev9jGTFkjEK
	+qNoiOsE7rMjPVORLNBHGwZ1a2WdVkyVK2XW0GRZIh5JFJlhcfj51jAnqSGhzagVK606QL1tiCr99
	ug/y2AU2p05Gfma9Ad+PMRPRY/62GEIMfiX7AJxf68WF4yobRXCFc8/rF/TSOu35QDA/aV9H8Q/Nt
	QOsafXBM36Ik1ll2kBR4TehD27ef1BZ1iq3FcFBE8x56W6h3dkxtBKeH2n9SJJ6GLvQOMWwxMNRWZ
	cRw+I+ssDPRHZUIrpsqLwZ+Gu0h2LHujF5LFhjSnlJF6hxqqYeFUmiA9SXj51oT19JtmXyoIQSakl
	lA9j3X4b9UbqxyXyzROg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcqp5-0003KD-Oy; Mon, 17 Jun 2019 12:33:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hcqow-0003JZ-Gh
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 12:33:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E75C22B;
 Mon, 17 Jun 2019 05:33:07 -0700 (PDT)
Received: from [10.1.197.45] (e112298-lin.cambridge.arm.com [10.1.197.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8519F3F246;
 Mon, 17 Jun 2019 05:33:02 -0700 (PDT)
Subject: Re: [PATCH v4.4 20/45] mm: Introduce lm_alias
To: Viresh Kumar <viresh.kumar@linaro.org>,
 linux-arm-kernel@lists.infradead.org
References: <cover.1560480942.git.viresh.kumar@linaro.org>
 <8500aeb27596eef7bd952f988c8db0a4b2f655c6.1560480942.git.viresh.kumar@linaro.org>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <7b682848-d47d-94cc-6eae-7e97a0ca821a@arm.com>
Date: Mon, 17 Jun 2019 13:33:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <8500aeb27596eef7bd952f988c8db0a4b2f655c6.1560480942.git.viresh.kumar@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_053310_593440_E18014CB 
X-CRM114-Status: GOOD (  13.32  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 stable@vger.kernel.org, mark.brown@arm.com,
 Russell King <rmk+kernel@arm.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Viresh,

On 14/06/2019 04:08, Viresh Kumar wrote:
> From: Laura Abbott <labbott@redhat.com>
> 
> commit 568c5fe5a54f2654f5a4c599c45b8a62ed9a2013 upstream.
> 
> Certain architectures may have the kernel image mapped separately to
> alias the linear map. Introduce a macro lm_alias to translate a kernel
> image symbol into its linear alias. This is used in part with work to
> add CONFIG_DEBUG_VIRTUAL support for arm64.
> 

I think this commit was backported in 4.9 because one of the commits you
dropped (6840bdd73d07 arm64: KVM: Use per-CPU vector when BP hardening
is enabled) depended on it. I have yet to check whether that other
commit can be just dropped, however on your branch 4.4 branch, lm_alias
isn't used anywhere, so we probably don't want to backport this
particular patch (unless we need to actually backport the other patch in
some way).

Cheers,

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
