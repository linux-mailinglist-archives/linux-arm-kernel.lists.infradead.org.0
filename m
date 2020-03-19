Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A95E18B978
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 15:35:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZBI9VqBxNcg+D3GKVeLM7YiRtEW4cE0c0piptSe/nq0=; b=PEfbosSiVYcQYr
	/qGgkcyQpipV4rVEul90ilq2OO4SkjgSA+KyLKG6B5b4nnLm56FAjCHNQnBX1sCo24h774ug7l6tl
	ciGaAGCyS+oiJZj7og8K4bFQYK2Vm3r2hd0eCzKgqeXJ8LBrXINX0zxwnff6JrdsJKnKmI7t0J7zq
	p1WbcXos98lsQShjmFNcyTIkA7+cbhUApHD4FbL+IlntO1sVBF0+Nep73nk8gJIPaqkAMvsAPzjfc
	YHvQ45smx1rxVMHVpjAOe0GmESdlpaub4e0wVjXW28u9UlZJlY4+u3FbtQSVxZIqTT4R0XgCIPf2z
	VhsTcNaUgHtNi4O1S2YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEwGY-0002q5-Go; Thu, 19 Mar 2020 14:35:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEwGQ-0002pi-Ih
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 14:35:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 07AFE30E;
 Thu, 19 Mar 2020 07:35:14 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3DFFC3F52E;
 Thu, 19 Mar 2020 07:35:13 -0700 (PDT)
Date: Thu, 19 Mar 2020 14:35:11 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Tuan Phan <tuanphan@os.amperecomputing.com>
Subject: Re: [PATCH 1/2] perf: dsu: Allow multiple devices share same IRQ.
Message-ID: <20200319143510.GB4876@lakrids.cambridge.arm.com>
References: <1584491176-31358-1-git-send-email-tuanphan@os.amperecomputing.com>
 <20200319143250.GA4876@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200319143250.GA4876@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_073514_662523_D32E4307 
X-CRM114-Status: GOOD (  15.40  )
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
Cc: patches@amperecomputing.com, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 19, 2020 at 02:32:51PM +0000, Mark Rutland wrote:
> On Tue, Mar 17, 2020 at 05:26:15PM -0700, Tuan Phan wrote:
> > Add IRQF_SHARED flag when register IRQ such that multiple dsu
> > devices can share same IRQ.
> > 
> > Signed-off-by: Tuan Phan <tuanphan@os.amperecomputing.com>
> 
> I don't think that this makes sense; further I think that this
> highlights that the current driver doesn't support such a configuration
> for other reasons.
> 
> A DSU instance can only be accessed from a CPU associated with it, since
> it's accessed via sysregs. The IRQ handler must run on one of those
> CPUs.
> 
> To handle that, the DSU PMU driver will need to gain an understanding of
> which CPUs are associated with the instance. As it stands the driver
> seems to assume that there's a single DSU instance, and that all CPUs
> are affine to that same instance.

Sorry, I misread dsu_pmu_get_online_cpu_any_but(), multiple instances
are handled already.

> So NAK to this patch, given the above.

Regardless, this NAK stands.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
