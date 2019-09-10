Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69FB7AF013
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 19:00:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N0BghFG7QEtOm8e3UA4/7J8HU/TLnizZ+S9yivhgkA8=; b=tOny5+iay4xea3
	v9aTq06ebGI6pxv4UhEV0vKdNtsXQRm9NvLdWYjSmcLHekujKA2C/nlu0Db4W7F8sTOLJ8ayZOm8D
	d9DWDTmismgaZLVHgtdDx7blupY3A8sVnu9RVtGYhIlNzAAtjoSKAmElqln4RL4gc+M9Tp85z2t7L
	2V1yITcXFEiJajk8Nz1lIEaVXbWjc9C4FbsWFX98CFxBB4k/6S6bVjr1luaiv3z0LRyCQqwB//vvj
	meL2wWaE+H8F1jmkB7+YNjq5dUI0Q2rJKh73oMQfBO3E4WFaD3b0AivxBSZJtF13wcU9M/EuW1CVt
	uuix/bUemJg8LHkACjXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7jUb-0007WD-VS; Tue, 10 Sep 2019 16:59:50 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7jUS-0007Vj-Hk
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 16:59:41 +0000
Received: by mail-wm1-x32e.google.com with SMTP id t9so382087wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 09:59:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IaNQqB5SBaD5HFje47asA20rluhZwVIsj5jE6X0hikY=;
 b=XMDrDWjyDr7DuPgjLNaSBsxL776iXQnUTp6Yz5kSnrxn61AdJB1j0RS6Hax3wvhpU8
 ndoO0kKC9A7wYXNLVnoYln68kdcr9kXGJiGPxXbIGAMhdgP6fKqp5PFtjN1m8Unieg3T
 wI5ZwHBuk+gwEoESTf+bhffRbxfEhL2b6U6CY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IaNQqB5SBaD5HFje47asA20rluhZwVIsj5jE6X0hikY=;
 b=BWI07KpR+5e4EBRPDqLwvnwDqgE2zhpuzgT/sXqAFoDNQGuHvacEnrkK27QmaK8B+I
 pWlNd/t0Wj0VtnlIzHgSEHt4LkSGDVFMkSs07f0DEr42oEBWjIHOYNVChu3U5VAijKYg
 1Xt/HSG7TaRym73AxpvTetDfNwKAhQP+BYeWODhxbBdo09S0eYxwdZx1oumdzrFZQpUE
 WhzHEjlqsvYWwSN4gG2cpryT4Q/zHyTMPZfVf0Yd4vnJrU+t2ySi3Vrnnse3l8SlX15v
 D+xx8TIuvFt2fW2rYJNWVlDIXt7dsBtC2hfoKNjNG2G2t+/f8bN3lNXUCh5Zq7jwi+OL
 LBGw==
X-Gm-Message-State: APjAAAXw1vsB3FrKXicnWBZ24G2+mdE9nskbzvkRQ3nYRhh9+S3FPc4z
 R3iAXfUo2gg+WfqyqaZLOCvEBj1S9x4VP74+WE3H4Q==
X-Google-Smtp-Source: APXvYqwObqAhqRrawpsU8Nr42wdptfOJRYfFZuxsvSxW9E2SwQL7XD6FZXxHmAuPgah+PWofb1G2nSgpRpPGlk95Hug=
X-Received: by 2002:a1c:cfc9:: with SMTP id f192mr357660wmg.85.1568134778760; 
 Tue, 10 Sep 2019 09:59:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAFr9PXkDNy7Xh+0rLqsoSfBF5suddB_tTeFxVZfBeJz2Feq-YQ@mail.gmail.com>
 <71d30e3f-65b3-0f0e-4078-f917b5d1f075@gmail.com>
 <CAGb2v67sT1K1_AmCZ5qpgJzPCaFvudrBoAjsXs4QatMB-bHkWg@mail.gmail.com>
In-Reply-To: <CAGb2v67sT1K1_AmCZ5qpgJzPCaFvudrBoAjsXs4QatMB-bHkWg@mail.gmail.com>
From: Daniel Palmer <daniel@0x0f.com>
Date: Wed, 11 Sep 2019 01:59:27 +0900
Message-ID: <CAFr9PXnmyFSHKmMypp9nRrEfjToq0XcK9hSpL9hiMQfXyAyXLQ@mail.gmail.com>
Subject: Re: Mainlining support for MStar ARMv7 SoCs; Where to start?
To: Chen-Yu Tsai <wens@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_095940_700563_B76E791C 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32e listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks for the input guys.

> > I think a shell is the minimum you should get to.
> > So my take would be to send basic DTS (and clocks, if needed) so that you can
> > boot into a shell, even using a initramfs.
>
> To expand on this, your basic DTS would likely include the CPU cores, an
> interrupt controller (GIC?), a basic timer block (ARM arch timer?), the
> UART(s), and a dummy clock for the UART(s).

Fortunately the core stuff is pretty standard; arch timer, GIC and
what seems to be a dw uart with one of the registers moved.
Interrupts for the uart actually go through another interrupt
controller that is wired to the GIC so I think in the first pass it
would be polled.

Based on your input I'm thinking a patch series that looks like this
for the first pass:
- patch to add arch/arm/mach-mstar and the bits in there
- patch for just enough of a DTS to boot a buildroot initramfs up to a shell
- patch for a basic defconfig

Thanks,

Daniel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
