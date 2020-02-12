Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5897015B42A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 23:56:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qt6I7/NTHSuLMMvQZ3Loty0Nt/PpXtsvXoLdfEVqDHE=; b=nDaR/VV948+AD6
	sOcf1Zj4WJTA/1F6ZxQROap75rQBgEdO/b2R5+F9UoWTw/8a52j0uCAHCvRRu43AC2IIhtfIZ9c4D
	oMTg8GsoL+zTRxiJc/GrR6NR0LCFPQ4enKZ6sMOtibNOxi6e2vNTS751BBuyVO391ZqWtWB5f7gBR
	vABka3+l+5BvFAzoKS4M9+dusrBvxBT5i3HyW++OlSjx0RlzdgKGUwP9g2WTQ3DcaqvmytTQiCinh
	K3osGiuOtxqkzDcAwB5/+BAAyTriiVz2ib9L/jj4d4ke8qmlUNejj40DYwFyyHO3DpWJ6PHKke3xP
	DlOmV7x3vcJ3/BSHvKiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j20vb-0005As-L2; Wed, 12 Feb 2020 22:56:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j20vS-0005AU-MB
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 22:56:11 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D357B2168B;
 Wed, 12 Feb 2020 22:56:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581548169;
 bh=SCnNSfEGNeaLvEPYBFXgqfow4bBeZQwy5T7gptghPE8=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=x/+w7+6ZCMH4J8zy6pThODObm0WIsKddbKyctJ1uGJ2hLo2RqxUYjFhzF/DOhJgqJ
 /IQuYnyWJxDNkg8SRGiWkoBFl0RP6kIuVEMXx6kOgGrOqFvvX7H8FBGG7prp5Hl2Xa
 sP9pjAeUtAb6P53W5C0wakF+gvlwUz82LxutybE4=
MIME-Version: 1.0
In-Reply-To: <1581490943-17920-1-git-send-email-Anson.Huang@nxp.com>
References: <1581490943-17920-1-git-send-email-Anson.Huang@nxp.com>
Subject: Re: [PATCH] clk: imx: Include clk-provider.h instead of clk.h for
 i.MX8M SoCs clock driver
From: Stephen Boyd <sboyd@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>, abel.vesa@nxp.com, festevam@gmail.com,
 jun.li@nxp.com, kernel@pengutronix.de, leonard.crestez@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, mturquette@baylibre.com, peng.fan@nxp.com,
 ping.bai@nxp.com, s.hauer@pengutronix.de, shawnguo@kernel.org
Date: Wed, 12 Feb 2020 14:56:09 -0800
Message-ID: <158154816906.184098.11837279192030973805@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_145610_747880_9278C402 
X-CRM114-Status: UNSURE (   5.92  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Anson Huang (2020-02-11 23:02:23)
> The i.MX8M SoCs clock driver are provider, NOT consumer, so clk-provider.h
> should be used instead of clk.h.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
