Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC2E1C40C2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 19:06:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+VmLH7b+1AH2MZedIflLIlKbiP8O0MpCFcxA2RFeGQg=; b=oE9j401pwcJeAk
	br54hjUagA/FiAb6fuCffN52sif/70IfgTgHgEuwCmiljuAudSu/QS8hY1a9cW/mWkdOkC6qtj3GK
	9d4voi/6eCpnPSiWE4UNf/ukFxsjKK79EmZb6k1YQBG+8VF2Wt2vMe5PVLARWBHNy6Lc0EBW031l+
	EHEZyG+o/yfrP4Ucr9uF9m9PdVyY/ySq5r2nP+3tJrsZWTx2GeC3KRvc3i01OpWeif6enHFXWok/V
	CsP9M29PlH7BJMqwgyyOZQWoDCRCUaB1LvlJAjXbeWQfCs7wpaqvqoaQL4acIsDPFV9oYvHMLTrBH
	/57fpXMYlqBEa9DMY1BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVeY2-0001qR-UA; Mon, 04 May 2020 17:06:30 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVeXt-0001pr-Vw
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 17:06:23 +0000
Received: by mail-pf1-x444.google.com with SMTP id p25so5798589pfn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 10:06:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=hOLepqed3UQaNvtgfRJXbkhQgEQqrYEDd1UifYihdWI=;
 b=F5494cAVbA73+IZpCybURR8VGXi3uVGa8FLmiomSjkltiRQtXI6xL/jeGHk4AAlW5E
 Zd3tt+ZiuQAiYmlkCS8GUZ5Kk0Mucf73ZsKhYEuY2ovDsaDr8M0G7D5IBfPYa3mZCe+X
 +ACkS7l5lzkPT/mfjoPHwTTQgTSqRfA5EOFIKt1H1X5ZvS3cgc3+LB1p/sP6XZIT6wt0
 bhwzwq1XjRtzN+GZ20nx42/S14230YxxIg09Phgd+RZaJZdQH1UTYh3sTkKASVfGFsYW
 aDGHsZlruVpeA1T/ysH/Gy3ohccx1l0o4F7Mb9na2rwKmTl313cb0BT8wQ9wvxaF3q6T
 E+4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hOLepqed3UQaNvtgfRJXbkhQgEQqrYEDd1UifYihdWI=;
 b=OoPvdWiSnozVpSSh5o66kJJcdpg2VThypOKEPzUxZsHFfaPpKT0dOkP8xcMnv9Ndow
 zrZd5eRKQG8OQGPgQr3LR8wku8cX/fzFSezL25zNfKO1+2GrJ6y3R++VCVcz/fcCIB5J
 Kn/VkbrVKNJaJsE77EtkAsX3oC2+NZ9ou13qnqRHJmq+sXZApprWfAUgnH4qQFL9jxfI
 U0rg4tzXylacGRnAA3iLrFTKb3nR5OM+lU842ZdMjd6QgSEy4AIi/vCO5tPxaG2AfhLL
 oEqpDvw0EafXDX/uic1De9hPDqzvt1Kp1K4WfCmLLPOhVB85rWvEc3nC0+lC9hovHCov
 IEmA==
X-Gm-Message-State: AGi0PuaGlXLpLOmjmanuZ3dufFLl6uLcgajGIVrBGmhG4oxlV2/RjvJ8
 bsceqpZyUZUzLPAW26gs5ntXqA==
X-Google-Smtp-Source: APiQypLOlELuFhW8RMXd2kyzGdHeTpdyD4q0k+CVpKadEQKfNWeZCLiYHpeQS2U74qxiNpEXZ3n+jQ==
X-Received: by 2002:a63:a36f:: with SMTP id v47mr13065286pgn.242.1588611981346; 
 Mon, 04 May 2020 10:06:21 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id o9sm48674pjp.4.2020.05.04.10.06.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 10:06:20 -0700 (PDT)
Date: Mon, 4 May 2020 11:06:18 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH v2] perf: cs-etm: Update to build with latest opencsd
 version.
Message-ID: <20200504170618.GA517@xps15>
References: <20200501143615.1180-1-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200501143615.1180-1-mike.leach@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_100622_023336_BBD1FB34 
X-CRM114-Status: GOOD (  17.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: suzuki.poulose@arm.com, peterz@infradead.org, coresight@lists.linaro.org,
 linux-kernel@vger.kernel.org, acme@kernel.org, mingo@redhat.com,
 linux-arm-kernel@lists.infradead.org
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

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

>  	case OCSD_GEN_TRC_ELEM_ADDR_NACC:
>  	case OCSD_GEN_TRC_ELEM_CYCLE_COUNT:
>  	case OCSD_GEN_TRC_ELEM_ADDR_UNKNOWN:
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
