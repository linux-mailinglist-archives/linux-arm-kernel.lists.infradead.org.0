Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E84770F73
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 04:58:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8VFXhZ9fWaRM8YmQ5Ko1zeCox3HJzCm5YZOI2EAW8dE=; b=PD0Oll+K04xI1k
	OjBoA7PqzLgDnA26I5BQ8F//yAP17aYcTSubVxtaxzbfUzYYZdgyDlaTz7ABQ2w2Wa30LsXeLLsJC
	x7ObC40C75LIUMiCsnSM76FpeeHubdbJKHhF/vwJt+0kS5w8LwDCe2d3m+FcMoSGPsAzuzQrKOvcl
	KB1fkkfs9KCFzghymRTEaIPY3TYFGXURaBlrNjZ7eN0XKrdePyAomg1T3EXZm6fDLFl8gsGq7YZP7
	zr8Zb8WlVf9MV5zDFLymb3x3rTinG1ROiMDBBEnE+4nrYh3QV7iU7y70YpoYKUpor0Inzbs1WmZLV
	9R8eCs16tnPLVTtqwESQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpl0m-0007Xg-P9; Tue, 23 Jul 2019 02:58:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpl0B-0007Vi-O7
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 02:58:09 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DA3C820840;
 Tue, 23 Jul 2019 02:58:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563850687;
 bh=UknProSrEIRPd0jYMHFIAsZDt83gqHVAA5eZleizxsA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=K6pDCiYuzt6tOG8GAyvzd3Z3tX2jnwNWqv6vjr132PVO9cA/uW1Gdg6dacnYjpfPD
 FTTUtrQmHCdVl+uS7SgFNW8O5z1xI1CMYZltQv9sMmysunBtvPSrLA3kbwRaiSzGWZ
 NH/VY/b7/wo08WQ4GColImABCLX6x56NtooU1mtM=
Date: Tue, 23 Jul 2019 10:57:39 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH V4 2/2] arm64: dts: imx8mm: Add "fsl, imx8mq-src" as src's
 fallback compatible
Message-ID: <20190723025738.GK3738@dragon>
References: <20190705085406.22483-1-Anson.Huang@nxp.com>
 <20190705085406.22483-2-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190705085406.22483-2-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_195807_848472_021E9E44 
X-CRM114-Status: UNSURE (   7.46  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, p.zabel@pengutronix.de,
 viresh.kumar@linaro.org, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 daniel.baluta@nxp.com, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, leonard.crestez@nxp.com, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, ping.bai@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 05, 2019 at 04:54:06PM +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> i.MX8MM can reuse i.MX8MQ's src driver, add "fsl,imx8mq-src" as
> src's fallback compatible to enable it.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

Applied this one, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
