Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E43291864E7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 07:01:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hbDLrioY6WysylmVcBzIQV8zjfTivGA55mRCbNRThws=; b=G8RvvPquec0UBc
	XN+/OKJ75nuJS/da3//H5fO68u40Y7TT6pNZVJD/kniVMdBlPz46JnhhHMmDSXt6RAdBPeogy6bjs
	jzdbSoKhiI7t2fzoNjglbmEojkZCKxKhdaUssB4HUzDoewS/Bj3mv7Uyp4aK+slPAWln7uum4e6a2
	Pi68pLGaMpLfF9ty/EE1PDfozcKa6Y6Eemn2JqKSg50a6wbInk9DbvsnRiX2iRwN7vP/SY7BAy3Et
	u1JECmeFQgcRmD72J1gRRe6ZIlEmya6svg6RdsVpeBpKNllsqyNA2vx6f1TRoIcuQYMLOrZhB3Ght
	cOf9rT0S153g9zNk4G/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDioi-00008W-0k; Mon, 16 Mar 2020 06:01:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDioa-00008F-M4
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 06:01:29 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B79B320674;
 Mon, 16 Mar 2020 06:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584338488;
 bh=3E+8EY5GoqEbt0DmQz71Yz7/T4lemKjXRfDDEbV70W8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VBHsJxlTgfi25qEPvpFz+mLkyN05bNt+46fz37+J39kCA7kVcXKF0uMpKKKWc2Ql9
 HvjoU9JMgHaw9u1/VhBiVkgabuPouW+cl8GVbRuGWMElla9ekWxtxOEKeTfS5d5ima
 GgNSZKxUUxQqkgSBxwOVan9Hw5etNz8eFAgwQuzE=
Date: Mon, 16 Mar 2020 14:01:23 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: peng.fan@nxp.com
Subject: Re: [PATCH] soc: imx: drop COMPILE_TEST for IMX_SCU_SOC
Message-ID: <20200316060122.GH17221@dragon>
References: <1584328142-11810-1-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1584328142-11810-1-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_230128_738956_8C6930F3 
X-CRM114-Status: UNSURE (   8.20  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 16, 2020 at 11:09:02AM +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> With COMPILE_TEST, there will be build error, because IMX_SCU
> might be set to n, so drop COMPILE_TEST.
> 
> Suggested-by: Shawn Guo <shawnguo@kernel.org>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
