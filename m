Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED2B0CE0F9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 13:54:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HrO0Cpm205gyiI8ZD8SSK3AoEjon5wK2RxHzVKNWD1k=; b=ORQ2+z+Czytzcn
	RXNo+Bbmdux8gsCzlYvO0AoNbGj2Cx9efPt5wL5jjv6+cyvphDjeFQ3zwWKBGeEvkID8M+sNu5Vnb
	HMRvfVI195tQuWL59mQ7s3r21lC1e6ra6G069pbwnQiyQpbBk0GM85LsaV5DDgdCx3f+407lKT4Eg
	chpNUsGhv/obF34683ctPYoK4gCejdCDkjpFP9SX8+8OGKrboEkJrFu7LTA4iUuMlMvMzqeIgLu93
	w3uSSsmQ7OJh8+2yabybP3Jrs1xGaeKebkDpb1+Bs89Ib6AYmgU9UAmxaM9fCWef2A52OTQ2URGu+
	wpnL9HLoyPQ/9X1z8zYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHRbG-0007BI-Pb; Mon, 07 Oct 2019 11:54:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHRb9-0007Al-Jh
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 11:54:44 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B28F92173B;
 Mon,  7 Oct 2019 11:54:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570449283;
 bh=MNdEVhsoyV/GS+3GXIjUz7N5F7q7HpTrTksRIxDFpLc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nsSU8wybQCV56xtN5qUk2DFkM6GqwmJAehDvfpkpvdhG/Kpx02xYw0qA+4FIIdn56
 BXJhWuI1vCWfr4FqcBBSMVbsTJzaEvWuC0mHcCAVKNYJJ0zQhyGntTJnaj0zhQLL1W
 7BYaO873gebXT5iyk12iZcOT9KuRjho+jpuUQqTI=
Date: Mon, 7 Oct 2019 19:54:18 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH V2] ARM: dts: imx6q-dhcom: Enable CAN in board DTS
Message-ID: <20191007115416.GG7150@dragon>
References: <20190917153512.6102-1-marex@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917153512.6102-1-marex@denx.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_045443_676242_E06EAF4A 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Fabio Estevam <festevam@gmail.com>, Ludwig Zenz <lzenz@dh-electronics.com>,
 linux-arm-kernel@lists.infradead.org, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 17, 2019 at 05:35:12PM +0200, Marek Vasut wrote:
> Move the CAN enablement from SoM DTSi to board DTS, as each board might need
> different CAN configuration. Moreover, disable CAN2 on the PDK2 as it is not
> available on any connector. This also fixes on-SoM SD slot operation, as it
> shares pins with the CAN2.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Reviewed-by: Fabio Estevam <festevam@gmail.com>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Ludwig Zenz <lzenz@dh-electronics.com>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> To: linux-arm-kernel@lists.infradead.org

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
