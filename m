Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4648152830
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 11:37:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FFIzMSZ4eKZsNZfoe/urw05E0hnN+kxpZd9FyAoRhuY=; b=MKTjNKNb8mLkew
	HL7aX66AxR1KNy2ZNxbCfYsPz3E9xQplQcLecTI/FR3CUALK1LbZBq/FAZlKkfQtb5Ziqi2i4Yxt1
	tzUw7e7scRUeC4gg37FZWZj9zyNpPIHMSXyYn+51Z7Krhe+an8HkLRVIF0rX2QbisgkPZkpBPDWAO
	wuKooondnLq5pfuXcGPr19HAK9byKDs3aAKv09PT3niOu4r+Fr0KNLlqdk6hUplgzDjf/Z9lCPxkg
	irTQO9QrOMa00GyUqOOQqbYHs6Go5ck97U1IQQ3gsF2wrWLsIOZhuDysn6rJnwmkjGDJPuqV9nu+3
	13EB5IEi+2qfOZNQ48Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfhtj-00055m-AC; Tue, 25 Jun 2019 09:37:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfhtT-00055J-Hz
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 09:37:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9D659360;
 Tue, 25 Jun 2019 02:37:38 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6030D3F71E;
 Tue, 25 Jun 2019 02:37:37 -0700 (PDT)
Date: Tue, 25 Jun 2019 10:37:35 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Julien Grall <julien.grall@arm.com>
Subject: Re: [RFC PATCH v2 5/8] arm64/sve: Implement an helper to flush SVE
 registers
Message-ID: <20190625093735.GX2790@e103592.cambridge.arm.com>
References: <20190613161656.20765-1-julien.grall@arm.com>
 <20190613161656.20765-6-julien.grall@arm.com>
 <20190621153302.GA2790@e103592.cambridge.arm.com>
 <20772a47-5cd3-0566-1e29-839e39961def@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20772a47-5cd3-0566-1e29-839e39961def@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_023739_685546_A8A62BCF 
X-CRM114-Status: GOOD (  19.11  )
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
Cc: Anton.Kirilov@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 oleg@redhat.com, zhang.lei@jp.fujitsu.com, alex.bennee@linaro.org,
 linux-arm-kernel@lists.infradead.org, Daniel.Kiss@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 05:28:56PM +0100, Julien Grall wrote:
> Hi Dave,
> 
> On 6/21/19 4:33 PM, Dave Martin wrote:
> >On Thu, Jun 13, 2019 at 05:16:53PM +0100, Julien Grall wrote:
> >>Introduce a new helper that will zero all SVE registers but the first
> >>128-bits of each vector.
> >
> >Maybe mention that the helper will be used by a subsequent patch.  For
> >now, it's dead code.
> >
> >Maybe also mention briefly what this will be used for: i.e., to avoid
> >the costly store/munge/reload sequences currently used by things like
> >do_sve_acc().
> 
> How about the following commit message:
> 
> "Introduce a new helper that will zero all SVE registers but the first
> 128-bits of each vector. This will be used in subsequent patch to avoid the
> costly store/munge/reload sequences used in place such as do_sve_acc()."

Sure, that works.

> 
> >
> >>Signed-off-by: Julien Grall <julien.grall@arm.com>
> >>
> >>---
> >>     Changes in v2:
> >>         - Fix typo in the commit title
> >>---
> >>  arch/arm64/include/asm/fpsimd.h       |  3 +++
> >>  arch/arm64/include/asm/fpsimdmacros.h | 19 +++++++++++++++++++
> >>  arch/arm64/kernel/entry-fpsimd.S      |  7 +++++++
> >>  3 files changed, 29 insertions(+)
> >>
> >>diff --git a/arch/arm64/include/asm/fpsimd.h b/arch/arm64/include/asm/fpsimd.h
> >>index df62bbd33a9a..fda3544c9606 100644
> >>--- a/arch/arm64/include/asm/fpsimd.h
> >>+++ b/arch/arm64/include/asm/fpsimd.h
> >>@@ -83,6 +83,9 @@ static inline void *sve_pffr(struct thread_struct *thread)
> >>  extern void sve_save_state(void *state, u32 *pfpsr);
> >>  extern void sve_load_state(void const *state, u32 const *pfpsr,
> >>  			   unsigned long vq_minus_1);
> >>+
> >>+extern void sve_flush_live(void);
> >>+
> >
> >We probably don't need the extra blank lines here... these operations
> >are all closely related low-level backend functions.
> 
> Sure.

[...]

> >>diff --git a/arch/arm64/kernel/entry-fpsimd.S b/arch/arm64/kernel/entry-fpsimd.S
> >>index 12d4958e6429..17121a51c41f 100644
> >>--- a/arch/arm64/kernel/entry-fpsimd.S
> >>+++ b/arch/arm64/kernel/entry-fpsimd.S
> >>@@ -57,4 +57,11 @@ ENTRY(sve_get_vl)
> >>  	_sve_rdvl	0, 1
> >>  	ret
> >>  ENDPROC(sve_get_vl)
> >>+
> >>+/* Zero all SVE registers but the first 128-bits of each vector */
> >>+ENTRY(sve_flush_live)
> >>+	sve_flush
> >>+	ret
> >>+ENDPROC(sve_flush_live)
> >>+
> >>  #endif /* CONFIG_ARM64_SVE */
> >
> >The extra blank line makes this more readable, but in the interests
> >of symmetry can you also add a blank after the corresponding #ifdef?
> 
> I would prefer to do this change in a separate patch. So I will drop the
> newline here.

OK, sounds reasonable.

> 
> >
> >[...]
> >
> >With those addressed as appropriate,
> >
> >Reviewed-by: Dave Martin <Dave.Martin@arm.com>

Feel free to keep this tag.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
