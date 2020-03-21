Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73DA018DCB8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Mar 2020 01:47:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BzM2tLWKy9chS9XZWjhGq4qkbqudYH3/y+Nh0NEqNTE=; b=q83vzzlU6U0ZdN
	3otmOtN95x+3+vhvaBAz8F60CZXM2M2VsICJsVPHG7te3mHF8EqvibAyyiYneFMAp4I+eB1ccSf7y
	IB4EG58JgI4Fz7HJpUZ/iaWzAaxWJZzLhnketGYjLIRRfBrp51aJok82rlt/bkbzVVsM6LaW0sPy/
	cUq5LB5KYi6gzVV+hS5XDsz6PQKcP+iOcTM76Xfgu+1PyNHJH3Z46/TZ83iD4X4cmDM72UbgsmUrK
	65p/4VkSk8C8FxvykRLraX0YRCOFRr5UdzAf/8fuQRdRMNniUupr1qFFWgyQ5IMMeqAnrwzan9ett
	o4v4hpyIHkKetkTQ2KRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFSI9-0001wb-Id; Sat, 21 Mar 2020 00:47:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFSI0-0001wH-9B
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Mar 2020 00:47:02 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DDA8E2070A;
 Sat, 21 Mar 2020 00:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584751620;
 bh=6pnnCkGAWpOfxYh0ESxdk4ldG8q3cVJOC3KgYkzWFWU=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=pX5wPcHbJKG7W1+YS4CcbPrdYJnxdIpp1hLyEkF1b/vDs9Jc26mHuubqvjx8eEpfF
 rLlCRyfMNgEUR7AJEbMu25yUKBLRJqThL9lnBgh9W6+kU1i2gh63av9A4IIjY4RwVt
 T+R4Anj6Cz96leRFhdmuvdHUl+W+UyRK76HiW0lE=
MIME-Version: 1.0
In-Reply-To: <1583226206-19758-7-git-send-email-abel.vesa@nxp.com>
References: <1583226206-19758-1-git-send-email-abel.vesa@nxp.com>
 <1583226206-19758-7-git-send-email-abel.vesa@nxp.com>
Subject: Re: [RFC 06/11] clk: imx: Add helpers for passing the device as
 argument
From: Stephen Boyd <sboyd@kernel.org>
To: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Fabio Estevam <fabio.estevam@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Lee Jones <lee.jones@linaro.org>, Leonard Crestez <leonard.crestez@nxp.com>,
 Mike Turquette <mturquette@baylibre.com>, Peng Fan <peng.fan@nxp.com>,
 Rob Herring <robh@kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Date: Fri, 20 Mar 2020 17:46:59 -0700
Message-ID: <158475161915.125146.8348743269126342394@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_174701_075172_D9BBF4F4 
X-CRM114-Status: UNSURE (   7.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Abel Vesa <abel.vesa@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Abel Vesa (2020-03-03 01:03:21)
> All the imx clocks that need to be registered by the audiomix need to pass
> on the device so that the runtime PM support could work properly.
> 
> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
