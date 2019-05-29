Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40B752DA4B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 12:20:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YXRUQif4qHVT8aUBxFxDjOGCIcIK/P1L23CwDILWjwA=; b=JGNvC9QhzzzqRs
	sATqSq9xXc5AmumKhrzuMfnaL0+IjsekNAfdZc59zWQeJS25gWcAU/eAoccQhpAv0ycIRF3XJk/ut
	T2csNzgt7goRmnLZhs/eA+z4uJpcSQd2anxOwHJnQH9kxh+DrcrF/mtWaacXcNBR3LTXdI/AQIYtM
	QzN4pGb4XRK+3H09qbwVJeUORgCmPLvp4dqnV0LEKhHK4G0ofV9Tj39ygH5mSIsoo6w+RPDHXvlYB
	mHd0gX4M4NFUo4B7pw1tzo+FuEQKr/DmSXkZxef2VoeXUppkV3A1WWfVyib2cGqrp7NMfdz6S0254
	CbyPuaaQy//Is/SFGsnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVvh2-0004vj-7V; Wed, 29 May 2019 10:20:24 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVvgv-0004kZ-Qv
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 10:20:19 +0000
Received: by mail-ed1-x544.google.com with SMTP id p26so2966107edr.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 03:20:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=P8ka2+bxJnQPHb/IDd/VfordB+PMGKVkIhugicMFKzs=;
 b=XF+w9RV8bhJ3242HapwUEBakMNiXppxTlsihA2p7lAIRWwmJsCx0hhPZCepOCjFsN1
 /k9+CAuTYW5fkvDD/AvswXCFo1YqlfRAqMQtGXh90GRGaZVtDThf7+IafnrGPJdXCIMc
 LC6U3LXPs6sdgBaFPhmsnpQeAegkVOUyqnlwW5KsRlxCJ7mxppAz8d3d8Fof3KKUpQTv
 YRAm+kTWfBUN9WrixQ1xaQAPGP5ebSLPzY7mUkcFxQ8R1NAfDSHGziSOkFuWA/+X7l8D
 m+50IZEhJ5i6P130neqYbJ/aZ2HtjIZjB5oSdCJk9ldke/rxepiZHhVD99yN0v3cDJTp
 K61Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=P8ka2+bxJnQPHb/IDd/VfordB+PMGKVkIhugicMFKzs=;
 b=JWl+PJK/n3fGPmYEQHu/lhW7/oWeIUNuDQupsCZjgfEiy5AHmcLQAIL6rwuAs0OUES
 Sv3rnZ3n9TY9ej4B3bBn0QWwBIUEobVwfyC+/E26LG9tiUPzWlaEEtTnDosOGf8f9GYS
 IndVPFGoVkdLMOvipV/xT9Pd4i9Fd+MOsCSbaXoTVghLTr5fJev8xaeRZyeO3+tpo2Hu
 jTsy6lD83SNKJTpkz/LAGVL1avmZkhBeeVl+Yu4KdmIs299Y5L74OlpisgH7DnUvPhu9
 LUJNsYf+iNreo/FYY1BUh7SGUWopDnYGlHZ/+7UWx0dl/5dyQfHH+QFRJBGm2tvKTNBh
 ypgQ==
X-Gm-Message-State: APjAAAVNCHTDtvOwSQ3DcibDjdG5tBnOb0w0TMQc7Fl0yr/LTP9grPUE
 GBEq+/qVCDLYsZufN3nJeEH9pK4+Kj08NElS1etVmA==
X-Google-Smtp-Source: APXvYqyyuOSJwMbRE0IpyZJFEqQayTJn6ZPM2g7Hnz25efVf4lIFAuyvYRNa40rcFHDxIOdG/4ZlgZhZziVx5rAJ1jw=
X-Received: by 2002:a50:8877:: with SMTP id
 c52mr135002894edc.253.1559125214798; 
 Wed, 29 May 2019 03:20:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190508021902.10358-1-leo.yan@linaro.org>
 <20190529101445.GC15808@leoy-ThinkPad-X240s>
In-Reply-To: <20190529101445.GC15808@leoy-ThinkPad-X240s>
From: Chunyan Zhang <zhang.chunyan@linaro.org>
Date: Wed, 29 May 2019 18:20:03 +0800
Message-ID: <CAG2=9p94C+1dv2rYNQ++hMM=e8kCz-7QJ6K6USdrnqp-qa9Ucg@mail.gmail.com>
Subject: Re: [PATCH v2 00/11] dts: Update DT bindings for CoreSight replicator
 and funnel
To: Leo Yan <leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_032018_014677_576AC0FB 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Linus Walleij <linus.walleij@linaro.org>, Liviu Dudau <liviu.dudau@arm.com>,
 David Brown <david.brown@linaro.org>,
 Haojian Zhuang <haojian.zhuang@linaro.org>, Fabio Estevam <festevam@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Chunyan Zhang <zhang.lyra@gmail.com>, Wei Xu <xuwei5@hisilicon.com>,
 Andy Gross <agross@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Orson Zhai <orsonzhai@gmail.com>, Chris Healy <cphealy@gmail.com>,
 Mike Leach <mike.leach@linaro.org>, devicetree@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Zhangfei Gao <zhangfei.gao@linaro.org>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Guodong Xu <guodong.xu@linaro.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Baolin Wang <baolin.wang@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sudeep Holla <sudeep.holla@arm.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 29 May 2019 at 18:14, Leo Yan <leo.yan@linaro.org> wrote:
>
> On Wed, May 08, 2019 at 10:18:51AM +0800, Leo Yan wrote:
> > Since the DT bindings consolidatoins for CoreSight replicator and funnel
> > is ready for kernel v5.2 merge window [1], this patch set is to update
> > the related CoreSight DT bindings for platforms; IIUC, this patch set
> > will be safe for merging into kernel v5.2 because the dependency
> > patches in [1] will be landed into mainline kernel v5.2 cycle.
>
> [...]
>
> > Leo Yan (11):
> >   ARM: dts: hip04: Update coresight DT bindings
> >   ARM: dts: imx7s: Update coresight DT bindings
> >   ARM: dts: qcom-apq8064: Update coresight DT bindings
> >   ARM: dts: ste: Update coresight DT bindings
> >   ARM: dts: vexpress-v2p-ca15_a7: Update coresight DT bindings
> >   ARM: dts: qcom-msm8974: Update coresight DT bindings
> >   arm64: dts: hi6220: Update coresight DT bindings
> >   arm64: dts: juno: Update coresight DT bindings
> >   arm64: dts: qcom-msm8916: Update coresight DT bindings
> >   arm64: dts: sc9836: Update coresight DT bindings
> >   arm64: dts: sc9860: Update coresight DT bindings
>
> Gentle ping for maintainers.
>
> Hi Andy, David,
>
> Could you pick up patches 03, 06, 09/11 for QCOM DT bindings?
>
> Hi Sudeep,
>
> Could you pick up patches 05, 08/11 for Arm DT bindings?
>
> Hi Chunyan, Orson, Baolin,
>
> Could you pick up patches 10, 11/11 for Unisoc DT bindings?

Sure, will do.

Thanks,
Chunyan

>
> Thanks a lot for Shawn and Linus have picked up 02, 04/11 separately.
>
> Thanks,
> Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
