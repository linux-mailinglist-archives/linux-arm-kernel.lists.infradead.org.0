Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF4B15D03F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 04:05:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7vpIEEYraHtSiXmcOorSCN7PsfYpmBpzR9MCr0iVZcQ=; b=GaeO3b1XVbw0Su
	f8W5IEfQ5MIn5UmPYUfq5iQ4keO29MJqq+XIA6OU+CrRV9ITN0AVTqrYm/489Uq3AKxRtLzEwa8g9
	CiL9YijBDuoiQFybr4oIowOdfH/zRpOohi3Zh5P8OxyzBKBJb02+0bc9G5qhwqI0BWlwzkjvQZYRm
	ybSKl5vLQ6jp4cOxj72FKFoh4uDoehPM9VQHb0fjV5KP+opbF2GyCQY29tn+T2IbH8b5MS8qYXYNV
	nWSjTvar1yEvxiIL+itgCstzhie4clNdFcD6VYGeBc191VDWckkv2LnCXBVS42B8O/C/4By9sgOSv
	T2/sFUHQCrdpaLkNq3qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2RIX-0003w8-90; Fri, 14 Feb 2020 03:05:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2RIQ-0003vh-CF
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 03:05:39 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 494282168B;
 Fri, 14 Feb 2020 03:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581649538;
 bh=Emphv1LPaR4mUmsyiCMyc6tU2RVlOAdhUtkd2Wzl9yU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DK1zD/tZjIet+4Aj64cwartxDAZ8dqSSlgfq4c1UZmKs5B5NWR3NrP8kDQGVB+MdF
 QieNq7hZqgKND/iLCYjOQy3Q1AnReRUn5agVVR6nz0jgtdhDMRXj6p5sui/2BUb7A3
 2ohSyBJ53kzzGoxukBVeCqUUpfTEp3nWURajhP5w=
Date: Fri, 14 Feb 2020 11:05:30 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Robert Jones <rjones@gateworks.com>
Subject: Re: [PATCH] ARM: dts: imx: imx6qdl-gw553x.dtsi: add lsm9ds1 iio
 imu/magn support
Message-ID: <20200214030530.GK22842@dragon>
References: <20200128221326.11393-1-rjones@gateworks.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200128221326.11393-1-rjones@gateworks.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_190538_434988_7FC6833E 
X-CRM114-Status: GOOD (  11.43  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 28, 2020 at 02:13:26PM -0800, Robert Jones wrote:
> Add one node for the accel/gyro i2c device and another for the separate
> magnetometer device in the lsm9ds1.
> 
> Signed-off-by: Robert Jones <rjones@gateworks.com>
> ---
>  arch/arm/boot/dts/imx6qdl-gw553x.dtsi | 31 +++++++++++++++++++++++++++++++
>  1 file changed, 31 insertions(+)

Prefix 'ARM: dts: imx6qdl-gw553x: ' should be clear enough.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
