Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE27AF147
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 20:50:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y4hPPc7Q7tZT0NBfQ2vH0mg4W0iO1mrv0Cahld3reHs=; b=QrhDXbX9SQP+qc
	HVC9RGZYyv+iIkIsnNpe0+rSdBxux2aJMNBjW7oJbgAK1I/QNkWFyw2b+eIHzlaqw9VRTWBqM7Pop
	tj2HhENMnpI0Rx0LGOjROmf4RlWSyyfBf3GBqM86rjiBT++NFWLHhDnj2TSxJ+BGKQpiIBUxz/zoQ
	yN4TcuH+K+5uVJPuYW0wAAa56WDCUImRC9iEpJxlrTp6YMb0ddIWwjt/Kfb1mVsyM8R9UbXtj0qCB
	QgshZ5hI7SAsf8KFjQz5v7K9EHwE5/4bzFPnceH+e1oQCdRM3VspgowiCvRiVUcq4ptuNbtibh7Ps
	rRoyZl+jbnBYSnZ4fIaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7lE7-0002Kv-5g; Tue, 10 Sep 2019 18:50:55 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7lDy-0002Jz-Po
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 18:50:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=K7gTwV2bGPI9VgVWTVVCsc3vqVXKWzI7LqTOhvH5Taw=; b=GsyXS2zhEUUXMMzaa0vzW4Zgrm
 3inPg6Z4+NvSqPBZ4yZHsuOPaGqjCIz0MPZZ8vzieT8e92ROo069MRUEOY91JX0UDaEnCLVaLdhmB
 +Pv/wmluHCJRKcKosccF5PqhQRlBgVivrLsw8GDAkLwZkKMgVFd2oa00a1ynPKuLu50o=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1i7lDl-0003I0-PW; Tue, 10 Sep 2019 20:50:33 +0200
Date: Tue, 10 Sep 2019 20:50:33 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: tinywrkb <tinywrkb@gmail.com>
Subject: Re: [PATCH] ARM: dts: imx6dl: SolidRun: add phy node with 100Mb/s
 max-speed
Message-ID: <20190910185033.GD9761@lunn.ch>
References: <20190910155507.491230-1-tinywrkb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190910155507.491230-1-tinywrkb@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_115046_990944_0FA3F98B 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Russell King <linux@armlinux.org.uk>,
 open list <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 10, 2019 at 06:55:07PM +0300, tinywrkb wrote:
> Cubox-i Solo/DualLite carrier board has 100Mb/s magnetics while the
> Atheros AR8035 PHY on the MicroSoM v1.3 CPU module is a 1GbE PHY device.
> 
> Since commit 5502b218e001 ("net: phy: use phy_resolve_aneg_linkmode in
> genphy_read_status") ethernet is broken on Cubox-i Solo/DualLite devices.

Hi Tinywrkb

You emailed lots of people, but missed the PHY maintainers :-(

Are you sure this is the patch which broken it? Did you do a git
bisect.

Thanks
	Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
