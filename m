Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A391B4CBB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 20:36:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ffOceTDX5sSaWGg+LfaI2SE2u5RQcuQQAf7a7ZY4CvM=; b=WKzVh6Uad0ETJ1
	YmzNKj56Ey1G5Osyb36oLE0YhmoFW0sonxN2m8/tJZcRI2UrdBQDsH/lybHcwPY+g5UH79ytBLckd
	jadQOAFsvMkhaKaQCWe9chRsD0QR6R6U2YBFfK8G+mOmnOZfw78/A1GhgCLV10p6hiRFyV7U2+t6Y
	L6fIL/TxOmIRQjK+0dBQcrW4/wKFZE6C4WBzmogKdsDKgmanzxBARjoSxxW9Z2TB3+6iTMw+OXkhx
	6QTjAyoCDMmACy8uS0qat3zNGZciSb0R+RwPyBXDmU34CrBrAaLbmx4xqy8cimrc+cWVdJyC/x4kl
	E3Ge4VioYV34guuWaPfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRKE5-0008E0-PS; Wed, 22 Apr 2020 18:36:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRKDo-0008Ce-G7
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 18:35:45 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F24A62075A;
 Wed, 22 Apr 2020 18:35:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587580544;
 bh=T4kdhqCafwM/UbR3FZ9TP5rqIAkCxdB3G9X/CnrP4R8=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=pP4psPYht7hIgvKBMdgBgzqJ1QwCsALKq0LqIzcICVQIq5EFrd2XTLKUQh6VdwckK
 NFTbf9IuoerGuGX903Jz9eLrqQbjg2J3xGuGaAmt1RG5HJF53lgw/oOG7vuRILanV5
 qtjuprGc/zDGbrnB5FgTVA0KrPoUlCK3GpHl//DQ=
MIME-Version: 1.0
In-Reply-To: <1586937773-5836-6-git-send-email-abel.vesa@nxp.com>
References: <1586937773-5836-1-git-send-email-abel.vesa@nxp.com>
 <1586937773-5836-6-git-send-email-abel.vesa@nxp.com>
Subject: Re: [PATCH v3 05/13] clk: imx: gate2: Allow single bit gating clock
From: Stephen Boyd <sboyd@kernel.org>
To: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Lee Jones <lee.jones@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Sascha Hauer <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Date: Wed, 22 Apr 2020 11:35:43 -0700
Message-ID: <158758054316.163502.7559386766986350752@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_113544_554326_918E3D1D 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Quoting Abel Vesa (2020-04-15 01:02:45)
> Audiomix on i.MX8MP registers two gates that share the same enable count
> but use the same bit to control the gate instead of two bits. By adding
> the flag IMX_CLK_GATE2_SINGLE_BIT we allow the gate2 to use the generic
> gate ops for enable, disable and is_enabled.
> For the disable_unused, nothing happens if this flag is specified.
> 
> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
