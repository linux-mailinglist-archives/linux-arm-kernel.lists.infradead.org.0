Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23CA142C69
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 18:34:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4hi+7KiJylJap+IPLatxESm18SxJi2GuNJyuqtJwNlU=; b=fJSMyymppDPpt/
	TimVQzh1egK8HROfiBjZInUN4X9TlL9Vs/auGgDxN1+9srq6p5NUJX9dnzNx7SC3m1JUr6AmjXAJE
	eIwPMPbLtVVDDsic4aH5mUdYsFbfMdmspyGZLkcxLXPB6b+PzOBV+586GLBZs6VbTVCjY57V6/kCC
	ZBr7/3QuPTR98RjZt0jTLbj4qRUmeL0kh0sGXmNfyYMQtT6CRDXxpzGuWR27LZTr19hPm3Vvv9n5x
	kZUojqcNsf3riDRYZMXovdRjdUydngY2zE6ywMfuWGIVT8UYm7i9dGQ7K71pZiBr2O8DqqtdSjW/Y
	Okhgq5PMUKyHaWwC6kRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb6Ce-0006Qz-H9; Wed, 12 Jun 2019 16:34:24 +0000
Received: from mail-it1-x12e.google.com ([2607:f8b0:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb6CR-0006QQ-Co
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 16:34:12 +0000
Received: by mail-it1-x12e.google.com with SMTP id q14so11580364itc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 09:34:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hZCvV7cQZNCXBtTHIkCdgNG0kspEVIGlXIe1tEdoftI=;
 b=K4PtkffJIk+TE/PjxWZEP5nN8FkQHPgXAGeT3uxWRKzGQ4EbBsFVAZo//Ps8v9/9lR
 01Me35dSGJijOLOkBOdFkRMMHCXY3Jb8EbVhHYzUhpwigqZHHUlqkuKqozzOeAPg59sv
 uhI2ma5g7nmvdqsM90Vz+irqdn9EeA6mjdCrgt3Av9D+ohHT9bgsdLviUupvenzKsXLO
 K58G87lqMGxakjom677RMKy2RnOcEUVyx4l+v+0XcplTBFvpe9a0iwxrz72BoM86e3ph
 NUX6wMsWVYgn/9Cv6txMGYIxMiOTT1dyMA9VtKyvCMIRRoaLTcZ1ClztUkmodfWdu+wH
 xeCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hZCvV7cQZNCXBtTHIkCdgNG0kspEVIGlXIe1tEdoftI=;
 b=ZyBQ8tvkg1LrUThMFEdr+28371cmeM0w/x3FkZZ0aJW2zbEGUxr2BE/QG2Pmmd7L+U
 3WHiMstXY13tVAljmuxx+4dCgKe08bdoSL5zSboWuFhj9FNnedFdS1hCIICUbonth9S/
 VzbJELTH28Jx6RAX5FRTv5zHJFrZFs7kZmmQy0ZHEeouF/Hmz/H6pz0N0YBqNunJj9Ua
 5Rrr4Tub90J9IoJvan+0bMFumnGlF+EWxN0xiTCILuM1DeTsu2z5hcgW8iu/wskLLM8H
 XWaYx+OFd5A6jOD3VHA0xVyBhIGB7rFT5KXCtmLxIie4/qcjNtB+FVjShtPjSYBVUYDu
 nfSg==
X-Gm-Message-State: APjAAAXCHGeU3eo7ZtLaHTiUlN4fVjiqHDLijKp35nPyMFKan3i048bj
 5NzmwqLPbdvLhtfMTQiJY170sNyHeATyrnS4zfk=
X-Google-Smtp-Source: APXvYqxZh+o05jcOyHqNSKk8Ivk+tjl4Knc4o8YOtYWoSJKwFDgIF7OFeSVxDyD/mGUxk6569iAyD5s0t7IzvUZzteM=
X-Received: by 2002:a24:cf46:: with SMTP id y67mr19345396itf.105.1560357250240; 
 Wed, 12 Jun 2019 09:34:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190612162816.31713-1-tiny.windzz@gmail.com>
In-Reply-To: <20190612162816.31713-1-tiny.windzz@gmail.com>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Thu, 13 Jun 2019 00:33:58 +0800
Message-ID: <CAEExFWt+8NKj4EYvQ10KoeUX8ej6Pm1gLgyVtozwMRSYC-p-Sg@mail.gmail.com>
Subject: Re: [RESEND,
 PATCH v4 0/2] cpufreq: Add sunxi nvmem based CPU scaling driver
To: Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
 Stephen Boyd <sboyd@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>, 
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, David Miller <davem@davemloft.net>, 
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, paulmck@linux.ibm.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_093411_462484_99C6ACD1 
X-CRM114-Status: UNSURE (   6.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:12e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux PM <linux-pm@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

@Rob: Could you please review it?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
