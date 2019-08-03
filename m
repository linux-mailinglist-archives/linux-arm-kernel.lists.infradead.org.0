Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D1ED80544
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 10:26:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ADGzpbjy2TWXZ9JL0xiSUjFC28FP4eV6tgFTAlftC4E=; b=Wr0l2Mpj7EDyDD
	yUg1iAve/XHDMGVoReb1s7iEwt0IBhu5ePInfjSlJAL8jnOIUStjqV0hhXgEZ822jjitJ7UrXhP1+
	VP3Ib485/O/l/kDiRKDd2+t3Ej7C8I4mDmyW04lDX8H4tmR4F2pci8SdhatY/Xwlz3ACzrPfhFJoZ
	jzZPqcu/lMQr+dycri4tlVfPN5+mooOQTRf76BNU77i0/5l0ZrhOdA7xEHH07oL85Rn6Vhec+zE/n
	ni7Bv2aylbOGVAMXCCLfMlmGNFeuE5c6cZWeok5hMQyMiYSVE/o37uQWtDK13SRavownTGFG5ejjN
	US6nsxpYDgoEDNKZ+dvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htpMU-0006aV-8H; Sat, 03 Aug 2019 08:25:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htpMJ-0006a2-HU
 for linux-arm-kernel@lists.infradead.org; Sat, 03 Aug 2019 08:25:48 +0000
Received: from X250.getinternet.no (98.142.130.235.16clouds.com
 [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2805C2087C;
 Sat,  3 Aug 2019 08:25:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564820747;
 bh=qIttMQ3U/fHNzJtH0IN8rrPWV53a2WBrICV7ajYJtgY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RQfdZu6lR5xBmKmpDMWzi8NbA9NDz6PNN+T8RPPoh5PW1SGqW4C04Cl0bBKI9DjVS
 Gw1Iz0ExxKe9H2vlBaCoUnapHb256kwlb1uGNQEHAfVlUNkHlRBrxt8Sua8VPa7zrC
 9J/i7ULKhbrj44oDWNNpXejiaxRmHKN4QMJQ3Cp4=
Date: Sat, 3 Aug 2019 10:25:42 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v2 1/2] ARM: dts: imx6qdl-wandboard: Add OV5645 camera
 support
Message-ID: <20190803082540.GF8870@X250.getinternet.no>
References: <20190722134546.15094-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190722134546.15094-1-festevam@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_012547_596715_A5F5DE31 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 10:45:45AM -0300, Fabio Estevam wrote:
> From: Ezequiel Garcia <ezequiel@collabora.com>
> 
> imx6qdl-wandboard can be connected to a OV5645 camera via
> MIPI CSI port. Add support for it.
> 
> PAD_GPIO_6 has been originally used for the Ethernet FEC
> ERR006687 workaround, but it needs to be used to provide the
> camera sensor clock, so adjust it accordingly.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Applied both, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
