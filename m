Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3A91C1C6C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 19:59:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SX8V4GaIGG/7a3WLV6VY/IvaK3/3dpIXf3ZtAEiKHlk=; b=e8nHRB32dp3vW5
	UH9qybUncN5belkPiFaLwMSflVbn4HiMbeHqb8DbclPbXdlnGuWvNh9m4zKBWGA3LgGFt6u3UtitI
	zdzvQx/XAyhsCKGjvHFR5AElmJS9RfQpE05jdUu0zD4qj2FPpjK59GvasL+u9glZ88wppsjSWIXOY
	HGefODihS1QvjrT8D6IL32QdFPP6fMgUqh7Nd+IsrEsqDvZj6VRHjvBNKLyonByQmoywXI0WYPvLo
	zkwaGaQKnLIT2x0SpdAPLz3XzhhjyeA7z+yKLqASVVSLrxQzI+eZiYOEWT9EW5pU7vU9vWhJ34S+Q
	1FeAXjffyfITj9M8gh3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUZx0-0004mz-4h; Fri, 01 May 2020 17:59:50 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUZwt-0004ku-6M
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 17:59:44 +0000
Received: by mail-pg1-x542.google.com with SMTP id s18so4851000pgl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 May 2020 10:59:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=SrJ+suZtBWr1oaesi/k2ktaEJnaAc56s/fpYYwm6YkQ=;
 b=rtUe86ofD35Jm4kswBmEsEiDvYps/sFLvc+ucRqtIMN6Wg3XEGcRYzZyWhpnEWffql
 I3cAVYkpNiJg9tmvu7bXzxraGLxCbRGRO4ZxtZkJohoMaBUoJdbTCyYKximei2dOynJ3
 hxG6dZLTt74LX5VnwHPk1A1McsjT/SzfbUN1AkGAUJMPYcY8CHlx5nZ5z7wEiqkT4tU6
 ArTfBHszH1/lrdfolV+z/4bLsFO7PgN+KXYar26fPiH2TFLda7soTzqU5Ks1iXxpQ7Xl
 lhRMVyBkTCHNR9RhjR++rAN8EYAFapQFr+yPZ2+hm8nhAtuoAAUy1pE5YWIx7KXTNgj1
 Q2bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=SrJ+suZtBWr1oaesi/k2ktaEJnaAc56s/fpYYwm6YkQ=;
 b=AYgHHuEaUBaaMAf19lE0fsawpcdFqG3YFFYsjMHEAzXv8kMfDc/zQ4NKmcn30fNc5Z
 Y5VXAueMBYQlnfuq8S0noPFTQl0IRcj8yFqLynv1rdycoTH4v6oVM718uCK4ynxkFtrb
 w5bcIr/oP+tdwSfxhKe22KsoGSlmSVz+mz9G0rfVgqYh/IEfhfBfAjOI3skfKJAqASjV
 oRuFsSvbP6KHQjivLEuu26sMq8zw1Vc7QX/N9kZCnwZ20lSMDkX3SBfQw8G67VQ/hB9N
 0Ykq8UegWRKDZLbHZtLAcDTcpxwiOVqOOPZ/syusG1ogNDs/+ZAjMRT2wfy0THN8SzcE
 jk5g==
X-Gm-Message-State: AGi0PubU40VNUSLAWihNM4u8jPiR8w29cLkVfYrzkaDC0hJr3Ldh/RML
 pfsNTXwxIYAEYMpxjruC/2Y/uA==
X-Google-Smtp-Source: APiQypKSvb3juH8yufYz3pZtYJr5I7jYwQqi+KNzHP8QMg+pl6CzWIz0QI5ety/mLdAJyEKbW8lq+w==
X-Received: by 2002:a65:62ce:: with SMTP id m14mr5189526pgv.174.1588355980303; 
 Fri, 01 May 2020 10:59:40 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id e16sm2510386pgg.8.2020.05.01.10.59.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 May 2020 10:59:39 -0700 (PDT)
Date: Fri, 1 May 2020 11:59:37 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Arnaud POULIQUEN <arnaud.pouliquen@st.com>
Subject: Re: [PATCH v2 00/12] remoteproc: stm32: Add support for
 synchronising with M4
Message-ID: <20200501175937.GG18004@xps15>
References: <20200424202505.29562-1-mathieu.poirier@linaro.org>
 <219771d3-b0a5-0ec7-7f20-d2055bcb0217@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <219771d3-b0a5-0ec7-7f20-d2055bcb0217@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_105943_240771_77F8B939 
X-CRM114-Status: GOOD (  21.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
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
Cc: ohad@wizery.com, alexandre.torgue@st.com, loic.pallardy@st.com,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 bjorn.andersson@linaro.org, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 05:08:32PM +0200, Arnaud POULIQUEN wrote:
> Hi Mathieu,
> 
> On 4/24/20 10:24 PM, Mathieu Poirier wrote:
> > This patchset needs to be applied on top of this one [1].
> > 
> > It refactors the STM32 platform code in order to introduce support for
> > synchronising with the M4 remote processor that would have been started by
> > the boot loader or another entity.
> > 
> > It carries the same functionatlity as the previeous revision but account
> > for changes in the remoteproc core to support synchronisation scenarios.
> > Some RB tags have been removed when the content of the patch has strayed 
> > too far from the original version. See patch 3, 8, 9 and 12 for more
> > details.
> 
> I reviewed the series, and made some tests on my side.
> FYI, I do not answer to patches when tagged "Reviewed-by: Loic Pallardy" 
> and with no extra remark. So consider them as Reviewed-by me but not
> necessary to add the tag in commit, Reviewed-by: loic in commit is sufficient. 

Well, if you spent all this time reviewing the code might as well get credit for
it...  And it also helps maintainers get a feel for how many eyes have looked
at the code.

> 
> Concerning tests, it works find except the crash recovery from a sync start.
> But i suppose that you know the limitation, waiting Loic patches[1] update :)

As I commented in the patch itself, I'll fix this so that the condition leading
to the recovery limbo can't happen.

Thanks,
Mathieu

> 
> [1]: https://lkml.org/lkml/2020/3/11/403
> 
> Thanks a lot for your work!
> Arnaud
>  
> 
> > 
> > Tested on ST's mp157c board.
> > 
> > Thanks,
> > Mathieu
> > 
> > [1]. https://patchwork.kernel.org/project/linux-remoteproc/list/?series=277049
> > [2]. https://patchwork.kernel.org/project/linux-remoteproc/list/?series=239877
> > 
> > Mathieu Poirier (12):
> >   remoteproc: stm32: Decouple rproc from memory translation
> >   remoteproc: stm32: Request IRQ with platform device
> >   remoteproc: stm32: Decouple rproc from DT parsing
> >   remoteproc: stm32: Remove memory translation from DT parsing
> >   remoteproc: stm32: Parse syscon that will manage M4 synchronisation
> >   remoteproc: stm32: Get coprocessor state
> >   remoteproc: stm32: Get loaded resource table for synchronisation
> >   remoteproc: stm32: Introduce new start ops for synchronisation
> >   remoteproc: stm32: Update M4 state in stm32_rproc_stop()
> >   remoteproc: stm32: Introduce new parse fw ops for synchronisation
> >   remoteproc: stm32: Introduce new loaded rsc ops for synchronisation
> >   remoteproc: stm32: Set synchronisation state machine if needed
> > 
> >  drivers/remoteproc/stm32_rproc.c | 262 ++++++++++++++++++++++++++++---
> >  1 file changed, 244 insertions(+), 18 deletions(-)
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
