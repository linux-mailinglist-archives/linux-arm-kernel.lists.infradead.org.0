Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C1D3B395
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 13:01:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mTI+9pSiDUYitkbnQtZFoAQMlXEw/FTZsEYNoVwNNc8=; b=h7/Cs6ANCS7B62
	xzB+EN8jLinR650IK900d/KxMWihVzibGybrpQbvIUK2E/bbXt3YfCw4r8n2s5cQZ1+7X7F5EnpA/
	2EYmRzPoQs2QTUhTSqehPLt/UryokCg9OYc7zj6SIEXiAf5eVqH4Gd01U3zGuvZWjcPeqeTuxE8x9
	9oBeULO63gy349SHM1mwoB/zJKDFqINfa8boIXM+Wm3ZcovRig8iSLJ73jrkoaqmGLHBsT5UOwgwJ
	tzLkSYNN9mYJrBrgmAefWLCOFLljrZ80VGHw9MqsmUS0fkf3PRaZS0lWuqDVGI0CBmJ5e7PSH2dQ7
	ya6IF/fpMzODshU1ikug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haI31-0005cS-LU; Mon, 10 Jun 2019 11:01:07 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haI1c-0004DF-Lv
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 10:59:42 +0000
Received: by mail-qt1-x842.google.com with SMTP id m29so10017072qtu.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 03:59:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lYS873xwFvgHJlWnAlNcy3+738aq6TAuNgiiGGA4PYI=;
 b=DucPq623iXSUdIpU0sIAvsS6WoDxfPXDCI8M1Z/cLDSvAghOCQhzkn7n7CRUZTV+n4
 D7kno671l158zYXcQ5CcTKS//ZnxFCq2lAzzR8jkfMiXRI7qZOJ39ioMp2roV7C+XDeh
 18gxi0DLvMAiIoesnOPgfWT/y6QIiThSsrAXQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lYS873xwFvgHJlWnAlNcy3+738aq6TAuNgiiGGA4PYI=;
 b=EzublTX0r2i8MwsJf+7ohZ5toZN5yqxLc2KJmybabM70Z4y3uEBLQ+4qz3+PZExYDZ
 zsDSTH7DX3VX1dHnN3C6DymraxKaFd0kvfoD8MzZ2WitXiaLCo0jWPoalZw8MsfUAI67
 TVPJ6Lku2Psa5j3NaT7plaW+TqqYy/mxZSJh5P3/R3zjjvBoZkO2wG3tXRdc1IA9CaPi
 ugfb8x6SGmElxaZ4kDwP2LUGlvx600cnSS/HYmH7FB4hIwg1LwjRc6I03mQZbw1kbODB
 P8k4RW+RYTcssoy3dOgu9EkVo+TA9bH2HDEdSFNH0cC/vE7uf2Rxr7Eqt2ZqewoASBac
 creg==
X-Gm-Message-State: APjAAAWsn4kj6ZDloCeT84jsw4X6I5/+c6JDeE4tqzbMqj3AZAPJT1Tl
 2Jz8hxsLlWNdow+3FJZ4CqnmPBp5hjOFjGGc92vpJQ==
X-Google-Smtp-Source: APXvYqwfm97Zg0Zz9VmQex8hsHuU/WItevpCJwgENnoSKs11e4b9vXzYpWawPLMtR9aoaRwrQ+h4hOapW5NQrVQbggk=
X-Received: by 2002:ac8:42d4:: with SMTP id g20mr58845965qtm.78.1560164377769; 
 Mon, 10 Jun 2019 03:59:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190527043336.112854-1-hsinyi@chromium.org>
 <20190527043336.112854-2-hsinyi@chromium.org>
 <5ced598d.1c69fb81.dabd8.339d@mx.google.com>
In-Reply-To: <5ced598d.1c69fb81.dabd8.339d@mx.google.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Mon, 10 Jun 2019 18:59:11 +0800
Message-ID: <CAJMQK-i0z1EHCMK3eTya+SmK6GD_C4Ljvb7BHvsaMWLDxxmwMg@mail.gmail.com>
Subject: Re: [PATCH v5 2/3] fdt: add support for rng-seed
To: Stephen Boyd <swboyd@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_035940_978559_247DD5C4 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, Yu Zhao <yuzhao@google.com>,
 Kees Cook <keescook@chromium.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 lkml <linux-kernel@vger.kernel.org>, Mike Rapoport <rppt@linux.ibm.com>,
 Jun Yao <yaojun8558363@gmail.com>, Miles Chen <miles.chen@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, James Morse <james.morse@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Laura Abbott <labbott@redhat.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 11:53 PM Stephen Boyd <swboyd@chromium.org> wrote:
>
> Quoting Hsin-Yi Wang (2019-05-26 21:33:35)
> > Introducing a chosen node, rng-seed, which is an entropy that can be
> > passed to kernel called very early to increase initial device
> > randomness. Bootloader should provide this entropy and the value is
> > read from /chosen/rng-seed in DT.
> >
> > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> > ---
>
> Reviewed-by: Stephen Boyd <swboyd@chromium.org>
>

Hi Rob,

Is this series accepted? Or is there any other related concern?

If it's fine, I also have sent a patch for updating
schemas/chosen.yaml document.

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
