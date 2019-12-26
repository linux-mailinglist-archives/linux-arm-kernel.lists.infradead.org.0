Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B21012AEF8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 22:36:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CvnZtikGSs4Suy6kyad1YZtONjv+Me7er4+lNztmITU=; b=YuGPVUSZK5ztru
	98ExVselL3OKh0/LBRA5hwkJlRt6ltUDracyPur6Ht09tPSD7siEUP8eL3JFHcUG28IfTe3nheooU
	pl0BiHvnKOBdb0ayiTSBoF/5pvyi2nCr/h8CMZ+5xLwKhARydwlK6KpTmpnvRMVLhh83C0GbAN9bL
	1UD0yyGZVQZ5dNbifErmcUvYec38cer27dEQOEmTSsx63ARqMvUeNdD5/S1H8ZWoKvzJNewKsZr6W
	DiP0ImwJKO5Xtg8Kw6Ixp6XP9bo9bBOAIF+47E/Eit4r3e/Pxs8udVJhFXNcNZU7D1up/NPwvkgz0
	uxqIqVPsiTeXgtiEgO9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikao6-00080R-K4; Thu, 26 Dec 2019 21:36:34 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikanw-0007z5-No; Thu, 26 Dec 2019 21:36:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bZoxgAannd2tkNNwwKV808Ug99KBWslN4hI308jxAhg=; b=ZTxVZbP8jHh4LUydfIbDacSml9
 p6f862RCdnk35tCi5JKeLOO+fJT/giHdSgS1id+hipPbF65+xyiR7b/hqkEhs15n15sqduE+4zPFP
 GnsJ3c5yflBU/GhXqC41Lr6fy1BdKK2kA2FLoIgAXAAFOwssipmQ4yHGNajKopjJNuFY=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1ikanm-0000Ho-Fy; Thu, 26 Dec 2019 22:36:14 +0100
Date: Thu, 26 Dec 2019 22:36:14 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH v2 1/1] net: stmmac: dwmac-meson8b: Fix the RGMII TX
 delay on Meson8b/8m2 SoCs
Message-ID: <20191226213614.GC32477@lunn.ch>
References: <20191226190101.3766479-1-martin.blumenstingl@googlemail.com>
 <20191226190101.3766479-2-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191226190101.3766479-2-martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_133624_772536_BE91F483 
X-CRM114-Status: GOOD (  10.75  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: f.fainelli@gmail.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 26, 2019 at 08:01:01PM +0100, Martin Blumenstingl wrote:
> GXBB and newer SoCs use the fixed FCLK_DIV2 (1GHz) clock as input for
> the m250_sel clock. Meson8b and Meson8m2 use MPLL2 instead, whose rate
> can be adjusted at runtime.
> 
> So far we have been running MPLL2 with ~250MHz (and the internal
> m250_div with value 1), which worked enough that we could transfer data
> with an TX delay of 4ns. Unfortunately there is high packet loss with
> an RGMII PHY when transferring data (receiving data works fine though).
> Odroid-C1's u-boot is running with a TX delay of only 2ns as well as
> the internal m250_div set to 2 - no lost (TX) packets can be observed
> with that setting in u-boot.
> 
> Manual testing has shown that the TX packet loss goes away when using
> the following settings in Linux (the vendor kernel uses the same
> settings):
> - MPLL2 clock set to ~500MHz
> - m250_div set to 2
> - TX delay set to 2ns on the MAC side
> 
> Update the m250_div divider settings to only accept dividers greater or
> equal 2 to fix the TX delay generated by the MAC.
> 
> iperf3 results before the change:
> [ ID] Interval           Transfer     Bitrate         Retr
> [  5]   0.00-10.00  sec   182 MBytes   153 Mbits/sec  514      sender
> [  5]   0.00-10.00  sec   182 MBytes   152 Mbits/sec           receiver
> 
> iperf3 results after the change (including an updated TX delay of 2ns):
> [ ID] Interval           Transfer     Bitrate         Retr  Cwnd
> [  5]   0.00-10.00  sec   927 MBytes   778 Mbits/sec    0      sender
> [  5]   0.00-10.01  sec   927 MBytes   777 Mbits/sec           receiver
> 
> Fixes: 4f6a71b84e1afd ("net: stmmac: dwmac-meson8b: fix internal RGMII clock configuration")
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
