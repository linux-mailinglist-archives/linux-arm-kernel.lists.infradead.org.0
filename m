Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C43A7607
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 23:15:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q3H264vVj76sua2DjJLSgldySYCDqjia1QUdT6a+NlY=; b=Hu4vzBj/Q93zkt
	zFJ2xzrmcabcaY0RwXbEFJBoUqarZS4j2Md+eXhDxmY0426jwEgAtw9dVANYi1aHdHftnm4xE4VD7
	c0unLWVEuTpaNz9YfUIB1irwK2yUv4I23shs+h1CjrPBBfeGVsBoOKt/oJdzDYuPLG71nQaxJJN4Y
	WPB4lPb6E2dOKLrY7PuRd4F5CNtOiQp3WYxREo3oh8DiJ+60rAibFad75eJbYxXg7rMmzdQwEPmG4
	5Rcmkf1guBK4wjwz8jB3dRGIRadkgMzjJaF8cwIPV5e/MwrNcWRi4HBjWDxsXsk+99nMntqaWFL1N
	zDhI0VaZ+Txx+P9itkFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5G90-0005fF-Ov; Tue, 03 Sep 2019 21:15:18 +0000
Received: from mail-qk1-f180.google.com ([209.85.222.180])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5G8q-0005XV-C2
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 21:15:09 +0000
Received: by mail-qk1-f180.google.com with SMTP id f13so17476395qkm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 14:15:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hrlnQyjxLq5CYivE9GlieClIZOPBePod+9zvBBHCe/k=;
 b=SYjLwWDudcFvs2YtQoxnI8xF1FSoFGf5F4e3JjxEY+QZUGvXuO3pghAKoJ5ZEzmGC0
 bpT56GzbBMKLWtiUe5Z8xcWi4rpe2wZcdz/NTq76MM52k4JCBn1iiReoXysZp6GPOPMh
 TQJd23yJFIGXwlMjnWfFLz/x16Qzo1dynmQsSU0jCH4T3NIb7LK8nJP+eYWteWRcagAi
 iR1OzWPYl08p3UxwErPcyxb0n9DF4NoSIshFVmWVR3Sx1qRY9/8NcSJqe6i9bCR0IZW1
 oqO4MQofvFK8xxEMSJKrHl2z3UZWMEiDdOVy5/ngRoNCAIRFOz70eed71FQtFp8EBz3Q
 DfxA==
X-Gm-Message-State: APjAAAUT+HGpv9iAyn+67H6ei9CyMifMKozW80teliq/S0/yfKNtjjb7
 yj/W/1E+MHTimdU/gI5gpkIkwZDSxs0RQNcZCJ4=
X-Google-Smtp-Source: APXvYqy8ue7nYD2A+jriaQr6ZusrM3NzPA8WVpTMH3ZcfOqMcbj+rLuBhXygQZk/LpIuLgv48BQzUGgeHQ3s78vaIjI=
X-Received: by 2002:a05:620a:b:: with SMTP id
 j11mr36680871qki.352.1567545306976; 
 Tue, 03 Sep 2019 14:15:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190823123643.18799-1-geert+renesas@glider.be>
 <20190823123643.18799-3-geert+renesas@glider.be>
In-Reply-To: <20190823123643.18799-3-geert+renesas@glider.be>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Sep 2019 23:14:50 +0200
Message-ID: <CAK8P3a11EfOXfwZ5Xx3vYJwfBGPh=yX73f_=3u7Zmm+hJF6HVg@mail.gmail.com>
Subject: Re: [PULL 2/5] Renesas ARM SoC updates for v5.4
To: Geert Uytterhoeven <geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_141508_415452_4865787B 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.180 listed in list.dnswl.org]
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
Cc: Simon Horman <horms@verge.net.au>, Magnus Damm <magnus.damm@gmail.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>, arm-soc <soc@kernel.org>,
 arm-soc <arm@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 2:36 PM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:

> Renesas ARM SoC updates for v5.4
>
>   - Low-level debugging support for RZ/A2M.
>

Pulled into arm/soc, thanks!

This should be the last of your pull requests for the moment. Can you check that
everything is there once it hits linux-next (probably Wednesday, I may have just
missed today).

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
