Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 117C01E1024
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 16:11:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2CxKHM+J9qjAASILXRwc2TIkV0NcONmd3ls8o8+o/Vk=; b=hF1JWr3NvnPGZz
	zhj8EoG8QNZV3z2j4CopfK88Y+W4UpyUmrP7+0WDj6Ei5T2Q+PvDnLvj2d7k53dBRmt30xu4cFalN
	VLgmEx7sfEjaUT8JyOhMJ5MfStbXSWXndNZEfG3JKrfiEGDSalTnfnbuqcnQkCjYdrPWs+i5DJOMN
	XWUr9TUVbje0qYJcCksFaI2eLqpE0kgp3DLPMdbqxNWep+O64FQnDdar4Mf2SuvLx3Y/tLF/X/aA/
	99YgKxtcG/juS4nwLwh7MLXOjXAwE20aBVqwoZP1x3H3GxrAOrmLKfoYkNuHb0wKE8AAy2hv+8fVj
	SDAGY7/EUbLE8GRD47Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdDos-0000fC-0N; Mon, 25 May 2020 14:11:10 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdDoi-0000ec-GT
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 14:11:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=I0JcXOa65pxt0xeOn7XZQNU2idxhZWDbbjFj+EaaSWo=; b=XIC82vWt8QdxYgP2GkmVIy9T3l
 veUjidrRo4BVKiloackNjz5i742888MBHPsFodv7WcoggCkk5k1IYqD4yRz4hS6/3ANYgLCepIpUD
 V2Qo1sDTJ7rq7vCI/bvLRvYvkkwI7BbRKpXjTFTXTdn4P9BIKpUPpDfHt9F7GsbN/4G4=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jdDoW-003C8t-15; Mon, 25 May 2020 16:10:48 +0200
Date: Mon, 25 May 2020 16:10:48 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Fugang Duan <fugang.duan@nxp.com>
Subject: Re: [PATCH] stmmac: platform: add "snps,dwmac-5.10a" IP compatible
 string
Message-ID: <20200525141048.GF752669@lunn.ch>
References: <1590394945-5571-1-git-send-email-fugang.duan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1590394945-5571-1-git-send-email-fugang.duan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_071100_548085_7A9859DF 
X-CRM114-Status: UNSURE (   5.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: p.zabel@pengutronix.de, alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, joabreu@synopsys.com,
 mcoquelin.stm32@gmail.com, kuba@kernel.org, peppe.cavallaro@st.com,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 25, 2020 at 04:22:25PM +0800, Fugang Duan wrote:
> Add "snps,dwmac-5.10a" compatible string for 5.10a version that can
> avoid to define some plat data in glue layer.

Documentation/devicetree/bindings/net/snps,dwmac.yaml ?

      Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
