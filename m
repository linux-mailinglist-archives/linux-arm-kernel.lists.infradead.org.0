Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE5CCB20A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 00:50:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W8hV3PT8ZIrhlq5H6aqy2iMvrlTGQ7g6Ip0FHNWHRuo=; b=BmeXJLL0O5zscB
	BWFwbKXIy5mtxwcKi2dtHs1V5EvX6on8Qwssw8GrFpzcerkJNBBJDJ3A4UnptWNtFLU5/A3qkUhZ+
	tTDBz/4Z4ixf+XigaiW53i5hjqG1Uhz1cMFXmf2I0ESVdKWcGkXSfcx3bK6k8kxIxYBRYM7XLEPfF
	MOOmmg6TyNMVvDo+RTAT/M+AC6WZD7A3sgeBjXk21g0E2WvCHfaGUp96rVzSfM0ifjZraq6GElF60
	YcjK35rGM/S79QqQEsxBUBtjNPiudeeWX98Uy13MCt1BFCKYR+dBActnni/9HdXtPxHUKuBBhKOpV
	te3nfm1B8KJIy82rfSwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG9vN-0008FB-A2; Thu, 03 Oct 2019 22:50:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG9v4-0008Ef-2Z; Thu, 03 Oct 2019 22:49:59 +0000
Received: from p57b7758c.dip0.t-ipconnect.de ([87.183.117.140]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iG9up-0000uR-6I; Fri, 04 Oct 2019 00:49:43 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH 5/6] arm64: dts: rockchip: Rename vcc12v_sys into dc_12v
 for roc-rk3399-pc
Date: Fri, 04 Oct 2019 00:49:42 +0200
Message-ID: <2645663.MEMbyMBloX@phil>
In-Reply-To: <20190919052822.10403-6-jagan@amarulasolutions.com>
References: <20190919052822.10403-1-jagan@amarulasolutions.com>
 <20190919052822.10403-6-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_154958_269118_C0C40D6C 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Da Xue <da@lessconfused.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Akash Gajjar <akash@openedev.com>, Levin Du <djw@t-chip.com.cn>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Donnerstag, 19. September 2019, 07:28:21 CEST schrieb Jagan Teki:
> It is always better practice to follow regulator naming conventions
> as per the schematics for future references.
> 
> This would indeed helpful to review and check the naming convention
> directly on schematics, both for the code reviewers and the developers.
> 
> So, rename vcc12v_sys into dc_12v as per rk3399 power tree as per
> roc-rk3399-pc schematics.
> 
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

applied for 5.5 (with the filename changed to the current one of course)

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
