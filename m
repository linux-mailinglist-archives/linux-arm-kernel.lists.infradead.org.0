Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 011641AF997
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 13:37:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c7qfxa0ctp3GZuiGbx6fw8HyRRKWNNqYNEGJxq+n8vY=; b=ER7eJcdCpxEmNO
	b3po3R/1oeZFcalnbToupHPRLI7Eg/eWTmi8fIY/ynAXpC0A3cIvpJOjxzic/LQ2dYNhkx8Z13yl2
	3uCFxocWgcBCKoJoYcr4lmWPiNVSk4uxKWEWw7hSAtQtpL/sp4rWjT/EgmSHCNMK/BAJoQhQTJozl
	BOTj7Z3DeBa9TVBr3ZzV+CQPaf7Ym0fywlB9qy1oG/Jvof1yh6Yi4P2jT9H6mW5HeKPCHQp/9VZCD
	2UwoGZIlLdYh3c2kKYoFnIegz9yYAAseJRn9iDqk/qXZYESoZqKNVhOT8+08rSL5YkQLprkqxXTS/
	w0yhdsEdRK73R/8Bwvhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ8Gd-0006Zy-O3; Sun, 19 Apr 2020 11:37:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ8GU-0006Z0-04; Sun, 19 Apr 2020 11:37:35 +0000
Received: from p508fcedd.dip0.t-ipconnect.de ([80.143.206.221]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jQ8GS-0006Te-O3; Sun, 19 Apr 2020 13:37:32 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Correct PMU compatibles
Date: Sun, 19 Apr 2020 13:37:32 +0200
Message-ID: <2225548.BNUbTQZfRr@phil>
In-Reply-To: <6dfed94a99780c2314b38ff2b55a7efa0be4edbc.1587125314.git.robin.murphy@arm.com>
References: <6dfed94a99780c2314b38ff2b55a7efa0be4edbc.1587125314.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_043734_030485_75FF32AD 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Freitag, 17. April 2020, 14:08:34 CEST schrieb Robin Murphy:
> A proper binding for the Cortex-A35 PMU actually predates these DTs
> being upstreamed, so use it.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>

applied as fix for 5.7

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
