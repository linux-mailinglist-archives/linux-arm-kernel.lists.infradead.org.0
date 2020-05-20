Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B54331DA853
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 04:58:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R7HO6gCDFYbn3rpNqWYLcGZaGztPZH+q+0bHXbA38pA=; b=mptIFsx2EqdJ/K
	lGc9+GH+eUkx4vjA1oBr01AjLP3U6fE56uWx3kdvpjZDhjIkhBU6tAoURTrBInIY0QUIoWJ2M7BMq
	Wy0mC/7AKdJ6g2p0YG1JofZZipzvGP4xO4Soy43qBinqvMHBywfZDbt+nhJE5LP4hZfBJoXAc5TGp
	NpfOsoP+FlDrRPSjYPne3myt1ZhbQhGpeKeLYa+Cw5hwk67kj98jz1NExN88qmppXq7nSCJY5UNgk
	lADF95YXaqVGAwuiouGVxhpeBlzcWuWpexqFxgHiEgSmv5fXCiWE1GbPnQano3UnkpEDgetvMOLC6
	K4wi+ijYw7evwcXah2LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbEvl-0005mw-LL; Wed, 20 May 2020 02:58:05 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbEvO-0005cm-AA
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 02:57:43 +0000
Received: by mail-lj1-x243.google.com with SMTP id k5so1868983lji.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 19:57:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9KC6GGjoH8hnfhD8tdDUja14o6OUOJAOHW0azVQUnXI=;
 b=sjwc5wdXqJ/WxyozE/wXmrHsKhLNAFb3bRpSeOy331LwXuMTGqG836DVyBaOP6/Wbq
 Oeo5+wgEw0e/PkaVz7JR+moTkU16FJ3Y6B0vi33gNGrDrb28jHDHzfAsQD2jlBvkm5ok
 fqXs2mnILImPvEb84vfaxlykXWnoP/R4b6Q7eJ8tBJVMAbTKMVsTiA9CMJLaENAGYHgR
 aNl94nge9+6wylZDT9dWe8RbMQbIetNoH2kygBWxvj0NwGCz0VzaQcjMOrDu5Gxn093U
 DdrHix38kXpLE2L9owgtJwpJWRvEjN9vTprpUPUhzX/dv6CTpRTmdYhyOC4u9S73di8+
 ttlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9KC6GGjoH8hnfhD8tdDUja14o6OUOJAOHW0azVQUnXI=;
 b=suk+fbCgmryh4upAj21TDCo5wvHZocI28h3rEXZkjLPm/+Onc33g5TrGVhDHa7/N+o
 Ge5ylQCXjpA+xP3ZkGpQY0sWxoY97nNEaxtXO4wOkTpQTyYZujHeqQ0WTbQQYS9F8JxM
 lmOMO+aFAVBArZkL7KCZ+CAHryfIsgBJRy5uV+8dX6KUmRn/+RIQzYElPbg4WP5MWqOt
 kL2th7git8OKTc52Gv+fhAE5gISawvFkY5nFfEbWzzBkxuLDi5j2fDWfCTzRZJSsJPlB
 cblMy+WK8k1MwA32p9CbaE9DR47INXvxh0+O9l/wV9a6mRpZFZGjNodqwJLidMvksgMD
 twPQ==
X-Gm-Message-State: AOAM531UIhd2k49PRT9QYmt0+ZAoZrQZGKYsE5qKbiIkyjy0zgAV64is
 9jT2VPW7Fh6uijxDBAXkUEXuEkYcq9/ZpFGS9vtbGtVTYNc=
X-Google-Smtp-Source: ABdhPJwrTDhzAMOEdHdxMqT7mpDPk3dUGrskOlhpIObxl2pTn9btFcVuWwRV37VDRLjBTmtcxE6FMBvOjbNoa71R6EI=
X-Received: by 2002:a2e:920e:: with SMTP id k14mr1459145ljg.288.1589943459875; 
 Tue, 19 May 2020 19:57:39 -0700 (PDT)
MIME-Version: 1.0
References: <1589940278-3680-1-git-send-email-peng.fan@nxp.com>
 <1589940278-3680-4-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1589940278-3680-4-git-send-email-peng.fan@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 19 May 2020 23:59:00 -0300
Message-ID: <CAOMZO5BPPRy_XGHHyZfE3eOrmCwW_VytueY-An8qqke6HU06TQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: imx8mp: add mu node
To: Peng Fan <peng.fan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_195742_351083_B48AE0FA 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peng,

On Tue, May 19, 2020 at 11:15 PM <peng.fan@nxp.com> wrote:

> +                       mu: mailbox@30aa0000 {
> +                               compatible = "fsl,imx6sx-mu";

This should be better described as:

compatible = "fsl,imx8mp-mu", "fsl,imx6sx-mu";

From Documentation/devicetree/bindings/mailbox/fsl,mu.txt:

"The "fsl,imx6sx-mu" compatible is seen as generic and should
be included together with SoC specific compatible."

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
