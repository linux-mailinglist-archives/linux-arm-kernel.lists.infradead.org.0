Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8BFCA3FF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 18:22:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d1YwjWo/OO6scbGlyjRuqU1snfJYV7NLlZgDFVRkg9c=; b=IjNMtY/sZWlOYX
	GfvhiPnjXkXvEFxv2fyepTDRV0efSDMompJBR8rNmsyHvEhoSj2pPdvSEnEMpt8BCYeb67ZAO0fqP
	smSzlKRFOqFylkr89vBaR0t3wH7n0RY/BGFv+OzxH9GP2tCDuwi2hQXIrSFG0SlAxYybzhY3hsT8H
	7IdqcYXJOIcQbYMoKdZG4kVlAycQZ7x4O+YzRtnndm2B++8NciY4kW/ORDzNN16bZXw8IUCRGUM8y
	hx6pddnC8RizNllp8uMkXt1upHLc9gqq3q7O110+4zrmBveMVn0dVXDHlaFspPKUrGZ41SBQ+Skc2
	p0Q6GjwJm9dxuEJVOzCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG3sG-0004Lu-4D; Thu, 03 Oct 2019 16:22:40 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG3s5-0004Kq-EE
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 16:22:30 +0000
Received: by mail-ed1-x541.google.com with SMTP id v38so3063473edm.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 09:22:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zgiIl2UmnymsEs7W7Y/0luQQ7GJPPBSiJs/1Ty1rsK0=;
 b=rkyDoupCerKeqe5O5z5bzTnbyeWAjQxXfTbOxOz+SLqZLG5hMOeu9MzKK+7sniDVSZ
 vQYfRwlXM7F2FjLguFqk6g2+IMKJpAqloCuIuxhQPBFO5y60vMhJnF6Fo3tD83dX0gwF
 NlgTroSbDnyty/H3cVHXq6uac0bsDfXUgu6wRMfz3C4aGL3AKGqhHz5l5YyAlhLAv3DR
 Etek/+N6YtviUrfoPr7s4OQ4HYvDB+dLGwqF3iWtvXcsGv9TwXOBZAaBNDfXDA1AteLD
 q/FIpkPDNsnkyxgqWR4zAIYDbSB7D2hZ4jWUy8wvkLjhGtSLiLepnIMRShJrOXTKr3/k
 tDMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zgiIl2UmnymsEs7W7Y/0luQQ7GJPPBSiJs/1Ty1rsK0=;
 b=CFp5NoqhGEiGP7PRk/bdiHXyBY1RScH7zs2Z+kGC2KcqAlT2G/HvngPoYRYx+AnAOS
 aj0EbIhN0ij6oqRn5qn45nE/OqEGPKbl6nwJal8xbCeBAtNjJ17P5UUHXjDnd4iEEMdU
 OaZM27EESWytsLSS0nWamZbAu7jz3TswEMDa/LyV7yk1Fvn3fDfbQ41djjQJ7wDItu5N
 7fXRgI4fa1QV3Tj5rUcXANBdOUGLeSu0cD4icjoRYbknxIp9RGjqA0/kY3zkPLOF9Msw
 DMkDA3Wa1poze03SkdPeggosPDcfmK333ZppFIrwb57mmjuLKxhjXkDGewcVoMYBHVyp
 E68A==
X-Gm-Message-State: APjAAAURMrc3q3VaezsmPy9U66Gs+oKU78+SbKeuPFe1GRuD0h0+Jm3X
 avRDeYtZtImBN/qaUxtby/Dh6wXg5C+vmxZdlvBHXw==
X-Google-Smtp-Source: APXvYqwYYpQV3/dIPap2YGzTn+v9evDh/nI2myNoel0fTmROYiguWslZ1XNfJc/p+s/yLiLvLymESiH2fKEyjlJ9Vf4=
X-Received: by 2002:a17:906:5382:: with SMTP id
 g2mr8406831ejo.203.1570119747699; 
 Thu, 03 Oct 2019 09:22:27 -0700 (PDT)
MIME-Version: 1.0
References: <pull-1570040410-308159@atomide.com>
In-Reply-To: <pull-1570040410-308159@atomide.com>
From: Olof Johansson <olof@lixom.net>
Date: Thu, 3 Oct 2019 09:22:15 -0700
Message-ID: <CAOesGMg_5omTAeyjeS_GOF8drtjS3DEQz_0+8XP2HhnD8X_wMA@mail.gmail.com>
Subject: Re: [GIT PULL] fixes for omaps for v5.4
To: Tony Lindgren <tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_092229_508338_00D04FE7 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: SoC Team <soc@kernel.org>, ARM-SoC Maintainers <arm@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-omap <linux-omap@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 2, 2019 at 11:21 AM Tony Lindgren <tony@atomide.com> wrote:
>
> From: "Tony Lindgren" <tony@atomide.com>
>
> The following changes since commit 4d856f72c10ecb060868ed10ff1b1453943fc6c8:
>
>   Linux 5.3 (2019-09-15 14:19:32 -0700)
>
> are available in the Git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.4/fixes-rc1-signed
>
> for you to fetch changes up to f90ec6cdf674248dcad85bf9af6e064bf472b841:
>
>   ARM: dts: am4372: Set memory bandwidth limit for DISPC (2019-09-30 09:32:03 -0700)

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
