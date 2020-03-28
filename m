Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F93A1965A3
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 12:19:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WEspRSFBak5wfrU7LKPjkbhW9unOleFOVaOs3PYeIyo=; b=gbotebOUxlbo4Q
	6BlslJBHOrmhGSNMjk+6jgoPbNFrs3ZGn/vH2/SsT01s04Bbirsd5AJNCVvFq0gp4nFDCyS6mCIik
	sGbeMZ4YQfeOnoZJkx3f33PnFK3JuvgLZsEMqmS+Im61sdk1JFONzCjaa5qIPzl8Lc5bHQbtMBP8R
	mlGT3mCxKvaadybEkrcFtFiaj5dHp8UCdmuUXA1zOxJF11orwAsrCsMUusStE6TNG4ktojWx7/QtO
	BJKLKdNI2ZkWHXBX8KnnFlhn0bABL02Me0BozilgYTt5hMGLYG/rqru6rdzRhksV+4eU9X3LMnjfb
	MtTCovhC1DqiPwYfzttQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jI9UT-0002PV-0s; Sat, 28 Mar 2020 11:19:01 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jI9UL-0002P7-Dh
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 11:18:54 +0000
Received: by mail-lj1-x22c.google.com with SMTP id g12so12893443ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 28 Mar 2020 04:18:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mn1ytLBqSAPBNw3XMPojcu/ZhP1LOxFipDY249AI3+0=;
 b=j/vurdna05CpEPiYbgWaMbXlO1MSn4s6AHli5VB0CRBQUIL3tn/IsFdGyopV0K3H6s
 7AXxFX+50Ui0uBudNqvmSb7LA0mF2kQiib+sKXYdbh+5mqIYBcEOLY/SUc3u+xiIva+g
 uFRxkAE4GSZyvbU3rtCg1qZSbURWZ5emEMzXelXG2ipoCL6yM0t4hnvH7V0csTnmXW6N
 Q5A/5z0tjCD/X9qXmobQvxl+LKG4sq7eB5C8+Zb8GImVfabGY+co+ZWkPGW0asWwx95D
 oHolnrdhO1IEHoQyfA2ta+ueYLSHBCQ4XzFRuPGIFFfF6BhTXsJZfD5bSkHLwSxUh/Kc
 CMPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mn1ytLBqSAPBNw3XMPojcu/ZhP1LOxFipDY249AI3+0=;
 b=O97GKwI2kXzXvK+7g+zU01fpLhjK2nw1Z8pBfJdj9M0u/eus2g4wC20RAxCFj/M30d
 uZxQ83SRt1NPHW7LhYJoFGF3w5CFKw8UU6hrAf5v0lvhjLngHvjm896d8eVdnaSQwWCD
 m0PAZcY4bm6rcx2PJMsP2fpPG54MaHsVGb7k0ny4s2sVbh1ptV341g7Jvh31f4KsqJwY
 DWDUZXhxsz66eaH4vgC/prsi86Iv+PDhd0rdH1K1tVULg/OLWW4vD62aVdUJAopvrp5z
 UClzUfgD+z9gMpPYfsxpCnZ/0h7OZ2RrOO+9ZDo4WIP6MbuI3Jk1e59hiaLv+o2vG0ho
 4xiA==
X-Gm-Message-State: AGi0PubprBmazZ058roBT5mU0vFn1ETYqb81KtBf7b8BkRxKoeVlZazx
 AS4YYE6oLcUp4GOjF1e6PsBZzPfzGVE+pgmMi5teO8DDKcA=
X-Google-Smtp-Source: APiQypLE0oLlT/o3yAjG6ThkJD82LP/2VPbDKk0L+GjVnht7omgSVfHwuAggLs+wNUYJlyQmbGiwLidjVdGS9lfq8T4=
X-Received: by 2002:a2e:9105:: with SMTP id m5mr2054389ljg.37.1585394331360;
 Sat, 28 Mar 2020 04:18:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAHCN7xJSKH-gXA5ncFS3h6_2R28rn70O3HfT=ActS1XVgCFSeg@mail.gmail.com>
In-Reply-To: <CAHCN7xJSKH-gXA5ncFS3h6_2R28rn70O3HfT=ActS1XVgCFSeg@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Sat, 28 Mar 2020 08:18:42 -0300
Message-ID: <CAOMZO5CZX=C2zSjXV0LTvNvAyqWkzLgR=OoRS=uY1wa4rXshVg@mail.gmail.com>
Subject: Re: i.MX8MN Errors on 5.6-RC7
To: Adam Ford <aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_041853_460828_6C4888DB 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22c listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 devicetree <devicetree@vger.kernel.org>, Anson Huang <Anson.Huang@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Adam Ford-BE <aford@beaconembedded.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Adam,

On Fri, Mar 27, 2020 at 11:50 PM Adam Ford <aford173@gmail.com> wrote:
>
> I am getting a few errors on the i.MX8MN:
>
> [    0.000368] Failed to get clock for /timer@306a0000
> [    0.000380] Failed to initialize '/timer@306a0000': -22
> [    7.203447] caam 30900000.caam: Failed to get clk 'ipg': -2
> [    7.334741] caam 30900000.caam: Failed to request all necessary clocks
> [    7.438651] caam: probe of 30900000.caam failed with error -2
> [    7.854193] imx-cpufreq-dt: probe of imx-cpufreq-dt failed with error -2
>
> I was curious to know if anyone else is seeing similar errors.  I
> already submitted a proposed fix for a DMA timeout (not shown here)
> which matched work already done on i.MX8MQ and i.MX8MM.
>
> I am not seeing huge differences between 8MM and 8MN in the nodes
> which address the timer, caam or imx-cpufreq-dt.
>
> If anyone has any suggestions, I'd love to try them.

I don't have access to a i.MX8MN board at the moment, but I am
wondering if the errors could be AT-F related.

Which version do you use? Could you try
https://source.codeaurora.org/external/imx/imx-atf/log/?h=imx_5.4.3_2.0.0
?

Regards,

Fabio Estevam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
