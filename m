Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A54E1B6B5B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 04:30:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5/cK7V4vQNPB0qDZTS1vln/noxlHwDWndFrO7ByHrDc=; b=jAxEStr7cmBSVQ
	wXPTuV2Wsxqr6TLH3bJeM4H9tuOpHm4h3gadeodu5NVlOFQPO835HxXQ/EJE1ibVuDkIsIg2GpfYc
	wiXB3SMI9bezZ8Bdg1bPO0mnfjk4TTxdglo/jey/8R1CaDXGaQ90Pnp40OmwoyVYmQktC0SaiG8+Q
	SmXOvD13QeqlQ+G0XqSnsocT2FtBo7MpyUMDnoVZj3a7GPwYrwIiG6yqFotUGnmJWFeaG0zDU6MTf
	jTUHaOPKSf26fdPB9YDPF+oDcP+A/ujyeCz1PkiQXI2Dt1V+hvxRbHP1SQjDIaKiY3y1b9muGWN9H
	YhSdbYI9z89mJPpGXW/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRo6d-0006mE-Ih; Fri, 24 Apr 2020 02:30:19 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRo6U-0006U1-6A
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 02:30:11 +0000
Received: by mail-lf1-x144.google.com with SMTP id 198so6428428lfo.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Apr 2020 19:30:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mWi/vih/fdORw5r13nsVhcqP42U/y5SZ8mxbRZKotUU=;
 b=iA7ZZmUVUGkgEzLCHwt06en1AYT6jF+LTthqBBF9qgERwzY3dnZmrm5i9h65YaAYEZ
 ngufClNYkXK5JURrY14EwntZ/mnb3L7+kN9CPHzBiuA8y9pEdUExgS44MNBaspT58jUf
 yRqmLB442NxQIeVi9YCctmUSPCY6vGfKYz1OvoIIa5Git3ANQFwXfYHlwEAKQ2vCpWgr
 HmJ/A0V8U/hU0VQvzNWOxmTcDjxV0LjSi1amZLySc1Ls5MOOJ3wsvMoGcdV3kGg3YwV9
 7R2HYwHJPJJMMRU+usLhuljFZx6iFJra+FWojrCJk5chGUp55GDGZ5yEX8puiraIobG1
 oW2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mWi/vih/fdORw5r13nsVhcqP42U/y5SZ8mxbRZKotUU=;
 b=p7xJwhpb2kuGYWbCdZgb0zb7iDDub8QdGA9+Xq20yKgIhEpo+2o7W/gV7u7S5+I8X/
 UH1uuBVLJnooe94PVe96tOwafajb9xFu8qqQR5Jg5SyIs51stbgvyNtacJnjj+K5S3FY
 qY5E6QLKmY+vP6yvLJvI5eydQxEE/pNoIEIrcjzkpGD/4CEHF+wupO/l4CEqYGjR2DsL
 iU9p+ywyu624cbaucTRHww/JsFZ96rV0tkpwP4G7eGqFKH/H3VINZBjVdX8/yArjwCHR
 nPLj7KKbkAEcWcNf3hrDpJSvM/96hUp7NUpR7Fe6e4m8KeU37y3sPG9IsOeFEMAns8gg
 pcqg==
X-Gm-Message-State: AGi0PuaJJJBt4J9Ha84iMfsR8x0NA+Wmift1GJjKlhnL8u+IvQvH5gXN
 JNSaH6ns2NAaczRbljUAP+T1O9dFaCxlo48j9MU=
X-Google-Smtp-Source: APiQypIbcKnB5kTwprnVNJIZcWAqoLug/rgqXZfGeEQRYeTrvFHSY2W4b0fXow22LMXqVZXBll4OCt9xuwb8wxJ583A=
X-Received: by 2002:a05:6512:54e:: with SMTP id
 h14mr4532469lfl.56.1587695407993; 
 Thu, 23 Apr 2020 19:30:07 -0700 (PDT)
MIME-Version: 1.0
References: <1587692801-12149-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1587692801-12149-1-git-send-email-Anson.Huang@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 23 Apr 2020 23:30:53 -0300
Message-ID: <CAOMZO5CmgxUggzZxpmeHT8Rh_Q9XXWvsMopOzq7NfVpkCsLVQA@mail.gmail.com>
Subject: Re: [PATCH V3] dt-bindings: firmware: imx: Move system control into
 dt-binding headfile
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_193010_255629_D1EB51B6 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
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
Cc: Amit Kucheria <amit.kucheria@verdurent.com>, linux-pm@vger.kernel.org,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Peng Fan <peng.fan@nxp.com>,
 Oleksij Rempel <linux@rempel-privat.de>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <Linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 "rui.zhang" <rui.zhang@intel.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 23, 2020 at 10:55 PM Anson Huang <Anson.Huang@nxp.com> wrote:
>
> From: Dong Aisheng <aisheng.dong@nxp.com>
>
> i.MX8 SoCs DTS file needs system control macro definitions, so move them
> into dt-binding headfile, then include/linux/firmware/imx/types.h can be
> removed and those drivers using it should be changed accordingly.
>
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

The From and Signed-off-by tags do not match.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
