Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3251D1C1975
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 17:27:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kpb+LNYXNpS29bGQfG+JlmISnJuUEcIr2w0d4ATSZJU=; b=MaWwTqAuxGsG5e
	DwFqjgwqGBC3Qm3oxB0nx25+KUXRNmEM1e8Ycb13+dvYMIznQrw+TigoiYNHNDXqEoctgQ2/3E6T+
	LErrvS8geJW6JOOgl1Hah26+dXSjbkMrEtgXNVkaW5Vdfc9FlCBSvRqxZli7TG2Pi7nZamAZOMl2Z
	1zImtVrCzToUEyc19jz7MSDMO8mQLKO3qiGOMlMkZtlFEt6L5pM/HP/ar1pVWbao+lRbRIX5z90qn
	8rTzhMHvgjRGdaJVaWqhAS3dMiVd1nZYA6vPLB18MoAeJxubdhVEmU3XWfMIb8TGiDkgfGchWSAz3
	A9J1mt2QZZoFKUgJngIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUXZC-00079P-Rp; Fri, 01 May 2020 15:27:06 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUXYv-00072t-3e; Fri, 01 May 2020 15:26:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SCMVQXjgnG5zxzmUYaFL9czDFrjlPmwomTiVGPqNcMM=; b=AclZSoKi8H/2w54RH0t42p62PL
 x6eyXSndWpcrLxeO9NMyVsraXH+IHB4ilYTqkJPFqSSj9Cq/T+uDG49tY5jMmfuB7uFrvbVohJaKE
 IKpVl9NywwkDGpSMxKceW35xXA6GhgGuZ0CR0GX/8l728M7W9IFzP5xkFNd8o2YUVlrY=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jUXYg-000YB1-9w; Fri, 01 May 2020 17:26:34 +0200
Date: Fri, 1 May 2020 17:26:34 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH RFC v2 01/11] dt-bindings: net: meson-dwmac: Add the
 amlogic,rx-delay-ns property
Message-ID: <20200501152634.GA128733@lunn.ch>
References: <20200429201644.1144546-1-martin.blumenstingl@googlemail.com>
 <20200429201644.1144546-2-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429201644.1144546-2-martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_082649_147894_A04A143B 
X-CRM114-Status: UNSURE (   6.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, f.fainelli@gmail.com, jianxin.pan@amlogic.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-amlogic@lists.infradead.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 10:16:34PM +0200, Martin Blumenstingl wrote:
> The PRG_ETHERNET registers on Meson8b and newer SoCs can add an RX
> delay. Add a property with the known supported values so it can be
> configured according to the board layout.
> 
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
