Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE1BE64D9
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 27 Oct 2019 19:22:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S24cn1s95VUZ2Fco0sQTZDeyCCkiwGP9E+Tux8ZPLiY=; b=cUwovjb341wjhi
	Cvea1uBIN8Q5n2JJ3Vbf6HyaZYSPrw9A0AII3fIOxVsDV/+/EGSgCFYDs2BImh4dPla3ynlbWCUal
	RM4eOe8zzZShri2U/2ja/OZ80yio/AnI/Q8rrHagmU60iQvKLzdtEHooJTo6L5Bd7pT1mQ8PLEMLN
	73zWh6bJdVgLvSjUojsbN9UZ/IxnKg7rEKjiQT1mbuxXrxRQ/AB6WvtYbwWsjAFvdn8GidOceVkrN
	cbmUrKAXLqXjzHmZR0AR7NXd/a/GdTO5jci7gzqOVYlHmji6bzy9Cd6NO+Xc8B7ix7FPECibRH86T
	xwiEflx9Bi/uAB29WzIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOnBR-0001Kc-OM; Sun, 27 Oct 2019 18:22:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOnBG-0001JL-5B; Sun, 27 Oct 2019 18:22:23 +0000
Received: from [46.218.74.72] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iOnBE-0008Ha-IL; Sun, 27 Oct 2019 19:22:20 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: add px30 otp controller
Date: Sun, 27 Oct 2019 19:21:58 +0100
Message-ID: <10558180.LDrOcu2nhT@phil>
In-Reply-To: <20191023224113.3268-1-heiko@sntech.de>
References: <20191023224113.3268-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_112222_348809_67CB73FA 
X-CRM114-Status: UNSURE (   9.76  )
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Donnerstag, 24. Oktober 2019, 00:41:13 CET schrieb Heiko Stuebner:
> The px30 soc contains a controller for one-time-programmable memory,
> so add the necessary node for it and the fields defined in it by default.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

applied for 5.5



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
