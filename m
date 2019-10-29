Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B10EE857F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 11:26:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AKO+jUGTQDfdWAEd+MGkEQfaxQj46zkrujlna3d59e0=; b=gT6GbsY8m3zBko
	HsGAXkuvFE+Sdg4GpHt47Bs7q1IF/lfBzTNrLQQDOJZOMQ7PtGwVy2TAutpWdBR9wx+Img3FQkqQ/
	fVD5YbvqjL5VaiUsIrRmbBpZCxJlqsje5mdbDO6g0JROsXKZq9S0fFcCeWIF8Vt2b/DHsHfqvQod6
	erNksVhfFyGGiswgrg2FtNp+9lVuyu2gxUmRKOzLSub0JHhKFg4t02IdBlp7gk2B28HFNXS3F33EW
	KfsasM/r1e5AuYiRim2gfIqa8FWqipV7VtY+TkYJq67qLO62L82O3DVXejsWganZh2PNhaLpzwBsE
	xZc3sGG2UvLIj0HrpI1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPOhw-00062Q-0k; Tue, 29 Oct 2019 10:26:36 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPOhl-00061H-VG
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 10:26:27 +0000
Received: by mail-lj1-x233.google.com with SMTP id w8so10130298lji.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 03:26:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XXJ4yTre3lT2Hw451DHGum9ZE/PvKC28ALSpkKaZpzQ=;
 b=PVtNfW4XijiPFaMmyDWiKYevJ8Rnb+AuMPalMz+XGKSUUDzZGmB19dF+OPd+Cf7t8x
 AM5X/2XYgMyjwp1lINKaoqB70YPe+4nr9+G+nSi3wK+NxVo1uxLjvDxnqy3yKeBM3Yeb
 ietayrCkXZH7jE7r/YWqQ2Sb1zpm4jLfOWjwK4Y735P+vNEmyMgeSeT53ClgCeWNojIp
 m6zx9kwbh1Un8/jIDXYwUJnRnERjsZ5+G1SJRdPGNXWjRIIXM5aLubj8jIm/u9iRUcDW
 qL6IjUtTSOPdNq8laPS5fNErXTA8OZWpjNE8PQSwFIYEJhNawPFo18szPVc5JR6Bh3Dx
 slfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XXJ4yTre3lT2Hw451DHGum9ZE/PvKC28ALSpkKaZpzQ=;
 b=jSGtSOzCums8ABDtwASGAGoK8aRePYDG1xYaLkkLufxaE/JCnMsp9vtI/VUqx0hoaJ
 TZKZ8av4vO3G+U3iZ2dkyfPU5koin4ukZfRObALWjCT9IIy8sFuOwFh0zo2/DpMcoC6d
 zHqXqRID4ijvO7anX0zR6hucLDFqD+pmpHnLCPZBSbqoEKK1Xlnqu1V1LcxGrYOO/zzW
 hC8svO3+gvsdACkU8Ih5Ea85DjhdPrE8a6HFvhRz/Xt0xjcjn5M3lGBBKZHjKqpvUKH4
 Urg+MDSa/tSK0Pt3Z/dXaa3634AHUCIfYbm2jx7UD2IqkPMUJPvMfhx3zbraS0FbLNx/
 moDA==
X-Gm-Message-State: APjAAAXIBLLLaY8ho9jsXrnpHK7nv+/V+p4TfIuoaFLMTTAOIuWCFlFi
 WHa5DmDGtp29tg0IjjSaNmQgb6Edl7B/L6XBbBI=
X-Google-Smtp-Source: APXvYqzvkDNma91N0/j+LId1P0ave935Z1civdg7iP4tElQePFdC576p1UJ9upQws10oWtEnYzB9oLjay/5hPxgilts=
X-Received: by 2002:a2e:819a:: with SMTP id e26mr2054650ljg.26.1572344784090; 
 Tue, 29 Oct 2019 03:26:24 -0700 (PDT)
MIME-Version: 1.0
References: <1572242618-18806-1-git-send-email-Anson.Huang@nxp.com>
 <1572242618-18806-2-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1572242618-18806-2-git-send-email-Anson.Huang@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 29 Oct 2019 07:26:25 -0300
Message-ID: <CAOMZO5AfyyqaAgn5enaW=Cncxinrp=TBAc+E_jWAWDLkYwA0=w@mail.gmail.com>
Subject: Re: [PATCH RESEND 2/4] thermal: imx8mm: Add support for i.MX8MM
 thermal monitoring unit
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_032626_009439_AF72AE83 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:233 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ping Bai <ping.bai@nxp.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, will@kernel.org,
 Amit Kucheria <amit.kucheria@verdurent.com>, Abel Vesa <abel.vesa@nxp.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, marcin.juszkiewicz@linaro.org,
 Jagan Teki <jagan@amarulasolutions.com>, "rui.zhang" <rui.zhang@intel.com>,
 NXP Linux Team <Linux-imx@nxp.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-pm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, mripard@kernel.org,
 Eduardo Valentin <edubezval@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Dinh Nguyen <dinguyen@kernel.org>,
 Vinod <vkoul@kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 Olof Johansson <olof@lixom.net>, Shawn Guo <shawnguo@kernel.org>,
 Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi  Anson,

On Mon, Oct 28, 2019 at 3:07 AM Anson Huang <Anson.Huang@nxp.com> wrote:

> +       ret = clk_prepare_enable(tmu->clk);
> +       if (ret) {
> +               dev_err(&pdev->dev, "failed to enable tmu clock: %d\n", ret);
> +               return ret;
> +       }
> +
> +       tmu->tzd = devm_thermal_zone_of_sensor_register(&pdev->dev, 0,
> +                                                       tmu, &tmu_tz_ops);
> +       if (IS_ERR(tmu->tzd)) {
> +               dev_err(&pdev->dev,
> +                       "failed to register thermal zone sensor: %d\n", ret);

You should disable the tmu clock in the error path.

> +               return PTR_ERR(tmu->tzd);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
