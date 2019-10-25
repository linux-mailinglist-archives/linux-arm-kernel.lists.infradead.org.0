Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AF5FE4658
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 10:55:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FN+ZzyKDYVS6c1VOR3oZdEdUBBmePP4jaRg53UwhUJg=; b=iC6rlaF2HpIWnt
	gmLNT3CCr//1mlD2GuTBrdodAhQVNucChw4wjffbqFfQoUCOb74QnC6B43C7VCldeEBdllJp1tUv+
	lUt7NneDMtj1BU4RRjFK/0UiZEX6GKoTOFKsvWPWiph1ddvhsjXF5g9xPfjScCEI81P3q1e8QvFBg
	b9EGVnrv0QkRoHA8Me9xvMfg+ZrKPK5s2tIF2Iao1qlZnFyhmxYAiA0HnAa+audlKFOi3Zkr/Rkox
	thzIsEcPvQEZfc0bil3WepKi08TZOd93uefDKLInwE8UAf3E3NOq0i801uQhrYsEVd8zwSxzdR5LV
	+tWNK/kQZjbEazI24kCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNvNu-00039q-0k; Fri, 25 Oct 2019 08:55:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNvNe-000397-Gn
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 08:55:35 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 45D2521D7B;
 Fri, 25 Oct 2019 08:55:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571993734;
 bh=5i3d+HY/V9+fI+uU7h1tX+fWD57IhBHMQfmMyo6jW0g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FIQ/dERdy5OkfSnkwC/QgV1xafO+vBptMDHo96N++fPAbjhSmlkAGTYvw3jNb1VFi
 S7bP4XDAcKBi1T5YIgLuBu8vztAbKdPBY4ZeZ2/wEoYtZJxRlqFZ3bdlB1F17+zKeE
 pfirmEbL1hEYAsGqA5dT8DKdV+kpfLy+KRJlkJdo=
Date: Fri, 25 Oct 2019 16:55:17 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Lukasz Majewski <lukma@denx.de>
Subject: Re: [PATCH v2] dts: Disable DMA support on the BK4 vf610 device's
 fsl_lpuart driver
Message-ID: <20191025085515.GH3208@dragon>
References: <20191010090802.16383-1-lukma@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010090802.16383-1-lukma@denx.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_015534_583545_DDF6B14D 
X-CRM114-Status: GOOD (  11.66  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Stefan Agner <stefan@agner.ch>, Rob Herring <robh+dt@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 11:08:02AM +0200, Lukasz Majewski wrote:
> This change disables the DMA support (RX/TX) on the NXP's fsl_lpuart
> driver - the PIO mode is used instead. This change is necessary for better
> robustness of BK4's device use cases with many potentially interrupted
> short serial transfers.
> 
> Without it the driver hangs when some distortion happens on UART lines.
> 
> Signed-off-by: Lukasz Majewski <lukma@denx.de>
> Suggested-by: Robin Murphy <robin.murphy@arm.com>

Subject prefix should be 'ARM: dts: ...'.  I fixed it up and applied the
patch.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
