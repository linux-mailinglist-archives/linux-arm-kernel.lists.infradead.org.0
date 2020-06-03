Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA5081ECFDE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 14:35:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+1J3RUMHWve9PGLc0tuS3PKKls0mdk1B6ZFO9qKxnpo=; b=CP479iXY0jFs2v
	qQdwOJOa2BUwgX8LlpEzR30IDRavk6DRaFoYn7a/dIvRXqLQLFhZBndCrVeMiA2TXyXdiU7j1KX5q
	d4tDcQnK5rLTLk+ucqsxwiB3ZaFDzgL3fTW5RrGiugBTyAbIwu/mJwKT3J7xPGJQRSmQNgYBJ5egb
	Szjp6PIeJ5lSGpH3UpZV3CplZIF1nZvJMGqBzE01qdxSdvod/uxnC+oDjKaK47W/1c7sH1K/msp3J
	f54HSkf8hcVYqjZ8I2esuuJmUwWOTCw6HbNFyHarZGrqTtG1mmL4cHpMDBNU+YUxiQF4LzqbIC+Cq
	rvvsOZ9oPAs13uU5b/2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgSc0-0006ZS-D1; Wed, 03 Jun 2020 12:35:16 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgSbh-0006Z2-30
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 12:34:58 +0000
Received: by mail-lj1-x242.google.com with SMTP id n23so2484856ljh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 05:34:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PI7pydsdlkyMsOD6xUcLp/qzxqU4rnGyfjXgCb9CfWA=;
 b=xfnWQd9oEyAsFzOPGt1mBJdArDRnh2rm2HZKJiiufZ4G3XU4PfqVW12McDu5EdvBVb
 qyfCex95T6C8Tcy86/IPyXEU3S80ASk+HARGYDiI6ViBZrc8pU4AWMn1Jqp8fW1s8W1g
 rRcyu95uIpQjRNQ0t7A8VWRPB0Gjrr7ZjNixzNhSgX334YRru7RYUn5hqcPerbW9I/vk
 IUaQ8XN78CUAtwSMO7xGQaeSOXYyu8EoTuCMR15KHfh8nAVjRMCqTcvKmwNbafE99vnv
 TaEjAvcLgbbAIs3kQ8rZcHoQPOI3s29vSI6VHexaAO6k29daJjUDM2GVsCcOKfV0FEES
 j8/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PI7pydsdlkyMsOD6xUcLp/qzxqU4rnGyfjXgCb9CfWA=;
 b=ZeNPkRtpFGH3gafp9lO8eonSLsm1MhOMTiJIUj26PdS5bxR7jEFydDNlnFmo4jow+5
 uOp+e/cAfIaxaBXrh6MdCxLdcZWJC8vXKz3a+sh675Txya7+WIHJJ1hFUvd1RyVKFSsH
 ws31bdvHqAh64kW07qF3Uzi/OM9T+3xOywAz7l7z1nEooQ15y9Omu1G5w0mKC96DHmyL
 kbkQxQOXXoWkLQtsmwf2HHxWtBd7PW+WCJpK4Weryj+o3AqgEjXFYeLdYEQzxm3Zihoy
 8jQYsQCRu8XMtDlTOqh3pkKQQLK7U1Mto4qmk5SqsAYWssI13td+tEHPx/DVFKDBF70d
 0KzA==
X-Gm-Message-State: AOAM530qoc7FkuUPWQBvNpFKRYlAwJgdFszNm/3iRankCf9ijspZOSRL
 8Rw0lhlJxJ/91LUVJEVRXV0DtN0j7F8ZoTDxsXHFJQ==
X-Google-Smtp-Source: ABdhPJwzUPzaqApWBasR0U8pnoYQewI2Zvey0OigUC/P5cfEYrETfElS5dHa5BQgryE1VDaIwAKQXp5y9hxab/Kb4RY=
X-Received: by 2002:a2e:350a:: with SMTP id z10mr1926898ljz.104.1591187695709; 
 Wed, 03 Jun 2020 05:34:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200530204955.588962-1-christophe.jaillet@wanadoo.fr>
In-Reply-To: <20200530204955.588962-1-christophe.jaillet@wanadoo.fr>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 3 Jun 2020 14:34:44 +0200
Message-ID: <CACRpkdYR11Gy99N0TPCkNFoBKKQLP2x3JsnH9=_S7mxPXgYKig@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: freescale: imx: Fix an error handling path in
 'imx_pinctrl_probe()'
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_053457_128456_77FF6C63 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, kernel-janitors@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>, Gary Bisson <gary.bisson@boundarydevices.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 30, 2020 at 10:49 PM Christophe JAILLET
<christophe.jaillet@wanadoo.fr> wrote:

> 'pinctrl_unregister()' should not be called to undo
> 'devm_pinctrl_register_and_init()', it is already handled by the framework.
>
> This simplifies the error handling paths of the probe function.
> The 'imx_free_resources()' can be removed as well.
>
> Fixes: a51c158bf0f7 ("pinctrl: imx: use radix trees for groups and functions")
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>

Patch applied!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
