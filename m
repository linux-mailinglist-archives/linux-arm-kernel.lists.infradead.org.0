Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA08163963
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 02:32:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zxb3Zr81LRxt6LRi/tMclRaltXsnHgP6LJzjUAohJoo=; b=Wemh6EOAUCBPls
	dUXJsLcsMkydR2CPtAj1DuhstnuznF0xylUg9UBjWI0Z9bEpTMK7d6BdDZN7JMD+r7Ldx+S/TOE24
	VqIj70V8Sv3PlZoAiCJQ3z6NRQquN8Fr7dPkSbD9acyDoDiHa+J4sVVit+19nuBft689ahoxRSDgK
	aVrhraEireF0PXzC6o1bYGAJaWu7T8UO68kxdt7dMtz2UjXGTMW9FOrvD3jKT8QaovPgxJOg9wakv
	I3EX3HhDfgK01T9Tvwfvze413/hfQpyShNMOUv0WFNCujFkb0vR1TncDU7j+5IlCTcuukyVr1U8tj
	Evy3nVyXXf65CQUbwb0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4EEI-0007ot-HI; Wed, 19 Feb 2020 01:32:46 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4EDx-0007o3-PA
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 01:32:28 +0000
Received: by mail-pj1-x1044.google.com with SMTP id e9so1815206pjr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 17:32:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=rdSydlYDtK82PfAE/bEAcB+kfEvpRvEP8E9yrLU0z7E=;
 b=imgY3sLUfltWo0uKMUQBGNhdEFtihnDlh/hiuUlxqLNz8vYHiDlDnj+e+gidVVu2nZ
 VZSp7MRfTJMt3gVOOQPNThYytwCIpELBiwQ6yO0O+OpD6w0po6QmPtM8VL+jlBgoNp8v
 l6DcPZ5s5eNlVu+lyZPmsk5861zFqQIBumRWIrqsqwQ+wiiN4JB1CCQXKrGNfMYzVGQV
 YPxnnkUI1jCbz29HkrQ2DXoyz2ex8aHpwDMhkUbcLKOjKIcaXS9VRTXYswqvCjaKQxVI
 joUQlcwDiYYpzMU6tKsyII5/clCAVukg8j+q/pF2+rGGUQoa5jtzDFFrKbYQtrEY6/5L
 GDxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rdSydlYDtK82PfAE/bEAcB+kfEvpRvEP8E9yrLU0z7E=;
 b=XeDTqI7RyBHm5xWwzKrH9ZSg6niqtmobKjb/cMGICMCRhcWQL0Wg2PmTjZttE2IH7d
 9UUqaLczBYhqhT0btJOQ8wFI+rEeaukXvDoedjSBMOWKlAk/xs966cQoMmA6PhlEdrJl
 gHh3jyv5C+U1L4pJMI7hBrSvA8qjaRvs0Wpq248ie/DXaomrTYHbK4jrOw/uChaLlxdh
 UI0bAd3HVeMUjVq75dbrwEj0tKZH2vwgyTm63nEOOw7QtOcMTfwm3aWn9MAOZ0uOpxye
 0ZS8hHk80buTjx293QW2T78ZhMFoUuKtvH99h6RfObFrDxI2y7NOP5fVMXS5joTKxupq
 VyEw==
X-Gm-Message-State: APjAAAXPvP+sEMsMbH1ax2P2X5jXb5GhTC2fg5UcR0Pb286n1JH6U1CG
 PWSIgoIl/ZU5Ry7VaLSbUpJKmw==
X-Google-Smtp-Source: APXvYqwRPdAovkAZ2/O+M1SD4LO2zEZxW8I4CbrxngxJWSZSm6qZj8cDHOKrj+q0EdheibyTjfvJhg==
X-Received: by 2002:a17:902:c509:: with SMTP id
 o9mr23229451plx.112.1582075944675; 
 Tue, 18 Feb 2020 17:32:24 -0800 (PST)
Received: from leoy-ThinkPad-X240s ([2400:8902::f03c:91ff:fe3f:ee42])
 by smtp.gmail.com with ESMTPSA id a17sm244743pfo.146.2020.02.18.17.32.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 18 Feb 2020 17:32:23 -0800 (PST)
Date: Wed, 19 Feb 2020 09:32:14 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Subject: Re: [PATCH v4 0/5] perf cs-etm: Fix synthesizing instruction samples
Message-ID: <20200219013214.GA8932@leoy-ThinkPad-X240s>
References: <20200213094204.2568-1-leo.yan@linaro.org>
 <20200218184934.GA11448@xps15> <20200218193011.GB5365@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200218193011.GB5365@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_173225_845496_847934D1 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Coresight ML <coresight@lists.linaro.org>, linux-kernel@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Robert Walker <robert.walker@arm.com>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathieu, Arnaldo,

On Tue, Feb 18, 2020 at 04:30:11PM -0300, Arnaldo Carvalho de Melo wrote:

[...]

> > > Leo Yan (5):
> > >   perf cs-etm: Swap packets for instruction samples
> > >   perf cs-etm: Continuously record last branch
> > >   perf cs-etm: Correct synthesizing instruction samples
> > >   perf cs-etm: Optimize copying last branches
> > >   perf cs-etm: Fix unsigned variable comparison to zero
> > 
> > For all the patches in this set:
> > 
> > Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > 
> > Unless Arnaldo says otherwise, I suggest you send a new V5 with Mike's RB for
> > patch 3/5 and mine for all of them.  That way he doesn't have to edit the
> > patches when applying them.

Thanks for reviewing and suggestions.

> Yeah, that would make things easier for me, always appreciated.

Sure, will send out patch set V5.

Thanks,
Leo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
