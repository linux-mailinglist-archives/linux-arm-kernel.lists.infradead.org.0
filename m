Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7E1A82B6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 14:48:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ue+DbbXvvtxhOgYBkBdWOm9YqlGLgFBaOtxQfhURLkQ=; b=TRLYE87qh064c9
	FZ91EaEqWGNPHDB+oDKRwvL7PjsCFj6ldE8r2kIFkkOMcRerAPiElTqHeH+cnS+vV19OgQv/q94YP
	YOQgAmPpd9RoRBI2x+0LaMBxipWI1AIzoiG8FWZcjyY2t2xYmiJU5Wi7ZoBT9YCke79eJSuoLq74D
	dfvHI1lzw7+lByUWQIZPBy9EV98Gd8wzmjqv5+wLKPsrjKWgAVd9DXAIhJcpYIZjdEl+dif7xc7Wh
	yJyRrnCZwT7imP8EQZEvmQiTUtjHLhEEVabbaKlslQrcsA8ZnNZVxZLkpATYsIjOjdUlqQ5rrComf
	OAdRUV9RY3AMKYGuB81w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Ui6-00043k-2l; Wed, 04 Sep 2019 12:48:30 +0000
Received: from mail-qk1-f193.google.com ([209.85.222.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Uhs-00043M-WF
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 12:48:18 +0000
Received: by mail-qk1-f193.google.com with SMTP id x134so9270952qkb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 05:48:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=R+0b8fSY47De7VCrUTxZqJDVduWXpwUI2sctfchKAnE=;
 b=SctVwuzKa3jA0cbVVqTwyr5+ai7quPcxIUcsFUTxDMw8ryu1CAyxOq24701BdXRhtj
 blBe1TNXsNsYer2Jl6s/CjrLZTjpgYDX5y0COCQ+fI3u3WeBKpysMd/+EX1fHevnzDcE
 4KMMQ1r21Ly2sCO5kR3tAE+pa6CZK6/lKt+ft6Adnku+nvPwfgfhxlXcAvn76Db2wFTz
 uMR1/71tbTSHfmEgmBB4dFByznozDn8R/K36+/9G/zF2aIBN7nEmvx4yTy84iJRejjxz
 DONgNBKIJX7p4eJbaeqBrA+lEGbny40DKUr4XYFuRIRXZTFIHvqIVwD0/unrqJ5qRuVA
 Zs4Q==
X-Gm-Message-State: APjAAAV/Mywd5LkKNIw2Ey3oiiWxlIJ208j2eLE5Sd4rMZiHJyHfzLnc
 mmgqT4b2eF4Sfvh9gK1ajL2PUDGC2XBszYoDedg=
X-Google-Smtp-Source: APXvYqzmeCx7TXRJSQVNzhYBClAtttCpNIkB5lNBYv4e/Rh8BJ6cJEcNduIguYCzUncswi3iA7/qr/zXWpBfhDbUPck=
X-Received: by 2002:a37:4b0d:: with SMTP id y13mr38552351qka.3.1567601296011; 
 Wed, 04 Sep 2019 05:48:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190803124404.GA11140@Mani-XPS-13-9360>
In-Reply-To: <20190803124404.GA11140@Mani-XPS-13-9360>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 4 Sep 2019 14:47:59 +0200
Message-ID: <CAK8P3a2gVsy8Do8Wrpu9wCTTBSb1qx-+mNtyCKKUA=hQVfDwSw@mail.gmail.com>
Subject: Re: [GIT PULL] Bitmain changes for v5.4
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_054817_035141_431796D4 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.193 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Olof Johansson <olof@lixom.net>, arm-soc <arm@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Aug 3, 2019 at 2:44 PM Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:
>
> Hi Arnd, Olof,
>
> Please consider pulling the Bitmain SoC changes for v5.4. These changes
> are supposed to be pulled in for 5.3 but I was waiting for the common
> clock driver to be reviewed (still not), hence missing the timeline.
> Details of the changes are in the signed tag.

I just found this while going through old emails, it seems I never pulled it
so far and did that now.

Please note that our address has changed, and new pull requests and
patches should go to soc@kernel.org so they end up in the patchwork
at https://patchwork.kernel.org/project/linux-soc/list/ where you can
see the status.

Sorry for missing this earlier.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
