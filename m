Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98688AF5BD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 08:25:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yIpFLtTI0O/QvMcMw+Byeq43LjCb70zVNtlsK1A0Dkc=; b=CcIOPx5kdJhf0w
	pV+NsmB51GGJI0TK7/03vLzFhX/Wh1xqCPYAYtBzvLhqmmCS4OcrBOYpnpNDHamA70iPvD1O619bT
	uSjQI6eng5bSOEw4DnLQf17bNCkr2SYlNY5OXgEUNBA3/P8hCdiHNARXjk+702kwZb/gBFTuAHzxr
	/UjJCH3WZH2K8e2LIffRX0m0YP7poce0C/AnU026ItbQ3lCS4/CYmnpkJ1hGxYkoTDaTheX3LmP/N
	Qd8NcN+mae5SfUovKDuSlcUmpFm2hojUmrymJ2CchpSyVeM8R1Chz8hvokDEEW+bir4t3CauVAvrm
	41kYrecQCC5++CQlWNlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7w4D-0004eS-FS; Wed, 11 Sep 2019 06:25:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7w40-0004dX-WB
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 06:25:14 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BA90521A4C;
 Wed, 11 Sep 2019 06:25:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568183112;
 bh=hCbZS1o48KxJrpYExCJxiNPbnrNzs3OfxozWwvpDhuw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LIlFru8Ct1z4S2opSkZw5q19V0V4pMjDvw2WD5JoiOQbDqwv0cZ8SYdwx2Rsz/2gx
 iYQsEDXdb6c3J4FqhgIGnHx9YLyqOY/wASeNFtYgBkKBNq9vCQdKxc/UraiQZW0Aql
 1n29syKXzK52UpeWQxigocN35uOdKMeUC+AwjUJQ=
Date: Wed, 11 Sep 2019 14:24:55 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V4 3/4] ARM: imx_v6_v7_defconfig: Enable
 CONFIG_IMX7ULP_WDT by default
Message-ID: <20190911062454.GA17142@dragon>
References: <1566441463-11911-1-git-send-email-Anson.Huang@nxp.com>
 <1566441463-11911-3-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566441463-11911-3-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_232513_059283_F7B88B44 
X-CRM114-Status: UNSURE (   7.53  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, leonard.crestez@nxp.com,
 schnitzeltony@gmail.com, linux-watchdog@vger.kernel.org,
 otavio@ossystems.com.br, s.hauer@pengutronix.de, jan.tuerk@emtrion.com,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
 u.kleine-koenig@pengutronix.de, wim@linux-watchdog.org, festevam@gmail.com,
 linux@roeck-us.net, Linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 10:37:42PM -0400, Anson Huang wrote:
> Select CONFIG_IMX7ULP_WDT by default to support i.MX7ULP watchdog.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Patch #4 and #5 look good to me, and I will pick them up once the first
3 get applied by Guenter.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
