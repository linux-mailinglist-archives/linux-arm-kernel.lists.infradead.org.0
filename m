Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 789D7151B9C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 14:46:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cSOKU4QkMspwNVi5mC0W76jqF/zNO9VbHAUMGIip/Xg=; b=TaxYny9MnSqou0
	kO3KREAkvbyBuJzMTIGxwnXH5oI4SrKGRckhvAkGA8ij0vln8aWCMvERYfqR5lqWvT63aCJIDMaAK
	qbb8N91FpbGuRIke4x4/1OxZ4wxk9/+eBcSveFZ4gmvVTqmSrAdqqPk76cvIR2NHP82mkaTnJ4xFn
	nesQBGEaVSyZuJypnxZgpDdxBQqOxPUZhjPWS2I0C+a/ZaHM2vO3l9uI/61OHZQ+mqlSFrkZoYHr8
	8m1I088hheXEnIDwqSOY7Mrkbe4Wt1Cbc94uYvPn1ODecuzt4uB6IYCum+APSlh2syJ0cvJEdj8dV
	Xc7azgM3U+ASIbwBv4xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyyWh-0000gi-5D; Tue, 04 Feb 2020 13:46:03 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyyWZ-0000g1-ES
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 13:45:56 +0000
Received: by mail-lj1-x242.google.com with SMTP id o15so13116380ljg.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Feb 2020 05:45:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kjuIkKpIuY3IO5NXFzkY+H6oMdq2hnqWewsM3UAiOzA=;
 b=kaWUQ19qxI2q6KsqvQ7NuWYLATpwkCDvy95LVsSNKvff+Icf8rUf7NF5OEj59nyBHG
 iZXyxXooCbZ9BakT7DdxeLDpnEOzYKGjWOHx51EO8FMxIUU7WTZ5jlT/6EWXZe7IitlS
 RLwnustGbOAtIakbznaCKkOFuzE1GYU4RhL9n8rurcuz5MF+7YRWXqzLxKtTcjjoHQla
 L8mr1DJpHfcDyMdHLGbzPkL3tIZ1LwugnOM0eeBcMwB8H8GovOuWkzkqvGD46bfZsUU6
 35p6FXO0JJeKy7mHUikDIszHLMvJvxr3z02SvAIgI6OHm+X2dvk4jJuyLOO+roHHyzRy
 7OFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kjuIkKpIuY3IO5NXFzkY+H6oMdq2hnqWewsM3UAiOzA=;
 b=D6GpfX1gvZbq1Rec1FfMobdxEzgxlwskLGuIeWktE7cyx7VNqtqyKqDALjvv2hbCMg
 uVWgCS3s5yvrslnrbQBAdvWDJaYKfipR1TU90dJvDRbqTCYYvK5sxzzMpkP59CUYWdLj
 cSUtR71r7hykgYyAko8ED+CNlgerdgaLGkSwULlCOcUD1WiQAtFPcks7bLzhoLHYPQmX
 Bw79pqv0V8Ib+BR6PxLqLa4bESe/AW+10Cz9mJk8XKyC1y6BNx2uEDJP677+5Q/ll3v1
 faqDCsSdgHuDRFr+HyZMob2y8ebZj4OH5SlIrcqUYUBbZNoSOuNQk7aTbxXH6lbgF3yu
 SioQ==
X-Gm-Message-State: APjAAAXR7lbAhj0L4cbr4mSgtHT4NeaJZSthXIBjuWV8tIBCfgPtabMv
 FWWcVW17Xadsjk5C7HhQ6UHRZvQ6Zwq/lh4/Duk=
X-Google-Smtp-Source: APXvYqyCbPnebDdL3Ah7VFkPwIX9LNYpKROKgH04rjXkr000ELosKdtXF2x24cnhUmr4sn6M/XjtxvIXp67SX8c2FL0=
X-Received: by 2002:a05:651c:cf:: with SMTP id
 15mr18209827ljr.288.1580823953674; 
 Tue, 04 Feb 2020 05:45:53 -0800 (PST)
MIME-Version: 1.0
References: <1580823277-13644-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1580823277-13644-1-git-send-email-peng.fan@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 4 Feb 2020 10:45:45 -0300
Message-ID: <CAOMZO5Avbrzf8jNQ301mNN3YXXPjEGYWkooae_uw=wLykMgt+A@mail.gmail.com>
Subject: Re: [PATCH 0/7] ARM: imx: imx7ulp: add cpufreq support
To: Peng Fan <peng.fan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_054555_479846_32B6E183 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Yongcai Huang <Anson.Huang@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Ping Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peng,

On Tue, Feb 4, 2020 at 10:41 AM <peng.fan@nxp.com> wrote:

> I not include the voltage configuration, because imx-rpmsg
> and pf1550 rpmsg driver still not upstreamed.

Any plans for upstreaming imx-rpmsg? I assume this will go into the
remoteproc framework.

Without this driver, the i.MX7ULP support in mainline is very limited
in functionality.

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
