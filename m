Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7252843A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 18:52:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rbC70V1gbaDG8Rf6ql5ohSK1QDgLQgoEeUuBqMIM6gI=; b=cSt2l0z7AZbCsg
	9lUcc4tO5zmoj2Sbg5syVnyPd9/HUGKLYseatymBg1v0PXs4TfkaOs8pCmlyC8dBdEQiAdH7Qpb9l
	wbZToHjAsYEM1jlr+6i1dFUzX7DTN+8Geke4p9Ij4LMgYcNJ6NrQikxBXKeArtrG7FHM8eA5Rg3ir
	2fk/Vb5erFqfKKtOnTWp1lqPD5z7vCkRhWjoL5PlA8jasfptiypEBKG7Avxb7WQejYMeZ5IJFz/Kx
	IjeGEKK5tTRc6SmoUF/VlBcda96VwUZLd/LjACl83bbF7vwCE6mB4v3X79QUAcOW2JMIKEu6p03cm
	wv5uKrViNdXXop9ilhAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTqwl-000161-0L; Thu, 23 May 2019 16:52:03 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTqwe-00015e-FB
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 16:51:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 56C6A374;
 Thu, 23 May 2019 09:51:55 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 669CC3F5AF;
 Thu, 23 May 2019 09:51:53 -0700 (PDT)
Date: Thu, 23 May 2019 17:51:51 +0100
From: Will Deacon <will.deacon@arm.com>
To: Julien Thierry <julien.thierry@arm.com>
Subject: Re: [PATCH v2 0/5] arm64: IRQ priority masking and Pseudo-NMI fixes
Message-ID: <20190523165151.GB1716@fuggles.cambridge.arm.com>
References: <1556553607-46531-1-git-send-email-julien.thierry@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556553607-46531-1-git-send-email-julien.thierry@arm.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_095156_514800_390AACBC 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, marc.zyngier@arm.com, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, rostedt@goodmis.org, james.morse@arm.com,
 yuzenghui@huawei.com, wanghaibin.wang@huawei.com, liwei391@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Julien,

On Mon, Apr 29, 2019 at 05:00:02PM +0100, Julien Thierry wrote:
> [Changing the title to make it reflex more the status of the series.]
> 
> Version one[1] of this series attempted to fix the issue reported by
> Zenghui[2] when using the function_graph tracer with IRQ priority
> masking.
> 
> Since then, I realized that priority masking and the use of Pseudo-NMIs
> was more broken than I thought.

Do you plan to respin this in light of Marc's comments?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
