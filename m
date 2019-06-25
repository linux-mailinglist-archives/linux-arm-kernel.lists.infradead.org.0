Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF685543E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 18:14:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2NS83fMWYf6aOB1vRMs8Sem4358EdFu18PH+oj8ePlE=; b=pcDPQf/ltlmTEq
	Y5Wt3TsThF+yUeQ6/tolLrmhXJOhmeY6WfxAO/ofDi6PTsRScmxgPo3wtwUxBisT/hjVphxoQV/gA
	XYeybaDBuqidcZWfmKKgsbFNlOAUBmik6tHDp9Jy0WSNYaY3qcDmClAml4quiKmj4GsXgiyfE9SN3
	sPnWmHSOjwlgGgRDo2AntpZfa30YMrnwJ/fcSBd42u05HG4XVvdgZ49aa8924Sec9vBsCXvZX1lx+
	4vQemlsZIZu0HQxF3So/3kYH29QOiH2XjMhMl7bzvn9+wXIHtxZ1NIyxqFKkV81Atp82S05fHm4U/
	KLLRRmEuZIFnbOoJ7bAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfo5J-00023x-2c; Tue, 25 Jun 2019 16:14:17 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfo59-00023N-Dz
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 16:14:08 +0000
Received: by mail-lj1-x244.google.com with SMTP id 205so8063696ljj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 09:14:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MIdS7pa/g61pj8TPn+6s94s4eCTVISmW7rNYKa6TV8w=;
 b=SFTzX3VvzNu9HZFBWk1Fbgm3dQ/e1r2vek+vGnn5iWK12SEkbEVK3vllyOP6WNSITH
 RQoDq9rfsBWO0dWmwYLn7JwErnW1zEQE8lgSiSDcebMsLKaMuNtfDsZucyPrNwD+mWzd
 gcy6zUGExFSoi+sVcsdHnRWSUeOkJq6enNXwoll4QysfnvPYgw7UWjCTPJ+Ohe6RhA0D
 r+zOpR6a84RswJod8ejejR6N7o2BJ/xM6lydAzt8FFY6q2jRupHe4H8uXKsRVgcrEwMG
 1Eh2GSiyraL2y5InjfGK6zyBMZOhTbW73pEr/MM+N0qtnoqvw6smSxfX8YGFL+g7JOV6
 dGCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MIdS7pa/g61pj8TPn+6s94s4eCTVISmW7rNYKa6TV8w=;
 b=Z56OPGmXNKefOzfmelHmvmTF/Y9NL4bP3MxY0zGpFfgvNxy9OcErs21IQDYBUhV1ar
 nq+b4VZI32lbkSUVbIS/e4m0U7wNQtfFdyObyeka4YFIcZydYl01Yk8xKcg8ZVrnpdR4
 hCSwsuaAy69Dy5rtCeeCpmwU6rVrZo9jTsA4Ayd+8Dpc0DYjRdycAthaioJ5BWJTIKqe
 pGbU0eqQ6hkaRvcD8kfCOpoN3g7YCg4RueP/c2qSBH2L8cAj4AzL2AP4NdEXuFyfO7+N
 WrC6gB+J6YksxDY9wJDTOUkUWKuyYxHJxs/2tGTLd8QADGudLqLT1aw/W9hKsWbeDk3A
 RWmQ==
X-Gm-Message-State: APjAAAXAOKq97GAwY+54p896OZx1NNP9H2esbQEzJ/nDk2mGHwznYfmE
 c++JC5hFQuJ//RtRlXHVG9nFMBR5oD/7fRUcMt0=
X-Google-Smtp-Source: APXvYqyTcv2A8NzcV8HxMwyMMLsa/qbMqPiATXpYg3PW2p+LIEw+Byv+1iWIbRLRRZLsWO96iDKDUpvN3+tHGH2kgMA=
X-Received: by 2002:a2e:4e12:: with SMTP id c18mr23469640ljb.211.1561479242793; 
 Tue, 25 Jun 2019 09:14:02 -0700 (PDT)
MIME-Version: 1.0
References: <c30f0e497f9e8bddc32e31a22f00ae7757e3d24e.1559024737.git.leonard.crestez@nxp.com>
 <CAOMZO5Ajg3mxueNyWfx0xy3qQAr24hfdBn7OS=8YgmRtWW2QXg@mail.gmail.com>
In-Reply-To: <CAOMZO5Ajg3mxueNyWfx0xy3qQAr24hfdBn7OS=8YgmRtWW2QXg@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 25 Jun 2019 13:13:51 -0300
Message-ID: <CAOMZO5DCWh4RoehLXOwFHLc26cfkaf1k-Zr1KkR6cF9ypQkr0g@mail.gmail.com>
Subject: Re: [PATCH RESEND] PCI: Kconfig: Simplify PCI_IMX6 depends on
To: Leonard Crestez <leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_091407_502541_28723840 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Richard Zhu <hongxing.zhu@nxp.com>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 Stefan Agner <stefan@agner.ch>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Trent Piepho <tpiepho@impinj.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Lucas,

On Tue, May 28, 2019 at 8:35 AM Fabio Estevam <festevam@gmail.com> wrote:
>
> On Tue, May 28, 2019 at 5:06 AM Leonard Crestez <leonard.crestez@nxp.com> wrote:
> >
> > This driver can be used on imx6sx without enabling support for
> > imx6q or imx7d but the "depends on" condition doesn't allow that.
> >
> > Instead of making the condition even longer just drop the per-soc
> > defines and make it depend on "ARCH_MXC || COMPILE_TEST" instead,
> > similar to many other drivers.
> >
> > Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>
> Tested-by: Fabio Estevam <festevam@gmail.com>
>
> I have also noticed this issue and sent the same fix as I haven't seen
> this patch earlier.

A gentle ping.

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
