Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CE4834903
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 15:37:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pwTeLVArciyEnOvoAE/4velyWrrTvMZ1YtEFYnXssc8=; b=CyISEGRpUuRdFX
	QCzSM43uAlt+D6hlL2RbwSESd3fleuvwC+J+6piLQ89Z+HAJflIajwYnxp7wZQeVPbCk7OYfS8nW3
	64cXLsGEeSmmkcsH9BRg+GnifUzK60EtjFsqnl+YSp0Xzg9i6FVG+r6KhYbl2dU3B+J7G8KrKZAaV
	ctXRAaWLTWutnDlt1hxy5uG5J/1gO6FLu45+dQsDHcPfvyTE9PY3GlbsP8X+wf954EBzsLwzFmuDA
	2ib53Oe1+NVYG+aAFI5qYLcKrLRv3knKXCeDiXiyoD+FAb2ETHV9sJRcU88hwG77JeRESsDDlrQGK
	EYM7YSjWF4Js6KahdvRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY9dK-0001Nw-Ma; Tue, 04 Jun 2019 13:37:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY9dF-0001NK-60; Tue, 04 Jun 2019 13:37:42 +0000
Received: from we0305.dip.tu-dresden.de ([141.76.177.49] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hY9dD-0001P7-Lx; Tue, 04 Jun 2019 15:37:39 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: John Keeping <john@metanate.com>
Subject: Re: [PATCH] ARM: dts: rockchip: fix pwm-cells for rk3288's pwm3
Date: Tue, 04 Jun 2019 15:37:38 +0200
Message-ID: <4241857.8QsoknCOxu@phil>
In-Reply-To: <20190603143435.23352-1-john@metanate.com>
References: <20190603143435.23352-1-john@metanate.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_063741_368015_BA1241B8 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Montag, 3. Juni 2019, 16:34:35 CEST schrieb John Keeping:
> This is the same as the other PWMs on this SoC and uses 3 cells.
> 
> Signed-off-by: John Keeping <john@metanate.com>

applied for 5.3

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
