Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A95AADFCFC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 07:10:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cj09crPy5qKIJpSiLkoIRXSPk0n92l5AWHvYCFt/Hfk=; b=OLH3JFumnQ2Pbi
	Ns/1ZmzeMQOKuGjC2ElftKfBU6d5sNFHcHwW6TpnchdFH6NlimZe81SHa+5zYGaEE3dzcH2wAtYHr
	2yF/egIIXqh877i3VBsFlihpqUp2ZAQh+vDw/WTn5/zh9zKXdZABYonz7uEwuXmUFZTGjIDsKkiwF
	LW1z12DmHAxfjwfZmyqOsGJOMfuH/e7/7OEsZi5ShWvjpaimL2PJb+/yfkYYTiEZHLF2bIvt/c0HW
	2lsJPUwWr3GnRpVT9ecbaDMN8rEaZ/fZW/NGSJkssey24USv+O5mKBzZmyKIwpzuLAWfzoF4+MM6Q
	o7ttCET+ZqfP3QxkSICQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMmRT-0003Vb-Js; Tue, 22 Oct 2019 05:10:47 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMmRE-0003V5-Nn
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 05:10:34 +0000
Received: by mail-qt1-x842.google.com with SMTP id e14so5153957qto.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 22:10:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=+w/qzEw27aMbdNSzTHsuyi7AE3I1PGTPr3i5czPeWmY=;
 b=d18epoJOJ0/pv+lNYQywjIqfTmBcEV4Xe9ZM1R+1nkVFJ0k39xTxxsxkYvdimN1u8D
 wGdPIPRG6vg8TmeWT28uyJqs9P4kJKkzWrm9Lf1bhLFqtspGApUJsUHOeu/bHSxbKoQR
 FsB3F8RutqugqF0xleQHdXDJYvlYqjUVNuUIEA6BHdXkFFHCUpqfPeoFnWDOMF1UDdRu
 o2EgcCB1dGjn3jgIN33ra19bKI3mtq52W9jdEdB1pK1aTvcS+itAW8EmBTlQIKJG4KA2
 mRZWNZi+hDcDLcQPhJRVPCCVUtetWXz512HyX1AIo4968BWHUD5H0LIR2F6EkM7c4w5c
 WNeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+w/qzEw27aMbdNSzTHsuyi7AE3I1PGTPr3i5czPeWmY=;
 b=SB1/hkhCtxMw1TqA8nWs3z3fiXGlpzfZ00ko09VWXn8sZPkbLDRmfd44YXXF9PzyIE
 Js5y+GJAatXZqDJoh9gRFJtzVb2C3e7k+V8axPTeklQxFCGPkbv/H868G2PDcqCSj4GM
 eNar9TI3OtxFGay0GG6sILLiFYgJaM3/EP0HrMDOiBeqTlcJLjTwAbWwpc0H3H0ncheu
 HHQkd6HooRysnNJz7HC7jnUsby4i1M71kIEPXusTowPyrhFbfm8wJGhPhadsLLI8SHB5
 gdwlYJmuHGtKagS6f+LFIvhP07URDdJaMx8Fqfn9+A8oO8eIkCTKC+YI7faO0CKk4Gvf
 cOBA==
X-Gm-Message-State: APjAAAXveahiEzaAvx14iAfL4tIAUK4H3jwWwF7ur4ko6dPl1mHxL3h1
 LjQvK7VZJWubvqiVMQAhIlDP9g==
X-Google-Smtp-Source: APXvYqwUVrs5nyGdBFsOdfVGQj0yuFetc/Nm7EOzMo+7I/93O+mEndLG3kY9gALAfx/Mv4QZVHGLfQ==
X-Received: by 2002:ac8:28c4:: with SMTP id j4mr1506947qtj.303.1571721031756; 
 Mon, 21 Oct 2019 22:10:31 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li937-157.members.linode.com.
 [45.56.119.157])
 by smtp.gmail.com with ESMTPSA id z70sm5313857qkb.60.2019.10.21.22.10.25
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 21 Oct 2019 22:10:29 -0700 (PDT)
Date: Tue, 22 Oct 2019 13:10:20 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v3 1/6] perf cs-etm: Fix unsigned variable comparison to
 zero
Message-ID: <20191022051020.GC32731@leoy-ThinkPad-X240s>
References: <20191005091614.11635-1-leo.yan@linaro.org>
 <20191005091614.11635-2-leo.yan@linaro.org>
 <20191011201606.GC13688@xps15>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011201606.GC13688@xps15>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_221032_778552_168AA57D 
X-CRM114-Status: GOOD (  23.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Coresight ML <coresight@lists.linaro.org>, linux-kernel@vger.kernel.org,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathieu,

On Fri, Oct 11, 2019 at 02:16:06PM -0600, Mathieu Poirier wrote:
> On Sat, Oct 05, 2019 at 05:16:09PM +0800, Leo Yan wrote:
> > If the u64 variable 'offset' is a negative integer, comparison it with
> > bigger than zero is always going to be true because it is unsigned.
> > Fix this by using s64 type for variable 'offset'.
> > 
> > Signed-off-by: Leo Yan <leo.yan@linaro.org>
> > ---
> >  tools/perf/util/cs-etm.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> > index 4ba0f871f086..4bc2d9709d4f 100644
> > --- a/tools/perf/util/cs-etm.c
> > +++ b/tools/perf/util/cs-etm.c
> > @@ -940,7 +940,7 @@ u64 cs_etm__last_executed_instr(const struct cs_etm_packet *packet)
> >  static inline u64 cs_etm__instr_addr(struct cs_etm_queue *etmq,
> >  				     u64 trace_chan_id,
> >  				     const struct cs_etm_packet *packet,
> > -				     u64 offset)
> > +				     s64 offset)
> 
> In Suzuki's reply there was two choices, 1) move the while(offset > 0) to
> while (offset) or change the type of @offset to an s64.  Here we know offset
> can't be negative because of the 
>         tidq->period_instructions >= etm->instructions_sample_period 
> 
> in function cs_etm__sample().  As such I think option #1 is the right way to
> deal with this rather than changing the type of the variable.

I took sometime to use formulas to prove that 'offset' is possible to
be a negative value :)

Just paste the updated commit log at here for review:

  Pi: period_instructions
  Ie: instrs_executed
  Io: instrs_over
  Ip: instructions_sample_period

  Pi' = Pi + Ie   -> New period_instructions equals to the old
                     period_instructions + instrs_executed
  Io  = Pi' - Ip  -> period_instructions - instructions_sample_period

  offset = Ie - Io - 1
         = Ie - (Pi' - Ip) -1
	 = Ie - (Pi + Ie - Ip) -1
	 = Ip - Pi - 1

In theory, if Ip (instructions_sample_period) is small enough and Pi
(period_instructions) is bigger than Ip, then it will lead to the
negative value for 'offset'.

So let's see below command:

  perf inject --itrace=i1il128 -i perf.data -o perf.data.new

With this command, 'offset' is very easily to be a negative value when
handling packets; this is because if use the inject option 'i1', then
instructions_sample_period equals to 1; so:

  offset = 1 - Pi - 1
         = -Pi

Any Pi bigger than zero leads 'offset' to a negative value.

Thanks,
Leo Yan

> >  {
> >  	if (packet->isa == CS_ETM_ISA_T32) {
> >  		u64 addr = packet->start_addr;
> > @@ -1372,7 +1372,7 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
> >  		 * sample is reported as though instruction has just been
> >  		 * executed, but PC has not advanced to next instruction)
> >  		 */
> > -		u64 offset = (instrs_executed - instrs_over - 1);
> > +		s64 offset = (instrs_executed - instrs_over - 1);
> >  		u64 addr = cs_etm__instr_addr(etmq, trace_chan_id,
> >  					      tidq->packet, offset);
> >  
> > -- 
> > 2.17.1
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
