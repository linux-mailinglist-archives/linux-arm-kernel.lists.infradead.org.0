Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20545A76DD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 00:22:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aDAJ8JKbbUzrUSHGtOBtj5P/33vmuc6I2fUF+rJsyMg=; b=RQwQ37xJFKeYff
	/EmKmZOQ4pD7RWifGDJm4J/dSr9KEH8BwvOj0NLXwTTMz0BSw0DO1uxQScllN4Ulno8ktKrwokrME
	O98jwIGYEoa1A3tpvZM92UxpTXDihxZ68+HF4304+SAtbXRnVxwsZyOxiKjlpabfzt3Z/2wPw4Amq
	fXz3r2b9KaBIqoCp8Nx/M3M+gvIYKizxjq+ECbVWj/C0A29Ek+oqXvQnFhiTUOiVS/o122kjbGlzn
	JZVpVaA3/FuNiQbDH5UoETKHt89UQ7r9E6w9brhol6M/sB6goRmZ2FcvOz2dKUR9Ouph/FeM6bat1
	ivWSNAnv9DTiyAArrqmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5HC4-0004Cp-Qo; Tue, 03 Sep 2019 22:22:33 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5HBr-0004Bf-NA
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 22:22:21 +0000
Received: by mail-pl1-x642.google.com with SMTP id b10so3493429plr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 15:22:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=v4D8nB92vDCp2Gu6/DC3WBi67V3T8X58MNnsX5mRdAo=;
 b=LG3TxYvV9qhgeMHFqVxsk5NsjUnYzE2kFjgNVnJpVkLEq0e1eLrXrf+fvBYCOY8Czx
 D9NkR73bqj6WPF17RfV9s1ZvaTwsYbLCFveVjSTVrR46DVplSqYN4yLEjs/Zux5PtX84
 BDvsnVXWvLQzwZJTEkbQe/Fw0lses2QKJkpAj25mSENKmsbzEMR761dbPCX6D1hm4rKq
 0vGr4qQLGtxcyCZU23v1jFDlKha89gcQbBZKwFKJKSIKI8E5XCIJetwjY0NSa2Ccw3mA
 roMaSJYg21Cjc0rEiNwBkdqeZK9c4xvG668v0iHzE9g6lXQA4QUhDiUxgGhKkertjlC8
 Rbsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=v4D8nB92vDCp2Gu6/DC3WBi67V3T8X58MNnsX5mRdAo=;
 b=rE7Zcr/TSPqSZePHtaeV19igUrCfWf0lvLMef/wQjO+dZGbUn5uvCTgU1Ba7pic/Cd
 +PnO+F5W/epqMaattH3XGU6jd4JNoXBGZ+rNlGYpCKeBhJzMHUap/DKhTuIfZi8ieeRS
 dYhVwglKNm6s0df0N+wTJv0wNoKTXI2jIca4+pSsFyYUeIv1T0udDrmsix7P+asXq51a
 bCgiklTMI87KJ5820mommkrkFv+vkdedK8dtOph4+pyZR92J9ctlAiEyw3TV5uPM+IgM
 hpdDExl0wr95vDL8Zf1eBwggcY9ONBbtYfnLBCmhAWwTAxJWKG7WhRDW9zWRFB1TKfdU
 0k6w==
X-Gm-Message-State: APjAAAVabnKl2VkYQRZqhqEjMVy0/Mo0UwITYDqNLMq094ppYslYmjgl
 y6Qmpb2uoVjNmpysIs4+vf8rYw==
X-Google-Smtp-Source: APXvYqyn5DzKN1/Lwwg6UhF6U+SKJnKFnP10NW5sjtU6sjuAwoeuCDBEzngbRwIbXbX2lzathex4ZQ==
X-Received: by 2002:a17:902:e584:: with SMTP id
 cl4mr36593809plb.160.1567549338531; 
 Tue, 03 Sep 2019 15:22:18 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id r23sm554511pjo.22.2019.09.03.15.22.17
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 03 Sep 2019 15:22:17 -0700 (PDT)
Date: Tue, 3 Sep 2019 16:22:15 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH v1 1/3] perf cs-etm: Refactor instruction size handling
Message-ID: <20190903222215.GD25787@xps15>
References: <20190830062421.31275-1-leo.yan@linaro.org>
 <20190830062421.31275-2-leo.yan@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830062421.31275-2-leo.yan@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_152219_770378_E0537318 
X-CRM114-Status: GOOD (  22.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

On Fri, Aug 30, 2019 at 02:24:19PM +0800, Leo Yan wrote:
> There has several code pieces need to know the instruction size, but
> now every place calculates the instruction size separately.
> 
> This patch refactors to create a new function cs_etm__instr_size() as
> a central place to analyze the instruction length based on ISA type
> and instruction value.
> 
> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> ---
>  tools/perf/util/cs-etm.c | 44 +++++++++++++++++++++++++++-------------
>  1 file changed, 30 insertions(+), 14 deletions(-)
> 
> diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> index b3a5daaf1a8f..882a0718033d 100644
> --- a/tools/perf/util/cs-etm.c
> +++ b/tools/perf/util/cs-etm.c
> @@ -914,6 +914,26 @@ static inline int cs_etm__t32_instr_size(struct cs_etm_queue *etmq,
>  	return ((instrBytes[1] & 0xF8) >= 0xE8) ? 4 : 2;
>  }
>  
> +static inline int cs_etm__instr_size(struct cs_etm_queue *etmq,
> +				     u8 trace_chan_id,
> +				     enum cs_etm_isa isa,
> +				     u64 addr)
> +{
> +	int insn_len;
> +
> +	/*
> +	 * T32 instruction size might be 32-bit or 16-bit, decide by calling
> +	 * cs_etm__t32_instr_size().
> +	 */
> +	if (isa == CS_ETM_ISA_T32)
> +		insn_len = cs_etm__t32_instr_size(etmq, trace_chan_id, addr);
> +	/* Otherwise, A64 and A32 instruction size are always 32-bit. */
> +	else
> +		insn_len = 4;
> +
> +	return insn_len;
> +}
> +
>  static inline u64 cs_etm__first_executed_instr(struct cs_etm_packet *packet)
>  {
>  	/* Returns 0 for the CS_ETM_DISCONTINUITY packet */
> @@ -938,19 +958,23 @@ static inline u64 cs_etm__instr_addr(struct cs_etm_queue *etmq,
>  				     const struct cs_etm_packet *packet,
>  				     u64 offset)
>  {
> +	int insn_len;
> +
>  	if (packet->isa == CS_ETM_ISA_T32) {
>  		u64 addr = packet->start_addr;
>  
>  		while (offset > 0) {
> -			addr += cs_etm__t32_instr_size(etmq,
> -						       trace_chan_id, addr);
> +			addr += cs_etm__instr_size(etmq, trace_chan_id,
> +						   packet->isa, addr);
>  			offset--;
>  		}
>  		return addr;
>  	}
>  
> -	/* Assume a 4 byte instruction size (A32/A64) */
> -	return packet->start_addr + offset * 4;
> +	/* Return instruction size for A32/A64 */
> +	insn_len = cs_etm__instr_size(etmq, trace_chan_id,
> +				      packet->isa, packet->start_addr);
> +	return packet->start_addr + offset * insn_len;

This patch will work but from where I stand it makes things difficult to
understand more than anything else.  It is also adding coupling between function
cs_etm__instr_addr() and cs_etm__instr_size(), meaning the code needs to be
carefully inspected in order to make changes to either one.

Last but not least function cs_etm__instr_size() isn't used in the upcoming
patches.  I really don't see what is gained here. 
 
Thanks,
Mathieu

>  }
>  
>  static void cs_etm__update_last_branch_rb(struct cs_etm_queue *etmq,
> @@ -1090,16 +1114,8 @@ static void cs_etm__copy_insn(struct cs_etm_queue *etmq,
>  		return;
>  	}
>  
> -	/*
> -	 * T32 instruction size might be 32-bit or 16-bit, decide by calling
> -	 * cs_etm__t32_instr_size().
> -	 */
> -	if (packet->isa == CS_ETM_ISA_T32)
> -		sample->insn_len = cs_etm__t32_instr_size(etmq, trace_chan_id,
> -							  sample->ip);
> -	/* Otherwise, A64 and A32 instruction size are always 32-bit. */
> -	else
> -		sample->insn_len = 4;
> +	sample->insn_len = cs_etm__instr_size(etmq, trace_chan_id,
> +					      packet->isa, sample->ip);
>  
>  	cs_etm__mem_access(etmq, trace_chan_id, sample->ip,
>  			   sample->insn_len, (void *)sample->insn);
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
