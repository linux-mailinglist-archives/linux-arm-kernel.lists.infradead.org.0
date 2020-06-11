Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 348151F7080
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 00:44:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aYLWG+xqDFIY+KN9NctdzhkT/8qiyCjAazGOsDJJYWQ=; b=qL7OqxG89Ag9Zb
	9MHMZDx3KVQ4YKElqYd3sLvFRKhAXIfwCvs4J+ZPd/wbLSeGzqlFlujB+i6UJTcZ0Ff+zcfq+s3uN
	AemWnWc5EnYnlZeMYf3NDper4c4csM6CmeZ58Jq13ow/405ssfra6rkd8zlpeDZB/iQbohsZfyjts
	qfrMcpDgaQw60Y20QHN3THlENSD7XXvKw2E3SzUxG2QHIPHW7UJs6Td3XjIez9OQb7hR0p81SsBZq
	F1Irea5jl14eEHhwVLMPfG0Qoy8+eThLaQQkCP3CaYCnnm27TElq4Wpk8dxmu4veN5CB90qLAHxjf
	5m9hT8CnAo6eVzp5colg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjVvM-0005HQ-3l; Thu, 11 Jun 2020 22:43:52 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:32c8:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjVvC-0005Gi-SK
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 22:43:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zFkfqItG/+bRKp/rW4WnQ7oMIPYCZlMDdY6Gc5lIV48=; b=k9mXjhG7DcZHO6ITyy1BBof6m
 2zCSQYa2oVJwyFS5Y9BtIEYF1LKowpR+yz7FZILjFe0ywlruAalZhd+uNC5LD0PCEXCqw9r4zji7u
 tQf6ubzNaWT0CaJPRMP+85L4H9AuX0IlxDEWyina5pUTVQnPG50RRO/zlaigjQRGIJ3SUGU/qINpT
 6GJBfNlWc45Ao2avjZtOU5Yv9kM4Ltvvuzg0Wk4E8tLMTfUIzlfkGtGRjgfIDHeE8ywEUWGdPhO0F
 9ZSWC1LtS8a9GT515VvCg9ccrbPHnopa+x5dvIKNKUxCKxII1rD1ZhkCkso6mwrtHJucJjlZkHTb9
 y2rKWIHNA==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:52422)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jjVv4-0001Pj-T6; Thu, 11 Jun 2020 23:43:35 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jjVv4-0005bv-Af; Thu, 11 Jun 2020 23:43:34 +0100
Date: Thu, 11 Jun 2020 23:43:34 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH v2 1/2] efi/arm: decompressor: deal with HYP mode boot
 gracefully
Message-ID: <20200611224334.GA1551@shell.armlinux.org.uk>
References: <20200607135834.898294-1-ardb@kernel.org>
 <20200607135834.898294-2-ardb@kernel.org>
 <96a36110-68e1-89e3-2d59-b16f01abae21@gmx.de>
 <CAMj1kXG9XTtsyLQ=njM8LPCYCE2tOrrYQtctU_acNAxLfe=5oQ@mail.gmail.com>
 <f8a485d2-1e00-1d02-58a4-2e1684bfbfb4@gmx.de>
 <CAMj1kXGLoKDLJAihThkkcYwNpr12inneEB3dMOqvcZFm9oR5_w@mail.gmail.com>
 <CAMj1kXFjuMy6+amsMmmepkNATCec4vsxeiVVFq9CFZ64wbmGaA@mail.gmail.com>
 <20200611223800.GZ1551@shell.armlinux.org.uk>
 <CAMj1kXE+y=Q+-wZaPT6ap278OfP2wbBM3CCvyHCL9K=AaBbO=A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMj1kXE+y=Q+-wZaPT6ap278OfP2wbBM3CCvyHCL9K=AaBbO=A@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_154342_913091_80C56CB2 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Heinrich Schuchardt <xypron.glpk@gmx.de>, Chen-Yu Tsai <wens@csie.org>,
 linux-efi <linux-efi@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marc Zyngier <maz@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 12, 2020 at 12:39:08AM +0200, Ard Biesheuvel wrote:
> On Fri, 12 Jun 2020 at 00:38, Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> >
> > On Fri, Jun 12, 2020 at 12:18:43AM +0200, Ard Biesheuvel wrote:
> > > I've given this a spin myself on a RPi4 running 32-bit U-boot, and
> > > everything works as expected, both with and without the GRUB hack
> > > enabled.
> > >
> > > Russell, given that this only affects code inside #ifdef
> > > CONFIG_EFI_STUB, do you have any objections to me taking this as a fix
> > > via the EFI tree? I have a set of fixes I need to queue up and send
> > > out anyway, and I intend to do so early next week.
> >
> > Please don't, I'll be basing my branches off -rc1 (as normal), and if
> > you then submit this as a fix through the EFI tree for merging after
> > rc1, and then send me further EFI work to go through the ARM tree,
> > we'll end up in exactly the same merge issues as we did prior to this
> > merge window.
> >
> 
> Fair enough. What do you suggest instead? Shall I drop this into the
> patch system?

Is it a regression?  If so, sending it prior to -rc1 is permissible.
If not, please drop it in the patch system.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
