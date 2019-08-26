Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0EF9D8E9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 00:15:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oAD5Y0QDakJAVgjjDlQAWd/Bo9fQUx+3dB4CW6S2kWA=; b=t83kt3T+jNtxUU
	+OziQKbMGhpjpIqEx4J/OcMsKy7EiG8GadzZ3iObPD/qdgUMdEyoeB0hCSkibquanerZXdqwaJAsu
	9QYk0M41PfZsE7AH+aMPOuz7L0yfnmTktdYKwJuvoY3g/fHvLMCHt5aQq5nKg61XlzQqxergJzaGY
	zSRB2N6ZW/RyRIZRJXcjaprZEFGTbelJ7j0BPIY7G+vWJwqZwU2HwDrT3iMTyh+X83LZTVMw/ZVFj
	BPElm7VzYiHVFnANAIpRMP6TPxvfhl93BGURJleWOSIQmoXxXGgO5V22GISNAQoxHLkTiJZsi1kGX
	KLoCUgh6NYJtY2F4/WmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2NGj-0002cS-AD; Mon, 26 Aug 2019 22:15:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2NGT-0001PO-7h; Mon, 26 Aug 2019 22:15:06 +0000
Received: from [104.132.1.107] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1i2NGB-0006X1-3B; Tue, 27 Aug 2019 00:14:47 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 linux-kernel@vger.kernel.org, Sam Ravnborg <sam@ravnborg.org>,
 Daniel Vetter <daniel@ffwll.ch>, Sean Paul <sean@poorly.run>
Subject: Re: [PATCH RESEND 06/14] drm: rockchip: Provide ddc symlink in
 inno_hdmi sysfs directory
Date: Tue, 27 Aug 2019 00:14:41 +0200
Message-ID: <4123730.fx8cIkYQ17@phil>
In-Reply-To: <a1f778d328328f15300338600bb2400850717300.1566845537.git.andrzej.p@collabora.com>
References: <cover.1566845537.git.andrzej.p@collabora.com>
 <a1f778d328328f15300338600bb2400850717300.1566845537.git.andrzej.p@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_151505_431909_BB953C53 
X-CRM114-Status: UNSURE (   7.01  )
X-CRM114-Notice: Please train this message.
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
Cc: freedreno@lists.freedesktop.org, linux-samsung-soc@vger.kernel.org,
 linux-tegra@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Leo Li <sunpeng.li@amd.com>, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, Jonathan Hunter <jonathanh@nvidia.com>,
 Eric Anholt <eric@anholt.net>, Thierry Reding <thierry.reding@gmail.com>,
 linux-mediatek@lists.infradead.org, Alex Deucher <alexander.deucher@amd.com>,
 kernel@collabora.com, Harry Wentland <harry.wentland@amd.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Montag, 26. August 2019, 21:25:48 CEST schrieb Andrzej Pietrasiewicz:
> Use the ddc pointer provided by the generic connector.
> 
> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> Acked-by: Sam Ravnborg <sam@ravnborg.org>
> Reviewed-by: Emil Velikov <emil.velikov@collabora.com>

Acked-by: Heiko Stuebner <heiko@sntech.de>




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
