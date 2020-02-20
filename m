Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DFAA16642F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 18:19:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C8qU3jyI84rifPH2c/kTtIs6GxWk3PHc7+q5b23l+vM=; b=K+yd5U247QNA0N
	mPf7HKbgKV0IFl5ZaPu4gybi4QfsFCiXtZvmARDCNhuOrGcPV3czzwyKdj09GBIqX5swv7qBhHPDa
	wGrWiQH9fCSaATtBGjnBjEEJtvqBWQAzdOfqygVBkBgF6qsMUVBM/k3++/Wm76aSCfA3+7DyA8VmF
	6MxXHLH4rWFwRtmtcbPbEeBZ7e6qxEDwOBn6pRydxukE7epw/CLsi3cdwzvRrOa2sKhKz/uazcPr3
	h95fMlhnsak1VBq1aZu/9dNALh6sgTNDroa3OR7LUMEB3F3lbiIZjn8mcSaTZ4ZwOsw076LosFfDj
	jDWZFJ8ojUdwJpiXhG+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4pTU-0000F5-3O; Thu, 20 Feb 2020 17:18:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4pTH-0000EW-Fx
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 17:18:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DA4D631B;
 Thu, 20 Feb 2020 09:18:42 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4C3FB3F68F;
 Thu, 20 Feb 2020 09:18:42 -0800 (PST)
Date: Thu, 20 Feb 2020 17:18:40 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: Re: [PATCH] firmware: arm_scmi: driver: Replace zero-length array
 with flexible-array member
Message-ID: <20200220171840.GB44840@bogus>
References: <20200211231045.GA13956@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200211231045.GA13956@embeddedor>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_091843_575794_2EF53293 
X-CRM114-Status: GOOD (  12.07  )
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 05:10:45PM -0600, Gustavo A. R. Silva wrote:
> The current codebase makes use of the zero-length array language
> extension to the C90 standard, but the preferred mechanism to declare
> variable-length types such as these ones is a flexible array member[1][2],
> introduced in C99:
> 
> struct foo {
>         int stuff;
>         struct boo array[];
> };
> 
> By making use of the mechanism above, we will get a compiler warning
> in case the flexible array does not occur last in the structure, which
> will help us prevent some kind of undefined behavior bugs from being
> inadvertenly introduced[3] to the codebase from now on.
> 
> This issue was found with the help of Coccinelle.
> 
> [1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
> [2] https://github.com/KSPP/linux/issues/21
> [3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")
> 
> Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>

Applied these 3 patches [0][1][2] for v5.7

--
Regards,
Sudeep

[0]: https://lore.kernel.org/r/20200211231604.GA17274@embeddedor
[1]: https://lore.kernel.org/r/20200211231252.GA14830@embeddedor
[2]: https://lore.kernel.org/r/20200211231045.GA13956@embeddedor


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
