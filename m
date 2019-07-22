Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A950B6F9C3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 08:56:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+oCmrFThAmAeMCzPMgHf+qGUUDmjrPk6dU3GITRJqNc=; b=NdzlpS1p089MJ4
	N0neMzAhwT+AhVNDU82AJhwFu24DRMIfkNKSEyhGwrNk7QBB7eRiBYBVYi/5l+Av5BcqnfAtX/2nl
	Jy4YlKC2wUebr8TN2UaKGdT40O+b4hEyj+OtURgWZtQ8zBE+WutWHiO127veXctLmDBJeCiVPmUVW
	zxoHCHIA5b9OnGUU+GfuDoCfMiEboMIot4j8Hf3Iqds7TDmaa0HSTTUNEPI9LvQEJYjKhQfirbI0r
	m91d1RhHUYBpH0j5UpHe8SN2Gld/KFtpQ7M3l3i4SCpo7HDeFgslJqWxjh0Mx4NLm1qySqBQVdWuA
	r1RKgtizTvouKC+vtofA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpSF5-0006LX-Em; Mon, 22 Jul 2019 06:56:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpSEr-0006LF-Fo
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 06:56:02 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DAA9821E72;
 Mon, 22 Jul 2019 06:55:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563778561;
 bh=WHx/8PtqilzenP+A33iHgPhQ7REahuw7ZkuciVDraP4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0QkVA3V+q0c4XZXOncQBixEbeJ6rU3fHZtNe5kEoycPCqH815FvMiPjLblF6arwin
 espVqWgCx0/ZUFBfgSjUptBbm+RmJFNAATt01Z7RUB999mKD+gTMsqLcYxF5cnNL5V
 cK6aHFEKC2irb/iVlE9meYyTZPYTPTO+e9wOGgGs=
Date: Mon, 22 Jul 2019 14:55:33 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: =?iso-8859-1?Q?S=E9bastien?= Szymanski <sebastien.szymanski@armadeus.com>
Subject: Re: [PATCH 1/2] ARM: dts: opos6uldev: use OF graph to describe the
 display
Message-ID: <20190722065531.GD3738@dragon>
References: <20190704142324.17675-1-sebastien.szymanski@armadeus.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190704142324.17675-1-sebastien.szymanski@armadeus.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_235601_544896_AFBA1212 
X-CRM114-Status: UNSURE (   7.52  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 04, 2019 at 04:23:23PM +0200, S=E9bastien Szymanski wrote:
> To make use of the new eLCDIF DRM driver OF graph description is
> required. Describe the display using OF graph nodes.
> =

> Reviewed-by: Fabio Estevam <festevam@gmail.com>
> Signed-off-by: S=E9bastien Szymanski <sebastien.szymanski@armadeus.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
