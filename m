Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC84550A3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 15:41:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kuc7ZzcpAPglmcem3nkK7dzs80U7RK4JguwvXzhD4CM=; b=WZ8qjuqfHo3jDg
	Ey/E2WS5+8pAHxiblraJ0RbjTeTOT0ceRzfI2RreRgD6syzjcH1co0MBpnYlbFbBu7L9rQ1pSwdx7
	s8OkXcCO+WrSSRSJhRV376smfiPuaSvuS5GRuHDwDkf+xEbdPYp4reEwjqtWL4BVtoChWpHCUMAlt
	YAyRuZkotk5p2SY66Jew27Jk9gp7pG9Qn/EznEcEdaOoZiRHn1xbAXnoPloVeaSXi1uP0Rwfb8Ht+
	vodBBhDWKhk+GkTpmzihMJZ7bNZoTLrgOuIJkHJ5DkvBrmvDMQIkZpsBd3vNJARq8BM2FiaBLtf9y
	UgJ+cpycsQmpq6BQSvnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hflha-00071z-TE; Tue, 25 Jun 2019 13:41:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hflhL-000719-G4
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 13:41:25 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BD5982133F;
 Tue, 25 Jun 2019 13:41:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561470082;
 bh=LOjVR/zCOOavzyfdkONnkNBnRswHHfgS5xi+h5FfHwg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uhzue9w2YA2B/nApeUVqoiZqwDaU/BSbEY6fr/5HABCG6oVHY5M4Ap85fAtv+LK1V
 xNKDjwolFglKpTC0T5vk8hp+EJFchPrZ4IBAFlIcYAJYbi8j7uQEykSrJno7My7eFv
 X/wbBxgZzPbkXTgyOYpwNrQ8ktERyqOeJ4kssy8g=
Date: Tue, 25 Jun 2019 14:41:18 +0100
From: Will Deacon <will@kernel.org>
To: Raphael Gault <raphael.gault@arm.com>
Subject: Re: [PATCH 3/7] perf: arm64: Use rseq to test userspace access to
 pmu counters
Message-ID: <20190625134117.r3gysn7mvzzdrytj@willie-the-truck>
References: <20190611125315.18736-1-raphael.gault@arm.com>
 <20190611125315.18736-4-raphael.gault@arm.com>
 <20190611143346.GB28689@kernel.org>
 <20190611165755.GG29008@lakrids.cambridge.arm.com>
 <ff5897eb-ae6c-482f-148b-947a661fde4f@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ff5897eb-ae6c-482f-148b-947a661fde4f@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_064123_570063_C3C99781 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, peterz@infradead.org,
 catalin.marinas@arm.com, will.deacon@arm.com,
 Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>,
 linux-kernel@vger.kernel.org, mingo@redhat.com, mathieu.desnoyers@efficios.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Raphael,

On Tue, Jun 25, 2019 at 02:29:56PM +0100, Raphael Gault wrote:
> Now that we have a better idea what enabling this feature for heterogeneous
> systems would look like (both with or without using rseqs), it might be
> worth discussing if this is in fact a desirable thing in term of
> performance-complexity trade off.

Agreed; it's one of those things that I think is *definitely* worth
prototyping, but it's not obviously something we should commit to at this
stage.

> Indeed, while not as scary as first thought, maybe the rseq method would
> still dissuade users from using this feature. It is also worth noting that
> if we only enable this feature on homogeneous system, the `mrs`
> hook/emulation would not be necessary.
> If because of the complexity of the setup we need to consider whether we
> want to upstream this and have to maintain it afterward.

Given that we don't currently support userspace access to the counters at
all, I think upstreaming support only for homogeneous systems makes sense
initially as long as (a) we fail gracefully on heterogeneous systems and (b)
we don't close the door to using the rseq-based mechanism in future if we
choose to (i.e. it would be nice if this was an extension to the ABI rather
than a break). That also gives us a chance to assess the wider adoption of
rseq before throwing our weight behind it.

Sound reasonable?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
