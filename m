Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F5231BB9
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Jun 2019 14:36:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7u5E10nTPuzZ+wN2hQQ6cKJYZavvl+EI/fQaUFkLc0c=; b=Xq8doFJGqSprAs
	K8iIfVEXDvmCVXDNiIQxGYZUA9z/uGwlbrGgqIVmloXOZztRvs5e6jf+UPgwZ6bq8MqvK4GVNZpGR
	dSLgwAvflSP5L72tK/vUJQuJLCbVHvwg+YLBUKnVRNLXvvketmOuFSu95AMeKLUGqMqWLJgf1NpX8
	mQEA6vcInBE0rIgFpty7txfMuERmEuWHZrlmLuvSw/BR1297GZiHYN/QdlTvAsXSYEot0L8dBDCti
	tts169z6Rn0/kp3zmuoscDGgrMRtSiglYJFXNZHPBNFfVQacfiGxqo82IlhLwGiUX2HBt/ImsQGu5
	oMt8TaHDLFKFKHwh3YCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hX3FM-00060P-5e; Sat, 01 Jun 2019 12:36:28 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hX3FF-0005zp-NI
 for linux-arm-kernel@lists.infradead.org; Sat, 01 Jun 2019 12:36:23 +0000
Received: by mail-lf1-x143.google.com with SMTP id p24so3618616lfo.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 01 Jun 2019 05:36:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KjmTEVuPQh2PXyikcfpuk1xw+TYpGej2il1PhpQgd+M=;
 b=fDIEy+69xjVfiGw1Nm3ga/odi3vgEOKElm+SRP0yqZTpkK9ED1bxAVf6HKS4AxsHur
 y2n6JRBg41yR3BAStijMUgB/y6uO/UzhwAGipQ/s92AyyW9prjWOnQku24ZCCpQoSAb1
 YzDCkbAYE5zNRO5o2AbuC873QMbot/Pvn31bWWYLusZ7+VmpFhGZA1PwyQbuZyKXKZZr
 Wn2UnDjVgAi5VZ/NAjrgZ7r1xKALIBBAR19kv6uV7jfoHuBMRa3bSTPN6d50PgYZjKjS
 zSV8kOepHxgbdJQQQ2I5+8kxfsEKeR2CSJc0CdzwhZFmjGXHNvKnsLA0w4yTg4KhofPV
 ttQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KjmTEVuPQh2PXyikcfpuk1xw+TYpGej2il1PhpQgd+M=;
 b=qEwF78Vv64Oq5syEKirVCPAryeUKZPyVEY8LpV3+9NLQWQrlMoZNKNT2fR99fjbx+y
 rTRZ63rqax7EiL75oRIOpM+OQeu+30+oZp5sLaatMs+IiKvftXCbdzd4t0g79v6O0ab/
 Cd6+slDqCG0lKwE5eRQ0zw3gG7ZCjiy8d/g5aDBEo3wjGHbngFTeKPqfBeIqH2jrMPgB
 h+JMag8yQMgFkX3FE7N1i0+Zuhc9pooj9b9bD+gbGISUADdQ0P+vjh1t8K7wYDj9dGsQ
 GvPd0IG2gFkJAtfdRkoWgWVjfvLLmMAPMospIv+GmyutA9TiksDznQkhLxLNrsX09flX
 xdRw==
X-Gm-Message-State: APjAAAUsFYkFqdsvWJYF03BiSoN9IvxvbzrYWBwXsEC+JKEseGs76U0R
 fQlZhRhEw2K7C4lvnfvc6jDHjW1nagDEcP6RgCU=
X-Google-Smtp-Source: APXvYqzIxvph6QzXKEy0tNENHkmBH3p7QP147fe/zSUDcJZEcdyderZw1eVOZ4eLMdUGKS6Tl4HYtq9Cmr+Uka075u4=
X-Received: by 2002:a19:5046:: with SMTP id z6mr8798219lfj.185.1559392579117; 
 Sat, 01 Jun 2019 05:36:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190601011951.603-1-marex@denx.de>
In-Reply-To: <20190601011951.603-1-marex@denx.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Sat, 1 Jun 2019 09:36:13 -0300
Message-ID: <CAOMZO5ADvVfWL0RCzkb9yK6OVHap8AdrB6GrWDn1Svj7yhK98w@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: imx53: Bind CPLD on M53Menlo
To: Marek Vasut <marex@denx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_053621_763787_2218F90A 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Shawn Guo <shawnguo@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek,

On Fri, May 31, 2019 at 10:20 PM Marek Vasut <marex@denx.de> wrote:

> +&ecspi2 {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_ecspi2>;
> +       fsl,spi-num-chipselects = <2>;

'fsl,spi-num-chipselects' is deprecated as per
Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt

Please remove it.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
