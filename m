Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4FD6EB40D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 16:37:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u8S3Bwu+XXjO5TH57PBVMflb6cI/qXxsinWiBN88orQ=; b=emXr4AawNpsXLX
	/zNSWElSuPP6GUAuzWe9f0W5EBm1O9DhNFGrADPIZHx/YasH9Kdk8aKfxUfwSiq+QPZOFMDYNNgIg
	dSKOkFS0KYLHFvXeGSJzlzk+xo7kRxHZeYuedB+qUZXyPaG/Pi1pdIMJUrRenY8u4//RO2KdVJsfm
	wE5eJ+VIs42zuyboSGdc6eyHTzmt24nR2UuQFbzD01/UW7zeQcTXic+Gh2PUTawYPG5MYhItrDroC
	rkp08xKGCp8JXWf0so/LnAEi9+drLzl6M5fFnvDU+bjC87prZMCgAVcznCGC5bmPZheWw0W98z/zh
	AxdPvoWepOXPMb/rRtGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQCVP-0001Re-36; Thu, 31 Oct 2019 15:36:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQCVF-0001Qj-4u; Thu, 31 Oct 2019 15:36:50 +0000
Received: from dhcp-64-28.ens-lyon.fr ([140.77.64.28] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iQCV4-000698-Qw; Thu, 31 Oct 2019 16:36:38 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH 1/2] dt-bindings: Add doc for Firefly ROC-RK3308-CC board
Date: Thu, 31 Oct 2019 16:36:37 +0100
Message-ID: <314513738.FDhnDVbnjr@phil>
In-Reply-To: <20191030072648.29738-1-andy.yan@rock-chips.com>
References: <20191030072648.29738-1-andy.yan@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_083649_341730_2B5B8CEA 
X-CRM114-Status: UNSURE (   8.80  )
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Mittwoch, 30. Oktober 2019, 08:26:48 CET schrieb Andy Yan:
> Add compatible for Firefly ROC-RK3308-CC board.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

applied both patches for 5.5, with some small fixes.

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
