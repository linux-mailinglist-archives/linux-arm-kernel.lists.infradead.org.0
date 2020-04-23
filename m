Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CDF01B5D7E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 16:21:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aIw2iVVvgA+TB/NuzTw2UWqESlTnog+I5YqtT/scIIw=; b=OKPWzLBQOaiJtI
	UfEl3/we1vT4HiJJ5NuduYYYnKoqkKoAFiDhUbMNO868ISMzpPk/uJU8wCEJcJrieOVZLB1SGYikV
	5/SpXO+5VeiSsUWwfPZErdPUyCztyfN3m7e8ItH3QS/70hhn+Ds+D2GEurQ/A56x0NaS0RsyTPBDr
	sg9hh6GO036TIac1tFj2I8TEXvUkdc9GQfOQPuhfuAfKYqIrX7bl26vMSM8xX+oy4AjyQQUJBmAYw
	8jer6YxncP9F+0IONsgNAe+981na6kebaaOsMBtpyUF/VwYw8LaGDViGKOv7CVLu2N7YcnUysIev0
	vN2depRcLGcOOMZX9Ung==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRcjD-0001nn-JE; Thu, 23 Apr 2020 14:21:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRcj4-0001mK-Sc
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 14:21:16 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BE43B2076C;
 Thu, 23 Apr 2020 14:21:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587651674;
 bh=bfbxVsKUF/76rdf0Qqm6uc1xcuiU0K9AP+BipX8lGw4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tIB63ymyLlCpgjs+FxCNNHjV/qm+B8u3qX0VRpfCGdKn/IN8e8YQGQaLWeOvgK63g
 ZDfVw/Nb/kjXlhac7hLTNPy7faKl8eSxrp9j29Q5ot3Fer+8e5Q7H2J/skPylp0idr
 KkHaV8KN+TOUwUtjfn9IGjbHm1YzltMFKX9kV4wY=
Date: Thu, 23 Apr 2020 22:21:04 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: vendor-prefixes: Add Beacon vendor prefix
Message-ID: <20200423142102.GA9391@dragon>
References: <20200324144324.21178-1-aford173@gmail.com>
 <20200423031002.GH8571@dragon>
 <CAOMZO5B3OL3_Ow_gy_a4PD=E6xaOWvOAHw-aDDB54E51UajQ4w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMZO5B3OL3_Ow_gy_a4PD=E6xaOWvOAHw-aDDB54E51UajQ4w@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_072114_944601_295D42E5 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Adam Ford-BE <aford@beaconembedded.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Adam Ford <aford173@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 23, 2020 at 12:49:52AM -0300, Fabio Estevam wrote:
> Hi Shawn,
> 
> On Thu, Apr 23, 2020 at 12:10 AM Shawn Guo <shawnguo@kernel.org> wrote:
> 
> > Hi Rob,
> >
> > Are you okay with this?
> 
> Rob has already applied it:
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/Documentation/devicetree/bindings/vendor-prefixes.yaml?h=next-20200422&id=f756619f26edf74ad55d2151a6757a260e660fa8

Okay.  Thanks Fabio.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
