Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A3F1DDA27
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 00:23:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rrq9IH3LM1Vlxmb3fmBnsiILZeIlr580OJZUAMhA8LI=; b=AY+vfEBbz7nWYT
	b2cK0lj86iK46gKEvkyCNnIF94fptnE7CvlMOgPdkSBNTOHxJ0rCRuRNjayEhYm48skY84znsbdWG
	3oJyh/tJTOrLZ10wHzr9jpYL5r3DsQuR9Ueut//2ijISbxKM944w32Q8I2f/WaBOp17sW8akZgGMG
	HQy/okgZw+wz9iV7vQ3Eoytx9xm0nYhExQvu7TxwLkEVNpr7+VRjURRPnlK//Uqwa24s8uKo7exRK
	cH/sKVJH/9MCvlzxgH2FMJSw4CHOH3zaTWPEU0+IrSyoDGNp2+zHtWS7RmMZ1K/o6PR7tOS8ECUJv
	pU8X48XPBXBXIfeq6a2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbtbP-0000je-Ic; Thu, 21 May 2020 22:23:47 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbtbF-0000j0-ON
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 22:23:39 +0000
Received: by mail-pl1-x644.google.com with SMTP id b12so3542902plz.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 15:23:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=N2wKxaW6lDoNkWJApceaOVJtkImjIaOQnCYFrOJceIM=;
 b=wjo3j7NTmZ6x2EPn4FNPGkgF3yq0SZt3IyHQQlwg+08rNmo6WNGyqJQJpTIxlhmCi2
 d0W9GHskbnb5PGZM0fgLL0PBPcTlum856yl7gPGlQpDh+9euCe72c3W3zAwSDC+MgxPz
 V+w+OOkMkowlIGHMqw01C72mOSt8+rlwlUFED3ywlW6H6Hg270VX1MEkgqAliMlggROv
 cpdtEJ7zkMztQQS2ZHU2wNROlVxcX+TvzA7/WjMkk5CH0w098tbMCy/4zYwY+0gFLqpR
 2Cedi9dxq9gg2xkw6/J/a+UztG42BYSV2t1qfH6q4/VZHLzO2JMqR286ijN/XkNnf2f9
 LEOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=N2wKxaW6lDoNkWJApceaOVJtkImjIaOQnCYFrOJceIM=;
 b=Qo4JbCwoxlz8/u2AeKQeqg1UHw7H5dnhkElJqhKGu/nErP6eyXEQT0/WuuK3QwS0EQ
 fJjffAGNcdrA/OIX6maWi2U26TppwzB4Jcsykc0Hl+mOxfgV8YS1NLiamQRCidW63Bex
 N0btiecJ16PPsztzcIy9nt6hRt//dNmr9l2gokrcvY4jLRkf0h4R83CWLyPyzQ5WYST3
 lZKE5A8YL8fzU40cCh/92NDD2eBaIUBYr/7QC0UAfR6NHY3XcNfa1OC0zEDB+E1tTh/Q
 yrhavws+jIYklb5P3kRI4Nb+wpldWA40swyBxE64yaxQIyVDQr5ywClBaBa2b7+AMXjF
 oxqQ==
X-Gm-Message-State: AOAM533EE+tb0wgqICpSH1NeGeliAT7diaVQA9Z3jJHP6zOvdTia+tUW
 ZlLyxqgNYXaePyPgGVWI1JxaQA==
X-Google-Smtp-Source: ABdhPJx4w0xWOxaP5k03XXaaUIrnPMYU5QWKAquQCASJdj6CT7akrgbu0lcPQoBQZTArdHRtmJAinQ==
X-Received: by 2002:a17:90a:a43:: with SMTP id
 o61mr773896pjo.179.1590099816842; 
 Thu, 21 May 2020 15:23:36 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id i10sm5301018pfa.166.2020.05.21.15.23.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 May 2020 15:23:36 -0700 (PDT)
Date: Thu, 21 May 2020 16:23:34 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH v2 0/4] TI K3 DSP remoteproc driver for C66x DSPs
Message-ID: <20200521222334.GA11366@xps15>
References: <20200521001006.2725-1-s-anna@ti.com>
 <5f84465e-8f63-51b4-4758-59c85d3ad597@ti.com>
 <20200521190141.GN408178@builder.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200521190141.GN408178@builder.lan>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_152337_828406_E5D2C8DF 
X-CRM114-Status: GOOD (  25.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Lokesh Vutla <lokeshvutla@ti.com>,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Suman Anna <s-anna@ti.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Gents,

On Thu, May 21, 2020 at 12:01:41PM -0700, Bjorn Andersson wrote:
> On Thu 21 May 11:59 PDT 2020, Suman Anna wrote:
> 
> > Hi Bjorn,
> > 
> > On 5/20/20 7:10 PM, Suman Anna wrote:
> > > Hi All,
> > > 
> > > The following is v2 of the K3 DSP remoteproc driver supporting the C66x DSPs
> > > on the TI K3 J721E SoCs. The patches are based on the latest commit on the
> > > rproc-next branch, 7dcef3988eed ("remoteproc: Fix an error code in
> > > devm_rproc_alloc()").
> > 
> > I realized I also had the R5F patches on my branch, so the third patch won't
> > apply cleanly (conflict on Makefile). Let me know if you want a new revision
> > posted for you to pick up the series.
> > 
> 
> That should be fine, thanks for the heads up!
> 
> Will give Mathieu a day or two to take a look as well.

I don't see having the time to review this set before the middle/end of next
week.  I also understand we are crunched by time if we want to get this in
for the upcoming merge window.

If memory serves me well there wasn't anything controversial about this work.
Under normal circumstances I'd give it a final look but I trust Suman to have
carried out what we agreed on.

Bjorn - if you are happy with this set then go ahead and queue it.

Thanks,
Mathieu

> 
> Regards,
> Bjorn
> 
> > regards
> > Suman
> > 
> > > 
> > > v2 includes a new remoteproc core patch (patch 1) that adds an OF helper
> > > for parsing the firmware-name property. This is refactored out to avoid
> > > replicating the code in various remoteproc drivers. Please see the
> > > individual patches for detailed changes.
> > > 
> > > The main dependent patches from the previous series are now staged in
> > > rproc-next branch. The only dependency for this series is the common
> > > ti-sci-proc helper between R5 and DSP drivers [1]. Please see the initial
> > > cover-letter [2] for v1 details.
> > > 
> > > regards
> > > Suman
> > > 
> > > [1] https://patchwork.kernel.org/patch/11456379/
> > > [2] https://patchwork.kernel.org/cover/11458573/
> > > 
> > > Suman Anna (4):
> > >    remoteproc: Introduce rproc_of_parse_firmware() helper
> > >    dt-bindings: remoteproc: Add bindings for C66x DSPs on TI K3 SoCs
> > >    remoteproc/k3-dsp: Add a remoteproc driver of K3 C66x DSPs
> > >    remoteproc/k3-dsp: Add support for L2RAM loading on C66x DSPs
> > > 
> > >   .../bindings/remoteproc/ti,k3-dsp-rproc.yaml  | 190 +++++
> > >   drivers/remoteproc/Kconfig                    |  13 +
> > >   drivers/remoteproc/Makefile                   |   1 +
> > >   drivers/remoteproc/remoteproc_core.c          |  23 +
> > >   drivers/remoteproc/remoteproc_internal.h      |   2 +
> > >   drivers/remoteproc/ti_k3_dsp_remoteproc.c     | 773 ++++++++++++++++++
> > >   6 files changed, 1002 insertions(+)
> > >   create mode 100644 Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
> > >   create mode 100644 drivers/remoteproc/ti_k3_dsp_remoteproc.c
> > > 
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
