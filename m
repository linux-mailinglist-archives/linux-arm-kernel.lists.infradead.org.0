Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F19E818516F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 22:57:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=mOniy727T8WmbTReelib++FBfYjASqDWUSDQD6fpDJ4=; b=LgNIlQJoq9Ld6f
	ILXhS6DGzUCgIiks8k+VlakC8uTg6J/P8r/7Nd4Gq4NJ5W02JAUB3/VUM20vrt56ntEIIZYL/+sba
	WXDiZ3LB34vauE4GIfiv5Ggu+3gw5Up3OzVaNVwPGoBPnHr3Qhu9IXGiKi5XEODMkfePPcsHNtRSG
	kU7oVT5IY44iWoTqWA6pFtjecyINjXM/WnpjDCLptZaQpmc131wDjuJntq0QOPsYPx+TT/8LucLbK
	IVk2rYTX2e0Zu5VbUq0rvsF93k6v54ErW14SDX/36NIXAkI/nkioZv2HD08Ms2JilCDmqHf+txHLN
	39WqLItpnxa//1m72Iow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCsId-00007Q-F1; Fri, 13 Mar 2020 21:56:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCsIT-00005k-As; Fri, 13 Mar 2020 21:56:50 +0000
Received: from localhost (mobile-166-175-186-165.mycingular.net
 [166.175.186.165])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 52D012074E;
 Fri, 13 Mar 2020 21:56:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584136604;
 bh=9O3iTubGfZzMntn4/LYM5c2/iBnmaQdlBrLdH9sNka0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=cGwnI/g5mqZKrZocmKyebIRUAXd9e+X/FWCRYP5pMFRVDyg9jjtoGFmEaF7Zyj+Fa
 tH0B7K42/EpeIAb6FNX3DzbuRb9Zsi5ujH7RZ1yIstubErjjVFm+jYNh7Qr3VA2FLZ
 uVllTIs25LDNGiev2L2gK5nLkQrjFRrImlhC7NTM=
Date: Fri, 13 Mar 2020 16:56:42 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH 4/5] pci: handled return value of platform_get_irq
 correctly
Message-ID: <20200313215642.GA202015@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <871rpwhsnd.fsf@nanos.tec.linutronix.de>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_145649_397966_842C42C4 
X-CRM114-Status: GOOD (  15.61  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 FAKE_REPLY_C           No description available.
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>, linux-pci@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Aman Sharma <amanharitsh123@gmail.com>, linux-kernel@vger.kernel.org,
 Ryder Lee <ryder.lee@mediatek.com>, linux-mediatek@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Marc Zyngier <maz@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Mans Rullgard <mans@mansr.com>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, linux-arm-kernel@lists.infradead.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 13, 2020 at 10:05:58PM +0100, Thomas Gleixner wrote:
> Bjorn Helgaas <helgaas@kernel.org> writes:
> > On Thu, Mar 12, 2020 at 10:53:06AM +0100, Marc Gonzalez wrote:
> >> Last time around, my understanding was that, going forward,
> >> the best solution was:
> >> 
> >> 	virq = platform_get_irq(...)
> >> 	if (virq <= 0)
> >> 		return virq ? : -ENODEV;
> >> 
> >> i.e. map 0 to -ENODEV, pass other errors as-is, remove the dev_err
> >> 
> >> @Bjorn/Lorenzo did you have a change of heart?
> >
> > Yes.  In 10006651 (Oct 20, 2017), I thought:
> >
> >   irq = platform_get_irq(pdev, 0);
> >   if (irq <= 0)
> >     return -ENODEV;
> >
> > was fine.  In 11066455 (Aug 7, 2019), I said I thought I was wrong and
> > that:
> >
> >   platform_get_irq() is a generic interface and we have to be able to
> >   interpret return values consistently.  The overwhelming consensus
> >   among platform_get_irq() callers is to treat "irq < 0" as an error,
> >   and I think we should follow suit.
> >   ...
> >   I think the best pattern is:
> >
> >     irq = platform_get_irq(pdev, i);
> >     if (irq < 0)
> >       return irq;
> 
> Careful. 0 is not a valid interrupt.

Should callers of platform_get_irq() check for a 0 return value?
About 900 of them do not.

Or should platform_get_irq() return a negative error instead of 0?
If 0 is not a valid interrupt, I think it would be easier to use the
interface if we made it so platform_get_irq() could never return 0,
which I think would also fit the interface documentation better:

 * Return: IRQ number on success, negative error number on failure.

Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
