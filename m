Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 361111AD45A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 04:11:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oBKy2B81Lb6RrVa7ksLO0cKi8dce70ZkRbks1NNcVK8=; b=oJ/gczZo/+fizY
	MwT61WFjbqV4pep7VdPbmUMbuGJ7NpN+fTYbKLfIeZV+X83aKXe4VQb7RbtzS0o+5K4G93pQ/bWkl
	cUqI8S6ZSgrTr0R1Fg8xOLdhFj5z7MJLaX9CNVc+z83dQ+eNzmb4yd5IgXLAxaab/aEdUbHS3zvWW
	gm39ltSF6h/eCtGj6GZVsMwOROVjGLVpO3yZ32DidBwmrzOp2wbNZJ8SazRxt2EWNiWJ44O54G/7M
	4qcfsqgWwLitHRGhjXmwsuQ/m5vBGCbwOmrVFcJUnccKhGPMzQ+Rn32FAuFpj3vkJlbZOGJTNa63X
	F7urX7BnHvEv9JBzWH8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPGTg-0006ID-Og; Fri, 17 Apr 2020 02:11:36 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPGTS-0006HK-4P
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 02:11:25 +0000
Received: by mail-pl1-x643.google.com with SMTP id t4so373882plq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 19:11:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Ef3EavB2w1X9h4uH+JNa4JPXZ9W1ja0BOge+XoHtx1k=;
 b=fQNvpU+DK7jSBwnFkiBNvYsSVV0LjRinwCANVNVip3ffSFN24tXtxMka/lwY3x/iyN
 7JoKEIHLj4t/o93KSn1emvRI7BwJEWPcCeUeNfarJLDI25f3n5OrA8QJ0GAGn5DbquvV
 CF8ddu95yQxl5jN8EPdwo97trGQSfaPVNvbyW70f5iiCiXXbehcAwsjNbqIegL91H6Xk
 IjJ+uUSaqfb+3epWAfAB5Ig/q96YTgrSD/7CtnGvvqZxVv5jC2Y+LioSf/+pSXA30Z2l
 djjJucy3kMKwrSVWOilbQECm+hAUEW8aQxY4VX5+4K3hLLhjcldGa9TUydmgkOFgVchh
 EmuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Ef3EavB2w1X9h4uH+JNa4JPXZ9W1ja0BOge+XoHtx1k=;
 b=ejl/g4SsSaDmzV3P2yMpYpFleAd/UwPdiDUIWizn4E7FaD/ZlmjBi7cn9wiJFNMD+3
 wuBlJdmieVFtCihsyktEPhMs1Ukz0UBFarHmAWSPWUGSCHmDK5GtE4hQeAVhSeLxUrYy
 7nYWGHed8VzD9Iht8omiwvBECw+SqYtHLe8Sa+10iWHcvIjJHcHPFkNf0ifrN6vr9pJx
 osvlxs8gtFH2z0RrWr4ONFjFcztODda1PR+74hffeFQ/tekIntkYzu4SLF7/BmDQl+r/
 gV90KSuTEEc7f1hV7OAzGXtYMWiq6z4XRn+ZuiZhHGOV+CfrEjuYl89RruERuutNoWjN
 i+4Q==
X-Gm-Message-State: AGi0PuYXxXkBfZpCSG09hD6T4qBbZ04cbiL5rFyQIWNwoVz2lOy8eEBm
 bBu6ikWCUobIr3qYqUXKF5me3g==
X-Google-Smtp-Source: APiQypL8edZmGhJK8e7akmSp+lgiuiz3PlPcpzL0viCqes6neNZv3QlnG7Qkh3/8sPy0T8R9GicalQ==
X-Received: by 2002:a17:902:ab8b:: with SMTP id
 f11mr1256914plr.320.1587089480960; 
 Thu, 16 Apr 2020 19:11:20 -0700 (PDT)
Received: from leoy-ThinkPad-X240s ([2600:3c01::f03c:91ff:fe8a:bb03])
 by smtp.gmail.com with ESMTPSA id i9sm18256862pfd.148.2020.04.16.19.11.17
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 16 Apr 2020 19:11:20 -0700 (PDT)
Date: Fri, 17 Apr 2020 10:11:13 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH] perf: cs-etm: Update to build with latest opencsd version.
Message-ID: <20200417021113.GB5426@leoy-ThinkPad-X240s>
References: <20200415201420.15958-1-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200415201420.15958-1-mike.leach@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_191123_954154_04A6FEA8 
X-CRM114-Status: GOOD (  18.83  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [2600:3c01:0:0:f03c:91ff:fe8a:bb03 listed in] [zen.spamhaus.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Hi Mike,

On Wed, Apr 15, 2020 at 09:14:20PM +0100, Mike Leach wrote:
> OpenCSD version v0.14.0 adds in a new output element. This is represented
> by a new value in the generic element type enum, which must be added to
> the handling code in perf cs-etm-decoder to prevent build errors due to
> build options on the perf project.
> 
> This element is not currently used by the perf decoder.
> 
> Tested on Linux 5.7-rc1.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> ---
>  tools/perf/util/cs-etm-decoder/cs-etm-decoder.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c b/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c
> index cd92a99eb89d..da4737cbc2ab 100644
> --- a/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c
> +++ b/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c
> @@ -564,6 +564,10 @@ static ocsd_datapath_resp_t cs_etm_decoder__gen_trace_elem_printer(
>  		resp = cs_etm_decoder__set_tid(etmq, packet_queue,
>  					       elem, trace_chan_id);
>  		break;
> +	/* Unused packet types */
> +#if OCSD_VER_NUM >= 0x0E00
> +	case OCSD_GEN_TRC_ELEM_I_RANGE_NOPATH:
> +#endif

I don't think use macros to distinguish OpenCSD version number is a
good idea, this will get more and more code to checking version number
if later have more these kinds improvement and finally it's hard to
maintain.

Sugget just simply add the new case for
OCSD_GEN_TRC_ELEM_I_RANGE_NOPATH, considering if user uses an old version
OpenCSD and doesn't output this new element, the new added case doesn't
introduce issue for old OpenCSD lib.

Futhermore, suggest to change the code in
tools/build/feature/test-libopencsd.c, so can reflect the kernel 5.7
to require OpenCSD v0.14.0 or later version when build perf.

Thanks,
Leo

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
