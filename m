Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CE06D586C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 23:58:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/nCqgK3K9n4y8/wAWlESRQHsv68anpqaIcFICBwkYUc=; b=MMyof4IgHiCnhj
	A/uda0bF7XJDKqPZzWHjerKeFieoCdye1wzdjL1S4tYN3erFrDpoG9HC8XaWIxmLPr+3x9l0YOjIl
	U9y1jQZGkFaVz1PhGlnDBiv+ox7Fytw1zOO1CKMdCv0DTY/l64I2+jxMJlgJ69wW1kd3wbzkDvZg3
	jfSkiwsijsDrQ4du0DufHqWUd3tshAtSGGujJAjBTPiOo0NiwXrHIMNbsQkCKfoSpupIe1kOv+LYd
	kVNlZyD1SzKojY+4bBqH+EkwvvX1YuUzDhMfVnOxR+xyanEbnpOpKMRwPvl7Up0Zw4jAPDlkrthr2
	u+3yttJI4wnWa1cTK3Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJlsV-0000AL-7Q; Sun, 13 Oct 2019 21:58:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJlsI-00005k-Pg; Sun, 13 Oct 2019 21:58:05 +0000
Received: from i59f7e0c5.versanet.de ([89.247.224.197] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iJlsE-0004uO-RZ; Sun, 13 Oct 2019 23:57:59 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Ben Dooks <ben.dooks@codethink.co.uk>
Subject: Re: [PATCH] drm/rockchip: make rockchip_gem_alloc_object static
Date: Sun, 13 Oct 2019 23:57:53 +0200
Message-ID: <4332900.Is0gsZspTc@phil>
In-Reply-To: <20191009121022.17478-1-ben.dooks@codethink.co.uk>
References: <20191009121022.17478-1-ben.dooks@codethink.co.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_145803_018390_C9F76251 
X-CRM114-Status: UNSURE (   9.30  )
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
Cc: linux-kernel@lists.codethink.co.uk, David Airlie <airlied@linux.ie>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Mittwoch, 9. Oktober 2019, 14:10:22 CEST schrieb Ben Dooks:
> The rockchip_gem_alloc_object function is not exported so
> make it static to avoid the following sparse warning:
> 
> drivers/gpu/drm/rockchip/rockchip_drm_gem.c:297:28: warning: symbol 'rockchip_gem_alloc_object' was not declared. Should it be static?
> 
> Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>

applied to drm-misc-next

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
