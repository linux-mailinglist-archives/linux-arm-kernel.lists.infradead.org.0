Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7059A12913F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 04:57:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XEhgoc/QaUk3LVG7Eq1ErN240u4ldFgp1zStoE/LaAk=; b=F3RkdwkBqFDJkZ
	Qfcjw+Q6270D8L/sd0QjK+NY3WfJdQjvknGjNS1DIUOYB2LD/ESIXc2PqeUeJnguPBansqGr8iMZ+
	1ObpkvKcdjOTDWbaD3dEZHFehpXq5xCQBDj4MbsKLNX9kraoW5+kH3JStbK9y2kCkyD8XR0wT87JV
	xcBVkwPdO6HMODIH35s4j/+UfQL84XOUgl0nDqbto1TQuRVtGhrWN5/9u1528qtO8fPN/LRt3FEP5
	mgdIwaUQrsodaI7ywUSEToGwIT8IDUSbpPEscfUtQFAkgD7wOPPl3+/gu2oPYXDfa7Sog0StaQtkd
	eBD1XSrisYgEycXG9wQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijEqc-0005sy-Bx; Mon, 23 Dec 2019 03:57:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijEqS-0005sf-Ei
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 03:57:25 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 47A3E20709;
 Mon, 23 Dec 2019 03:57:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577073444;
 bh=HMWmu7fLzjD4zHWaJI1X0iL80kRp1P9VNuoGUhoQRKM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xJzoeeF1/dw1fgzu36QaQ97BE8OM0U2I1GejPfCl/ybUsDko7hz9wVs/TpOoKeqXB
 zI8e03xUgf/NVbcZFVre+m7tAV5sDvB0/uxkYHkrxvky6uU+e5I9AztgISvrqW7AIh
 8krSe87z2BpOaWjH4TJVpWzP0qJ2pXGN0A1GxenQ=
Date: Mon, 23 Dec 2019 11:57:01 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Peng Ma <peng.ma@nxp.com>
Subject: Re: [v5 2/3] arm64: dts: ls1028a: Update edma compatible to fit eDMA
 driver
Message-ID: <20191223035701.GK11523@dragon>
References: <20191212033714.4090-1-peng.ma@nxp.com>
 <20191212033714.4090-2-peng.ma@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191212033714.4090-2-peng.ma@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_195724_511671_F27CFCCC 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "vkoul@kernel.org" <vkoul@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 Robin Gong <yibin.gong@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 12, 2019 at 03:38:15AM +0000, Peng Ma wrote:
> The eDMA of LS1028A soc has a little bit different from others, So we
> should distinguish them in driver by compatible.
> 
> Signed-off-by: Peng Ma <peng.ma@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
