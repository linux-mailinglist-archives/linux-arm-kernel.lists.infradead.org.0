Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A223501BC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 07:59:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UenIg9njdtLVA3WUOdGYqS2KOoT0dNNsapgx41dX6qc=; b=QG/jXC8dTvSmvd
	ZXOGo7sW80pVUlvdgHfvOfnS6THkuGuVHIvNeiKa/EA+LppMFi5ONHoX89R64L5ciQp1FVq87KVBZ
	YC8QfaTu6Des6q05QinVfgZW9YQ/7JF+ooNf7mfH++uO+koNyCVhqkuriUbiO4VnpxLSECJFIgHYT
	yHNfkWJFaQ73a7ZI1+5kjBl1L9SFAHaOapwUc27G0Mf0/MuVxYt2f0NOMPHYQ11AejuqthkQRe0xj
	ATnrZO3w2moEm3ofJjX/kyeWqRMiy/UxxBtKpdu7YFp2/LWsW70UT+ob/4Em6/RevmROvLfL61Nk0
	W9v2CAf24qjvhwqqEVTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfI0S-0006Ga-EK; Mon, 24 Jun 2019 05:59:08 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfI0F-0006G3-JO
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 05:58:56 +0000
Received: by mail-wr1-x444.google.com with SMTP id n4so11240717wrs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 23 Jun 2019 22:58:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=d78ITbk7v25AdSX5dYSxFeiJARIaWNXxJlHgvIqiJbE=;
 b=d+ObliVHtZyhPIt+wRPxK0rIMTCjFIKqKU6jGW9eSKw3Co0qNjPTSXtSC0Ip/J0xKV
 gUu7s+cQmnvxi/9KaD7SJJZ6K602wNOslGaNEokZt4U80nRk2NgQrxv+frZmOwgnbFwN
 khbrwbldMMrW/w5Fsqiy4u9NQ7xp13TVtcfGijGg9dOjLELvSYuie8EA0nGKdBXr0JZq
 JyUIImI6n70wr0BLResQ1KaTCC4yNUlEUi44BAsEKrDWsZKPW131olPJXpPweYDs4JF0
 4LnZfob8S1vqUr8iITIBhZILCU8UTZmrNtKHXohFFfQp11bm1R+8JhLdmNfVJ3rOMp0c
 gJlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=d78ITbk7v25AdSX5dYSxFeiJARIaWNXxJlHgvIqiJbE=;
 b=btoHVvkq6HsDg+X7LBvJ4J1Cbj9yhiURlIxd2LNvQ1/4+MO49GZbygHy2QjF26TNyo
 Uypn8R6xg5MgSeYxfwp435lGdbk1kM6t/OdE6KeJAZQayqOPfOMujDdFzGPDporNZOKi
 Kj/PVwSLfW0iJ9pOLsBtt5Nn2JKa4Skt1v9nuDM+ifqu0UTTozdqVi0WLbUQQh79Teb7
 /bbyOBLAMjtnV1K9npdM+irfLWyuPfpW/QTYQ4CDBUYRmHsO46P/wNpRJM8lS6eKeVOQ
 uT5i472yJixDjdOvqpGkqAuL3ynQscX/2IXtUtpFJ+vwT+7klvY4s4JHIlL4sCblKsNQ
 Bfkw==
X-Gm-Message-State: APjAAAUfgk6xyzsAfSJli/HWbqyAWkypyVlECCAG8QZmgfZzGqPFzUvH
 Q7PZ81f8lBjb5Cg4pspgdkPPVAQtdk9eEDuukq4=
X-Google-Smtp-Source: APXvYqw5KL/drCGxI4hJiK5W5g/DbbbFzlUOjM+rVewMlt13CTXhkmHtJctGxmrQk6Y60n3Z6lOPXyrvmukwVHfizEc=
X-Received: by 2002:adf:e843:: with SMTP id d3mr30225507wrn.249.1561355933688; 
 Sun, 23 Jun 2019 22:58:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190508021902.10358-1-leo.yan@linaro.org>
 <20190508021902.10358-12-leo.yan@linaro.org>
In-Reply-To: <20190508021902.10358-12-leo.yan@linaro.org>
From: Chunyan Zhang <zhang.lyra@gmail.com>
Date: Mon, 24 Jun 2019 13:58:17 +0800
Message-ID: <CAAfSe-uwxTtSs1DN_SMzqV+TBSOUM4mv2_vC94CK2-j3_AaBAg@mail.gmail.com>
Subject: Re: [PATCH v2 11/11] arm64: dts: sc9860: Update coresight DT bindings
To: Leo Yan <leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_225855_642781_A61467C1 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zhang.lyra[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Liviu Dudau <liviu.dudau@arm.com>,
 David Brown <david.brown@linaro.org>, Fabio Estevam <festevam@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Wei Xu <xuwei5@hisilicon.com>,
 Andy Gross <agross@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Orson Zhai <orsonzhai@gmail.com>, Mike Leach <mike.leach@linaro.org>,
 DTML <devicetree@vger.kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 linux-arm-msm@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Baolin Wang <baolin.wang@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Chunyan Zhang <zhang.chunyan@linaro.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sudeep Holla <sudeep.holla@arm.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Leo,

Applied the patch 10-11/11 to my tree, thanks!

Chunyan



Chunyan

On Wed, 8 May 2019 at 10:21, Leo Yan <leo.yan@linaro.org> wrote:
>
> CoreSight DT bindings have been updated, thus the old compatible strings
> are obsolete and the drivers will report warning if DTS uses these
> obsolete strings.
>
> This patch switches to the new bindings for CoreSight dynamic funnel,
> so can dismiss warning during initialisation.
>
> Cc: Chunyan Zhang <zhang.chunyan@linaro.org>
> Cc: Orson Zhai <orsonzhai@gmail.com>
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> Acked-by: Chunyan Zhang <zhang.chunyan@linaro.org>
> ---
>  arch/arm64/boot/dts/sprd/sc9860.dtsi | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/sprd/sc9860.dtsi b/arch/arm64/boot/dts/sprd/sc9860.dtsi
> index b25d19977170..e27eb3ed1d47 100644
> --- a/arch/arm64/boot/dts/sprd/sc9860.dtsi
> +++ b/arch/arm64/boot/dts/sprd/sc9860.dtsi
> @@ -300,7 +300,7 @@
>                 };
>
>                 funnel@10001000 { /* SoC Funnel */
> -                       compatible = "arm,coresight-funnel", "arm,primecell";
> +                       compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
>                         reg = <0 0x10001000 0 0x1000>;
>                         clocks = <&ext_26m>;
>                         clock-names = "apb_pclk";
> @@ -367,7 +367,7 @@
>                 };
>
>                 funnel@11001000 { /* Cluster0 Funnel */
> -                       compatible = "arm,coresight-funnel", "arm,primecell";
> +                       compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
>                         reg = <0 0x11001000 0 0x1000>;
>                         clocks = <&ext_26m>;
>                         clock-names = "apb_pclk";
> @@ -415,7 +415,7 @@
>                 };
>
>                 funnel@11002000 { /* Cluster1 Funnel */
> -                       compatible = "arm,coresight-funnel", "arm,primecell";
> +                       compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
>                         reg = <0 0x11002000 0 0x1000>;
>                         clocks = <&ext_26m>;
>                         clock-names = "apb_pclk";
> @@ -513,7 +513,7 @@
>                 };
>
>                 funnel@11005000 { /* Main Funnel */
> -                       compatible = "arm,coresight-funnel", "arm,primecell";
> +                       compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
>                         reg = <0 0x11005000 0 0x1000>;
>                         clocks = <&ext_26m>;
>                         clock-names = "apb_pclk";
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
