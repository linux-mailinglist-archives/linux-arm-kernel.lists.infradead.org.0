Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B51B16393
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 14:16:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yfeptsT5Vy7HiJ6Cgyk2jvA+yw/Ep9MgEeGJDFrN0xo=; b=uHpCZvmgHEs+S+
	wQBgVu2Bpc1FAOLANlVtlcHRrB9JJtCA06O3oFscXVNJW2DZ3nlIzSiIQpCFna6EF+Kquk+lTnmxy
	3at3Ww99s77vho3hTrQ+B5RZ0B1IdLAMxXiCEyGgbu2ElmdRkrN4dqLjfcp4sk0cdRZ2cLDgicqEu
	fDGUXL5KALKw3/B2haWpPz5RBTS1HPVVVdaogfNaKK8KF5Ejg00s8u3VF4ER3DqKrpsYdt/sc+S1V
	7vMuw0vGu3JvTE5Bj74bXqgkk29SrZY06cb4BANJ/CjyNIxb7ohcPJOWpXbBoLDFFUYUTJCIU9RBL
	KLp5i13sk3ylq6CGmOFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNz1S-00022a-Ik; Tue, 07 May 2019 12:16:38 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNz1H-0001xL-HM
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 12:16:30 +0000
Received: by mail-yw1-xc41.google.com with SMTP id 18so8208265ywe.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 05:16:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=1OGU3z8V5nsGM9UVa7YrYRSmfjqo2jlaBctn5FM1twc=;
 b=ejzyE3Qe6iMmfUcN4nBrKMwdwyBM+g1XoAS3oJYnyk/aKjQsdouYKRocGqAU3yCEsV
 Pz8d+pEIDbENzcDAlDqSYRJuuugyMBKLONu+jFtwGveSKQbtk8JNr8szGezp+livZwvl
 EXO8wZnuk01HLr+dSKfTlb6FvPFAkPuQg7Deli2EABL6RfeIxUEXshnZbg6u5rXMUjVo
 HHBjJapRmqzpnbEUDLNppH/DbP0FkSbHqdqTjgHOZq3g2uslsROVVuWTvcZZO5R74m6c
 YHaK98XBtMQGN4j0/gGv2L5029JBGIGMeA0Nm/pzF/QVSBDwdUEuQHABdK9z2UwyHipQ
 pqlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1OGU3z8V5nsGM9UVa7YrYRSmfjqo2jlaBctn5FM1twc=;
 b=IEmO94GSjUQhH178jzRPZh5lD0DkUftFf1ePWuJfPAJBLG6M2NcmYJ7+XPN5L0zFFh
 71E+gBnwFH8wzltj3Ie9WCvzXYUxkyX7B0MURIueqsjd7tuc06AcVvehHLZNzqdYz92M
 +p2vejHkgr4UUFLwXhMannO2zeKTuqDtBRkV+eGg8EXzc4qk0PlU8yTy2KtMimBO40/V
 Bu+be9s1U8WaO7QXZLKFUWNRyobZri/R7aY9wnVFpxzeSs8DMaUZoYc5m3/BtlZSq+P3
 UfKdldoj8AeIWTknNdXzvzi9OEcdypK/TRmwRn/0sp1/O0RTbfP6U/2pOpsyGjOR7BJs
 G2Mw==
X-Gm-Message-State: APjAAAXNxfqBznHAWQljpxN38Juc7nnbRkL7vpMXTDttCwqEyIALBh+t
 ccKG7+B04RFvXH8ibUPgqk9l6A==
X-Google-Smtp-Source: APXvYqwKQrkWJMiks/oTjoVIK5odg3Rwo6qBkBwMjQuePf3yrCIzKdKE7j0Nh7qj1Tdg6GZsAiPXGg==
X-Received: by 2002:a25:2c01:: with SMTP id s1mr8124630ybs.339.1557231386207; 
 Tue, 07 May 2019 05:16:26 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li931-65.members.linode.com.
 [45.56.113.65])
 by smtp.gmail.com with ESMTPSA id 205sm3651513ywm.98.2019.05.07.05.16.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 May 2019 05:16:25 -0700 (PDT)
Date: Tue, 7 May 2019 20:16:04 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH v1 00/17] dts: Update DT bindings for CoreSight
 replicator and funnel
Message-ID: <20190507121603.GE21730@leoy-ThinkPad-X240s>
References: <20190507034734.20622-1-leo.yan@linaro.org>
 <2f2d819d-9b20-7b4c-a558-0ba24a7babf3@arm.com>
 <20190507104612.GA21391@e107155-lin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190507104612.GA21391@e107155-lin>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_051627_986326_6F69CFC1 
X-CRM114-Status: GOOD (  19.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, andrew@lunn.ch, linus.walleij@linaro.org,
 liviu.dudau@arm.com, david.brown@linaro.org, haojian.zhuang@linaro.org,
 festevam@gmail.com, Lorenzo.Pieralisi@arm.com, lee.jones@linaro.org,
 xuwei5@hisilicon.com, agross@kernel.org, zhangfei.gao@linaro.org,
 cphealy@gmail.com, mike.leach@linaro.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, s.hauer@pengutronix.de,
 robh+dt@kernel.org, orsonzhai@gmail.com, linux-arm-kernel@lists.infradead.org,
 mathieu.poirier@linaro.org, guodong.xu@linaro.org, baolin.wang@linaro.org,
 zhang.chunyan@linaro.org, shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 07, 2019 at 11:46:12AM +0100, Sudeep Holla wrote:
> On Tue, May 07, 2019 at 09:27:26AM +0100, Suzuki K Poulose wrote:
> > Leo,
> >
> > On 07/05/2019 04:47, Leo Yan wrote:
> > > Since the DT bindings consolidatoins for CoreSight replicator and funnel
> > > is ready for kernel v5.2 merge window [1], this patch set is to update
> > > the related CoreSight DT bindings for platforms; IIUC, this patch set
> > > will be safe for merging into kernel v5.2 because the dependency
> > > patches in [1] will be landed into mainline kernel v5.2 cycle.
> > >
> > > In this patch set, it tries to update below two compatible strings to
> > > the latest strings:
> > >
> > >    s/"arm,coresight-replicator"/"arm,coresight-static-replicator"
> > >    s/"arm,coresight-funnel"/"arm,coresight-dynamic-funnel"
> > >
> > > Please note, some platforms have two continuous patches, one is for
> > > updating static replicator compatible string and another is for dynamic
> > > funnel change; and other platforms have only one patch since it only
> > > needs to change for dynamic funnel.
> >
> > I would have preferred to keep them as a single change. Either way, for
> > the entire series :
> >
> > Acked-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> 
> Thanks.

Thanks, Suzuki and Sudeep.

> Leo,
> 
> I plan to take 9,10,14/17 for v5.3

Yes, please pick up these 3 patches.

Thanks,
Leo Yan

> Please shout if you plan to take the series directly via different tree.
>
> 
> --
> Regards,
> Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
