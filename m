Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B04156EEC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 06:47:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q/xaOsfoTtYFp9bD9qxRIh3XwSg1lplVYv+CLCgslPU=; b=QGG807xUW57jka
	LMW8Q0q0CkQbsFMVFFx2WC/EYvglwCFVvJX/3skmKwOGqdcnb5/AubtfJu9536lPhU+w9SQg/i42W
	npaehZyzflrEcczaos9jkbcP/vFKlaEV2bEafF2FvwAlYzrCyBAz5XeX/Hdh2iZnbx758iimrg/7S
	B8CspNqH8UODftx/tSkQinN9bdC9SEGm2ONTVJE+IYxjKMU4MXQOG3+IlhVOiH/vG0yB7D+cEOql4
	xQAGx4wXYq0aw+SqFhx+RgQ8OZBsgq47zQ2OMltTLjtnYXj8X0G21ootZnnz9q+zhto0LqFiQ0uNl
	076T8OM2y9TdSmPC+SXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j11ue-00013t-D0; Mon, 10 Feb 2020 05:47:16 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j11uY-00013V-1e
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 05:47:11 +0000
Received: by mail-pj1-x1042.google.com with SMTP id j17so3718935pjz.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 09 Feb 2020 21:47:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=N250XzNFcXGssP4jZpuO4maoc80G4uYsrWErXgHkfUw=;
 b=UEsht3AxOIeYxhd5r3fH/MuXjVu5nQcB3xWBzECPsd9emhQsi+ceOuj97Z9ZYDlFh4
 IfJQnEPLTqi+iHVF11sQPcG0zi/sMoH1VHQViizdqai0NIw/n55AtdN0aqXdOTrknMs0
 UAj4I1aNgt3WKsdVtHuaMI7baWGsuM6blPWkfrWsSx3HJtcRZzVMcuKGMUI3jLS59tTr
 prEMBy99N2CGo9YHZPL6+Mre6FX4IZCvUAHbC5R1ShDHLhfhWla/C/uORtLntmn4lrLa
 7k1sy0qiDRJ7WkLBL+A3yymlsI7a4jQZ3Gl/AS3WOfKSMHJJ6kD7znsyFQf7q9j0uMpr
 eW6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=N250XzNFcXGssP4jZpuO4maoc80G4uYsrWErXgHkfUw=;
 b=RKJvGrtNDFyvNu9n+zXHxDpm3uszHWLLU2VW31L2sHZrB0SRRl7j9NVV/mWHrbREwr
 Tnq0sIZxYQqrDEpnO2uAmx7fPHAOD5QiKv4go2TzYBmAEDRHGsaNOm4hhgCamDOQtjna
 ZxcnkbhPtAlSm8wpMQ7GnTBFkctjEmBN4B6i4Wf68F5gRI2XxMsXPZbiJDTDcpPq4YXx
 k6NYpFa7RztnzWMVHbb1lZ2rFrPe1A8AteBy5acYKIGQsxGuUmecyo/M7B06fhNGipkI
 HV4vqsUhm2GaC44I8cFCUXB+yx0hdM+ex1dr9L/lNmllc9/bQkLr87y7QaeElfqn7ayQ
 wehw==
X-Gm-Message-State: APjAAAV2mWNQxdk4JHK8FTZHeKL25zMZsBu8rEiAP1fNuHe2JEjgLUkt
 4H89CNUOrUCJ+AQ5SANNEgUXLg==
X-Google-Smtp-Source: APXvYqzM6Age8nEEkvn6vJ/0/2T8pa+DjK6Vy+Hhy72SxDF/EHbs/7r4P7zkbFqUQpP8Jw74LMa9Ww==
X-Received: by 2002:a17:90a:f88:: with SMTP id 8mr19436591pjz.72.1581313628411; 
 Sun, 09 Feb 2020 21:47:08 -0800 (PST)
Received: from leoy-ThinkPad-X240s ([2400:8902::f03c:91ff:fe3f:ee42])
 by smtp.gmail.com with ESMTPSA id s13sm18453774pjp.1.2020.02.09.21.46.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 09 Feb 2020 21:47:07 -0800 (PST)
Date: Mon, 10 Feb 2020 13:46:53 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH v4 1/5] perf cs-etm: Refactor instruction size handling
Message-ID: <20200210054653.GB10753@leoy-ThinkPad-X240s>
References: <20200203020716.31832-1-leo.yan@linaro.org>
 <20200203020716.31832-2-leo.yan@linaro.org>
 <CAJ9a7Vi37DAZ0q78MahmMQqSxD68Rphaw0t5cMsX3gDk8PA3DA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJ9a7Vi37DAZ0q78MahmMQqSxD68Rphaw0t5cMsX3gDk8PA3DA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_214710_097725_83898509 
X-CRM114-Status: GOOD (  18.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Coresight ML <coresight@lists.linaro.org>, linux-kernel@vger.kernel.org,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Robert Walker <robert.walker@arm.com>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mike,

On Thu, Feb 06, 2020 at 12:36:43PM +0000, Mike Leach wrote:
> Hi Leo,
> 
> On Mon, 3 Feb 2020 at 02:07, Leo Yan <leo.yan@linaro.org> wrote:
> >
> > cs-etm.c has several functions which need to know instruction size
> > based on address, e.g. cs_etm__instr_addr() and cs_etm__copy_insn()
> > two functions both calculate the instruction size separately with its
> > duplicated code.  Furthermore, adding new features later which might
> > require to calculate instruction size as well.
> >
> > For this reason, this patch refactors the code to introduce a new
> > function cs_etm__instr_size(), this function is central place to
> > calculate the instruction size based on ISA type and instruction
> > address.
> >
> > For a neat implementation, cs_etm__instr_addr() will always execute the
> > loop without checking ISA type, this allows cs_etm__instr_size() and
> > cs_etm__instr_addr() have no any duplicate code with each other and both
> > functions are independent and can be changed separately without breaking
> > anything.  As a side effect, cs_etm__instr_addr() will do a few more
> > iterations for A32/A64 instructions, this would be fine if consider perf
> > is a tool running in the user space.
> >
> 
> I prefer to take the optimisation win where I can - I always do in the
> trace decoder when counting instructions over a range.
> Consider that you can be processing MB of trace data, and most likely
> that will be A64/A32 on a lot of the current and future platforms.
> 
> Therefore I would keep the useful cs_etm__instr_size() function, but
> also keep a single ISA check in cs_etm__instr_addr() to do
> the (addr + offset * 4) calculation for non T32.

Understand.  Will refine the code by following this suggestion.

Thanks,
Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
