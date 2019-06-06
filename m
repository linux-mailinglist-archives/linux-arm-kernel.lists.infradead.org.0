Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90CC836C4A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 08:32:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/P/IuGoESTcEnb+4xNbul8C/+IMcn7AV8wJPsCYDcG8=; b=o74ruPyR1GJsyh
	E3Hzx+aXAkuo8llj/pZS2iUJNDdEEOh2XvNvcYwrOTZlKbiJrJ9Qqm+AFx8NBNmH2WdRgGbJobmrB
	Jc8M6uiDREVD7PsOMd+xx57UTn34xFlbB1wk4zRddo/+3dT3PW+eRRxHOGGsaaYK0L75MtAD4Nwrw
	wRu07NPZp1ZnFE9mYR6xNRqhJNzuLfyBiAg1fAv+TxPFL+liohIqmt2UKjQTUSGYqTWrw4Xao/5kA
	dj/HDON8qwJsgR3ITA+9ypsc6636rOcqtw9JX+wK5/yUmv4GXoKo4RwyrWaVtLOtyHFxtKmfRu/WP
	IU9o7o6199I6GcIc8Yfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYlwK-0001gY-SL; Thu, 06 Jun 2019 06:31:56 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYlwD-0001X0-LV; Thu, 06 Jun 2019 06:31:51 +0000
Received: by mail-pl1-x641.google.com with SMTP id a93so505876pla.7;
 Wed, 05 Jun 2019 23:31:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZuYL6lN4ovNLZelnmpwF2tE/28tuu9kcDrW6nhfoTIY=;
 b=eAykI5I2cit6kpAF5jKD+nZ+aVqSXA3rMhKtgNRgXHtVFldg6wBTALZUH+Fj1//dcO
 qvBs7E48tli/uSpkLJ9vpSavSok1SXWOCmVAw2ihUDXP4fW3ZO8EKJBv09sHO1nTngW1
 ZxglCPmZw2XWGuaZiJx/v4jpvzkJqGG/yKzITiB91BHPg7PRB8nUMOgj/US0LkccUlQi
 5o1CSPZ4iD4eSpqoNYNYRRijiwD12ZV3luQUBMdYROiAtu7ZSwWWj3yoswcHPQr+mM6z
 jT0MFhki13yCIcTqLcPywQQJQpCq4FG1t49eCJXz9w7a5TpuFkHlcTaY4gyLGOiZQaER
 QmXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZuYL6lN4ovNLZelnmpwF2tE/28tuu9kcDrW6nhfoTIY=;
 b=EwWoaqGV5IsstnnrXo9ubqWAk5b5gal+OXKOJzceFanB9N1T6/XuOlMYf1vmO1PU0d
 +OuwtDisRZW1xW0iG3WmLi/3u1qPqwAo0UQq2fvH2+UrY7bOBeXmZxxKczTcIq4Xj/iZ
 423Efq/JLKi+Xwi5kA+b/mY9u+fxPkBOP9JaxhFMi2k1bZxvggzbVF6GKVUNGBH16+f7
 m5juH9tuKD+6OGjS+mCG64r7aQKbZAO+4mrMFHKRC8dk5HVO6JdJ7bJs/K04Qme298Qa
 EveJpgELbPNJVMKUXEMnrtVfwvN7hWfHT1KBN1+kyPWJu8w0BZXopuZ6xsL4Hr0rXjER
 8dqA==
X-Gm-Message-State: APjAAAWhgRPFMRil372V3KKfv46YqtdFqkbrh63mB6aQigqX/td1XCh0
 GaGnnyXMsA6odfj77PmUB3iUQ/e/oKgKX9x3q7O949yT
X-Google-Smtp-Source: APXvYqzmTJjr3etXxZab8gtdLS3HlllT9X2yzuaibx9FNwUj6+wOU1xURYpITcK+CDPHMjIoMhfLuS/5NDX9FVoeE7w=
X-Received: by 2002:a17:902:ab90:: with SMTP id
 f16mr47819648plr.262.1559802708652; 
 Wed, 05 Jun 2019 23:31:48 -0700 (PDT)
MIME-Version: 1.0
References: <1559115828-19146-1-git-send-email-chunfeng.yun@mediatek.com>
 <1559115828-19146-10-git-send-email-chunfeng.yun@mediatek.com>
 <CAHp75VcbZwd0e6r38C2x7HLEHLr4oR7TjwdDXnDxRPRs3anwgA@mail.gmail.com>
 <1559789630.8487.111.camel@mhfsdcap03>
In-Reply-To: <1559789630.8487.111.camel@mhfsdcap03>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 6 Jun 2019 09:31:37 +0300
Message-ID: <CAHp75VeWu+8H2=PRNud_MAoD9zozb2Ugh9b=9TCtYmGLVyCTpQ@mail.gmail.com>
Subject: Re: [PATCH v6 09/10] usb: roles: add USB Type-B GPIO connector driver
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_233149_706452_66D4FDC0 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andy.shevchenko[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, USB <linux-usb@vger.kernel.org>,
 Yu Chen <chenyu56@huawei.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Biju Das <biju.das@bp.renesas.com>, Badhri Jagan Sridharan <badhri@google.com>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Min Guo <min.guo@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 6, 2019 at 5:53 AM Chunfeng Yun <chunfeng.yun@mediatek.com> wrote:
>
> On Wed, 2019-06-05 at 11:45 +0300, Andy Shevchenko wrote:
> > On Wed, May 29, 2019 at 10:44 AM Chunfeng Yun <chunfeng.yun@mediatek.com> wrote:
> > >
> > > Due to the requirement of usb-connector.txt binding, the old way
> > > using extcon to support USB Dual-Role switch is now deprecated
> > > when use Type-B connector.
> > > This patch introduces a driver of Type-B connector which typically
> > > uses an input GPIO to detect USB ID pin, and try to replace the
> > > function provided by extcon-usb-gpio driver
> >
> > > +static SIMPLE_DEV_PM_OPS(usb_conn_pm_ops,
> > > +                        usb_conn_suspend, usb_conn_resume);
> > > +
> > > +#define DEV_PMS_OPS (IS_ENABLED(CONFIG_PM_SLEEP) ? &usb_conn_pm_ops : NULL)
> >
> > Why this macro is needed?
> Want to set .pm as NULL when CONFIG_PM_SLEEP is not enabled.

Doesn't SIMPLE_DEV_PM_OPS do this for you?

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
