Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D48C01C51F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 10:39:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IVVytFe3Id8gYXZmnOedlBkI51cvccE2Chwde6zu+jI=; b=jJ4NyUMR7DfQqp
	Tt98nunVjqana2oJZB3pybdWtxT5rC9WA3lWHbys5WFNYwTQkE9XjuXB4Ujce8Mmg+U3THFlj0ao5
	cSEZO7mNOb8xz2aGy/9W06OJ1LUzPUAFAolC6y5j2HU9uOnLFSoSg+MCusObnjsVbY+QaK+TzvN8z
	gaNo4/bnZ+SBXsuGFxZ0ehvhYdeiKKimi9IhtzGhLatMMByCOAnmV8+hDinebIOaURgkymqtulNgh
	0v/eohH3MS63vq3dfVMu9uLsphUsQgnkdGYCq82WBSipYFxBGMkTlf0ze3kxTBb5hRM/snWhp1XWc
	lRrhFqHgixhDC/wowxPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQSxr-000404-RO; Tue, 14 May 2019 08:39:11 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQSxk-0003zj-Ev
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 08:39:05 +0000
Received: by mail-ed1-x543.google.com with SMTP id a8so21678419edx.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 01:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RVI9iWgc55Qe0q3tLtvRyel7wrcIN68nuDWX5YnzBtc=;
 b=F15QTDXnjQ7h1JnwI/L/yLlLHNZz3LU5SuAP4NtoAxncLb9P+u6MXb0HOEomLvKrBX
 3R9ouMCzZJj6s16y+Np4CXsnPFiAOlSVa8xYckHTSa1HLBClfVhbUguAPcjWoqOvWPuv
 tV5M9+7jxZSHo1moP4c4ra1XRQeRyuTrJn4kI8khIhUhF/EpSRRo3Atj1lPHAgnIHylm
 wvMtnm6MJ/nMjug4ihZ4d+//xf/pNpsXyGoDbE6mlzji05xNaUfGMsL3JaqClUCqmqTC
 o/nyt/ObxuovlVXJDhYwxJroRLP1vPfKnMjW35G99l4PLkfjN/A6jJj1l8dvl/9C2oAg
 Dd5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RVI9iWgc55Qe0q3tLtvRyel7wrcIN68nuDWX5YnzBtc=;
 b=hb1bM9jEVLc/YFjfpJVptgIT/zz1Rl/yvswcnkq+GkRQ1SO3yKHcpsfm3wItxn2KsP
 pn5HqHReRO/1SXA6CwO2mXaAHLxmwVLcmzM1IWEjLdyLWikyHlX0U1Gz8/ccjs2J8Hd4
 PAsTu8yp5o+o+Oml8RPFeES5GVU8xlYMIyUrPLYteVYG2kFTa9CYXU+mPm6VW/FzayJ1
 7VhYST3iNn12MSJPU9m/CiCts4fBR+WQtkZAFeyqr9iL00mtn5IbZ1QQfRdizCSWYUzc
 AQcRS1DhIYX8EP7gZelRFS6omu7BOlfbofFplGiwIOnBeietqHmwQ/vXgqERYP+UeOY5
 wp4A==
X-Gm-Message-State: APjAAAXMneG6BjMovbsmk1fOeIqQsydhLcaVw3P6bGsCSzU1y2PcrFlU
 8zZj3OqSA5dmyZfyaUs1Mrzf1vzDwH7AyI/uXxI=
X-Google-Smtp-Source: APXvYqzsuyJYkvShd5DlSehIbVnkw3GSm4SjUrW2ugHXKkw4JHSYr09nLMugB2wNXgGzymTdiBIdkaEWk1hFz8jrH1w=
X-Received: by 2002:a50:9441:: with SMTP id q1mr34683894eda.101.1557823142649; 
 Tue, 14 May 2019 01:39:02 -0700 (PDT)
MIME-Version: 1.0
References: <1557716049-22744-1-git-send-email-Anson.Huang@nxp.com>
 <CAEnQRZDSTuUMrc9AC1S2zfo0PdQ-v35GmNrf70Zoasid_XMJzw@mail.gmail.com>
 <DB3PR0402MB3916A46BFFE5E6F3D4832A33F50F0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB3916A46BFFE5E6F3D4832A33F50F0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 14 May 2019 11:38:51 +0300
Message-ID: <CAEnQRZB0fs2g=h4pq97t+E9U9LOxSafYhx07Xia_J+snjqefEw@mail.gmail.com>
Subject: Re: [PATCH RESEND 1/2] soc: imx: Add SCU SoC info driver support
To: Anson Huang <anson.huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_013904_502698_104877D0 
X-CRM114-Status: GOOD (  14.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "maxime.ripard@bootlin.com" <maxime.ripard@bootlin.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>, "robh@kernel.org" <robh@kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, "agross@kernel.org" <agross@kernel.org>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>,
 "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 14, 2019 at 2:34 AM Anson Huang <anson.huang@nxp.com> wrote:
>
> Hi, Daniel
>
> > -----Original Message-----
> > From: Daniel Baluta [mailto:daniel.baluta@gmail.com]
> > Sent: Monday, May 13, 2019 10:30 PM
> > To: Anson Huang <anson.huang@nxp.com>
> > Cc: catalin.marinas@arm.com; will.deacon@arm.com;
> > shawnguo@kernel.org; s.hauer@pengutronix.de; kernel@pengutronix.de;
> > festevam@gmail.com; maxime.ripard@bootlin.com; agross@kernel.org;
> > olof@lixom.net; horms+renesas@verge.net.au;
> > jagan@amarulasolutions.com; bjorn.andersson@linaro.org; Leonard Crestez
> > <leonard.crestez@nxp.com>; marc.w.gonzalez@free.fr;
> > dinguyen@kernel.org; enric.balletbo@collabora.com; Aisheng Dong
> > <aisheng.dong@nxp.com>; robh@kernel.org; Abel Vesa
> > <abel.vesa@nxp.com>; l.stach@pengutronix.de; linux-arm-
> > kernel@lists.infradead.org; linux-kernel@vger.kernel.org; dl-linux-imx
> > <linux-imx@nxp.com>; Daniel Baluta <daniel.baluta@nxp.com>
> > Subject: Re: [PATCH RESEND 1/2] soc: imx: Add SCU SoC info driver support
> >
> > <snip>
> >
> > > +
> > > +static u32 imx8qxp_soc_revision(void) {
> > > +       struct imx_sc_msg_misc_get_soc_id msg;
> > > +       struct imx_sc_rpc_msg *hdr = &msg.hdr;
> > > +       u32 rev = 0;
> > > +       int ret;
> > > +
> > > +       hdr->ver = IMX_SC_RPC_VERSION;
> > > +       hdr->svc = IMX_SC_RPC_SVC_MISC;
> > > +       hdr->func = IMX_SC_MISC_FUNC_GET_CONTROL;
> > > +       hdr->size = 3;
> > > +
> > > +       msg.data.send.control = IMX_SC_C_ID;
> > > +       msg.data.send.resource = IMX_SC_R_SYSTEM;
> > > +
> > > +       ret = imx_scu_call_rpc(soc_ipc_handle, &msg, true);
> > > +       if (ret) {
> > > +               dev_err(&imx_scu_soc_pdev->dev,
> > > +                       "get soc info failed, ret %d\n", ret);
> > > +               return rev;
> >
> > So you return 0 (rev  = 0) here in case of error? This doesn't seem to be right.
> > Maybe return ret?
>
> This is intentional, similar with current i.MX8MQ soc info driver, when getting revision
> failed, just return 0 as revision info and it will show "unknown" in sysfs.

Ok, I understand. Lets make this clear from the source code.

   ret = imx_scu_call_rpc(soc_ipc_handle, &msg, true);
+       if (ret) {
+               dev_err(&imx_scu_soc_pdev->dev,
+                       "get soc info failed, ret %d\n", ret);
                /* returning 0 means getting revision failed */
+               return 0;
+       }

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
