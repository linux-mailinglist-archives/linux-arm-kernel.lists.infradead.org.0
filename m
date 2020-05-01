Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA041C1949
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 17:22:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pV++D85IqhSWHJHeeLrCD8pppo8gbGjr2fWyYvdxoRk=; b=hcKoxAnNQpuu0Q
	zSlhVeZCT42jce0LZFFdudg75Cr61VG0AItP95i9OM242kpRu5uGLSLDchmNYpDQ9YD9BODdeJC50
	HfvhQFLZ7aXQoa6ca3DG2XjbC8LF4wtvEHzogZueTnfV0eSDeGH6ieC2RNUNIuWzvtyqO2w3WBDEQ
	g3RbqX5il2c63WiHMd6DWh0ulJ/a2A3svU+tXHQU5/RidhJ4c7DAkB+dw64TahDTVqXNhb/gBRZc+
	p3DNO3LLTnKvmMTVAIHWxtOZYlIFu54W3835RmJsaUwDvg84klgY67V04APNfgGIa9I0CHQoLO8wD
	o1dz50dRQSXlFgdO0Feg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUXUS-0001bQ-Se; Fri, 01 May 2020 15:22:12 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUXUN-0001aX-1b
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 15:22:08 +0000
Received: by mail-pj1-x1041.google.com with SMTP id a7so22412pju.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 May 2020 08:22:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=aYtv1/voo7jDhfbxmnTy0yEnA7g2pq+CR4hTVmEAPqc=;
 b=rkecYhP8b6Qty2Gq1WbmprQqMuIPysQOrCwoH0d+IMetvB3POV1UqkP0+xWnrmHjtl
 +9idov6Acpw2GO0U1wa6IhnXy3L+m28ZkbNB8Rfus3nmMOeFtQF8CM+B2K4+GMhVjixY
 +vAHn4gP27yXJDZhIOsqtolFZzjZxs2XHG49sDqTetBi18h3EG6E1QtORULhMZHPRwh1
 flKTwi2/j2TCpXPtim/FFBR1il5TQfRPiELjWLDeBqHzs9KKSFvX2MdDJVwlPauY2Umc
 2Ed0CiR2t8WBwnqDAG7pTGquY/PGGOeu0g9Un34LmLvdU7hyUtk6k6ogHppnedANk+SK
 +QEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=aYtv1/voo7jDhfbxmnTy0yEnA7g2pq+CR4hTVmEAPqc=;
 b=Tg43MgZ6s8HkcJ/pPhgf/AiYJWn4s5iSbSmwWjPN3pAYxj0F877cn3BQSf71iFzqTR
 s9LBTpwTvR2/4tx8YXDuI19RskulZDyjarm64US2dOskmRayPZktcgVMPLRgNv/A0q78
 eGYo/l23q6VZ2c6PxOEmOtGHfNFHd5q40ENNhX0lRrNOHdt0uG4qT5XR7l+UYRGtzrcR
 9VXQMUjvksJ15I0UP/jOoSA/wwOd1Ms5k7M/2kWiQutKT8mthCiULBFlucR+OL+NA7XT
 oiAc66bLJ/87tF/DJzmuVCHT8Wz4RMNj4d7EC3TuH4NbXeeM6uf+BL2JrvQG6hKnQuqy
 Ukxw==
X-Gm-Message-State: AGi0PuZ4h/aP6mew0e/wx5BHo47scIcaLnqjkF9Mob6kihmQxLdwaSz2
 vTgFoNhB/NGcVu3vLPNszPkyKw==
X-Google-Smtp-Source: APiQypI/QjBHEDdnzOAMmpWQ5qTYvHgTE81LPIrw2zKRFWqErybHIncvoiytu4+aq1rS9YKiLAbkMA==
X-Received: by 2002:a17:90a:71c3:: with SMTP id m3mr87601pjs.17.1588346525878; 
 Fri, 01 May 2020 08:22:05 -0700 (PDT)
Received: from leoy-ThinkPad-X240s ([2600:3c01::f03c:91ff:fe8a:bb03])
 by smtp.gmail.com with ESMTPSA id k12sm2285858pgj.33.2020.05.01.08.22.01
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 01 May 2020 08:22:05 -0700 (PDT)
Date: Fri, 1 May 2020 23:22:02 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH v2] perf: cs-etm: Update to build with latest opencsd
 version.
Message-ID: <20200501152202.GB9650@leoy-ThinkPad-X240s>
References: <20200501143615.1180-1-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200501143615.1180-1-mike.leach@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_082207_090298_B4738948 
X-CRM114-Status: GOOD (  18.61  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [2600:3c01:0:0:f03c:91ff:fe8a:bb03 listed in] [zen.spamhaus.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mathieu.poirier@linaro.org, peterz@infradead.org,
 coresight@lists.linaro.org, linux-kernel@vger.kernel.org, acme@kernel.org,
 mingo@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 01, 2020 at 03:36:15PM +0100, Mike Leach wrote:
> OpenCSD version v0.14.0 adds in a new output element. This is represented
> by a new value in the generic element type enum, which must be added to
> the handling code in perf cs-etm-decoder to prevent build errors due to
> build options on the perf project.
> 
> This element is not currently used by the perf decoder.
> 
> Perf build feature test updated to require a minimum of 0.14.0
> 
> Tested on Linux 5.7-rc3.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>

Looks good to me, FWIW:

Reviewed-by: Leo Yan <leo.yan@linaro.org>

> ---
>  tools/build/feature/test-libopencsd.c           | 4 ++--
>  tools/perf/util/cs-etm-decoder/cs-etm-decoder.c | 2 ++
>  2 files changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/tools/build/feature/test-libopencsd.c b/tools/build/feature/test-libopencsd.c
> index 2b0e02c38870..1547bc2c0950 100644
> --- a/tools/build/feature/test-libopencsd.c
> +++ b/tools/build/feature/test-libopencsd.c
> @@ -4,9 +4,9 @@
>  /*
>   * Check OpenCSD library version is sufficient to provide required features
>   */
> -#define OCSD_MIN_VER ((0 << 16) | (11 << 8) | (0))
> +#define OCSD_MIN_VER ((0 << 16) | (14 << 8) | (0))
>  #if !defined(OCSD_VER_NUM) || (OCSD_VER_NUM < OCSD_MIN_VER)
> -#error "OpenCSD >= 0.11.0 is required"
> +#error "OpenCSD >= 0.14.0 is required"
>  #endif
>  
>  int main(void)
> diff --git a/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c b/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c
> index cd92a99eb89d..cd007cc9c283 100644
> --- a/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c
> +++ b/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c
> @@ -564,6 +564,8 @@ static ocsd_datapath_resp_t cs_etm_decoder__gen_trace_elem_printer(
>  		resp = cs_etm_decoder__set_tid(etmq, packet_queue,
>  					       elem, trace_chan_id);
>  		break;
> +	/* Unused packet types */
> +	case OCSD_GEN_TRC_ELEM_I_RANGE_NOPATH:
>  	case OCSD_GEN_TRC_ELEM_ADDR_NACC:
>  	case OCSD_GEN_TRC_ELEM_CYCLE_COUNT:
>  	case OCSD_GEN_TRC_ELEM_ADDR_UNKNOWN:
> -- 
> 2.17.1
> 
> _______________________________________________
> CoreSight mailing list
> CoreSight@lists.linaro.org
> https://lists.linaro.org/mailman/listinfo/coresight

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
