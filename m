Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 131301723BD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 17:43:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9iNaJERNO8TzeSniOJ4SbiQXwc7QTUDINBIql5VNa6A=; b=HVLQcVbD2UFoxUvK7/PRQTiCL6
	KHQ2b2K1+NT09UKBRy2ScyyORuyNA68huiEXgtaFU6PY+ABMAskcBS3AwJGKa9xFmAUxeBzraaFH9
	t5ZgxCFE+x3F6Hcpdi4I//rUTyf7c9w4S6AH5c+dK8bvB6SZ0F2a57ifDgLGbWzgnxs9lxdfzMvhE
	NdSGtRN7sxBQ1j97UE5FWb5Y3yDH8nfly4ThiLUZy5R4y23+I0t+jKYCulB7dnW+rFv8lGmKZbxYs
	guiaRNQa00REvH1flmkUDrwMe85EGw00/U4hkYQjvOSVyACF39+ESTDJCXjVMs7PjTPwRh0d6+sGP
	GsP3qPpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7MFj-0005Ly-1m; Thu, 27 Feb 2020 16:43:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7MFa-0005Kn-3V
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 16:43:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8D4391FB;
 Thu, 27 Feb 2020 08:42:59 -0800 (PST)
Received: from e113632-lin (e113632-lin.cambridge.arm.com [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 079423F7B4;
 Thu, 27 Feb 2020 08:42:57 -0800 (PST)
References: <20200226164118.6405-1-valentin.schneider@arm.com>
 <20200226164118.6405-2-valentin.schneider@arm.com>
 <20200227130001.GA107011@google.com>
 <7ce12aa2-1925-f991-a85f-5bd81ba668fb@arm.com>
User-agent: mu4e 0.9.17; emacs 26.3
From: Valentin Schneider <valentin.schneider@arm.com>
To: Dietmar Eggemann <dietmar.eggemann@arm.com>
Subject: Re: [PATCH 1/2] sched/topology: Don't enable EAS on SMT systems
In-reply-to: <7ce12aa2-1925-f991-a85f-5bd81ba668fb@arm.com>
Date: Thu, 27 Feb 2020 16:42:55 +0000
Message-ID: <jhjftewvv5c.mognet@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_084302_192595_D53AD233 
X-CRM114-Status: GOOD (  10.43  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, kernel-team@android.com,
 Quentin Perret <qperret@google.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 morten.rasmussen@arm.com, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27 2020, Dietmar Eggemann wrote:
>>> +	/* EAS definitely does *not* handle SMT */
>>> +	if (sched_smt_active())
>
> Can you add a pr_warn() and use the current comment as the warning
> message? Since we have one for !Asym CPU capacity and !schedutil.
>
>>> +		goto free;
>>> +
>
> [...]
>
> There is this 'EAS can be used ...' list of currently 4 items in the
> build_perf_domains() function header. You could include 'X. No SMT
> support' there.
>  ;-)

Right, the rst doc says "EAS on SMT is not supported" but I think that can
be interpreted as "EAS on !asym SMT". I'll add the warning and update the
comment.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
