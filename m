Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07CA81E59E9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 09:54:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Z8S4i9L1z4naFfO9XMfCnMGLo3aZdhvVdO+n/tJHIs=; b=d0fzUrtKqUqIKo
	BjS+QIsqiEx8T7IyEfbFHYA8Y76c8ffFjQ7h7BsYK0ytErAjAtxx/G2SpQ0pzRA6NOk6omNATOIPn
	7CIYgZZx56jtGha1yNcCx3VY10mqQFdz3ew1ZrFfi2TDwEQ2fjL082LnvZzG0yxswjHHl2hNfZ1mw
	+aoCmHB4z23b5SFtbw2c78GLZTS2+zPL4jwTN6dkiDVTofXLNZD7obj1sERdjUKdiGzBIKKYEIREW
	IgwEB/yyQyFRR0Jo7+Zw+zoEWV0FngD8lPlnRqcVXbqmb7yTzBi7GoCn9Z/m7U7LcEer6pgHLBUkg
	0wO1bv8pfFQ3xPJ3SMSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeDN8-0003PJ-Rn; Thu, 28 May 2020 07:54:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeDMu-0003Io-T1
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 07:54:26 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7B16F20899;
 Thu, 28 May 2020 07:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590652464;
 bh=PrWtcly4mSIxq6xvX0BT2n5SIuYjluRSR6BsVqU0pRI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RBTUoTw4WBBjrctA2lgQMN+f9rzpSob4VFN0mXonOjpXqWs3hd1r1Tkq9kxdcjKZ3
 qNQF95aIn9eBj8IHBcqlBHV3GvXcXsjlVHOLIFyxeCTABQhFaN2dD0IO1gokLxAsRc
 FHOJ5cY8U+hBGL0n4m+2ePFTBnMiKe5/7D4KXRYk=
Date: Thu, 28 May 2020 08:54:19 +0100
From: Will Deacon <will@kernel.org>
To: Jiping Ma <Jiping.Ma2@windriver.com>
Subject: Re: [PATCH][V3] arm64: perf: Get the wrong PC value in REGS_ABI_32
 mode
Message-ID: <20200528075418.GB22156@willie-the-truck>
References: <1589165527-188401-1-git-send-email-jiping.ma2@windriver.com>
 <20200526102611.GA1363@C02TD0UTHF1T.local>
 <1e57ec27-1d54-c7cd-5e5b-6c0cc47f9891@windriver.com>
 <20200527151928.GC59947@C02TD0UTHF1T.local>
 <cd66a2e4-c953-8b09-b775-d982bb1be47a@windriver.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cd66a2e4-c953-8b09-b775-d982bb1be47a@windriver.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_005424_977825_3D29E0C2 
X-CRM114-Status: GOOD (  19.15  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, zhe.he@windriver.com,
 bruce.ashfield@gmail.com, yue.tao@windriver.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, paul.gortmaker@windriver.com,
 catalin.marinas@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 28, 2020 at 09:06:07AM +0800, Jiping Ma wrote:
> On 05/27/2020 11:19 PM, Mark Rutland wrote:
> > On Wed, May 27, 2020 at 09:33:00AM +0800, Jiping Ma wrote:
> > > On 05/26/2020 06:26 PM, Mark Rutland wrote:
> > > > On Mon, May 11, 2020 at 10:52:07AM +0800, Jiping Ma wrote:
> > > This modification can not fix our issue,=A0 we need
> > > perf_reg_abi(current) =3D=3D PERF_SAMPLE_REGS_ABI_32 to judge if it i=
s 32-bit
> > > task or not,
> > > then return the correct PC value.
> > I must be missing something here.
> > =

> > The core code perf_reg_abi(task) is called with the task being sampled,
> > and the regs are from the task being sampled. For a userspace sample for
> > a compat task, compat_user_mode(regs) should be equivalent to the
> > is_compat_thread(task_thread_info(task)) check.
> > =

> > What am I missing?
> This issue caused by PC value is not correct. regs are sampled in function
> perf_output_sample_regs, that call perf_reg_value(regs, bit) to get PC
> value.
> PC value is regs[15] in perf_reg_value() function. it should be regs[32].
> =

> perf_output_sample_regs(struct perf_output_handle *handle,
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 str=
uct pt_regs *regs, u64 mask)
> {
> =A0=A0=A0=A0=A0=A0=A0 int bit;
> =A0=A0=A0=A0=A0=A0=A0 DECLARE_BITMAP(_mask, 64);
> =

> =A0=A0=A0=A0=A0=A0=A0 bitmap_from_u64(_mask, mask);
> =A0=A0=A0=A0=A0=A0=A0 for_each_set_bit(bit, _mask, sizeof(mask) * BITS_PE=
R_BYTE) {
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u64 val;
> =

> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 val =3D perf_reg_value(regs=
, bit);
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 perf_output_put(handle, val=
);
> =A0=A0=A0=A0=A0=A0=A0 }
> }

Yes, but Mark's point is that checking 'compat_user_mode(regs)' should be
exactly the same as checking 'perf_reg_abi(current) =3D=3D PERF_SAMPLE_REGS=
_ABI_32'.
Are you saying that's not the case? If so, please can you provide an example
of when they are different?

Leaving that aside for a second, I also think it's reasonable to question
whether this whole interface is busted or not. I looked at it last night but
struggled to work out what it's supposed to do. Consider these three
scenarios, all under an arm64 kernel:

  1. 64-bit perf + 64-bit application being profiled
  2. 64-bit perf + 32-bit application being profiled
  3. 32-bit perf + 32-bit application being profiled

It looks like the current code is a bodge to try to handle both (2) and
(3) at the same time:

  - In case (3), userspace only asks about registers 0-15
  - In case (2), we fudge the higher registers so that 64-bit SP and LR
    hold the 32-bit values as a bodge to allow a 64-bit dwarf unwinder
    to unwind the stack

So the idea behind the patch looks fine because case (3) is expecting the PC
in register 15 and instead gets 0, but the temptation is to clean this up so
that cases (2) and (3) report the same data to userspace (along the lines of
Mark's patch), namely only the first 16 registers with the PC moved down. We
can only do that if the unwinder is happy, which it might be if it only ever
looks up dwarf register numbers based on the unwind tables in the binary.
Somebody would need to dig into that. Otherwise, if it generates unconditio=
nal
references to things like register 30 to grab the link register, then we're
stuck with the bodge and need to special-case the PC.

Thoughts?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
