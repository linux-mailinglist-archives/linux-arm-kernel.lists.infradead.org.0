Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32353F21A9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 23:26:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t2npZiwjx+Kp5qFtNaaLQj/obx4Gw4gsb+m/NOhycTM=; b=NpxtAL10qfv5O+
	LdAsqWXO/4RCEtK2xz1KrFJODMSHviPMKFlU0iuPkavI+7Kv1NyA4CQW81yq3MUANWCpTMNeaBd/8
	VvnyxiK4DWAUaNjNkYO6pG0gCN2PHdm8IgxA6QhiH+jxuhRCbyOWPJiGtjUHuPBY4YSZ4BN9D2W1l
	RhwxGmrGDyFivEb7EgSb9qH0F/HB9dmsfe/R0HuqdFLN077+VwOyd5fORFuv/FEoBsMcQGxwWBPIX
	YWxbKLebJVqtNfm6aY9f4yhu4I2Xu+NBTOgxMP1t5xCOAFLD2lUaiQnfrjIyoOuMyAOQ1Br5z/lAD
	8hNtC+Xo9OJO6u+lkkpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSTlD-00052U-Hy; Wed, 06 Nov 2019 22:26:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSTl5-00052A-It
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 22:26:36 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D65492166E;
 Wed,  6 Nov 2019 22:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573079195;
 bh=Eljxv5tFJDXPMkasGIno/S6TX6cXXFcNrBqdDP15Iss=;
 h=In-Reply-To:References:Subject:From:To:Cc:Date:From;
 b=yQZoDNk6sfNklQW5PbW67AOitQE12j17qP7JKyDMwXlhIVq+ofygzk6M/2BTzlRRE
 q5u4t1P7YH2tlJz90Z8JbdqMemMLx4ynRAPl71OnfSwtGafDi1Bt9ojziw242DM5wU
 MhmhSUQkAlpE124wIImM8qxESK+ww1Z+we2rb1V8=
MIME-Version: 1.0
In-Reply-To: <20191104110856.GX24620@dragon>
References: <20191104110856.GX24620@dragon>
Subject: Re: [GIT PULL] i.MX clock changes for 5.5
From: Stephen Boyd <sboyd@kernel.org>
To: Shawn Guo <shawnguo@kernel.org>
User-Agent: alot/0.8.1
Date: Wed, 06 Nov 2019 14:26:34 -0800
Message-Id: <20191106222634.D65492166E@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_142635_644586_DDEEE0A5 
X-CRM114-Status: UNSURE (   7.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stefan Agner <stefan@agner.ch>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Shawn Guo (2019-11-04 03:08:57)
> The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:
> 
>   Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-clk-5.5
> 
> for you to fetch changes up to bceed71ba13116de4b1459c2c6db47d927b48e68:
> 
>   clk: imx: imx8mq: fix sys3_pll_out_sels (2019-11-04 09:10:49 +0800)
> 
> ----------------------------------------------------------------

Thanks. Pulled into clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
