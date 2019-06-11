Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15E953CE12
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 16:09:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IERRhMYH4lbNjqJhVQ+iDsGLZuT1yGsHcu52znc1FOo=; b=CP5+dM9GVHXN2M
	+CfqtBU0RhiucbAPhmu1fd9Aomj4yyP5UjNSwQQQBNBHhiFzjmKlDiASMIN5QlAk9DFeGsJhC7uiJ
	AnVVaTvim9iJVNAxUt4u+YS9kkeKY9ZXT7amoDCm1hVszgk2rhdZXwwrHQCL4X2jDBlp/3bE+3/rC
	Oy/qxnHgbSrgM5gmhAk1kLkEZX6tJNDo+Wr0Ad4sm/owRJtYmWjBvxVFqC0LgSUekAIwWxneN7vvk
	h5OuPfB4gi4Qe62t8lC3vPh7LgyU78xgAVgMcBxHWITJaGcGFTbnKc9dCZYsyETJ4ukyOyVrGTwmP
	Qh8Ty1NVOkKemqqSiwlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hahSl-0000zp-Nv; Tue, 11 Jun 2019 14:09:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hahSZ-0000zG-O8
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 14:09:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E7336344;
 Tue, 11 Jun 2019 07:09:10 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C6E193F557;
 Tue, 11 Jun 2019 07:09:09 -0700 (PDT)
Date: Tue, 11 Jun 2019 15:09:07 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Raphael Gault <raphael.gault@arm.com>
Subject: Re: [PATCH 1/7] perf: arm64: Compile tests unconditionally
Message-ID: <20190611140907.GF29008@lakrids.cambridge.arm.com>
References: <20190611125315.18736-1-raphael.gault@arm.com>
 <20190611125315.18736-2-raphael.gault@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190611125315.18736-2-raphael.gault@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_070911_830618_1086D8EF 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: peterz@infradead.org, catalin.marinas@arm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, acme@kernel.org, mingo@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 01:53:09PM +0100, Raphael Gault wrote:
> In order to subsequently add more tests for the arm64 architecture
> we compile the tests target for arm64 systematically.

Given prior questions regarding this commit, it's probably worth
spelling things out more explicitly, e.g.

  Currently we only build the arm64/tests directory if
  CONFIG_DWARF_UNWIND is selected, which is fine as the only test we
  have is arm64/tests/dwarf-unwind.o.

  So that we can add more tests to the test directory, let's
  unconditionally build the directory, but conditionally build
  dwarf-unwind.o depending on CONFIG_DWARF_UNWIND.

  There should be no functional change as a result of this patch.

> 
> Signed-off-by: Raphael Gault <raphael.gault@arm.com>

Either way, the patch looks good to me:

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
>  tools/perf/arch/arm64/Build       | 2 +-
>  tools/perf/arch/arm64/tests/Build | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/tools/perf/arch/arm64/Build b/tools/perf/arch/arm64/Build
> index 36222e64bbf7..a7dd46a5b678 100644
> --- a/tools/perf/arch/arm64/Build
> +++ b/tools/perf/arch/arm64/Build
> @@ -1,2 +1,2 @@
>  perf-y += util/
> -perf-$(CONFIG_DWARF_UNWIND) += tests/
> +perf-y += tests/
> diff --git a/tools/perf/arch/arm64/tests/Build b/tools/perf/arch/arm64/tests/Build
> index 41707fea74b3..a61c06bdb757 100644
> --- a/tools/perf/arch/arm64/tests/Build
> +++ b/tools/perf/arch/arm64/tests/Build
> @@ -1,4 +1,4 @@
>  perf-y += regs_load.o
> -perf-y += dwarf-unwind.o
> +perf-$(CONFIG_DWARF_UNWIND) += dwarf-unwind.o
>  
>  perf-y += arch-tests.o
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
