Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F9918FD3D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 20:04:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n8yXJeWkweSPnpl3jpdt+wpXhaHb6YWhiAabBFTLYjY=; b=fPNEb9U6SFh8pN
	S4xuwn4xuzjXwcKKTqA69/82pv23FHjcSNn9TH/nw0rhb2no5LxguES8N7K2QRM5gZMWGxIY09g8u
	WmqY6QLvTsMWV83ChjnjxdB5clNgHyYvqtbty9PjGyuFeFkqoGAHpKPajB1BugIUhoUxUiJ13AS6d
	ZisQJrmFuk1k9MA88E+1eAtgFFKFZHApIG7fKEGQQjUpWp7ia5zZXAx5rBzEg9spf5BrkCk21nz0T
	MqepYmiJjHgddPLtBpGGPE999ZCAGSvGPKr0Mqgue8IhL79cJFblj6IIBkn8UwvJ9N3rA3AMNA2DH
	nUKJyJckejRImruVSyBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGSN8-0005IE-Gj; Mon, 23 Mar 2020 19:04:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGSN0-0005Hc-S6
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 19:04:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B40CC31B;
 Mon, 23 Mar 2020 12:04:12 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BB8EA3F52E;
 Mon, 23 Mar 2020 12:04:11 -0700 (PDT)
Date: Mon, 23 Mar 2020 19:04:09 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 1/3] arm64: clean up trampoline vector loads
Message-ID: <20200323190408.GE4892@mbp>
References: <1938400.7m7sAWtiY1@basile.remlab.net>
 <20200319091407.51449-1-remi@remlab.net>
 <20200323120700.GB2597@C02TD0UTHF1T.local>
 <2345780.q8flsOIESp@basile.remlab.net>
 <20200323121437.GC2597@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200323121437.GC2597@C02TD0UTHF1T.local>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_120418_999179_886E3402 
X-CRM114-Status: GOOD (  20.18  )
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
Cc: james.morse@arm.com, will@kernel.org, linux-arm-kernel@lists.infradead.org,
 =?iso-8859-1?Q?R=E9mi?= Denis-Courmont <remi@remlab.net>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 23, 2020 at 12:14:37PM +0000, Mark Rutland wrote:
> On Mon, Mar 23, 2020 at 02:08:53PM +0200, R=E9mi Denis-Courmont wrote:
> > Le maanantaina 23. maaliskuuta 2020, 14.07.00 EET Mark Rutland a =E9cri=
t :
> > > On Thu, Mar 19, 2020 at 11:14:05AM +0200, R=E9mi Denis-Courmont wrote:
> > > > From: R=E9mi Denis-Courmont <remi.denis.courmont@huawei.com>
> > > > =

> > > > This switches from custom instruction patterns to the regular large
> > > > memory model sequence with ADRP and LDR. In doing so, the ADD
> > > > instruction can be eliminated in the SDEI handler, and the code no
> > > > longer assumes that the trampoline vectors and the vectors address =
both
> > > > start on a page boundary.
> > > > =

> > > > Signed-off-by: R=E9mi Denis-Courmont <remi.denis.courmont@huawei.co=
m>
> > > > ---
> > > > =

> > > >  arch/arm64/kernel/entry.S | 9 ++++-----
> > > >  1 file changed, 4 insertions(+), 5 deletions(-)
> > > > =

> > > > diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
> > > > index e5d4e30ee242..24f828739696 100644
> > > > --- a/arch/arm64/kernel/entry.S
> > > > +++ b/arch/arm64/kernel/entry.S
> > > > @@ -805,9 +805,9 @@ alternative_else_nop_endif
> > > > =

> > > >  2:
> > > >  	tramp_map_kernel	x30
> > > >  =

> > > >  #ifdef CONFIG_RANDOMIZE_BASE
> > > > =

> > > > -	adr	x30, tramp_vectors + PAGE_SIZE
> > > > +	adrp	x30, tramp_vectors + PAGE_SIZE
> > > > =

> > > >  alternative_insn isb, nop, ARM64_WORKAROUND_QCOM_FALKOR_E1003
> > > > =

> > > > -	ldr	x30, [x30]
> > > > +	ldr	x30, [x30, #:lo12:__entry_tramp_data_start]
> > > =

> > > I think this is busted for !4K kernels once we reduce the alignment of
> > > __entry_tramp_data_start.
> > > =

> > > The ADRP gives us a 64K aligned address (with bits 15:0 clear). The l=
o12
> > > relocation gives us bits 11:0, so we haven't accounted for bits 15:12.
> > =

> > IMU, ADRP gives a 4K aligned value, regardless of MMU (TCR) settings.
> =

> Sorry, I had erroneously assumed tramp_vectors was page aligned. The
> issue still stands -- we haven't accounted for bits 15:12, as those can
> differ between tramp_vectors and __entry_tramp_data_start.

Should we just use adrp on __entry_tramp_data_start? Anyway, the diff
below doesn't solve the issue I'm seeing (only reverting patch 3).

diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index ca1340eb46d8..4cc9d1df3985 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -810,7 +810,7 @@ alternative_else_nop_endif
 2:
 	tramp_map_kernel	x30
 #ifdef CONFIG_RANDOMIZE_BASE
-	adrp	x30, tramp_vectors + PAGE_SIZE
+	adrp	x30, __entry_tramp_data_start
 alternative_insn isb, nop, ARM64_WORKAROUND_QCOM_FALKOR_E1003
 	ldr	x30, [x30, #:lo12:__entry_tramp_data_start]
 #else
@@ -964,7 +964,7 @@ SYM_CODE_START(__sdei_asm_entry_trampoline)
 1:	str	x4, [x1, #(SDEI_EVENT_INTREGS + S_ORIG_ADDR_LIMIT)]
 =

 #ifdef CONFIG_RANDOMIZE_BASE
-	adrp	x4, tramp_vectors + PAGE_SIZE
+	adrp	x4, __sdei_asm_trampoline_next_handler
 	ldr	x4, [x4, #:lo12:__sdei_asm_trampoline_next_handler]
 #else
 	ldr	x4, =3D__sdei_asm_handler

-- =

Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
