Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF4AD0282
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 22:50:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jirYLx0/u2WmrjLlVz5S+dz1Vie48PNzMSJvMOfTIVc=; b=UslSK8YvI1XXT3
	Oata6vnpTtewupWoOtl+VsB5h425E/RDkhivqlLfbcOv0/Lj2v1/LcwraX1QEHzr+5fkgYXDu4Wfe
	zQBMSSfhs+jhNU0vwXzY/X3Yd1frKkyWCXF9RL61hc4/pndw41KxLImZL215bLoj3aghFjvQfh/8Q
	SDLMT4Oekt2WXl8cnhftzX83siLvbk7nW2mG3Zy10gzknsKeUlgfZcvMFgOV89IdOoy1QLzgTNkWH
	dM1mWnlzDw+DlasHIaiEUKHfqL4EUiccSGRPK+/Wrf+kZziJzwR4uO9AaRqXtbKJxCWcC/HpxaRIY
	HyvIwwJNXXABceodHiVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHwQx-0007lH-45; Tue, 08 Oct 2019 20:50:15 +0000
Received: from mail.nic.cz ([217.31.204.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHwQo-0006uR-TP
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 20:50:09 +0000
Received: from localhost (unknown [172.20.6.135])
 by mail.nic.cz (Postfix) with ESMTPSA id E3BAE140E3E;
 Tue,  8 Oct 2019 22:50:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nic.cz; s=default;
 t=1570567803; bh=kkT366TqLTz6ZShDaMjzSLfYLU+lLy2kRMtQYV9bCEM=;
 h=Date:From:To;
 b=d/OYnJgQdi/E6twtZrnoYU2giwUHogwREFg1dWJcDTnY56CbfuA4A8ruxJMMTR+m8
 3BuX0+NCfxQroPYzhYk7K+92f+PS4b4hFxszIH04wAXFGJq68pVmf5Kgp6srORERR5
 B/4/fV+VE2lzGe0qihObaIww56xNTFeExBjcSVrg=
Date: Tue, 8 Oct 2019 22:50:02 +0200
From: Marek Behun <marek.behun@nic.cz>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Subject: Re: linux-next: Fixes tags need some work in the mvebu tree
Message-ID: <20191008225002.5b95efdf@nic.cz>
In-Reply-To: <20191009073803.633c02b5@canb.auug.org.au>
References: <20191009073803.633c02b5@canb.auug.org.au>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.100.3 at mail.nic.cz
X-Virus-Status: Clean
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT,
 URIBL_BLOCKED shortcircuit=ham autolearn=disabled version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.nic.cz
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_135007_260916_74D2CE98 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.31.204.67 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 9 Oct 2019 07:38:03 +1100
Stephen Rothwell <sfr@canb.auug.org.au> wrote:

> Hi all,
> 
> In commit
> 
>   69eea31a26da ("arm64: dts: armada-3720-turris-mox: convert usb-phy to phy-supply")
> 
> Fixes tag
> 
>   Fixes: eb6c2eb6c7fb ("usb: host: xhci-plat: Prevent an abnormally
> 

This is weird, in the patch I sent the tag ends there with ...")

Marek

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
