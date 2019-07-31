Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E43307C335
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 15:20:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=82l5JuBqxEbEKSdCPmgihtMzE4l4HjVpnP9iUn21ZEc=; b=U+bkCvN1q2eQOR
	oVIqS5AWTzzyG1pgs6m9/lv/z2cYHOTO9n2jSMle7YLI23YkSl49c6msf0hBgXV5Y6qq4Gi5yj4Nn
	dEBHK/gC/HiksVu4LEqHd9vB7eOeQaWX1dkQrjvIqxdXyzrSeGIGfuUaZlgjR9qmTmRLNm9+80KKE
	BrOnH3GmCRFLX7ouDtB4gnwBAfa0ez2DpQK9jBV9eeDdX+y/K0ziBsD4cFlHPQ7Pel5w/pqpguGpq
	Gz9Adt1a6NnYRKy57Db6nhWu+ZDssdRfKYrTs3ApZq+RHyUzxt4jdiIrTUsGmwBP+OkOS5SQsSk2K
	0RXVCcC43TbMkhwzacdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsoXB-0002gM-1m; Wed, 31 Jul 2019 13:20:49 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsoX3-0002fh-I3
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 13:20:42 +0000
Received: by mail-io1-xd42.google.com with SMTP id h6so10970831iom.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 06:20:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uiJuwZiymlEb9kJ2URB/qON8yQUNY8MIwM0Qk6MZ00E=;
 b=SS1frxnBsvEYqQ9PkeQtYGNQgRQYmycAW3dEtWmFlhjk2/ZiVnf0aKFPyZv6VXdQ9g
 JFv6UbF9X/+/lUq3RWA+SC81hijNvXH1RQPeve+613wWX5RP//rfOWNDskOL9rqHG87F
 65OdOfqOJTx/sYfcmAolfdThTEno9o6F9KensMlglqchm+1hUdX93sFV+J5FGxNdKOXm
 Jwfgc4W85+EknuqcW0wbypg5fr/X3k0oHFkN56T3PAiqXAlWNvUmcIPIXzi9x3lOBT8r
 hOr8uCEsz9W7WgDlYJwcTKfuNPEbsTAbmwyY9Hi2YUG/JdYDRH5Ca1AlA+EoyJrE8aD0
 k5bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uiJuwZiymlEb9kJ2URB/qON8yQUNY8MIwM0Qk6MZ00E=;
 b=gcZlxoiKDpZt7lKX42z0BYv0CJjWxM8rxKRzT26VD2UT7gf/IPlmC6+ncM41mk8eZq
 fWZtpvCOEw+nZFk8WnfNNdejpRdeyBM8/R8PUsqevdUrTMXJnVpZw62kokv24CBudYqo
 ZcUovFM+4GBhRJ/TeGGKXdeMOxI9/uWtkKe/GejEwNV4hfYc5WLcSgto3vwfnpd+17al
 iVN9/nyMEvLkT2/IoWosvaKP917gJQFIk14SHQ3stg11qkZOhFiQD5lbOn8I4kpgVHYf
 2rGWIuSyB0qET2q9SLGwA0BcPUezB8WfzdKHe/rWQA2i52fzxAm+NICfnyvE21dX4/UU
 T2Pg==
X-Gm-Message-State: APjAAAU6/eu0KsuIxla5m2+/IrCah2E0jNFLNYEKKKZAtnoq3QNFmLlL
 L1v+Qo3GA2naB/aQksGUO05UB1zqI3+W5qTjfz0=
X-Google-Smtp-Source: APXvYqy110YP4z9YGjyJCXUWIQe2bV7DMu+WU5DQ0hrRwBoddF/3YS3yVQYKaputJMUd9/exV5xavgrEbbw2HT/b5jM=
X-Received: by 2002:a5d:94d0:: with SMTP id y16mr73259624ior.123.1564579240224; 
 Wed, 31 Jul 2019 06:20:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190729135505.15394-1-patrice.chotard@st.com>
 <CAOesGMg-3xt2qjjZ569pUE+d6tn7nz264AN9ARkBT_Ej4TFC2A@mail.gmail.com>
 <de6ab910-380e-6271-88d8-6fe670525e60@st.com>
In-Reply-To: <de6ab910-380e-6271-88d8-6fe670525e60@st.com>
From: Olof Johansson <olof@lixom.net>
Date: Wed, 31 Jul 2019 15:20:27 +0200
Message-ID: <CAOesGMgi2cLUZGZnzKY+4i2tZSFyLe2TEK5SPY5yu0qSh_BRxg@mail.gmail.com>
Subject: Re: ARM: multi_v7_defconfig: Enable SPI_STM32_QSPI support
To: Alexandre Torgue <alexandre.torgue@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_062041_657708_CA6DCE67 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Patrice CHOTARD <patrice.chotard@st.com>, Russell King <linux@armlinux.org.uk>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Wed, Jul 31, 2019 at 8:48 AM Alexandre Torgue
<alexandre.torgue@st.com> wrote:
>
> Hi Olof
>
> On 7/30/19 7:36 PM, Olof Johansson wrote:
> > Hi Patrice,
> >
> > If you cc soc@kernel.org on patches you want us to apply, you'll get
> > them automatically tracked by patchwork.
> >
>
> Does it means that you will take it directly in arm-soc tree ?
> I mean, I used to take this kind of patch (multi-v7_defconfig patch
> linked to STM32 driver) in my stm32 branch and to send PR for them.

You can do that too -- it was unclear to me whether you posted the
patch with us in the To: line because you wanted it applied or not.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
