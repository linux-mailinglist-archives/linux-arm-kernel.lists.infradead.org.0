Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5544A9825
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 03:51:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M3zodFkWMKuEWM3YlI6TzchEjpGxqQpILgHO+BfxW+Q=; b=eI4lI30G3GzX8z
	KYv4nlPwCYqtCsE65srWgl+8IFBVlqOjXi5PF8MicRjCTWAGVhJL2D/plgPjbDjjPxkS+6QVLkaAv
	ONs/qa9Y3jU2Y6wCRDYYj/+IMGP9ew5+hjb8XPVsEMe+1I9BCjwuPvUPUHu/2QRE2arXRvgvsonmN
	ULN6osyIewM4GFc8zwkYjRxogV5FjpQUIoRSKQdJJdKXqCHRkbKRkLwOGqYPNT3vMPRRpwcZwA6dx
	cl2xuRuaV+iYpU932GNQFqtpmU+/Xd+05MitVOuA850rKHMPIAMLSTEO75RVWX5s05xVgIQcOgpzI
	urc/oUI0pGorq6eozl/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5gvY-0005SY-V2; Thu, 05 Sep 2019 01:51:12 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5gvQ-0005S4-25
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 01:51:05 +0000
Received: by mail-pl1-x643.google.com with SMTP id f19so490056plr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 18:51:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=RnN4Pl89tE4oGJrxfwKaqE/Zg00kWXDojSuymJXMutc=;
 b=zEk9eINnn51Q7ICigSrLK8Tbtgr58u5sDyfvvYPF87ng/z15AhrsLpjkRYZsQM8CWf
 akBNDrMziB7qOj0B+HJVwf2GvVjVGbgwH1nwpDrS8M50puPKO4C75JHQdXRX7PsOSX6G
 PCthEX6CFsA2aZkP0Sdy58f9TpvSuvvdAckfo/MsVHnboKRAxCU3QN9y1hjaozXyeqMA
 L+MayBoj3Cm6wc5SCeckhcjJ4Lm2XIU7M2c1IC3btw/V+//XB8UFtxEsYce6ROgEpu01
 J8uabifQbZ/MZlbruZxfCV+RvycWBMOE8UHrPVWn2w+GoIwGrtQv5nCn9SlIWfnSiWIq
 HWQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=RnN4Pl89tE4oGJrxfwKaqE/Zg00kWXDojSuymJXMutc=;
 b=Kh7Pg+lEuwy+06W/p3RIX176NrQ7blCZm/U8M/L90KlzUPfI4iIhaUnQb7L2nH2SOs
 yix3soossn1rfJntxTFWK0XbrnUZHoVLekKJB9nlhr1iLiNm+gnrGciRZ7eZxcchv99R
 S+TmY+nThIPKMwyneP7aU3XtPnutznvKkAPEo9oiemOd/yUL/3N/imIdmcXETobtr5la
 ShohYB0sB2qMZP7ebgW58RqJdvfL66+hwSJbTe8P2i7p5wNDdlfsmVih623HuFh8LTQk
 wMS9CnFaY5IszbebZAYCfCjsLHb9MMGqF6vaLphaEVppjDRIO9KDNYMw+RDjJt4TPHyl
 1B8Q==
X-Gm-Message-State: APjAAAV16AMC724MDzPNr5z84QRlMzI/tOhE12qPwu/wEssUtWtm282v
 FLhVvhowcJcvLBQupDOXYV/6cA==
X-Google-Smtp-Source: APXvYqxXpDlN7EbgJ6HFf1hkGp5YqdJ7MjCJUR9KfoWroVajwGuDiTuhWUPcZ5UZUmfxRV1bFWFqBA==
X-Received: by 2002:a17:902:a418:: with SMTP id
 p24mr769701plq.259.1567648263049; 
 Wed, 04 Sep 2019 18:51:03 -0700 (PDT)
Received: from leoy-ThinkPad-X240s ([240e:e0:f82b:586c:3108:a89c:3a26:34f3])
 by smtp.gmail.com with ESMTPSA id k14sm365167pfi.98.2019.09.04.18.50.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 04 Sep 2019 18:51:02 -0700 (PDT)
Date: Thu, 5 Sep 2019 09:50:32 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v1 1/3] perf cs-etm: Refactor instruction size handling
Message-ID: <20190905015032.GA10141@leoy-ThinkPad-X240s>
References: <20190830062421.31275-1-leo.yan@linaro.org>
 <20190830062421.31275-2-leo.yan@linaro.org>
 <20190903222215.GD25787@xps15>
 <20190904091916.GB27922@leoy-ThinkPad-X240s>
 <CANLsYkwZXyzWqK1oiEg0hb99J89KfdNPsFOmS7G1XJ0xvoUc0Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANLsYkwZXyzWqK1oiEg0hb99J89KfdNPsFOmS7G1XJ0xvoUc0Q@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_185104_117895_82D2C8AE 
X-CRM114-Status: GOOD (  33.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

Hi Mathieu,

On Wed, Sep 04, 2019 at 11:06:10AM -0600, Mathieu Poirier wrote:
> On Wed, 4 Sep 2019 at 03:19, Leo Yan <leo.yan@linaro.org> wrote:
> >
> > Hi Mathieu,
> >
> > On Tue, Sep 03, 2019 at 04:22:15PM -0600, Mathieu Poirier wrote:
> > > On Fri, Aug 30, 2019 at 02:24:19PM +0800, Leo Yan wrote:
> > > > There has several code pieces need to know the instruction size, but
> > > > now every place calculates the instruction size separately.
> > > >
> > > > This patch refactors to create a new function cs_etm__instr_size() as
> > > > a central place to analyze the instruction length based on ISA type
> > > > and instruction value.
> > > >
> > > > Signed-off-by: Leo Yan <leo.yan@linaro.org>
> > > > ---
> > > >  tools/perf/util/cs-etm.c | 44 +++++++++++++++++++++++++++-------------
> > > >  1 file changed, 30 insertions(+), 14 deletions(-)
> > > >
> > > > diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> > > > index b3a5daaf1a8f..882a0718033d 100644
> > > > --- a/tools/perf/util/cs-etm.c
> > > > +++ b/tools/perf/util/cs-etm.c
> > > > @@ -914,6 +914,26 @@ static inline int cs_etm__t32_instr_size(struct cs_etm_queue *etmq,
> > > >     return ((instrBytes[1] & 0xF8) >= 0xE8) ? 4 : 2;
> > > >  }
> > > >
> > > > +static inline int cs_etm__instr_size(struct cs_etm_queue *etmq,
> > > > +                                u8 trace_chan_id,
> > > > +                                enum cs_etm_isa isa,
> > > > +                                u64 addr)
> > > > +{
> > > > +   int insn_len;
> > > > +
> > > > +   /*
> > > > +    * T32 instruction size might be 32-bit or 16-bit, decide by calling
> > > > +    * cs_etm__t32_instr_size().
> > > > +    */
> > > > +   if (isa == CS_ETM_ISA_T32)
> > > > +           insn_len = cs_etm__t32_instr_size(etmq, trace_chan_id, addr);
> > > > +   /* Otherwise, A64 and A32 instruction size are always 32-bit. */
> > > > +   else
> > > > +           insn_len = 4;
> > > > +
> > > > +   return insn_len;
> > > > +}
> > > > +
> > > >  static inline u64 cs_etm__first_executed_instr(struct cs_etm_packet *packet)
> > > >  {
> > > >     /* Returns 0 for the CS_ETM_DISCONTINUITY packet */
> > > > @@ -938,19 +958,23 @@ static inline u64 cs_etm__instr_addr(struct cs_etm_queue *etmq,
> > > >                                  const struct cs_etm_packet *packet,
> > > >                                  u64 offset)
> > > >  {
> > > > +   int insn_len;
> > > > +
> > > >     if (packet->isa == CS_ETM_ISA_T32) {
> > > >             u64 addr = packet->start_addr;
> > > >
> > > >             while (offset > 0) {
> > > > -                   addr += cs_etm__t32_instr_size(etmq,
> > > > -                                                  trace_chan_id, addr);
> > > > +                   addr += cs_etm__instr_size(etmq, trace_chan_id,
> > > > +                                              packet->isa, addr);
> > > >                     offset--;
> > > >             }
> > > >             return addr;
> > > >     }
> > > >
> > > > -   /* Assume a 4 byte instruction size (A32/A64) */
> > > > -   return packet->start_addr + offset * 4;
> > > > +   /* Return instruction size for A32/A64 */
> > > > +   insn_len = cs_etm__instr_size(etmq, trace_chan_id,
> > > > +                                 packet->isa, packet->start_addr);
> > > > +   return packet->start_addr + offset * insn_len;
> > >
> > > This patch will work but from where I stand it makes things difficult to
> > > understand more than anything else.  It is also adding coupling between function
> > > cs_etm__instr_addr() and cs_etm__instr_size(), meaning the code needs to be
> > > carefully inspected in order to make changes to either one.
> >
> > My purpose is to use a same place to calculate the instruction
> > size, rather than to spread the duplicate codes in several different
> > functions.
> >
> > > Last but not least function cs_etm__instr_size() isn't used in the upcoming
> > > patches.  I really don't see what is gained here.
> >
> > Sorry that I forgot to commit my final change into patch 02.
> >
> > I planed to use cs_etm__instr_size() in patch 02; patch 02 has
> > function cs_etm__add_stack_event(), which also needs to get the
> > instruction size when it sends stack event.
> >
> > After apply patch 02, tools/perf/util/cs-etm.c will have below three
> > functions to caculate instruction size; this is the main reason I want
> > to refactor the code for instruction size.
> >
> >   cs_etm__instr_addr()
> >   cs_etm__copy_insn()
> >   cs_etm__add_stack_event()
> >
> > If this lets code more difficult to understand, will drop it.
> >
> 
> I agree with the consolidation but for that to work function
> cs_etm__instr_addr() needs to be refactored.  Since
> cs_etm__instr_size() is already taking care of checking the ISA type
> the while() loop in cs_etm__instr_addr() can be done regardless of the
> operation mode.  That way cs_etm__instr_size() can be changed at will
> without breaking anything.
> 
> The downside is that we are doing a few more iterations... Which isn't
> that big a deal considering we are in user space.  We can think about
> some optimisation if it is ever proven to be a bottleneck.
> 
> Let me know if you see a problem with that approach.

Yes, your approach is neat; I will try it in next patch version.

Thanks a lot for suggestion!

[...]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
