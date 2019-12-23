Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E47BD12912C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 04:40:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OD691JvnaT/Rq8JBb3FjeR2tFUdJcsMI8ZWLr3NyXRE=; b=TcRZedSEeXVBdu
	0Nn9XZyYpKyq8lAfHfyw+slHsdBwoB+Rg3i5cIEdJsFrzpQKuELhYoYYrHRf8S7Vz+e+isrODjVUB
	5nDk8iiZMk6MdBSZuCy3KUNGLUgI5UvpM+SeSh/pnN+Js7cU8Iq4oFbV0+6V3ERUAEjkLAKOAJLxu
	Oo7gebWiCCZ10HZyi+bPCg/cGy3C20h9mBQtYzGoY5ZudsQmYuoYgkq3DGv6mjOEqc76GdOaJOIa6
	LVttwsalg43wlsV5UTEssQ8n3LZBg5UZMRtOs9HdlE11Sdti1BO1INnDKnzZBbN2MINX9AEylneb1
	2cluJRSKEdAlVE+RWBOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijEZt-0007om-AY; Mon, 23 Dec 2019 03:40:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijEZf-0007RF-BH
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 03:40:04 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 547CB206D3;
 Mon, 23 Dec 2019 03:40:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577072402;
 bh=1+1asmXN2lmwgHub8l9qH1q3+Y5oVPh68xB8JmZg28M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=w+NULim+Ltl1GUAIzSucYkVoN+Epx18+M4zhV7oIHEVk++6D2dmlrJeZeDr1RhlRl
 HCTv8h1/D5rLOfg8qD+g0JlayamSdk6L6SY/WtRn8fJl9nrQpvfNuPnmwYcmZJAYlO
 bx/tcbcIBBB02nQsvS1Wq2ngOPz1OFQqO5q8FZxs=
Date: Mon, 23 Dec 2019 11:39:42 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH] ARM: imx_v6_v7_defconfig: Enable NFS_V4_1 and NFS_V4_2
 support
Message-ID: <20191223033941.GG11523@dragon>
References: <20191210112737.8298-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210112737.8298-1-s.hauer@pengutronix.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_194003_414457_0EFD36E4 
X-CRM114-Status: UNSURE (   7.46  )
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
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 12:27:37PM +0100, Sascha Hauer wrote:
> Enable NFS_V4_1 and NFS_V4_2 to support NFS servers providing that
> protocol.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
