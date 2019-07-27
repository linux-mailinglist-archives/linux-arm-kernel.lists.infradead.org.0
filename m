Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB30B77748
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 08:33:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a6yqkdtmdhBETGUaHFDzUSirVPXBtXVoRozdr/WRGt4=; b=JuwJtakbra0q6Z
	XTUC0z4lhwQNylTcevQYMDTYakNsHJnw3yquZiEYdck8RL96XVIEA9j3qmfjpsoTpI5xj0azxrINa
	O4PDaad8lcD4eYEUsu8v+0otwOQ5YtPH9J0xZlwaRMYLwWbdx+etEgFhQn9501zrcFBzlfE225juB
	19TS2PgIZqKCr/iu7/VZPQdRB60ErlLUeSqSW8l4HV9oK7yOGrhnEJ4l9rP0HA+zuvQ2tJARmcGp1
	2OaigNdLyydZHxu7Q2Y7nWt3smIY6lOk+vPCMUJ9jN4egtjA/vVlxs0aGsnbRGMQ6XmIE5i8MQYnn
	y5O9QKLLODxOY6m17ULw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrGGu-0006j1-UR; Sat, 27 Jul 2019 06:33:37 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrGGh-0006ii-P2
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Jul 2019 06:33:25 +0000
Received: by mail-wm1-x344.google.com with SMTP id s15so27932721wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 23:33:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ldJpVA6CE8TYIFWLOiSPguYs7EOGYw+Dfb3wpQniKEw=;
 b=sPAPHVvj/MDKirz5G4DrNwsHaEC0OfA1zsJsGk2qMS1qyY87+dcEx7MzdyqHWvfh+e
 zPkHdYDZdYpEHzIPzgrYVsxPJMz/2orE7rs6BQcAf1EnyZouv2q9YKBs6ULpldMnIoRw
 DKPC8U0a+vCYNaheHFFXB/AVlxozJpJI16dQxFkPak/RBGY2p15dte3hJ3E9Id2vRUZQ
 sfC3oIjEse/IRiiXQNnfhQNLPlukknwB4Qcy0Sjz5+52G6mINUwuiwSdY1+CeXvVQWSc
 Ap8uXbYfRIx5yi8Gy6GbGBjXPVMRQr4arZd6854a5NbouDV3IWi6pRu6GhSevHiJgD82
 OsAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ldJpVA6CE8TYIFWLOiSPguYs7EOGYw+Dfb3wpQniKEw=;
 b=qYse1MxDOAnrrLoXmiqcBfL/bBgL/RUvrSo6cKBnnWvDjRRT/vQGV+OCLX2S4Evi9X
 a1gp/tH1wBkfOwJCcPk/7NwL0pB3C4CIKhHUCy5XqlOxmGqhG+gHKP5Ez0WjXHcUgVw+
 aum3QEOKqZG2wico0rn+uhcim7vhgSGDs8lt9PqGHCdlBY5UNX+YrUlikX1GYGRYUNbd
 cOsGXUC3hjroiDIBc17MUMFkHsG+4NHvh9qkBbbaVC/TBl3yJ3WJ37aENCVcuHgENddP
 Nbx3/5TOYlEeI4MxU1IvTbhNtFHU3DzwgsoQOEKr/xoJuZUpFg3u0DVKqi5KNlyWl305
 CRNw==
X-Gm-Message-State: APjAAAWS/FGd/GoMWBFYPWwV+o4qbxMylnFnlhilYoWE+06IqgQ6Jk5R
 2lz9V6+jgNOedUW6pW1yq4S6JoZk2iZAJlOxWCM=
X-Google-Smtp-Source: APXvYqy92oOEaSw9pO9I2bT0W1j8OkANGqP73txRdDJZYc35yUpNin5FBhApbrCoeq1jkR6QhmZfNC1vyrlkYdmvbdQ=
X-Received: by 2002:a1c:96c7:: with SMTP id y190mr81779074wmd.87.1564209201152; 
 Fri, 26 Jul 2019 23:33:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190705045612.27665-1-Anson.Huang@nxp.com>
 <20190705045612.27665-5-Anson.Huang@nxp.com>
 <CAEnQRZAZNMBx3ApVmRP8hYPw0XY_QgR-saE6WLcT8oZmHPCxSA@mail.gmail.com>
 <DB3PR0402MB3916233A56CF5DF778115716F5C30@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB3916233A56CF5DF778115716F5C30@DB3PR0402MB3916.eurprd04.prod.outlook.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Sat, 27 Jul 2019 09:33:10 +0300
Message-ID: <CAEnQRZCrZybzcy__u4p_Eq4zSVc2ESyfKLk5sPf1JYba1JSOiA@mail.gmail.com>
Subject: Re: [PATCH 5/6] clk: imx8mq: Remove CLK_IS_CRITICAL flag for
 IMX8MQ_CLK_TMU_ROOT
To: Anson Huang <anson.huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_233323_815844_2A262612 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Carlo Caione <ccaione@baylibre.com>,
 =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 dl-linux-imx <linux-imx@nxp.com>, "rui.zhang@intel.com" <rui.zhang@intel.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "edubezval@gmail.com" <edubezval@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Stephen Boyd <sboyd@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jul 27, 2019 at 9:19 AM Anson Huang <anson.huang@nxp.com> wrote:
>
> Hi, Daniel
>
> > Subject: Re: [PATCH 5/6] clk: imx8mq: Remove CLK_IS_CRITICAL flag for
> > IMX8MQ_CLK_TMU_ROOT
> >
> > Hi all,
> >
> > latest linux-next hangs at boot.
> >
> > commit fde50b96be821ac9673a7e00847cc4605bd88f34 (HEAD -> master, tag:
> > next-20190726, origin/master, origin/HEAD)
> > Author: Stephen Rothwell <sfr@canb.auug.org.au>
> > Date:   Fri Jul 26 15:18:02 2019 +1000
> >
> >     Add linux-next specific files for 20190726
> >
> >     Signed-off-by: Stephen Rothwell <sfr@canb.auug.org.au>
> >
> >
> > I know this is crazy but reverting commit:
> >
> > commit 431bdd1df48ee2896ea9980d9153e3aeaf0c81ef (refs/bisect/bad)
> > Author: Anson Huang <Anson.Huang@nxp.com>
> > Date:   Fri Jul 5 12:56:11 2019 +0800
> >
> >     clk: imx8mq: Remove CLK_IS_CRITICAL flag for IMX8MQ_CLK_TMU_ROOT
> >
> >     IMX8MQ_CLK_TMU_ROOT is ONLY used for thermal module, the driver
> >     should manage this clock, so no need to have CLK_IS_CRITICAL flag
> >     set.
> >
> >
> >
> > makes the boot work again.
> >
> > Any idea?
>
> I just found if disabling SDMA1, then kernel can boot up, it does NOT make sense
> TMU clock is related to SDMA1, I will check with design and get back to you soon.
>

Hi Anson,

Applying Abel's patch:

commit 8816c47db6a82f55bb4d64f62fd9dd3af680f0e4 (HEAD -> master)
Author: Abel Vesa <abel.vesa@nxp.com>
Date:   Tue Jun 25 12:01:56 2019 +0300

    clk: imx8mq: Mark AHB clock as critical

    Keep the AHB clock always on since there is no driver to control it and
    all the other clocks that use it as parent rely on it being always enabled.



The kernel boots up again.

It make some sense. I don't understand though why having
IMX8MQ_CLK_TMU_ROOT as critical also "unhangs" the kernel.

thanks,
Daniel.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
