Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98AAD10D3EA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 11:24:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G7FQXo9YEWSEI2DW6IK4OUsZpEaqhbCQAvGmUJF/7A0=; b=D10t54IAg+GJVZ
	bzVNgaReQXAc/sZwfIdS5+jr26gNaWT8CYcZ0ih3/ogICHm4sqfTo2CGY1BTuvIiWCZaBlA1JpEpX
	75hhw4jXdtH7gig74NZqGjYcqkH1lyIwJYAw7eqwK084J/MvO9uuBLQtKZJdOZlJxH3yhe2kEN6za
	0jHkeWM7PzfrHQahqTQjX9UqBJ/S2UkdvalpsdoUvg0yrFOTbwi1p0V1zDL3SHMjDIiZCXKdyYWty
	1OC+zQhip+AgR2CQL2yS41vkAqzaIlZw7L1+Q/tybRMTHIj7u2nXf6imn44LBc/rZHtXA8IeycUUG
	/XEkriF14GV2NkPi93Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iadS6-0004vm-Mb; Fri, 29 Nov 2019 10:24:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iadRu-0004uB-6Z; Fri, 29 Nov 2019 10:24:31 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C38D1217BA;
 Fri, 29 Nov 2019 10:24:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575023069;
 bh=VjBbZ2snQPvCylKfggADmKtB7KOQ00A+5qv/wamd9BI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=A4mBF7y2wubx7yJLQJsBFt9G/OPUtUbvyriYy4NmNtpOcIW5tUWsocV7wrA6Qy6Yg
 3mi8RQParNjCdNLFd657ThNyEh4bsWQdhJfSj1BiTydE+qZyhntU/td0YP4Bqj+eB+
 uiO666YGv0W1qJbb7nUGBFd5tsauyVwdATlruN1g=
Date: Fri, 29 Nov 2019 10:24:22 +0000
From: Will Deacon <will@kernel.org>
To: Bhupesh Sharma <bhsharma@redhat.com>
Subject: Re: [PATCH v5 0/5] Append new variables to vmcoreinfo (TCR_EL1.T1SZ
 for arm64 and MAX_PHYSMEM_BITS for all archs)
Message-ID: <20191129102421.GA28322@willie-the-truck>
References: <1574972621-25750-1-git-send-email-bhsharma@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1574972621-25750-1-git-send-email-bhsharma@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_022430_263332_C2E3CD56 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -3.7 (---)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-3.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.5 FROM_FMBLA_NEWDOM      From domain was registered in last 7 days
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, linux-doc@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 Paul Mackerras <paulus@samba.org>, Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 Boris Petkov <bp@alien8.de>, Dave Anderson <anderson@redhat.com>,
 Michael Ellerman <mpe@ellerman.id.au>, James Morse <james.morse@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, bhupesh.linux@gmail.com,
 linuxppc-dev@lists.ozlabs.org, Ingo Molnar <mingo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Steve Capper <steve.capper@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 29, 2019 at 01:53:36AM +0530, Bhupesh Sharma wrote:
> Changes since v4:
> ----------------
> - v4 can be seen here:
>   http://lists.infradead.org/pipermail/kexec/2019-November/023961.html
> - Addressed comments from Dave and added patches for documenting
>   new variables appended to vmcoreinfo documentation.
> - Added testing report shared by Akashi for PATCH 2/5.

Please can you fix your mail setup? The last two times you've sent this
series it seems to get split into two threads, which is really hard to
track in my inbox:

First thread:

https://lore.kernel.org/lkml/1574972621-25750-1-git-send-email-bhsharma@redhat.com/

Second thread:

https://lore.kernel.org/lkml/1574972716-25858-1-git-send-email-bhsharma@redhat.com/

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
