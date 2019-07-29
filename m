Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A969278F72
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 17:36:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g3ZOLuSbS+crg/tESFA0DwCfIy9H1dL5JdgyjoC5BtE=; b=uFaOCk/NZ1CQRa
	DfNtNcqikAtavUmMRZuVUdgfv7ILoJKBqgwYd3pk9I++b17W7bgbtHloAzSRCR3aoo1FE3cUrC4aW
	Iu2mRdwLHSYKkcJcq52vqZGVat2W9xM7NJeMUgv1vJOsvzMCEDeCnVUubN+iqFpygkhQfm0tBNkSD
	DR3lYZW1v7CnaS3T+gbtTiGqhVCPQvAisUhTxGrWqX1VbSYj+CPc+bUBjja0bxhCrI1TFFraFJ8Nz
	xwV9WIESdZ+U80VxrJs32HavsEtbpcaB1t+9wNk+laHJSMX39dMwo4z6i5eO+QORGZhraDrZcYpbp
	Q2sXFFQNuExpH1rjm10A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs7hf-0000jX-MH; Mon, 29 Jul 2019 15:36:47 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs7hU-0000iw-Ct
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 15:36:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=k+pY4BNjcj+Rs1KaJHTZzkyKwY60RatbH+nODMGqyuc=; b=1p65XXu7gNeQsYGAvt9+Ma+XS0
 8iiSrpF0SEUgZEP7k2FsCkUhqNiurhDOQcqHHq+sYoFnlpO+SrXOhBaMJa2AB6U4Sinuky8lfc2BR
 Gi0+bIt67uZUkFTPdtHjfVpvf/HRg2iWoRzhrsnq8/Y9gkzC0NWJJWYG3g7lZ0d0xMXs=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hs7hQ-0002VA-NJ; Mon, 29 Jul 2019 17:36:32 +0200
Date: Mon, 29 Jul 2019 17:36:32 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Claudiu Manoil <claudiu.manoil@nxp.com>
Subject: Re: [PATCH net-next v3 3/4] dt-bindings: net: fsl: enetc: Add
 bindings for the central MDIO PCIe endpoint
Message-ID: <20190729153632.GH4110@lunn.ch>
References: <1564394627-3810-1-git-send-email-claudiu.manoil@nxp.com>
 <1564394627-3810-4-git-send-email-claudiu.manoil@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1564394627-3810-4-git-send-email-claudiu.manoil@nxp.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_083636_589223_E3ED1077 
X-CRM114-Status: UNSURE (   7.58  )
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

On Mon, Jul 29, 2019 at 01:03:46PM +0300, Claudiu Manoil wrote:
> The on-chip PCIe root complex that integrates the ENETC ethernet
> controllers also integrates a PCIe endpoint for the MDIO controller
> providing for centralized control of the ENETC mdio bus.
> Add bindings for this "central" MDIO Integrated PCIe Endpoint.
> 
> Signed-off-by: Claudiu Manoil <claudiu.manoil@nxp.com>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
