Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A86A8691A3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 16:31:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9s4vuHpZRsIvhLR7k6ucl2SmOPZ8cUKms9wys69Vbqs=; b=Z9QKdQD9PvaWSm
	o/3oojUAVISsDADcx+glvoV00aIIOiYJryRbWTj8RwDiTUwTM/I9oLcLdqveUagVqZlV3d5TVu7oj
	JM8xbzTNWV+XWxhdVMxrdclCOZyoCthvV4N1bBu2g2HH8A3zSklfhcm/gBuZfjBE5hcZQEKFiYRrZ
	ef5OMTvFnOyWoF8tyqE4Icl07nYlxjitFIsJYq26VAOQL44rotHgXsfGoftaSpme/HwJ54m5biJaf
	MCiBd9MGl7QlJM+YRBQRoBuTNifP5gDsBJbQt5Zd7UgNSR6Alle25nFCKDQibKXHR3oBZ08rZlY8+
	pMKKGWeSr+eI3BJBs/qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn20s-0003kd-5M; Mon, 15 Jul 2019 14:31:34 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn20X-0003Wn-QX
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 14:31:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1q5vtulX6Voxl789kmHFwf18zdh2bTyKV31IcrNYlLA=; b=0SHdyISmTAhQj+0wpGceHAUIQ
 6HS9PebCXS+39jDY9iNPYXVKRqYi1gBrBXaS7sNqNA/g/Zr5SVThPXxmWEo6eStZeKLfOppKF0amL
 zMHtIQlTdiGR8lNBXHz874HdfLkO58xGI8VRC9RGel2NBaCxgveaeHUMx1Jz429UWQNGCuXRFJ2BH
 dTPZevJQqSpg4BKE85xt3DIp39i0KWWQsBGLJ5OzZUfBkunigZpT53hJz1RZEWz7wokpD93uiLiJD
 Ueuww5IATrGGsFwGEQN9Vey86Zx7q1o5M3WG1tRyyELi2Zax2763jR59xK4HEPH8l4qJ1h+o/sEYO
 5AIlIc4oA==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:59510)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hn20E-0005Ur-0P; Mon, 15 Jul 2019 15:30:54 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hn206-0008QY-WD; Mon, 15 Jul 2019 15:30:47 +0100
Date: Mon, 15 Jul 2019 15:30:46 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Grzegorz Jaszczyk <jaz@semihalf.com>
Subject: Re: [PATCH] PCI: pci-bridge-emul: fix big-endian support
Message-ID: <20190715143046.r3ja32rfntagqrqr@shell.armlinux.org.uk>
References: <1563200177-8380-1-git-send-email-jaz@semihalf.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1563200177-8380-1-git-send-email-jaz@semihalf.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_073114_234236_209CAD20 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: lorenzo.pieralisi@arm.com, linux-pci@vger.kernel.org,
 thomas.petazzoni@bootlin.com, bhelgaas@google.com, mw@semihalf.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 15, 2019 at 04:16:17PM +0200, Grzegorz Jaszczyk wrote:
> Perform conversion to little-endian before every write to configuration
> space and converse back to cpu endianness during read. Additionally
> initialise every not-byte wide fields of config space with proper
> cpu_to_le* macro.
> 
> This is required since the structure describing config space of emulated
> bridge assumes little-endian convention.

This is insufficient - pci-bridge-emul.h needs to be fixed up to use
__le32 and __le16.

It is a good idea to check such changes with sparse - a tool originally
written by Linus, which is able to detect incorrect endian accesses
(iow, access to LE members without using a LE accessor.)  Such checks
rely on using the right types.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
