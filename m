Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 808AEF288A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 08:56:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RaI5ZWpjPhGvjl1uashfX3veGL3sKInYGjvkibuw33s=; b=tTRfW62wMxRQnV
	RMg0SITO1BEotMWFK8CO/TdDmZ2tatMXrj53Ae3zEXfW0XbujKakTQiZklgMi7uKUg9tujjQ4OFeh
	njq0KI3Sr2TYPifGfBNntDB0oA355zjJiwzIdWhnyWP9ws0vcvTkmfq9hepipPRDnvGh2yXuB/8XH
	uIfVhwnhE01vSMnaC0ozPmdZ7dFNZY/ROVDfzl4qHPPX1KhCZvOeCE8z0eaDlfsBvspYZJn5wxCzD
	HC+hfGbhS10hyqz/Bdi0H3DKO40AuMz11AgNib9JykZpQr9Fex+veYKyhD0pOvbTfCPb3Bui2s4rX
	nxbkiEwOwXb7hvtxz4Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iScej-0006Kw-Mm; Thu, 07 Nov 2019 07:56:37 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSceP-00069b-1D
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 07:56:18 +0000
Received: by mail-lf1-x141.google.com with SMTP id j14so828367lfb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 23:56:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7mVzEAC3PYZ6lpwiL+xf/9aZ7Qv1sjEzD+JY+8MBtWg=;
 b=o/vg6xLElk2f7BrBS3YYNQnsdnM6poifIjeLagf3IT4HY0bFneDxgynYdByIcS7dHo
 EzLmS6pL/TyvIYJdQEOzBEsnwOAM7Njv1CFAh7AuC54CbmAw47HZJmHVO7et+nczCN+W
 7+8o/Voh8wDjNUOFjhCx4CMK4KOz+BHiUSJCtkBLzC40fA5Qb0zg2BvUW7Hm+07pAMXB
 0lLuQBKWtKJ5TGKj2EMx7k5O722aqWp0xbmm+Bc3j5P+DXUw2Q0hnvWWj88ZONlxPSjo
 npqEAZU/xnP17zcGp5HbfLkqVBsC7eilbm/0NAMCMG057MaAubYC5365OtbgJSB2ih+c
 McEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7mVzEAC3PYZ6lpwiL+xf/9aZ7Qv1sjEzD+JY+8MBtWg=;
 b=RbTvJooeyhzyTZVGrX+qA//Z4bVPEz/jt478nrM0BVdQAlLDfwr9W3NR6zPQksjE0M
 oWcuKhcQbMid1ERj1xhiPSADkOF8BkSFx9hUxBrb0Wni+3bZjdX7/GHgtikUqoPtjmZd
 7GemoRRNZLqTq241XLF1LBpo1PNLb+T1wOjsNY5A3J04B+LQeIs2pd2OBXSaVVOtXj0S
 eHRkPCGA8Jtv/ybV3Yq9gAC1gZMuRzHqtYnecDWs9xUx/T5s37bkHKyyMRzOswRz5doC
 Mqx5y7/MBLdqdOc3pMSuJMuNU6NZDlvQgWJFrtLZ7GoZHdCSW7iLVgazktBsYSV41b4Q
 04Zw==
X-Gm-Message-State: APjAAAVg2E2fzoBOBShX6QrIicSAgCU7Mt6YVRw2MO4vexw0a7QD1tah
 1Z9vWmEp2d91dQhaFJuyFDfjsJt8Gj/tI4zovjfHIw==
X-Google-Smtp-Source: APXvYqz/ohb7JsLP5oPlc3mF5OTWP6CRzEQS9/wJ3HgdeOitF87zrMa4v8J9ow3u2rGgz4TVrAbl+ne6JhgEadI2dHA=
X-Received: by 2002:ac2:51dd:: with SMTP id u29mr1354160lfm.135.1573113373506; 
 Wed, 06 Nov 2019 23:56:13 -0800 (PST)
MIME-Version: 1.0
References: <20191105124915.34100-1-broonie@kernel.org>
In-Reply-To: <20191105124915.34100-1-broonie@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 7 Nov 2019 08:56:02 +0100
Message-ID: <CACRpkdYps-xADSrObMyF4bMK8vm0bbE+d_o2V9W4iTFBTYBmTg@mail.gmail.com>
Subject: Re: [PATCH] gpio: xgs-iproc: Fix section mismatch on device tree
 match table
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_235617_270623_1398CC37 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 5, 2019 at 1:49 PM Mark Brown <broonie@kernel.org> wrote:

> The table of devicetree identifiers is annotated as __initconst
> indicating that it can be discarded after kernel boot but it is
> referenced from the driver struct which has no init annotation leading
> to a linker warning:
>
> WARNING: vmlinux.o(.data+0x82d58): Section mismatch in reference from the variable bcm_iproc_gpio_driver to the variable .init.rodata:bcm_iproc_gpio_of_match
> The variable bcm_iproc_gpio_driver references
> the variable __initconst bcm_iproc_gpio_of_match
>
> Since drivers can be probed after init the lack of annotation on the
> driver struct is correct so remove the annotation from the match table.
>
> Signed-off-by: Mark Brown <broonie@kernel.org>

Oh thanks a LOT Mark!

Hurriedly applied this with the ACKs and pushed out so
linux-next starts working.

Quite interesting bug, I guess I'll comment on it in the other
thread.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
