Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E7D124727
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 13:44:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bhtTJIpX6++9+D3T0HiaO02/LgmY07OQKMDJl+OUh4c=; b=ijhAC0vZgf2myN
	3CMjgs1ojcqZ50/63DoWGVeYS/yon26olWG9X+TfYuFxaVdJ7iyj4Wjl2PFmK3illnKnVrrbDSl1J
	pNyMQ4HYXsGYebj9DIHbLb9QJevmDwsbUbkLFxT3Nn0BWsk6vY3dF/9wqCek4bcnh+mJs4RmiitWy
	j0R6oyYdOLsw/p8jKnEr5g26X+Ap0aBrLD3i8XplAKowAvffcINrDtLTrxBC7/U1JuuxTDBe0QU1I
	WtvRDcwPrVxPlNi7q7WkFVOlKFkyD/dVmSuEGu5ASXNqCUwYqPfZ9vhcdGRw3jVZ3c8DHqvsd4Yaf
	YBwrYEs6Vm1xAlaVph/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihYgw-0000tw-KX; Wed, 18 Dec 2019 12:44:38 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihYgb-0000hl-FB
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 12:44:18 +0000
Received: by mail-lj1-x244.google.com with SMTP id k1so1331933ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 04:44:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GuNJY1Eqkdr1yzpz8WFLWL68ldC+kkUguGLPAWGyiKg=;
 b=Uk9ZmoqCJrTgBGsW7QgSAo1GJ0/FOCOTb+LmR7/Tli2IwqMf/QhDVrVRYg2WsC9EgT
 KNW72dnQE5tUAyzvk+4Gbh/AFXqhROHqgGML3xtdEKeS2nMacSpCV6/AjKpByY8qxxND
 SYsF9Qm4t50Lm6trf+CmkjR1ZgAdKQApUP4fcnjkFfhvJytNr7e9xlZKpp2MPCI/3GZh
 a4Yg0rVe5zEUH7w993qA5GmD4EksreE0IWif7g1fEnaj8d/Ct9DKidnpsIrHITliOEQl
 QNZq/G9y8pYI5k0YkKkDiaCoLU/SQqKFnhSviRdbBv8Zl5R0GRLkkRgQc+WjsrPFN1Xi
 89IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GuNJY1Eqkdr1yzpz8WFLWL68ldC+kkUguGLPAWGyiKg=;
 b=ayTCDsORHGsrbe77MUiBDt/A8GG0dCEQdUWqf9QmgUoR0hl/87OPsn2l7UY2r5+off
 M0z2k3hWXWm/dWBQiAgotJa/yQn62JEtuDnEzydOGGQRbiKoxYgqR9K/z2coCEa+2Xvb
 SEYAfVt07xGgtz9mPX4mWohlWsuAfRltF6KaUfrbZ3mVSDt/hqZl0rLpjrp2WNpMKOZP
 W8OQrk9q/riLLsEANyvkneFdCw2TUl1+mzkl+ISxB7pghYShC6ex6oVuZ27uzIvkuR+Z
 UulgLfIMqj/1BRBFaUdqHd10mY/ytXsNUCeX9WO1ZXDsbULLsXqqnBflh3ujOF0e/DDS
 wakQ==
X-Gm-Message-State: APjAAAUaq5FlrsQf0krop0Vu4ZmpNX39fkZ6dUC8Fbi+T6x/20c1Yg1A
 5/ZqZC0UT1uWdAMKB9VZkbkXyfs8rN46URuxzRM=
X-Google-Smtp-Source: APXvYqxLHrBjXy5iF2n5zmXApo8E8VCToPLW9VCn5+hUXoH6t4y2DqL90iI7/3WHJVVYZQeBdsPWYXGBxdQBioaBcD0=
X-Received: by 2002:a2e:6e10:: with SMTP id j16mr1623824ljc.202.1576673049367; 
 Wed, 18 Dec 2019 04:44:09 -0800 (PST)
MIME-Version: 1.0
References: <1576671574-14319-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1576671574-14319-1-git-send-email-peng.fan@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 18 Dec 2019 09:44:04 -0300
Message-ID: <CAOMZO5DEDN7bNhqgyh-Qa41MJ2LAatfG_4=VvywCk53pK4e2vQ@mail.gmail.com>
Subject: Re: [PATCH V2] arm: dts: imx7ulp: fix reg of cpu node
To: Peng Fan <peng.fan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_044417_565604_D03422DC 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>, "baruch@tkos.co.il" <baruch@tkos.co.il>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Alice Guo <alice.guo@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 18, 2019 at 9:22 AM Peng Fan <peng.fan@nxp.com> wrote:
>
> From: Peng Fan <peng.fan@nxp.com>
>
> According to arm cpus binding doc,
> "
>       On 32-bit ARM v7 or later systems this property is
>         required and matches the CPU MPIDR[23:0] register
>         bits.
>
>         Bits [23:0] in the reg cell must be set to
>         bits [23:0] in MPIDR.
>
>         All other bits in the reg cell must be set to 0.
> "
>
> In i.MX7ULP, the MPIDR[23:0] is 0xf00, not 0, so fix it.
> Otherwise there will be warning:
> "DT missing boot CPU MPIDR[23:0], fall back to default cpu_logical_map"
>
> Fixes: 20434dc92c05 ("ARM: dts: imx: add common imx7ulp dtsi support")
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Fabio Estevam <festevam@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
