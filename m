Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9493178F52
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 17:32:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VHpwHjOkh4FEZPX8RvjCY22pm95rMzLZtdVCA6UFjL0=; b=TCBqrFmsEfDqYF
	FiaPU8b7uMy6cNhgpyqvVgQ/dnFBdbzHFjv/7Id3N+vcCo+uM+f2NBU56TD9mSl7L9YvnmuqQwg3f
	Qu+gjT2cNBdFMKTXr+h0B1C2of1joGWA3PV91cde35+zVaJl1OP8lfFgfssyZaQgTWIlZtq/7PjVy
	KVWA3Rkj4UPTWIcS7ob6wcFAlMC1Cv9hvXsZ+Gst+kDL2favcSpD/eVpmPECDkf6rYKTuKFqrrFQ5
	2jDyqDWA26+ugSClQnWztJsAB3HsnNIkNfE130JAZ05QEq2Lq9GKWT5lL8Cl8IEQE79SnMv3UiDb/
	dCMvEplhwDRs2j/xZO7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs7dL-0006nd-MS; Mon, 29 Jul 2019 15:32:19 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs7dA-0006nC-8Q
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 15:32:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=87rbIchsoG1YbtVeld/osip7Rb3mOAkZcZQFZiCcJK0=; b=I8G1Uh04QiypKHAkVqakyYRmnv
 l7sTDr2lgKbI0wUx5hsN86wuPvbyKc3s1+JCbyYsdwysrCppBAXbdEq2CudWEbbb1Awm9kl3D6Oz+
 QDKrg34UxvREmqS2GP579i1YPyUEea0YxgWsGIjnNCYAfdEk5a5f5/Noazw5+f2CALwo=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hs7d4-0002R2-28; Mon, 29 Jul 2019 17:32:02 +0200
Date: Mon, 29 Jul 2019 17:32:02 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Claudiu Manoil <claudiu.manoil@nxp.com>
Subject: Re: [PATCH net-next v3 1/4] enetc: Clean up local mdio bus allocation
Message-ID: <20190729153202.GF4110@lunn.ch>
References: <1564394627-3810-1-git-send-email-claudiu.manoil@nxp.com>
 <1564394627-3810-2-git-send-email-claudiu.manoil@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1564394627-3810-2-git-send-email-claudiu.manoil@nxp.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_083208_455050_57AB46AB 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org,
 alexandru.marginean@nxp.com, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 01:03:44PM +0300, Claudiu Manoil wrote:
> What's needed is basically a pointer to the mdio registers.
> This is one way to store it inside bus->priv allocated space,
> without upsetting sparse.
> Reworked accessors to avoid __iomem casting.
> Used devm_* variant to further clean up the init error /
> remove paths.
> 
> Fixes following sparse warning:
>  warning: incorrect type in assignment (different address spaces)
>     expected void *priv
>     got struct enetc_mdio_regs [noderef] <asn:2>*[assigned] regs
> 
> Fixes: ebfcb23d62ab ("enetc: Add ENETC PF level external MDIO support")
> 
> Signed-off-by: Claudiu Manoil <claudiu.manoil@nxp.com>


Thanks, much nicer.

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
