Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 846B01B2D69
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 18:56:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4MZa6cvKraH7n1Xp2r6CQkRualN4LjAFk17Fngl/ESw=; b=LiI83dVLOpbnA7
	s3wFVDwhwU8xu48bE2PY9UINmM98wodpxSRucHLrB7Z4hT7Bnm8qMsCM+obf2IpSIPF15b2DQZqjm
	TS9pZjRBThUxoT83pXgyPpZAW+YJjpDw8C56wQeS8awd6BEI8FFV4tud4jczAISXGJseTFfSNcQGs
	3gPvA2Y2c1QemZHEOB+swq8SGeItegZcxh4peVNKpNLMq40mJgIMf3mdTjpV7BTpSDrhnIbvkCl/Z
	thNBjDoqnDNcnvhZAW36c8GpdGi1xDpFB0ECwunr7z0aeAa8jsXrxvjajUzyk+9TwJdkmXrsbKh4W
	NZY0+5dHwkAZM2AVKAGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQwBo-0006O5-MB; Tue, 21 Apr 2020 16:56:04 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQwBV-0006Gx-Uh
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 16:55:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WjhgbaEbBW3u8OJNr5mxiJDIQfOQFRnAGsSZAkxI4Ck=; b=PudUaazEa9YkVoMl8hUmwa+W8
 eqSVBuyamU1qlNTP5YiSmxvNv1W2N/KygVbgmFZfSaFy8Rhc4fxLVEHReDHAcs2Tg3xJ55V93G+pT
 exKQePYAqn7kKK7DwtH20u25uB3sVQHjJK3FtsadgWf9olHRerEkc6U4NeiJp4jUoAZkFm7ZqlkTA
 Vq0gIeaiLa/Ef4fdpXcY4uepUYDEiIRPx4S7Yr2/krsQARzRnRmazYQMwgFfUsfnCHlPsHQUqhul1
 UVSofi/+2ykyGifMM9yRez2ZWtPZAyZs19LR9x99Qno3v2rPS/2FHXRrAW3fd5b+g+xAkhZ0buphx
 BWrbSmvwg==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:53318)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jQwB7-0002oI-JN; Tue, 21 Apr 2020 17:55:21 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jQwB2-0007Ba-96; Tue, 21 Apr 2020 17:55:16 +0100
Date: Tue, 21 Apr 2020 17:55:16 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH] arm32: fix flushcache syscall with device address
Message-ID: <20200421165515.GF25745@shell.armlinux.org.uk>
References: <1587456514-61156-1-git-send-email-tiantao6@hisilicon.com>
 <20200421081239.GA15439@willie-the-truck>
 <20200421121651.000009f0@Huawei.com>
 <d0814ab2-03fc-42c1-e447-bfee2df038da@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d0814ab2-03fc-42c1-e447-bfee2df038da@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_095547_115661_CB7592DC 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Will Deacon <will@kernel.org>, gregkh@linuxfoundation.org,
 catalin.marinas@arm.com, linux-kernel@vger.kernel.org, linuxarm@huawei.com,
 linux-arm-kernel@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@Huawei.com>,
 Tian Tao <tiantao6@hisilicon.com>, tglx@linutronix.de, info@metux.net,
 allison@lohutok.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 21, 2020 at 05:50:22PM +0100, James Morse wrote:
> Hi guys,
> 
> (Subject Nit: arm64, as that is what your patch modifies)

That is irrelevent.  This is a compatibility interface which is supposed
to reflect the arm32 implementation.  Augmenting a compatibility
interface to do more than what it's counterpart that it's supposed to
be compatible with is senseless.

The API concerned is an ARM32 API which is expected to only be used
for ensuring I/D cache coherency, it is not for DMA.

Augmenting it on ARM64 for DMA is senseless.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
