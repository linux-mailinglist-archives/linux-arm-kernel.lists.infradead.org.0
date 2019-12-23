Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A92129353
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 09:52:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=epLc+9eaDgDs+U72wMKhxQ6SWzCGIaYMWnDT5s97Lmc=; b=Y554kUwbYz+HPq
	nse1XYmPYUeZJqfRdYs0QeEol2SBdjBH3FxXyF9KUDoFd5JFcIfcNQ+Z/Itc5a0bndsXlaYPgItiW
	luK5EzV1WGtAWdrhJJo9CJb2N0PynWF0FsfwmpuiK9V63qNXTt6QgbzkQ2w+4AD3uk52Ov/XLbCpq
	tZF8LV8ytoMUnLpX6aGtLvgaFxjjTDR5MMPy0xd5PpSzfvbdZVjM5FzU07qSXHlgI5eNaOhp9OO23
	KQeXtS8UdhHeRdcZ0NjoPS57E95lj/gQ8/NvF9CM9XA2byU6BCDxI3mov1JhwtxcipE0ATQ8n7Yc0
	Vs0GuBLVpyzdkQsayzwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijJS2-0003Yp-Ky; Mon, 23 Dec 2019 08:52:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijJRs-0003YV-Cd
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 08:52:21 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 98299206D3;
 Mon, 23 Dec 2019 08:52:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577091140;
 bh=Njb2MZcqEZpPh+sJy+MjeGzNeFgLdKyY51ybbrqOOSI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uVL1XwLEtnrZH6pjuCq47hiF7Jesu+Gec5sSycaw05lgduCjsgmritW63aiPg3LRJ
 N2ND98BCG51GuTOz/M7RZGG+4Fjrqod5zS8be3dA0rR9zB/9K7VxWWQS1A3L1IW6/k
 3g5o1M9azdrBqfliI0OAd7TBE2WXSXE33vV8Givs=
Date: Mon, 23 Dec 2019 16:51:58 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH] ARM: dts: imx6q-dhcom: Fix SGTL5000 VDDIO regulator
 connection
Message-ID: <20191223085157.GX11523@dragon>
References: <20191220091124.1201544-1-marex@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191220091124.1201544-1-marex@denx.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_005220_450458_6E4677CA 
X-CRM114-Status: UNSURE (   9.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: festevam@gmail.com, Ludwig Zenz <lzenz@dh-electronics.com>,
 linux-arm-kernel@lists.infradead.org, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 20, 2019 at 10:11:24AM +0100, Marek Vasut wrote:
> The SGTL5000 VDDIO is connected to the PMIC SW2 output, not to
> a fixed 3V3 rail. Describe this correctly in the DT.
> 
> Fixes: 52c7a088badd ("ARM: dts: imx6q: Add support for the DHCOM iMX6 SoM and PDK2")
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Ludwig Zenz <lzenz@dh-electronics.com>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> To: linux-arm-kernel@lists.infradead.org

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
