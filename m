Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E67C5A36CD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 14:29:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e0OA/bHLHvagqYhtYlD5gPFWeQSpirJzySkCBUsKOJA=; b=qrfXAv7Lr8Tj5G
	pSc1QUJ8eP/i7UjOgVTReABxHOTJl8Yqc3usCGU4gnNDy33Zj0hH0qmBDkKQbeFpiXq9t92c4u2UG
	m3FGlH3A39iAiGROW96KcRxuLJee4t72IAW1SIub40qYc7tu5eDVWFtFC2DXqlLgIGPwtpj0i6Daz
	LB6boeMrhDN769hojK5N/gGMGMwg+JHU+9pGpVTZdtdZeSamCdRyayP3gGCYmuRHtUiD8Lyz5GJOv
	HW/IfJ0aIsWMeSsC7zNALac5Zn4dcR9Wzh5UC/kIaCfbvCli8H0rtLtMgoOKSUIQUZLgLtdAVrS5h
	5iq6SwRrBL1O7+9SxPiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3g27-0004zj-QI; Fri, 30 Aug 2019 12:29:39 +0000
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3g21-0004yu-8D
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 12:29:34 +0000
Received: by mail-qk1-f194.google.com with SMTP id f13so5870757qkm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 05:29:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UIrlR9vtJ1E/DTegVRZZ9qCNH5Gta5MlLllJAAd5X9M=;
 b=BY15ZOseLb+9YC9QuVvj9ZmVLMuTuP+EG2MIhOqU6pXC2WhAUbPQD31o7Q0d6oM+88
 AHM+DzrKypl7cDxo0nEtBFI+UColjdSg+IT+iyTvja0djEaamV9ZCArLonkXqgAhp1KJ
 ESXP4zl6OqF5GBcgpKa7OWk1e4RNBL/dVsPjL13MrLa70oV8vDRS3gOaikKcAaNmjGn4
 KaPojSt5TJevu3RkuYk/cRmFuPlVuGroQedAGemGh0lPfypT4mIvY7yA5l6TLdbK8x2G
 bLyzvzaSzIrZDni+pH9Hxzw1NxOEL/Lmdp7zIprU1xecvWjKjI6AX6LLPlUe3hvTWPIE
 MC5A==
X-Gm-Message-State: APjAAAW47wuKAYZcoSM1lYE1k4/EM5I1oabW4/qGJT/6bfhu+CDp6ZzQ
 kY8h4gy1xOu35KMUKJSGZ0F161TQE5lygjALX1M=
X-Google-Smtp-Source: APXvYqyJGIFhpE0otdDhC4Pc3eq2BVlXTjeHLMVZ0m7XbxfNxzW0+co1DqNfPTfujGLShw6DRiYHMZgkGOul+9nf/gU=
X-Received: by 2002:a05:620a:b:: with SMTP id
 j11mr15321103qki.352.1567168171671; 
 Fri, 30 Aug 2019 05:29:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190830092738.7ea1abd0@canb.auug.org.au>
In-Reply-To: <20190830092738.7ea1abd0@canb.auug.org.au>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 30 Aug 2019 14:29:15 +0200
Message-ID: <CAK8P3a2zc-hp_oE1+Q+RTugxeVPPc3jyrdceQ4+8t4Zw_=vHUA@mail.gmail.com>
Subject: Re: linux-next: manual merge of the arm-soc tree with the arm tree
To: Stephen Rothwell <sfr@canb.auug.org.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_052933_295177_7A5264D7 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Olof Johansson <olof@lixom.net>, Nathan Chancellor <natechancellor@gmail.com>,
 ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 1:27 AM Stephen Rothwell <sfr@canb.auug.org.au> wrote:
>
> Hi all,
>
> Today's linux-next merge of the arm-soc tree got a conflict in:
>
>   arch/arm/mach-iop13xx/pci.c
>
> between commit:
>
>   4af014984273 ("ARM: 8871/1: iop13xx: Simplify iop13xx_atu{e,x}_pci_status checks")
>
> from the arm tree and commit:
>
>   59d3ae9a5bf6 ("ARM: remove Intel iop33x and iop13xx support")
>
> from the arm-soc tree.
>
> I fixed it up (the latter removed the file, so I did that) and can
> carry the fix as necessary. This is now fixed as far as linux-next is
> concerned, but any non trivial conflicts should be mentioned to your
> upstream maintainer when your tree is submitted for merging.  You may
> also want to consider cooperating with the maintainer of the conflicting
> tree to minimise any particularly complex conflicts.

Yes, that's good. Russell, you could drop the patch from your tree if
you like, or let Linus handle the trivial conflict.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
