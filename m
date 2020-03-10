Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D51E217EF74
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 04:50:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ykAsavD/KRqnpkvK04AHaqdGIO4kUuh6iZPQoYMK5Hc=; b=j82C69pp3zzDjt
	vJ7bxizMjYMjNV8q6Q0ytsr/6fEIpKz25YVN2otXc7UNGIIaZm4iTBY/zVrvCCBKyzzaJ4/8gbs1N
	M95/fSGD7czT98gtKu+eQ1aXFKvM52wNWsC3ADgonPXMYORqoKFuItYogj5GKa+pzk22RKaqo9iMF
	lH6oi9ZMnBdGaeZAE5/gM7CfF9rdU5S92il2W40+2O/SJ0Fx1E3thjz/FgJy56soRqqLuH0O/RPJy
	1UQASHCgdJ+Pj7mDASdSaYAWG2kh0So6BcDhQ12GaIAPmwKpfk+oIFyGlkQ4t4gUrZIXrjUpyT3NJ
	wLDBzb/2ZKGKNtxNgcjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBVuJ-0003gm-Iz; Tue, 10 Mar 2020 03:50:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBVu7-0003Hw-Ot
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 03:50:04 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 82D2C24649;
 Tue, 10 Mar 2020 03:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583812203;
 bh=V6Fs8/S/s0dumZ8zRQ2hxKHD2zRTiM/tcLO3wbRf1kc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ivKooelmrdr2ntwdFFobIbBeuTiXiBvIXHsTpFFwRrULfocXoxWtCuXUUh8m10p+q
 ffDvYRUJS/2/uCvGDJMi899BuzsVAk0YyahYb61AwXylOFPaxlISzpQiSrXB9jQKKm
 RPlE6G6Y0z9z4AvnC34I5bqpZmicTJzGkDsjDQaQ=
Date: Tue, 10 Mar 2020 11:49:56 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Joakim Zhang <qiangqing.zhang@nxp.com>
Subject: Re: [PATCH 5/7] arch: arm64: dts: imx8qxp: add device node for I2C
 and INTMUX in CM40 SS
Message-ID: <20200310034953.GD15729@dragon>
References: <1581909561-12058-1-git-send-email-qiangqing.zhang@nxp.com>
 <1581909561-12058-6-git-send-email-qiangqing.zhang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581909561-12058-6-git-send-email-qiangqing.zhang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_205003_839322_1A316C29 
X-CRM114-Status: UNSURE (   8.61  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, aisheng.dong@nxp.com, peng.fan@nxp.com,
 fugang.duan@nxp.com, Anson.Huang@nxp.com, devicetree@vger.kernel.org,
 sboyd@kernel.org, daniel.baluta@nxp.com, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, leonard.crestez@nxp.com,
 festevam@gmail.com, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 11:19:19AM +0800, Joakim Zhang wrote:
> Add device node for I2C and INTMUX in CM40 SS.
> 
> Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>

The 'arch:' prefix in subject is not necessary.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
