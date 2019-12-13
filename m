Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D4311E174
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 11:04:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+RJ91fvrOn4c8pyNGQXG0mECNBzF7nPVODQDC7rO3Gk=; b=tDoMHeioG6gmTm
	TZtrTmLtGsAMngFnZFJY9hmZEDGCx0lBjYAjP01Ac0VakOMnBoKzH74OwVg3HhtnO5E93vDy3cgG7
	1vPYVw7pFYTO5Yd4CfLC7cy/01mmo0/SNvPELg3frH4ApNrXfFr9xzv42KU1yW6UfH2D5vn+2OwLK
	PXjaKLeWiBPv2vL/nV+vvisZ4v+oG9mg5LUD2DcG2FGepB1zutRAvXI2KUG3kehRuA+GBlCNeCSJR
	G57d0GAHoc3BNUO4GmtXmMX6DgocPVs9+SIyU5U9LZyvnN5oHz2veAAQnFcejD14HfbErt5zEIIYt
	57XK6WoUUeX22b9nizHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifhoI-0005Wh-Re; Fri, 13 Dec 2019 10:04:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifho6-0005VE-Mo; Fri, 13 Dec 2019 10:04:24 +0000
Received: from wf0651.dip.tu-dresden.de ([141.76.182.139] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <heiko@sntech.de>)
 id 1ifhny-0000yI-M1; Fri, 13 Dec 2019 11:04:14 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Remove always-on properties
 from regulator nodes on rk3399-roc-pc.
Date: Fri, 13 Dec 2019 11:04:14 +0100
Message-ID: <6226306.W37etdpfGF@phil>
In-Reply-To: <f985665c-86c0-1657-14f8-f77e2ce5a3f7@fivetechno.de>
References: <f985665c-86c0-1657-14f8-f77e2ce5a3f7@fivetechno.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_020422_895255_498E3369 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Markus,

Am Dienstag, 10. Dezember 2019, 13:44:38 CET schrieb Markus Reichl:
> Some regulators don't need the always-on property, remove it.
> 
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>

applied for 5.6, but please check your mail client as "git am" was quite
unhappy about it, which I fixed up in the patch itself.
Maybe just switch to "git send-email" instead of using Thunderbird.

Heiko




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
