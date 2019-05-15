Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 127E61F0C1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 13:47:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vJqt1EKfIC681flt/r93WRm5WxXuBSqcQB2Q1nu+Uxw=; b=qZEHg6FYM4Pj+u
	GYx1Q4DmCBL4R6EdQCidpzuzUq/TRcYv2rrymcnotwzAzacpTSlvmp4mSGGLkP4Mq9pf7uli7cztc
	rwX3d+oitPjwBLHczx0d5nH/DT6z8GMXB7sjzYab5mtw8t76wCWfVijdR0Pk59K+lPIvayBupZgMJ
	8QdlSUhcIfLGoIfqLIWHeAfI1AtStjZ2xoOs0TC4j7QNpBeykrkxZMrrdAt0NA+dm08BQqfj9hGfa
	CYfUizjNfZJe9V+ViPwEVstCt/iTVzxesRPHISyvEqyE5IMRZreaRa+4tvRD3rG2DnrvAiGbpBXmg
	LUb9z8NsXcUUDqpsykEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQsO0-00082q-9m; Wed, 15 May 2019 11:47:52 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQsNh-00081B-L2
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 11:47:38 +0000
Received: by mail-ed1-x544.google.com with SMTP id w11so3692152edl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 04:47:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UybbNuVimaoZe/obsoU7tb4m5ZUy6LvzQm9jzE+0RrA=;
 b=P3zOusdb1eGvSqR4PHA6LNUt17i57cozISGL1Z2ZbAkKaLsynOH1YiRqPEmYHygXes
 Hoa8kM/IxL3+ytbz2M0n7R9YbChiOVSJCp3VZ6Gf8HDYfa//Mp6Znqahdoc4KmJ2Vyem
 Bsr0HxWRZKVkRvadCyEoeC9SrEmqJ3WTJdyxvLr07Gf5+OfWZrc4EJ6fti3irFy78AyJ
 46eUcKL0bU7ZNnHqaZTw9zVlBkYTTlJ41VvvXTuzFQbAIYt30iDeB4wpgkBE2gspCAcA
 YrAmUx1dZsiJeL4mYNHQGjKmcyOsMb8RlwYN2r9g41m5PLXGQaiAcmK0BPS3UcOGgSVd
 oheA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UybbNuVimaoZe/obsoU7tb4m5ZUy6LvzQm9jzE+0RrA=;
 b=IpgYop6MOAEy9lZ9v9F0gNk8iNujF1+EsIJRj4qUghIivzW2Eq1XcGulRH2sMy0h5w
 le4xaBr+b6/i9xcP+PJ5nFM2dfxmaHV/tkfsBgGpz1OQ/5s5iLk346jsl+3+/jJi5XtJ
 jPw7YiJPJnSXAJ6xqRWVVHk4u4VJ5kiurn+NFMdgG0XJ4rEKM8Ydazdz9f3eXvBRTYBk
 BHm1Ir8A1FjBmFdcvMwaApcp+UYPBm/EvN08vd8jnoqTgR6xC7jcloEtmBvzhhW9/1nL
 Qj6SG/1NbyvusfrA68KUkDVzj6P0oPc6qk8HkUF3+F+KTiSPWsxcpYseaRIufycM3osz
 s9MQ==
X-Gm-Message-State: APjAAAXBtqjgecZj4tWHlUn8xUCWbVHHNWUpDYh8sjQ5rsfR7ncqMvGo
 XCov/wLGDZWrBCTKA+AQ0KFOc5VzX/M1Shzz1oQ=
X-Google-Smtp-Source: APXvYqz7aau2riG59uJ1ZUCEP38Mjgz0Ag9fasTQcc+poBDGFEgxyAXaYkwAR0bpXuEEJ7AfA9/qKPJ9PDSBAMX5sEs=
X-Received: by 2002:a50:9441:: with SMTP id q1mr42373727eda.101.1557920849482; 
 Wed, 15 May 2019 04:47:29 -0700 (PDT)
MIME-Version: 1.0
References: <1557908823-11349-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1557908823-11349-1-git-send-email-Anson.Huang@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Wed, 15 May 2019 14:47:18 +0300
Message-ID: <CAEnQRZAL4BuHP8MDDBfOXTcub8LVdZ-CyZxdzt-5dseVjMMDQA@mail.gmail.com>
Subject: Re: [PATCH V2 1/2] soc: imx: Add SCU SoC info driver support
To: Anson Huang <anson.huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_044733_700339_7B034467 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 dl-linux-imx <linux-imx@nxp.com>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>,
 "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
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

Hi Anson,

Since you are going to send a new version for this please consider my
comment inline.

<snip>

> +static u32 imx8qxp_soc_revision(void)
> +{
> +       struct imx_sc_msg_misc_get_soc_id msg;
> +       struct imx_sc_rpc_msg *hdr = &msg.hdr;
> +       u32 rev = 0;

No need to initialize this here.

> +       int ret;
> +
> +       hdr->ver = IMX_SC_RPC_VERSION;
> +       hdr->svc = IMX_SC_RPC_SVC_MISC;
> +       hdr->func = IMX_SC_MISC_FUNC_GET_CONTROL;
> +       hdr->size = 3;
> +
> +       msg.data.send.control = IMX_SC_C_ID;
> +       msg.data.send.resource = IMX_SC_R_SYSTEM;
> +
> +       ret = imx_scu_call_rpc(soc_ipc_handle, &msg, true);
> +       if (ret) {
> +               dev_err(&imx_scu_soc_pdev->dev,
> +                       "get soc info failed, ret %d\n", ret);
> +               /* return 0 means getting revision failed */

Just return 0 here. No need for rev.
> +               return rev;
> +       }
> +

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
