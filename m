Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A9B4194253
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 16:05:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5pjLCjFC260r/SKfa1C6AE3TEOOgOA5kZBtGKDVp5k0=; b=I6R2jQXsHLkJ1Q
	noO9MRTTDYbOK0sCGwvYYL+73XzAhqgAYOjLnQXzLhN30WXCMe5rIrxo8Nb7mIas0RocURDqX31cM
	+vrNDJwKi0QFEE7qRHMCsYW3i3GdFV6pxH1SCFmFJVF80cOKE00MEBzfYoWf9Y4ybuGzaB7f1zV1b
	nzX6ebHlvG4Sy7chyssHjf0gE7psIuSPujbXt9SPQnAo25+H/GrH9E4j+viDs8HKUzuOiJXaHeY/1
	t36ZeEQxZ1mPuJHbuWmMOesp3LZfSRP1YmwPGilg8AEzZUp5Gog8yRK6bWs1BhNntccMGg3OHsEFs
	3Y1Oj9AHvNp/9QsPe3Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHU4J-0001kt-Ei; Thu, 26 Mar 2020 15:05:15 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHU42-0001Zm-Ha
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 15:04:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6dRAIG31Y9o9lqNsoig/7hXppm0i32H4kRh/mHoRuKc=; b=b+fVkMlmKKb6o3MPVGwdzyhdFD
 6iY2dtR6MSMk7K3C9gHexE4R3rwOxVe2bqGEbcSqnvSYgjRlJIHx4Eo4e7vjHEHYmSibp2lCg2meq
 lqcBG0kli+PzfRQM5kFUtR9JO+1MaQiLFFQ3r4fs5UmlyoxojPqftN02QUk0PBZfjtWs=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jHU3o-0000MQ-Gl; Thu, 26 Mar 2020 16:04:44 +0100
Date: Thu, 26 Mar 2020 16:04:44 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [RFC net-next 0/2] split phylink PCS operations and add PCS
 support for dpaa2
Message-ID: <20200326150444.GH27427@lunn.ch>
References: <20200317144944.GP25745@shell.armlinux.org.uk>
 <20200326145750.GA25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200326145750.GA25745@shell.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_080458_587358_9BFE3594 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, netdev@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 26, 2020 at 02:57:50PM +0000, Russell King - ARM Linux admin wrote:
> Hi,
> 
> Was there any conclusion on this 5 patch series, and whether I should
> submit it for net-next?

Hi Russell

The basic idea seems sound. So i suggest re-submitting without the RFC
tag, and let people comment on it again.

     Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
