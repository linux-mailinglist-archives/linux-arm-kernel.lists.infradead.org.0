Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07FC417618C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 18:49:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WsThwqgxNJm1qlGUeSMZkSTlgOaXZ+mAe57vx8b652Q=; b=PTx0O4Y9CAdFG7
	v77yzze6iukUK2HxxWw/IyvBg0LxxaxluyrCTtlfClmXSyz0f/hJDBrD++WoXTyeduYELXugyirLT
	S8+AI0WEi8zMMRBI9IKPIz3H9H49T5Ric4vQGdNAAy46Uhc+D9kR/YApV4YTWHPuLq1cPQauAjc0P
	ehJfWyITLiCoo2zuqzwGJcMS0p4k1IlAl8lazMENb/RX33ZonIjeg1XOC+f7DOb1/EAPqD1bAZlty
	EWzkY4Ozu8oogSDRkoj504+2FpV0Wj3jbGwRWJnAtXGe0yRdoa3Cr1gtgMECmPCXWXDizRdDqy5r5
	rXI1gcpmyNN3b2CfwBng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8pBv-0002g1-NE; Mon, 02 Mar 2020 17:49:19 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8pBp-0002fX-OQ
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 17:49:14 +0000
Received: by mail-lf1-x142.google.com with SMTP id d27so229507lfq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 09:49:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gUu1wzaanq2EdQmQjBWfzQcQ7Y84OgJMEq7zr5n2p/0=;
 b=ZgcbDHojtwEVgyZCHT3X+9NU9qMzTPpRnpZXGQGqhJ+zQ+Kk45gGv2mn2YMjUYmC1V
 96MJnffx07TFgzfrnXg/dkVESlb9KSKuKJ7tiODuE+Rmk3plG5tR0alzQt3A9rFSVcYs
 xhMKIJN0e5cZlIqHlrvWL4hyMSyiVO0Z1YeQGPwAmf75L4vHRLQzSJqpnB9IQUfA2M5w
 83A2CcAa8zZnY1QIv5XO3avPA7ImG9h/aO2cOOjTUlHiNncnITq4pbkpQYQHWLTFdWVs
 rhkk1xQo6BtR7qJTgQch7BBuoHK7EZOQUmmM1tCdlUPCqBcQexSGulp9bd7SAIRbG+bl
 Iakw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gUu1wzaanq2EdQmQjBWfzQcQ7Y84OgJMEq7zr5n2p/0=;
 b=Ax3mXM9VxjkiAAFYx2LrWo2iEQFLVritdYLUWtLDik7no701xBOxZduSyHKEtXLyt9
 FSba5+xCbaNDi+I/J1j7JSQTEY+s8njG/mgnjH0ip+J58NlsuQU/p2JHr+7ToH/TnJvO
 Fi3YJm/XVskv0iPeGDHoF+Nm1KKcvJqA5k62G1baFrNZO6yVt4nhGIzXXrVMqdu9Sbrt
 Ztx9eB0qTs3ZK+a1f9CfC9e5wfV27eqM0gC1KMRSgfmUYQB8sO8FTZYCRu88UOiS5Stm
 GU5ha/w2IdLgLWm/EEWm3y9quf+0qgcEjgnMng5W0llJ1DQcdc6GrrWgiGC1wF5ke1dF
 BzYg==
X-Gm-Message-State: ANhLgQ2WBTRkWKfixuh39ueuN3wYPg029vVd+U55vT2dRlJejIIJIFlJ
 brZogNRN567eOB/EvG3LuFs9ORjxv+eg0jfhpU4=
X-Google-Smtp-Source: ADFU+vsDhZEdarbEFoLsP6WxRJRd/vyQxpntoFm7v88XUxtZTItvbvqaFKCQM5EIaEaYlN6Dvu+rqPUpEhML5PGW+U8=
X-Received: by 2002:a19:4344:: with SMTP id m4mr163017lfj.140.1583171351354;
 Mon, 02 Mar 2020 09:49:11 -0800 (PST)
MIME-Version: 1.0
References: <1582099197-20327-1-git-send-email-peng.fan@nxp.com>
 <AM0PR04MB4481FF78BB300729E59D6D8C88E70@AM0PR04MB4481.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB4481FF78BB300729E59D6D8C88E70@AM0PR04MB4481.eurprd04.prod.outlook.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 2 Mar 2020 14:48:59 -0300
Message-ID: <CAOMZO5CBSL4yn4m6n56qES0jDVUQZJSGZyCxng1Kg7fvD5k1JA@mail.gmail.com>
Subject: Re: [PATCH v2 00/14] ARM: imx7ulp: add cpufreq using cpufreq-dt
To: Peng Fan <peng.fan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_094913_819562_A16D0D69 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peng,

On Sun, Mar 1, 2020 at 10:40 PM Peng Fan <peng.fan@nxp.com> wrote:
>
> Hi Shawn,
>
> > Subject: [PATCH v2 00/14] ARM: imx7ulp: add cpufreq using cpufreq-dt
>
> Is it possible for you to pick up patch 1~8, 12? Or any comments?

I haven't tested this series, but just wanted to be sure that 720MHz
operational point will not be populated on a system in LDO-enabled
mode.

Please confirm.

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
