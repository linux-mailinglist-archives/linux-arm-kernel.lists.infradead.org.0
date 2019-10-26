Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9998E5F86
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 22:31:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vu6Ag+i1p5mulwZrH8lIu1FpBTAT/ZSUsQGCgpj0x1o=; b=F9TAZ5kyT4QYdF
	yrXV4IcEyfrbPXpAxMcaVT4xpz+q9E3cJ6eGOYEQLyx/Jpu76qRJ4ifrb+mhwhympBYjp6DFnyX/H
	xZ2jg+aVb357H0v6aEzFT8/F5V0u+Ms5DbXh3YlLx7MtFAPifWYnQAQIWEZSWTwDpPkvL+EeNoOhl
	Oi45RqWGXXXMSgEBK9OkEswnkqqAHQXCdD8CkF6mA5AhRPNEO6dpuQrGbZjt9qUZravNEOzwI1I/S
	8NPuVh7Z40RBVXQi0yYZd4+OACzADyqXRPf9LIKm5tiLlrmlVHGUP/An1DXTWBXC9+Y/URADVak0d
	+jPPYXQFNOUTjUBEhn2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOSiY-0004pq-ND; Sat, 26 Oct 2019 20:31:22 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOSiF-0004oY-Tj; Sat, 26 Oct 2019 20:31:05 +0000
Received: by mail-lf1-x131.google.com with SMTP id 195so4807173lfj.6;
 Sat, 26 Oct 2019 13:31:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=C3Bnj79/MdmyOPceI8w6ogw+VOwoEwR2LfbvEH8/Jt8=;
 b=ocEA2/UpEZub4FfzrES/35kLEEgf+iuM14yuJDnzueb3oicjVf5VjH8yPNzykDM3CI
 0ySJFqTK5wy/ITLl5r/AeF199mbKYCUlQe1acfJZ5OhvbURawEi5O+XvdN9rqYmKETtf
 IC4fsanTSIIn0AuZ928OzFys+/+zrqPd7vALXtU348vu0tp9fVZM93c8V5ZMRvOv6k3O
 zF08+RBUuiBLGBuqG0409jY8ynGQnCTTBp7hGXvgGTKWkIWQmOEDqYk2MMIl0mIF7Pld
 TI0erEKwKnwVhZpDN3Se0CJNro3iFgZ84BgBVQI0u1n2a2vvUQ2YIqlEi/FFJJE1r/uF
 9BBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=C3Bnj79/MdmyOPceI8w6ogw+VOwoEwR2LfbvEH8/Jt8=;
 b=EDiGyhQUB+7lYJMbTxcI+NhK0r4x8L8kh2WVw7ZAG/n6Xq3WjUUZj+Yf06+TEGmLOn
 2UE5Mg5Pd5Cb+H5BXMoFSc+PB93K04U7oAG9WOCUSUj8LmBETscmOe3PckBbRcnWkGVp
 +4T1QM2TYfdSIy7QzX9l2DdmR5gWN7qq6zkaNjrLoEA2E19UbhWZ1VqoVqkuwYJrFZId
 C0lyTFIAZ0L2U7ldmGIwKx4eenv9Q24ZMZzfff1wqyXZauHo5CuUrEKnGuuceRvKGhRP
 tQSnca1O6n13qXYHSzoFsg9QFBiP/8eL0dCogTaJ91k+ng0nbJjvNwia6jVn1YgmU2lm
 q84Q==
X-Gm-Message-State: APjAAAUbKEGWelNYNfKSoZt73HjzMzeO2vReyRBuQClznY21P6InvTjO
 rx3jXm3RLJN86X1qSUw/RG4TPJEaKSxZfbSQISWcpU7K4uk=
X-Google-Smtp-Source: APXvYqxEG+sO1ju1+zh7t26iFYHaqIQbdb0pBFNYp8W2WOu8r2gmg1A+zmEJq4oiggzRPaPkW5vjk856OE6jCWTnw7E=
X-Received: by 2002:ac2:4c29:: with SMTP id u9mr6709818lfq.90.1572121861966;
 Sat, 26 Oct 2019 13:31:01 -0700 (PDT)
MIME-Version: 1.0
References: <20191026194522.28293-1-frank-w@public-files.de>
In-Reply-To: <20191026194522.28293-1-frank-w@public-files.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Sat, 26 Oct 2019 17:31:03 -0300
Message-ID: <CAOMZO5Bb=1CUpw__xxS2N0w+ZP0+LnBBW9+JLVr03x6TC2Z7=g@mail.gmail.com>
Subject: Re: [PATCH, RESEND] serial: 8250-mtk: Ask for IRQ-count before
 request one
To: Frank Wunderlich <frank-w@public-files.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_133103_960212_5CAB97FA 
X-CRM114-Status: UNSURE (   7.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:131 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-mediatek@lists.infradead.org, linux-serial@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Oct 26, 2019 at 4:46 PM Frank Wunderlich
<frank-w@public-files.de> wrote:
>
> at least on bananapi-r2 we have only 1 IRQ and need to
> check for IRQ-count to fix following Errors during probe:
>
> [    4.935780] mt6577-uart 11004000.serial: IRQ index 1 not found
> [    4.962589] 11002000.serial: ttyS1 at MMIO 0x11002000 (irq = 202, base_baud = 1625000) is a ST16650V2
> [    4.972127] mt6577-uart 11002000.serial: IRQ index 1 not found
> [    4.998927] 11003000.serial: ttyS2 at MMIO 0x11003000 (irq = 203, base_baud = 1625000) is a ST16650V2
> [    5.008474] mt6577-uart 11003000.serial: IRQ index 1 not found
>
> based on Patch from Anson Huang
> https://patchwork.ozlabs.org/patch/1164500/

The solution that was accepted for this case was to use
platform_get_irq_optional() instead.

You could try using platform_get_irq_optional() here as well.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
