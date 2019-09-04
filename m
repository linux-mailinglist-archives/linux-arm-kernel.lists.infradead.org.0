Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F135A86D1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 19:06:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DKnv8nkiykhBPGlCWDOhRZw/biiF3MA7k2O53kcbDfU=; b=QOiiQvJJI480sJ
	78mSkpyEzlGXnwHf6d7ClZab+ZM0byhTkqI+JfnCL8O7n84ENZ1ojxmiueL6pPgJw/bm2EiqWtRlJ
	5icl/ztNmj25VPmijZXBLrwtmA94SB/Mxbs/AvuPl820zxlW7tqtkbVOKx/mwh/WjLSvmECpdSs+F
	k07M65ywqCPLBcrA4NpzfcKCD2ZbPrcfY5RaPPJb6Psb5M5z/XhdF2mVM5QuvYgRtRoOifZnz7izT
	W3S6Gx/aMZ6VC0y1oNm6GnpFZahNUlFElDTiyftM7oOt+xwoXmY6/eLLsfqUUNMh7jNcdYozJnqBM
	YY72vEIMYH7PPzNUNLBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Yjp-0006jQ-HZ; Wed, 04 Sep 2019 17:06:33 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Yjf-0006ig-8E
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 17:06:24 +0000
Received: by mail-io1-xd43.google.com with SMTP id n197so43892121iod.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 10:06:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zWNb1KSAFEmmY5w8yG302PcIPe2SuoPdam4dGfCxDfE=;
 b=HZ5faUwJw7/wU/k3Y2Vgs7HiF9k1kgLeFCZBfQPDb/z1bH4CdhHbL+B+++R56yQMln
 hZm2C914OdEYTaurIXeLwyzL21qf4yKYY4lkCfZQo6Gggrv6eR9IPHzHEIaESFJ0D4fO
 id2035l3TqmpJSdTaQok2XyP0IdMHoUmtluz4tn4EVVW3Y4vZJSx0AGGGNuh1MjJ35MW
 3ZwPIE2pCe6Tpge+7uf4d0W9mXjzXa5A4JPxGH4K5cpCNUZYIdTut5vA8O4DEr9Zwydr
 hL2b0W54njHDP07K5B5cvAcnIzJ1Nb+T26wHEPi055ovCVIDnidVx8ZSeHA0cfYUXbRn
 WSwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zWNb1KSAFEmmY5w8yG302PcIPe2SuoPdam4dGfCxDfE=;
 b=DxinlxfObXSTjM5dGaH2WtwoAn5V/1jW+oE19H6Rsk47m6FksPtT2zrSQWJF79O/42
 QnylrnO5X9sWtmln18tQdM4yreTn0nq9Mqc91oVAJVjIlLV1GmUkLqKRBW6W7fv46gKL
 7IDnHsjezbyKa173MMJ3BX76zxECMrun1bFod7Obr5rcfVzbAOP7G0o5Nht5uJbE3HQK
 wXX1swX9SGVc2PFMax7qbVBxgLReNwwSW8m1ZLFUBrnPB2A3Wx9INAb2AAnA/6JthU2Y
 1M68omtqr3BK7k4RX+AQFsq7ZDasAlbdIQScX3dkz6VlMpd5gNcnm04ePiGzJG5iQ708
 JVTQ==
X-Gm-Message-State: APjAAAVItKIlyc3haQo3kglUEVxI27fNbdQvUcaxe+jiPXxPVaiFmN80
 ivmWD6UXbH4CCDQUHcAmHjTtIWxLZFW5HByJq4RdGA==
X-Google-Smtp-Source: APXvYqylPXYEynWMJWR9zE1N/P0arzr4mBEtHZmslWgue0DjdUKF4W8KhK02621IE5g896WCHwTX5Tg05io390ED0xY=
X-Received: by 2002:a6b:7a07:: with SMTP id h7mr10405442iom.57.1567616781826; 
 Wed, 04 Sep 2019 10:06:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190830062421.31275-1-leo.yan@linaro.org>
 <20190830062421.31275-2-leo.yan@linaro.org>
 <20190903222215.GD25787@xps15> <20190904091916.GB27922@leoy-ThinkPad-X240s>
In-Reply-To: <20190904091916.GB27922@leoy-ThinkPad-X240s>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Wed, 4 Sep 2019 11:06:10 -0600
Message-ID: <CANLsYkwZXyzWqK1oiEg0hb99J89KfdNPsFOmS7G1XJ0xvoUc0Q@mail.gmail.com>
Subject: Re: [PATCH v1 1/3] perf cs-etm: Refactor instruction size handling
To: Leo Yan <leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_100623_312817_F7636DD2 
X-CRM114-Status: GOOD (  29.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Namhyung Kim <namhyung@kernel.org>,
 Robert Walker <Robert.Walker@arm.com>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 4 Sep 2019 at 03:19, Leo Yan <leo.yan@linaro.org> wrote:
>
> Hi Mathieu,
>
> On Tue, Sep 03, 2019 at 04:22:15PM -0600, Mathieu Poirier wrote:
> > On Fri, Aug 30, 2019 at 02:24:19PM +0800, Leo Yan wrote:
> > > There has several code pieces need to know the instruction size, but
> > > now every place calculates the instruction size separately.
> > >
> > > This patch refactors to create a new function cs_etm__instr_size() as
> > > a central place to analyze the instruction length based on ISA type
> > > and instruction value.
> > >
> > > Signed-off-by: Leo Yan <leo.yan@linaro.org>
> > > ---
> > >  tools/perf/util/cs-etm.c | 44 +++++++++++++++++++++++++++-------------
> > >  1 file changed, 30 insertions(+), 14 deletions(-)
> > >
> > > diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> > > index b3a5daaf1a8f..882a0718033d 100644
> > > --- a/tools/perf/util/cs-etm.c
> > > +++ b/tools/perf/util/cs-etm.c
> > > @@ -914,6 +914,26 @@ static inline int cs_etm__t32_instr_size(struct cs_etm_queue *etmq,
> > >     return ((instrBytes[1] & 0xF8) >= 0xE8) ? 4 : 2;
> > >  }
> > >
> > > +static inline int cs_etm__instr_size(struct cs_etm_queue *etmq,
> > > +                                u8 trace_chan_id,
> > > +                                enum cs_etm_isa isa,
> > > +                                u64 addr)
> > > +{
> > > +   int insn_len;
> > > +
> > > +   /*
> > > +    * T32 instruction size might be 32-bit or 16-bit, decide by calling
> > > +    * cs_etm__t32_instr_size().
> > > +    */
> > > +   if (isa == CS_ETM_ISA_T32)
> > > +           insn_len = cs_etm__t32_instr_size(etmq, trace_chan_id, addr);
> > > +   /* Otherwise, A64 and A32 instruction size are always 32-bit. */
> > > +   else
> > > +           insn_len = 4;
> > > +
> > > +   return insn_len;
> > > +}
> > > +
> > >  static inline u64 cs_etm__first_executed_instr(struct cs_etm_packet *packet)
> > >  {
> > >     /* Returns 0 for the CS_ETM_DISCONTINUITY packet */
> > > @@ -938,19 +958,23 @@ static inline u64 cs_etm__instr_addr(struct cs_etm_queue *etmq,
> > >                                  const struct cs_etm_packet *packet,
> > >                                  u64 offset)
> > >  {
> > > +   int insn_len;
> > > +
> > >     if (packet->isa == CS_ETM_ISA_T32) {
> > >             u64 addr = packet->start_addr;
> > >
> > >             while (offset > 0) {
> > > -                   addr += cs_etm__t32_instr_size(etmq,
> > > -                                                  trace_chan_id, addr);
> > > +                   addr += cs_etm__instr_size(etmq, trace_chan_id,
> > > +                                              packet->isa, addr);
> > >                     offset--;
> > >             }
> > >             return addr;
> > >     }
> > >
> > > -   /* Assume a 4 byte instruction size (A32/A64) */
> > > -   return packet->start_addr + offset * 4;
> > > +   /* Return instruction size for A32/A64 */
> > > +   insn_len = cs_etm__instr_size(etmq, trace_chan_id,
> > > +                                 packet->isa, packet->start_addr);
> > > +   return packet->start_addr + offset * insn_len;
> >
> > This patch will work but from where I stand it makes things difficult to
> > understand more than anything else.  It is also adding coupling between function
> > cs_etm__instr_addr() and cs_etm__instr_size(), meaning the code needs to be
> > carefully inspected in order to make changes to either one.
>
> My purpose is to use a same place to calculate the instruction
> size, rather than to spread the duplicate codes in several different
> functions.
>
> > Last but not least function cs_etm__instr_size() isn't used in the upcoming
> > patches.  I really don't see what is gained here.
>
> Sorry that I forgot to commit my final change into patch 02.
>
> I planed to use cs_etm__instr_size() in patch 02; patch 02 has
> function cs_etm__add_stack_event(), which also needs to get the
> instruction size when it sends stack event.
>
> After apply patch 02, tools/perf/util/cs-etm.c will have below three
> functions to caculate instruction size; this is the main reason I want
> to refactor the code for instruction size.
>
>   cs_etm__instr_addr()
>   cs_etm__copy_insn()
>   cs_etm__add_stack_event()
>
> If this lets code more difficult to understand, will drop it.
>

I agree with the consolidation but for that to work function
cs_etm__instr_addr() needs to be refactored.  Since
cs_etm__instr_size() is already taking care of checking the ISA type
the while() loop in cs_etm__instr_addr() can be done regardless of the
operation mode.  That way cs_etm__instr_size() can be changed at will
without breaking anything.

The downside is that we are doing a few more iterations... Which isn't
that big a deal considering we are in user space.  We can think about
some optimisation if it is ever proven to be a bottleneck.

Let me know if you see a problem with that approach.

Regards,
Mathieu

> Thanks,
> Leo Yan
>
> > >  }
> > >
> > >  static void cs_etm__update_last_branch_rb(struct cs_etm_queue *etmq,
> > > @@ -1090,16 +1114,8 @@ static void cs_etm__copy_insn(struct cs_etm_queue *etmq,
> > >             return;
> > >     }
> > >
> > > -   /*
> > > -    * T32 instruction size might be 32-bit or 16-bit, decide by calling
> > > -    * cs_etm__t32_instr_size().
> > > -    */
> > > -   if (packet->isa == CS_ETM_ISA_T32)
> > > -           sample->insn_len = cs_etm__t32_instr_size(etmq, trace_chan_id,
> > > -                                                     sample->ip);
> > > -   /* Otherwise, A64 and A32 instruction size are always 32-bit. */
> > > -   else
> > > -           sample->insn_len = 4;
> > > +   sample->insn_len = cs_etm__instr_size(etmq, trace_chan_id,
> > > +                                         packet->isa, sample->ip);
> > >
> > >     cs_etm__mem_access(etmq, trace_chan_id, sample->ip,
> > >                        sample->insn_len, (void *)sample->insn);
> > > --
> > > 2.17.1
> > >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
