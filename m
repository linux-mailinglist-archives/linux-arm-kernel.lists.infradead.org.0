Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E451DD68E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 21:03:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oj//3mk4AdbKxbFTugpC1Ochmg7F65PyTC4hSXfyi9g=; b=Nzwp9TefHBSlpc
	Li0PVI8WosI3urFCueB0FOEK23mbm0JAtEh7Jn98RbuJjX85vdp554Jxj3XFYnocKruzpv8usPmdK
	Geuf+pdamfSNMsOtHbOQE82qzQ5Cik72ATGhTICDCPLlbq07etdSwDo9CXP36/WbiOJBS8ipsfaXG
	9U/LvshvwPyZuONXb4KDQj71bg/iQxuvqqRVnu0scbAibIahLX0+ufyY7drtoxnhE/BQ/5hvEy/YP
	pk/RYPsA5pRXExpcOu2iP0Ws70lyLFu0TBDUrvP1aL682R0PGw0XJkIJuN+lbxZxNBXQYae1qPLeH
	mch87y/vD5Zr8tNC3Llw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbqTN-0001si-F7; Thu, 21 May 2020 19:03:17 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbqT6-0001re-MX
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 19:03:02 +0000
Received: by mail-pj1-x1043.google.com with SMTP id z15so1403770pjb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 12:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=/Oo08/XEB/t5MK/WPQHIyt+1GD6u4ViIKAYuaTKsYvw=;
 b=XkJmPVs3VBunWUwFGskv2JiizITJ/0FqmwEuyWiL8NuZIUNYppwgRbu7Rb+Hm2E4gs
 zosM3pBZbXzLCKpPzbmtSikxf2DTarJCOmR/EEzPuNWeZ04nIMbSHznUGFdJFnENEFlf
 UOsilid7Q6ES9KHq1GOGhq3MvG4hP4NSyBVQIWg3OLDQKQSgT+4YZYyNC3ZovBBupdqg
 CZYux9oUnfoQj1hAK7jqeNM3agFwh72faQDUMnI1ZXd/OFahAbeq+eI2YelRmPKlJbAd
 k0yE9a6XjMQVbrMoh8ahDd06I3eQ1jAv61dsNJECpeQH0yc1PxIUq2Lef+yZ8xG381Fj
 mqXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=/Oo08/XEB/t5MK/WPQHIyt+1GD6u4ViIKAYuaTKsYvw=;
 b=VATGEsc5gzzBXaz2xLJboHa0Gn10bCBeKb4E7hMhlIVD12tk3dvfuI65jwiLOcV8Ce
 RaxiM0SYdGZr6hl5btAKBrYMtHK7bFTKfoNKYZ5FbwGtz94mGE5RYOUe6Ifdx8MbEnh8
 ekrddji92pM1PTmUGHI+ThaN6kmih1t815KfooncBKIAK5pz/7Ip4DbLNIgA7k0FJk7f
 sbVpHDbTAeyU3xuExH9YBEt2cvN6sjT79maavlAXDzwMXit4kf4Hfz4YcNIvHCiXBaPJ
 ZOf3YpK+vEzAYYgL7vssc+JwvHbJRiON7xxuEdafG5n5XVCO1hePUwFGDDof9TSGJ9Ys
 j84Q==
X-Gm-Message-State: AOAM530QzYMj6FM+A/e7qRbwQ4hLYLvcMdLOfAkwijlIwSj5vrXT5H/W
 oMXaUznmeEWE8OBeh5xuw0Scdg==
X-Google-Smtp-Source: ABdhPJyja0nFdONVA3qDYEMHATkp/ASlOhFKtHy2PMgx+Quj41sLMb+HVStRwpG6rKRlL3mto4oqhw==
X-Received: by 2002:a17:90a:a590:: with SMTP id
 b16mr13125461pjq.177.1590087780086; 
 Thu, 21 May 2020 12:03:00 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id q9sm4981223pff.62.2020.05.21.12.02.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 May 2020 12:02:59 -0700 (PDT)
Date: Thu, 21 May 2020 12:01:41 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH v2 0/4] TI K3 DSP remoteproc driver for C66x DSPs
Message-ID: <20200521190141.GN408178@builder.lan>
References: <20200521001006.2725-1-s-anna@ti.com>
 <5f84465e-8f63-51b4-4758-59c85d3ad597@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5f84465e-8f63-51b4-4758-59c85d3ad597@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_120300_737402_D7902897 
X-CRM114-Status: GOOD (  20.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
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
Cc: devicetree@vger.kernel.org, Mathieu Poirier <mathieu.poirier@linaro.org>,
 Lokesh Vutla <lokeshvutla@ti.com>, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu 21 May 11:59 PDT 2020, Suman Anna wrote:

> Hi Bjorn,
> 
> On 5/20/20 7:10 PM, Suman Anna wrote:
> > Hi All,
> > 
> > The following is v2 of the K3 DSP remoteproc driver supporting the C66x DSPs
> > on the TI K3 J721E SoCs. The patches are based on the latest commit on the
> > rproc-next branch, 7dcef3988eed ("remoteproc: Fix an error code in
> > devm_rproc_alloc()").
> 
> I realized I also had the R5F patches on my branch, so the third patch won't
> apply cleanly (conflict on Makefile). Let me know if you want a new revision
> posted for you to pick up the series.
> 

That should be fine, thanks for the heads up!

Will give Mathieu a day or two to take a look as well.

Regards,
Bjorn

> regards
> Suman
> 
> > 
> > v2 includes a new remoteproc core patch (patch 1) that adds an OF helper
> > for parsing the firmware-name property. This is refactored out to avoid
> > replicating the code in various remoteproc drivers. Please see the
> > individual patches for detailed changes.
> > 
> > The main dependent patches from the previous series are now staged in
> > rproc-next branch. The only dependency for this series is the common
> > ti-sci-proc helper between R5 and DSP drivers [1]. Please see the initial
> > cover-letter [2] for v1 details.
> > 
> > regards
> > Suman
> > 
> > [1] https://patchwork.kernel.org/patch/11456379/
> > [2] https://patchwork.kernel.org/cover/11458573/
> > 
> > Suman Anna (4):
> >    remoteproc: Introduce rproc_of_parse_firmware() helper
> >    dt-bindings: remoteproc: Add bindings for C66x DSPs on TI K3 SoCs
> >    remoteproc/k3-dsp: Add a remoteproc driver of K3 C66x DSPs
> >    remoteproc/k3-dsp: Add support for L2RAM loading on C66x DSPs
> > 
> >   .../bindings/remoteproc/ti,k3-dsp-rproc.yaml  | 190 +++++
> >   drivers/remoteproc/Kconfig                    |  13 +
> >   drivers/remoteproc/Makefile                   |   1 +
> >   drivers/remoteproc/remoteproc_core.c          |  23 +
> >   drivers/remoteproc/remoteproc_internal.h      |   2 +
> >   drivers/remoteproc/ti_k3_dsp_remoteproc.c     | 773 ++++++++++++++++++
> >   6 files changed, 1002 insertions(+)
> >   create mode 100644 Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
> >   create mode 100644 drivers/remoteproc/ti_k3_dsp_remoteproc.c
> > 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
