Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 476BBE9E43
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 16:03:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lXZ7NCZ5H9KJ0pn+VXku2P17ONvsx1nCw+G2+nKnJDY=; b=aHCjbJWNTEKYI/
	nxoKfI6+qFbF3foQvpBscMDRgImLFncuJzVuRSO5pLVZrbZK8gboq05oWr67ARRQs0DQn9SYCrC+G
	rfvmsEIsp6iOnR6WvcA0jZ2Ef/Pjbxgznj/g+bgfiEFKVEc2AO9q+O/PDNDBP4oNLnWhXBUuIvYal
	4Ie8S/9hetg4N6XK0EIajC8JW2W/pDLcio6rUqVYjubGZeMxSsBXBwHrQOEi5L1l2IZ9WiLa5v2OC
	nw/QE46E3Po7aoD9iTAxlpoUBmADDq+xAc+TbzRLcpr06ajc1VJ4LbZvpXkKLB52Z9Y2qd6Q3DnCD
	5Et8jC0eEfFon9cRRWUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPpVI-0002Z6-A7; Wed, 30 Oct 2019 15:03:20 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPpV4-0002XY-QX
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 15:03:08 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D41D1B3B1;
 Wed, 30 Oct 2019 15:03:03 +0000 (UTC)
Date: Wed, 30 Oct 2019 16:03:02 +0100
From: Torsten Duwe <duwe@suse.de>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCHv2 2/8] module/ftrace: handle patchable-function-entry
Message-ID: <20191030150302.GA965@suse.de>
References: <20191029165832.33606-1-mark.rutland@arm.com>
 <20191029165832.33606-3-mark.rutland@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029165832.33606-3-mark.rutland@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_080307_008860_9F3580D6 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: jthierry@redhat.com, linux-parisc@vger.kernel.org, peterz@infradead.org,
 catalin.marinas@arm.com, Helge Deller <deller@gmx.de>, jpoimboe@redhat.com,
 linux-kernel@vger.kernel.org, rostedt@goodmis.org,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 takahiro.akashi@linaro.org, will@kernel.org, mingo@redhat.com,
 james.morse@arm.com, Jessica Yu <jeyu@kernel.org>, amit.kachhap@arm.com,
 svens@stackframe.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 29, 2019 at 04:58:26PM +0000, Mark Rutland wrote:
> When using patchable-function-entry, the compiler will record the
> callsites into a section named "__patchable_function_entries" rather
> than "__mcount_loc". Let's abstract this difference behind a new
> FTRACE_CALLSITE_SECTION, so that architectures don't have to handle this
> explicitly (e.g. with custom module linker scripts).
> 
> As parisc currently handles this explicitly, it is fixed up accordingly,
> with its custom linker script removed. Since FTRACE_CALLSITE_SECTION is
> only defined when DYNAMIC_FTRACE is selected, the parisc module loading
> code is updated to only use the definition in that case. When
> DYNAMIC_FTRACE is not selected, modules shouldn't have this section, so
> this removes some redundant work in that case.
> 
> I built parisc generic-{32,64}bit_defconfig with DYNAMIC_FTRACE enabled,
> and verified that the section made it into the .ko files for modules.

This is because of remaining #ifdeffery in include/asm-generic/vmlinux.lds.h:

#ifdef CC_USING_PATCHABLE_FUNCTION_ENTRY
#define MCOUNT_REC()    . = ALIGN(8);                           \
                        __start_mcount_loc = .;                 \
                        KEEP(*(__patchable_function_entries))   \
                        __stop_mcount_loc = .;
#else
#define MCOUNT_REC()    . = ALIGN(8);                           \
                        __start_mcount_loc = .;                 \
                        KEEP(*(__mcount_loc))                   \
                        __stop_mcount_loc = .;
#endif

Maybe you want to tackle that as well? I suggest to have at least one
FTRACE_CALLSITE_SECTION definition without double quotes. Alternatively, my
earlier solution just kept both sections, in case either one or both are
present.

                        KEEP(*(__patchable_function_entries))   \
                        KEEP(*(__mcount_loc))                   \

	Torsten

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
