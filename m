Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D70AD806FC
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 17:16:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5WjgzhAGJdkZgoBPAdwSijc1DfdCfwqdkqF6qyhCVQQ=; b=h5MomF/DV2p9sT
	TsC8DAkp9icmOijXzv3lukgxbQAZN+0wp7FQxf856f9PT2l1nFdoP7zN+JG+kGe7H7ZqQss336Ksp
	B+wjL2YlN6mnMphcXFMVgn70V9d2NmHKSCyGUvBNgheXOlu4nfNeNMol4N1tQbvoIXjHUeP+aUg0V
	Vu2Sxyqc6458GPgS1hHXkGbObNwGe2MX7zLxE0ftK9sokZrf+s1ytkSwthAcv+pyNp1a12zVMKTN1
	NQdGxedkmvsmN+9XS48ExLvYw2MqjgMwKcDQ2A0TLhpQeU/oABk5Cp6LmMVB0wdfcynikmPXNPtYl
	HxqyeNquRtbPHpyBe8iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htvlV-0004n6-MF; Sat, 03 Aug 2019 15:16:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htvlI-0004mU-F5
 for linux-arm-kernel@lists.infradead.org; Sat, 03 Aug 2019 15:16:01 +0000
Received: from X250.getinternet.no (98.142.130.235.16clouds.com
 [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B1B912073D;
 Sat,  3 Aug 2019 15:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564845360;
 bh=BEpL6l+3xiuW/IzVuyU+RrKo0dYWHViZQBu/4eOViPA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oxpvC7IsJY1oxOl9aW34GdwmdCi/9TD3h8DJ+zYpVvddjomGXnatruz9azzvlFet8
 OQOz3LwIkMbWnolkOASN5g+J3vyZz7dSmGJckO5tDHzDchKMey+lIPmo9KKQOrH87d
 1+c8AwLARAAQb56ABJsx3yxjlOxDRAXGPoVorVOU=
Date: Sat, 3 Aug 2019 17:15:52 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Christian Gmeiner <christian.gmeiner@gmail.com>
Subject: Re: [PATCH] arm64: defconfig: CONFIG_DRM_ETNAVIV=m
Message-ID: <20190803151551.GR8870@X250.getinternet.no>
References: <20190802122102.3932-1-christian.gmeiner@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190802122102.3932-1-christian.gmeiner@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_081600_528613_DF8D85BE 
X-CRM114-Status: UNSURE (   9.48  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Leonard Crestez <leonard.crestez@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 etnaviv@lists.freedesktop.org,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Dinh Nguyen <dinguyen@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Olof Johansson <olof@lixom.net>, Simon Horman <horms+renesas@verge.net.au>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 02, 2019 at 02:20:28PM +0200, Christian Gmeiner wrote:
> For imx8 we want to enable etnaviv, let's enable it
> in defconfig, it will be useful to have it enabled for KernelCI
> boot and runtime testing.
> 
> Signed-off-by: Christian Gmeiner <christian.gmeiner@gmail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
