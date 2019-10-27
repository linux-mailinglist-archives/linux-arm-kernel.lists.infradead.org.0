Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 041FFE64DE
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 27 Oct 2019 19:23:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yz33ANKyop44SeEyv57iwWrdtiUc430HfSt5jHm5jXc=; b=STjMjg3jE52SGY
	iIf4m5LJCipobue0wbVbwsStoDd8WfsRuqkra0dvX/KPdZuzS8/CgdSIY7FFwxLmjzRCBOuX9uUQh
	+pDHtqtwBNxO2y7iJY1ZFsj/GleulszQ9J7NZe4mbY1DCCkY1rirLnkFTV3eXb8MeCrE+eF9upn88
	tg81RzmcXZwQsLcvgH6jlCDof7yP5VZniRnBqGK3lHr5k+RwsKRR72Sbr4BcOMPKQwcHK45t0POt9
	vBRAGubJTOx4OvEohGO9YfDt1xapeBIWL2lKfnzNsPcQD63P2bDefqnp4skSgCIRxtnIsQEFVkbXk
	c7tcipSylgp6k3V3Ce8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOnBv-0001qb-UU; Sun, 27 Oct 2019 18:23:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOnBW-0001Yt-TB; Sun, 27 Oct 2019 18:22:40 +0000
Received: from [46.218.74.72] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iOnBV-0008Hx-48; Sun, 27 Oct 2019 19:22:37 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: remove px30 default optee node
Date: Sun, 27 Oct 2019 19:22:36 +0100
Message-ID: <3461884.ytE3v2kofO@phil>
In-Reply-To: <20191023224409.3550-1-heiko@sntech.de>
References: <20191023224409.3550-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_112239_112436_1D362F5A 
X-CRM114-Status: UNSURE (   9.59  )
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

Am Donnerstag, 24. Oktober 2019, 00:44:09 CET schrieb Heiko Stuebner:
> Having a default optee node in a soc devicetree is not really good.
> For one there is no guarantee that any tee got loaded and there's even
> the possibility that a completely different TEE got loaded.
> 
> OP-Tee however will insert relevant nodes to the devicetree (firmware
> +reserved memory sections) during its own startup, so there really is
> no need to provide a default node.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

applied for 5.5



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
