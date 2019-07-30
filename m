Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1587E7AC33
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 17:24:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fG9XuVTHs2W2vJ0Oefe5zxGUt8UFCDKQ1mqNuKH+NL8=; b=MBX2JcDQ1/4+bL
	TaV+GGp45U8cLUmNAJ79mXyRGXOv1bAqHWx+fJV9ijTlmXSmFyhv1ZxjN++PUj5KxaWCQE/SBDB/B
	NSMwsrXzW7gJw56QM8I/emuCN5pJ/h0nAnFrtEKHGPUeVAb0UxKFkLdoApW/4n1V9GkM76+KFfEg7
	JWDmGaJHTHgxPWjvgWDRJ97of6VvCGLI5IZ8MCcHd72evfXPK21JBo1ckC2+08pFsl/jsUNypM3De
	cxjlvsFjjAqoLSFzmLJlsG1cU8y+GVu69Sxx2r4tcfUWa/pGXlpsOkYyNWcwJqOKC0nefKuA9MUTJ
	nCb286ScdIAp84l2GNNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsTyi-0007gp-Bj; Tue, 30 Jul 2019 15:23:52 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsTyX-0007gW-DZ
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 15:23:42 +0000
Received: by mail-qt1-f193.google.com with SMTP id 44so32389897qtg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 08:23:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QfRDMATF/mD0ld+JXOHOTIFlNh/Cdg0uTO/akzNNHqM=;
 b=OD81ggE2XWNvaokVF0SvitdqneypuDKP6Oy211MeIhWltD/lch60ooVbGQugf96Dcz
 Fx+EPyfbzr61AukBWzIBS1pgteMsrim6SLZmBzU7p/XrUg8tlX9oKU3mps/2iNzhumCV
 +6q1P8fBG/ui3MBKG5S7IKA4DjQR4FiaYEwn0yLEt7NV4pybPGRSOE7JU2Ck4YnuVgez
 SHhRA70GwZoG6MGg5F3Do4RuPmmmDmXy7efNJCPLGSzsUJ71r3KjMCzPAPgqCwhnj0/D
 RHIfmMzKF2eGqrXEDxoHNOEkYCNOP1KfyRS/lSeK055e+Bdea5iJl58OkKRznjIJSXxx
 gxwg==
X-Gm-Message-State: APjAAAUezQqMahWVKyJOz5fvrzevRa5fCk16pmoAaP1UG/UQRvHcolEw
 3yxbymgyG+u1/l3a7oSSg7JJrfRYDqvTTpcMe7c=
X-Google-Smtp-Source: APXvYqwDK/J3NCjNWITj7Ip0SyX5Ri5CKH+r2xLJkFHtEoRIvmzE++N6L56dMPBT75xhK9Us76wxfBPEk3mS6pYxIdo=
X-Received: by 2002:aed:33a4:: with SMTP id v33mr79997791qtd.18.1564500220464; 
 Tue, 30 Jul 2019 08:23:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a3jjDh6aEVf0bBFYc=8GtB38kL6sWVZGJiUe427A7m2ng@mail.gmail.com>
 <CAK8P3a1ss9-G_mr48-UMOenrA0XDGWUFik4TC=m0WFfimoFdnQ@mail.gmail.com>
 <CAK8P3a3VsArSUgMwoPVxm8JcTPAQDoztg22MGqX4Vj5cjtADZg@mail.gmail.com>
 <CAKKbWA6aUBec8tTQNCJow8c6=SyS-y4HUC=3sMJp6_Oz51iF=A@mail.gmail.com>
In-Reply-To: <CAKKbWA6aUBec8tTQNCJow8c6=SyS-y4HUC=3sMJp6_Oz51iF=A@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 30 Jul 2019 17:23:24 +0200
Message-ID: <CAK8P3a07KOgXKksbtQceqAKiZ-ykr4nDoM2xvb+WXtrXmNn2uA@mail.gmail.com>
Subject: Re: RFC: remove Nuvoton w90x900/nuc900 platform?
To: Avi Fishman <avifishman70@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_082341_459747_F5C41B82 
X-CRM114-Status: UNSURE (   7.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Tomer Maimon <tmaimon77@gmail.com>, Patrick Venture <venture@google.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "Wanzongshun \(Vincent\)" <wanzongshun@huawei.com>,
 Tali Perry <tali.perry1@gmail.com>, Nancy Yuen <yuenn@google.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Benjamin Fair <benjaminfair@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 3:59 PM Avi Fishman <avifishman70@gmail.com> wrote:
>
> Note that we we are going to add soon drivers/net/ethernet/nuvoton/npcm7xx_emc.c
> so maybe don't remove drivers/net/ethernet/nuvoton

Ok, thanks for a taking a look. I can leave an empty Makefile/Kconfig
pair there then.

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
