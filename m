Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B9502E7C2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 00:06:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MOPpypRd/DN/4HxIknnXAu6AxycjZxbrFCSClyS3MyQ=; b=Goo0FRDxG7nlJG
	LLXa2OgCxulRELsyC3lz72HTzmNgBbSlW+Fu8E85+MqlIqdmMqoXGV71D0TIdfz2kiVenvAfINzDE
	n2fyBnmBOib6PsTcKJ6/zMEo0fsj/hj3mUpmyeLLO5frzOOOjeyfs70A67eOj8Gl1P2gWPPmv2OQk
	/Hi2zgbpR4y9GR28/oq9qKYewxUGIGXaC0CeHXS2uDuyGZwt7tU9PFepOs9lnWiNUlol3bqn9F3EO
	NIvvD5V2XL4yFs3da8F6pISzJvAGLV8OcLKhxouiQS/sn2efSJRYP3pAjFKUKxV7Lizv/RsWAOE2F
	F0PYDDOdO+0NUdtLHKIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW6iD-0001rN-RQ; Wed, 29 May 2019 22:06:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW6i7-0001qk-Ea
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 22:06:16 +0000
Received: from akpm3.svl.corp.google.com (unknown [104.133.8.65])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5589024257;
 Wed, 29 May 2019 22:06:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559167573;
 bh=rWWvSy2SCl28ReiT8I2BWwARbIr04tpQHSj7QNq/5YE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=gerrou/CZt1Rss49kiuG2BG724zLbGiugPqeN8w79MuOdLxnGvWczrM8RB6V9L42i
 zA4kb/wlkjvupHprLPu31fdVa7RSi89A82U4qS1bVdg4CAs2w4/GdbvDYSjNBzLwol
 3FIiGIoC+mL0ttq79m2ihlSfHUAa91+n+iX0Nxgc=
Date: Wed, 29 May 2019 15:06:11 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V5 0/3] arm64/mm: Enable memory hot remove
Message-Id: <20190529150611.fc27dee202b4fd1646210361@linux-foundation.org>
In-Reply-To: <1559121387-674-1-git-send-email-anshuman.khandual@arm.com>
References: <1559121387-674-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_150615_507280_9B08BD11 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, mhocko@suse.com, mgorman@techsingularity.net,
 David Hildenbrand <david@redhat.com>, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 logang@deltatee.com, arunks@codeaurora.org, cai@lca.pw, ard.biesheuvel@arm.com,
 cpandya@codeaurora.org, james.morse@arm.com, dan.j.williams@intel.com,
 ira.weiny@intel.com, linux-arm-kernel@lists.infradead.org, osalvador@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 29 May 2019 14:46:24 +0530 Anshuman Khandual <anshuman.khandual@arm.com> wrote:

> This series enables memory hot remove on arm64 after fixing a memblock
> removal ordering problem in generic __remove_memory() and one possible
> arm64 platform specific kernel page table race condition. This series
> is based on latest v5.2-rc2 tag.

Unfortunately this series clashes syntactically and semantically with
David Hildenbrand's series "mm/memory_hotplug: Factor out memory block
devicehandling".  Could you and David please figure out what we should
do here?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
