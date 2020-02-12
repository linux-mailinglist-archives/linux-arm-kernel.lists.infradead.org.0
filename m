Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5153E15B39A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 23:25:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BvarI+Mp4hnXG+gLr5yfTqPfRds/eUflothCWA0t66I=; b=hXrddyZgLdAzy0
	65R9dCWrfpO2FcR1bnZH7qMPPV9y5mZBokvy2Qto3Y8r2vjbPeAKDLai5v0hee42u+upM4rY15SKQ
	BO8dvFamYmpDiscVcZBY86KqL3nOoq2ifTh+UvQhnDPsLJmjd14mw6XrfICw1bIg2tmFNgz2BeUPU
	mVsTF4Kh+8pfzZySniOQcXHqGFCMFmigCybIJS8XAW8GzFz7fyEuGy0T1H1MNakWEg6ncPtdVtJVO
	9C9CECDBkKUnYXQYDMy7IM6Q8PteniB0B9a5aGtOJ/26TauyHf8YeSZg9sUdK95IQcwfkot31jcMh
	WCxzX9DoxQ3egZywTYFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j20RY-0002xi-Qo; Wed, 12 Feb 2020 22:25:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j20RM-0002FI-W7; Wed, 12 Feb 2020 22:25:06 +0000
Received: from p508fd8fe.dip0.t-ipconnect.de ([80.143.216.254]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1j20RG-0001sh-MZ; Wed, 12 Feb 2020 23:24:58 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: Re: [PATCH] arm64: dts: rk3399: Remove extcon unit address and
 extcon-cells from Gru
Date: Wed, 12 Feb 2020 23:24:58 +0100
Message-ID: <3531662.p2XxmjTmOT@phil>
In-Reply-To: <20200207141324.3188898-1-enric.balletbo@collabora.com>
References: <20200207141324.3188898-1-enric.balletbo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_142505_189495_2248A814 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 dafna.hirschfeld@collabora.com, Marcel Holtmann <marcel@holtmann.org>,
 Brian Norris <briannorris@chromium.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 Matthias Kaehlcke <mka@chromium.org>,
 Collabora Kernel ML <kernel@collabora.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Freitag, 7. Februar 2020, 15:13:24 CET schrieb Enric Balletbo i Serra:
> The cros-ec-extcon has no reg property so remove the unit address from
> the DT node to make DT compiler happy.
> 
> While here, remove the inexistent extcon-cells property from the extcon
> nodes.
> 
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>

applied for 5.7

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
