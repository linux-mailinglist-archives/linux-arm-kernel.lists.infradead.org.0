Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98931184477
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 11:10:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y7XU/sivoBCiKFymuLQhxxgmtH239Ett0P7HbTyVvw4=; b=qENThl7QZKkMsG
	mMwJPa59cUcGatRCadCYA4YngdApFDrgs/Bdjcs+5+J41RIvWPFIjZsIUiURNt6zdu7ICyHoAp9wW
	Pkq+fiwdx08R44F4yjlOYVHmE6cJyySnrQe2l6p14elP/UPhYl6CvSGp4C8DNDhdVobHN0CXG/YSo
	jStV7357IqnKbkzaR+jMIpaqt7aQRu5msEcWZsJV+ZLr8bttfjRSJDkpJaAYkx9Y1aQrrvcZ4dByo
	hzSMba2D0YtpUTvvGb4Lm02b3aqZzq6uKxDmMtaFHZ4kZi2IfBXSoQUN38vkYk6TcqPinpErzpM44
	Pw0WpAvFqgjdOVccP6yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jChGN-0000Hn-H4; Fri, 13 Mar 2020 10:09:55 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jChGE-0000Gn-Qw
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 10:09:48 +0000
Received: from mail-qv1-f47.google.com ([209.85.219.47]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1McXs5-1jkeQz2O9F-00d0A7 for <linux-arm-kernel@lists.infradead.org>; Fri,
 13 Mar 2020 11:09:40 +0100
Received: by mail-qv1-f47.google.com with SMTP id r15so4250199qve.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 03:09:40 -0700 (PDT)
X-Gm-Message-State: ANhLgQ17sBMlDYjAtQabslhGuMMqxDs24VglhNz+GFledhEJEYRB198M
 NL9HUOfXQn1l9HToC5dPScC8NQtc2M6GDlGSPqA=
X-Google-Smtp-Source: ADFU+vt+dplEfE+ba1F4rk6ReC6fOrvYlwWx8VR6mDemNP62902HsNZ8v7xXfhRh1qV8DDzdMc9fSjwZ+1FAfpkb8Yk=
X-Received: by 2002:a0c:f647:: with SMTP id s7mr11509624qvm.4.1584094179347;
 Fri, 13 Mar 2020 03:09:39 -0700 (PDT)
MIME-Version: 1.0
References: <1584070036-26447-1-git-send-email-peng.fan@nxp.com>
 <1584070036-26447-2-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1584070036-26447-2-git-send-email-peng.fan@nxp.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 13 Mar 2020 11:09:23 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1T5+9XioY5qW4Eoxbanp65cS+ffLie+erANw4ywUEAGA@mail.gmail.com>
Message-ID: <CAK8P3a1T5+9XioY5qW4Eoxbanp65cS+ffLie+erANw4ywUEAGA@mail.gmail.com>
Subject: Re: [PATCH 1/3] pinctrl: freescale: drop the dependency on ARM64 for
 i.MX8M
To: Peng Fan <peng.fan@nxp.com>
X-Provags-ID: V03:K1:6KuKPur7/dqhoxmtHbQDQ5PPgSSGdg9+iTcElqdJSxb2NLZvq75
 C5BCzIy+dDoLQ0ng4eOo+M/o4o+jI/GKNxk+mGZtB03sGlR/zPrH0Vt2zTdy/ZJofUf74hw
 CerzJujUYX9FDUtDSCgTfQ5U5Er2ByEtndwgbcHWZDCIbPhDV1Si/GoQQEAF5XjXV4Ht19c
 WjEfJRhLzppLK9V5m83Og==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:vTgCOQhdbZ4=:FOmdsoNpN7ozBCG8EWalTs
 AyCNkAy6aMAoFcQxJLsJ2NgDwwCy5G592lPbOr+k7e4YWYzaDe9SRrVxki0eQjU5NAnZAzZGj
 q4lczQOzHRNlcjECv92GYJNehswzUdjTyE1gHcqtH6GGDhwQBB50Eh6NdPP1AH9vDVT1iPmoK
 5Md2KA94+9hlQhrImNZ5Lk4+laN+kYchQcVuUhsnTt1yqY2TR/ATCtttIDwQbyQOIQ/0T3WeK
 5NUM1CG7M7SmCecaXKf3DbBJj90573OPzwlzcSKopZsAmrXKJkX6fvaQAZF0D1oL97vXYnabt
 M4hE+WxOlNPgj5sr3gcF9DAO2Bhn6jrJXpt0k2QehPmYPmu9GyA68kCoTvZPyC63LYRlQ8ZiQ
 gd2erXIHRgYv5Akr5wQ0nqKbH3v3s4Cqx0rkgzrdnpS6R8VBEgWZPG2MDn8EdcLGfSvcPzZjQ
 lmlmADbFRGeMeuo915ab2bCkWlDFugtQdph0AEwfNDKF+mGxHJQBo+VKPoFLHEIeuXHg5yAK3
 JOqPE8ZJOhirDMdaroZmwwJog03ZzfSMFP8z5ysKZwoIJ7AMg/bi1AWR5+P/INFxcgDiGLW9L
 EB5x5fogO55im3cnX0fSAWrJnZENk4PK/bdWqFO0UhPbcX9gzC+sGA00BqO5vwCP2vR6JnVPK
 2r2Enhzc9Y9O2mShM93CZ4xR6Jg3GzkONq+dLChqy1yG2n3UMUuuVwUBSX4fFBy6sVenwnkOY
 JVTJh8Y3NIbC5CAMN0FEbv2jRvecCNdBJS95rg7dmt78P4dlz3DISzFOjDENNdiA9rmpHuyQl
 VK3ig1rTkSe0Vz6FxuOlhZgEamwvOgZS/ABw7orHrGSrnN9lpQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_030947_165254_F290BBB5 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Anson Huang <Anson.Huang@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>, linux-clk <linux-clk@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Linus Walleij <linus.walleij@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 13, 2020 at 4:34 AM <peng.fan@nxp.com> wrote:
>
> From: Peng Fan <peng.fan@nxp.com>
>
> Moving to support aarch32 mode on aarch64 hardware, need to drop
> the dependency on ARM64 to make the driver could be selected for
> ARM32.
>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Acked-by: Arnd Bergmann <arnd@arndb.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
