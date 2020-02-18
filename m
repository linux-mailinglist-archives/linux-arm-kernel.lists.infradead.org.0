Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D938F162B42
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 18:03:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gnz5jC0Lp3np+4CfdmdEc9ONSY1m4cmJWAqKk3amIac=; b=OrfVFN12fekS5B
	GUwDwvQtdlpqrb9HC4u12UwwdaonczLNrGtKUuUUI4KZgQnevB93gl6tZy5Zw5iGVjTBUdEwFxCAr
	OUjdIlWxEkMxCdytY7kI01LvgLuaek+QpyrZdpQr9tPW/D5eU6nbr2K5vXib7T8WiZJCBHJUNWpBp
	mVPz3ymAk8az/LtR7Z1xntG7kIGcq+YL5LcVbjAEdyqzYvOYZO6vQS612ham7/TuNOF59GkJmTmHy
	Tu8fa3Wx+Kb0KGMpzdLoyqRhSwrpl4/yFDGvfJc5/BDHYDyue6Xda+zT5mRPsDajIOhfLCDvJy8xE
	R0IJYEVTmQoI98wOuwPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j46He-0005ol-SM; Tue, 18 Feb 2020 17:03:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j46HP-0005fw-22
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 17:03:28 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 433282176D;
 Tue, 18 Feb 2020 17:03:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582045406;
 bh=z2e7Xc6lbz//zrWoEYkGn2Dr4Bqdef+y65nYdB4LW4w=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=yZw3tXvkgf00UtuPN0FGeiZYyA58t6dc3pToUfCxzWJYzfquCaO9KyeHDCZAHrOI7
 kZe7NU2wbosqQDcJ+nnMMfx8Fa3mWhdkrDFXPhPvs6vmV03hNhn2XddDXxDUiijs2r
 pU9Potw06nrODoiGEGtn60TJXc3ryNk372U49quw=
MIME-Version: 1.0
In-Reply-To: <1582023806-6261-3-git-send-email-Anson.Huang@nxp.com>
References: <1582023806-6261-1-git-send-email-Anson.Huang@nxp.com>
 <1582023806-6261-3-git-send-email-Anson.Huang@nxp.com>
Subject: Re: [PATCH 3/3] clk: imx8mn: Remove unused includes
From: Stephen Boyd <sboyd@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>, abel.vesa@nxp.com, festevam@gmail.com,
 kernel@pengutronix.de, leonard.crestez@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, mturquette@baylibre.com, peng.fan@nxp.com,
 ping.bai@nxp.com, s.hauer@pengutronix.de, shawnguo@kernel.org
Date: Tue, 18 Feb 2020 09:03:25 -0800
Message-ID: <158204540554.184098.3218074345552740072@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_090327_207509_B6584205 
X-CRM114-Status: UNSURE (   4.93  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Quoting Anson Huang (2020-02-18 03:03:26)
> There is nothing in use from init.h/of.h, remove them.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
