Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6F24A7F29
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 11:19:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9iGQ2/yYv1Mlx7LYw48Oh1W8RSzxq6nuh+BdDWwmCUo=; b=GH0zKx9jUN5WBC
	TYZPzgSYtaluUS0nRoHdmeRh0oKkPIC3kgcafvJwUokkA1hHc3GqJmyrE/HPIYgRM1S9BpIIB8Q8i
	nEl9gKSBxG/oY01tHCq2fOhT67F8tW+sNEPUK/45iz/5eynqDSIXcDMr/0Da9OoW7T+IMSPTAuW2d
	fruAtj0JKtJnGXrX7VOMcOHooXEHmoIl5/tQXP7Qb2w+5JuUrlNviPpzJhXYoFVMt9ZDPudUao9Pc
	AsuLgzAA71hF3F9JCm0zfMFacPNhifRkukdnEw9pRP13oXVz8xKI8gBC5oiDDB7GVcgsDxzKk5hFL
	sP+3r35jqhwxdeHIz14Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5RRz-0000RO-Fn; Wed, 04 Sep 2019 09:19:39 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5RRl-0000Qx-RF
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 09:19:27 +0000
Received: by mail-yw1-xc43.google.com with SMTP id q7so378993ywe.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 02:19:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=OPjd5RoXO1B0dvJpxf2pMwsgeferMb+CMB+0Se3R+aw=;
 b=unXN/RreWEWxBaEhGFvnUFZekaDtmpmXJg5Q42kLwiPiVSkfsYin0dYhw4tnjEfHd+
 MysHc5qx2xwiDUaOlHzMTEsGAVFXGnB5KbCeRFPW3I2xjkoG1876UQxAmBewrq5ZeV6C
 KMgQPXqudZvzCh40y12n3CDnd1nBZxDGRQ+eZ81n9F6DWLCu0c6KPrHep5/z60OkaT8G
 tYBjCn+TelwAn8Z6miw2wcJRwKpgkgeIadifxyHOpwgXFpQT3/3kQ2hDrTZtRIXJQ0rb
 jEGZi34qxTlKdE2izWAGxbwiu2UuysDrmPBatAagJkPKpWu6DhdKyOHFsEnMJ8QzSUAJ
 72yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=OPjd5RoXO1B0dvJpxf2pMwsgeferMb+CMB+0Se3R+aw=;
 b=D4pQXP8gdCXAj+pHZbHqkSbUWDinxNh0orFTVxs0sY+7Xy5jEDdeiMjnvPtTQJekHB
 Z/S2yrmS9jTJortR0JcMO9b8OcAoZlykPK3ZxRciNvhDTBYrAUx+phEitnWw1XgwytRp
 HXV4ssmjS2O3aq93FVmLrNx2aOZOWtDllVMAcxMmW07CQ4rUJilC/T+QZOLotf/z0Mn9
 tHHlaKHEP9zH93oUqr5hba4qBkvNM4E6nv+py99MHSpV4tA7LdmywA+qghnZQgJHrkql
 KPj4RcIbMNtXvIhbjBX0fvg1PgwhPDlop+lbtFuPXvBDqEZkoIOPQmwYA4mz7wwBYox9
 +TAA==
X-Gm-Message-State: APjAAAUPVZ3MaaJqTwnWH4TMwfsV2S/ua9Ih/inEtsoQ9DwsYa98GNqF
 74cBNybQw/OBkaT9ElEOdQ29Pg==
X-Google-Smtp-Source: APXvYqz47cWxK4IGcklYRoE1hotXBCyaLIhAESacqRHHAXJkXrQyR3CVeim/mz6R+LKakgY02qLGtA==
X-Received: by 2002:a81:1c0c:: with SMTP id c12mr25444005ywc.262.1567588764397; 
 Wed, 04 Sep 2019 02:19:24 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li1320-244.members.linode.com.
 [45.79.221.244])
 by smtp.gmail.com with ESMTPSA id 10sm2038410ywf.60.2019.09.04.02.19.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 04 Sep 2019 02:19:23 -0700 (PDT)
Date: Wed, 4 Sep 2019 17:19:16 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v1 1/3] perf cs-etm: Refactor instruction size handling
Message-ID: <20190904091916.GB27922@leoy-ThinkPad-X240s>
References: <20190830062421.31275-1-leo.yan@linaro.org>
 <20190830062421.31275-2-leo.yan@linaro.org>
 <20190903222215.GD25787@xps15>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190903222215.GD25787@xps15>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_021925_891136_76F00EB9 
X-CRM114-Status: GOOD (  25.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
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
 linux-kernel@vger.kernel.org, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Namhyung Kim <namhyung@kernel.org>,
 Robert Walker <Robert.Walker@arm.com>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathieu,

On Tue, Sep 03, 2019 at 04:22:15PM -0600, Mathieu Poirier wrote:
> On Fri, Aug 30, 2019 at 02:24:19PM +0800, Leo Yan wrote:
> > There has several code pieces need to know the instruction size, but
> > now every place calculates the instruction size separately.
> > 
> > This patch refactors to create a new function cs_etm__instr_size() as
> > a central place to analyze the instruction length based on ISA type
> > and instruction value.
> > 
> > Signed-off-by: Leo Yan <leo.yan@linaro.org>
> > ---
> >  tools/perf/util/cs-etm.c | 44 +++++++++++++++++++++++++++-------------
> >  1 file changed, 30 insertions(+), 14 deletions(-)
> > 
> > diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> > index b3a5daaf1a8f..882a0718033d 100644
> > --- a/tools/perf/util/cs-etm.c
> > +++ b/tools/perf/util/cs-etm.c
> > @@ -914,6 +914,26 @@ static inline int cs_etm__t32_instr_size(struct cs_etm_queue *etmq,
> >  	return ((instrBytes[1] & 0xF8) >= 0xE8) ? 4 : 2;
> >  }
> >  
> > +static inline int cs_etm__instr_size(struct cs_etm_queue *etmq,
> > +				     u8 trace_chan_id,
> > +				     enum cs_etm_isa isa,
> > +				     u64 addr)
> > +{
> > +	int insn_len;
> > +
> > +	/*
> > +	 * T32 instruction size might be 32-bit or 16-bit, decide by calling
> > +	 * cs_etm__t32_instr_size().
> > +	 */
> > +	if (isa == CS_ETM_ISA_T32)
> > +		insn_len = cs_etm__t32_instr_size(etmq, trace_chan_id, addr);
> > +	/* Otherwise, A64 and A32 instruction size are always 32-bit. */
> > +	else
> > +		insn_len = 4;
> > +
> > +	return insn_len;
> > +}
> > +
> >  static inline u64 cs_etm__first_executed_instr(struct cs_etm_packet *packet)
> >  {
> >  	/* Returns 0 for the CS_ETM_DISCONTINUITY packet */
> > @@ -938,19 +958,23 @@ static inline u64 cs_etm__instr_addr(struct cs_etm_queue *etmq,
> >  				     const struct cs_etm_packet *packet,
> >  				     u64 offset)
> >  {
> > +	int insn_len;
> > +
> >  	if (packet->isa == CS_ETM_ISA_T32) {
> >  		u64 addr = packet->start_addr;
> >  
> >  		while (offset > 0) {
> > -			addr += cs_etm__t32_instr_size(etmq,
> > -						       trace_chan_id, addr);
> > +			addr += cs_etm__instr_size(etmq, trace_chan_id,
> > +						   packet->isa, addr);
> >  			offset--;
> >  		}
> >  		return addr;
> >  	}
> >  
> > -	/* Assume a 4 byte instruction size (A32/A64) */
> > -	return packet->start_addr + offset * 4;
> > +	/* Return instruction size for A32/A64 */
> > +	insn_len = cs_etm__instr_size(etmq, trace_chan_id,
> > +				      packet->isa, packet->start_addr);
> > +	return packet->start_addr + offset * insn_len;
> 
> This patch will work but from where I stand it makes things difficult to
> understand more than anything else.  It is also adding coupling between function
> cs_etm__instr_addr() and cs_etm__instr_size(), meaning the code needs to be
> carefully inspected in order to make changes to either one.

My purpose is to use a same place to calculate the instruction
size, rather than to spread the duplicate codes in several different
functions.

> Last but not least function cs_etm__instr_size() isn't used in the upcoming
> patches.  I really don't see what is gained here. 

Sorry that I forgot to commit my final change into patch 02.

I planed to use cs_etm__instr_size() in patch 02; patch 02 has
function cs_etm__add_stack_event(), which also needs to get the
instruction size when it sends stack event.

After apply patch 02, tools/perf/util/cs-etm.c will have below three
functions to caculate instruction size; this is the main reason I want
to refactor the code for instruction size.

  cs_etm__instr_addr()
  cs_etm__copy_insn()
  cs_etm__add_stack_event()

If this lets code more difficult to understand, will drop it.

Thanks,
Leo Yan

> >  }
> >  
> >  static void cs_etm__update_last_branch_rb(struct cs_etm_queue *etmq,
> > @@ -1090,16 +1114,8 @@ static void cs_etm__copy_insn(struct cs_etm_queue *etmq,
> >  		return;
> >  	}
> >  
> > -	/*
> > -	 * T32 instruction size might be 32-bit or 16-bit, decide by calling
> > -	 * cs_etm__t32_instr_size().
> > -	 */
> > -	if (packet->isa == CS_ETM_ISA_T32)
> > -		sample->insn_len = cs_etm__t32_instr_size(etmq, trace_chan_id,
> > -							  sample->ip);
> > -	/* Otherwise, A64 and A32 instruction size are always 32-bit. */
> > -	else
> > -		sample->insn_len = 4;
> > +	sample->insn_len = cs_etm__instr_size(etmq, trace_chan_id,
> > +					      packet->isa, sample->ip);
> >  
> >  	cs_etm__mem_access(etmq, trace_chan_id, sample->ip,
> >  			   sample->insn_len, (void *)sample->insn);
> > -- 
> > 2.17.1
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
