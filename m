Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5B27476BE
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Jun 2019 22:31:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=66xVT8cCvXyYi1ObmIlzFz6waAK/qLaenJQEXKwavPU=; b=BAZulAEI8AOCMH
	nsxNTL0diWeAk7PCb4DoKYX8y1aJfMFpZ8RYLQspErU2+LUElsfJ0BqrXoOlX5nzkzpEn5/Op3m//
	3zkwC++/1//lbxqr+cKDO/m7KSfmihDEo+jSmTW8Y44TndA4juhOwY9A+/fSdpVgVAvbzZBX6hq+v
	uKSFobAqwnk5gf7Clv7R56krH5DMf2E22+CYrb9kMwFNXidBKWjX6Q2SrLoeLb3oCCR5RG3UnHfF1
	M+RLg8kuUejJbIGkP4tfMwn7x3TDAUYDiAg2einsO9UoYIvUsYPrrt0yYTrkbpxZzECsXDLT/DHNd
	3dTWWIURXBaJu1W1Orfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcboC-0008Qi-3Z; Sun, 16 Jun 2019 20:31:24 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcbnv-0008QH-EM
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Jun 2019 20:31:08 +0000
Received: by mail-io1-xd42.google.com with SMTP id u13so16972962iop.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Jun 2019 13:31:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=N1neTIsLOM2vcRp848K28v/AFSs9sj18LXsizNJ89Zw=;
 b=fvUWsRvHuflOoSkdQIOz1A240F/4gBm4uLATsmsgaibbgVKnFjm7VOnPAFxX7TfU1Y
 9rUlZIUMcxKAozcqthWuZWywfdSuD+PXpBr02aABfZtFfkR89F3GaxKGgFSWZnlBIGsV
 iZ1Sspxw1TZgIrGS54lvLOhQv3f5A5a7YVfk9381oqhSkCF3kYtBg0lExwihnpru55E6
 pI93TwlxUAI2xc179BKUzm6dkc1QgE3x31mwToN0/P7UHTg8KzW0+O8qmxl3PO+9Fo7j
 L+r7S7KeBfGqzDEwI2vCk4oB4u6oUPd3RUKv5k1e33rMbVvRuOJCr1kCaZo9E/jmfVkH
 cpjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=N1neTIsLOM2vcRp848K28v/AFSs9sj18LXsizNJ89Zw=;
 b=lHzkULD28xA61fs7otz+hmLhczt2womQnV/lrSECeZ2o5nuPlR7A0P2VBKtX2WahSI
 IxgEjU9rzukpOekAVoVcnbTG1gKhDI309rUjnVNYY4+1aibWAdyw4RLMesMzJ/7xW1JZ
 p4H1CGmL+EUb8TzyR7h6sPSKfdnFKnkFTiTpM9yPjazDIkEfwv0fglsshTzF3GX1pHib
 lzHvZn2LWnEfhFllIjVnfLd2IxofrG/NNNQs4+GEbSLhjAxBjRc3jTScTg2ayJE3K0S9
 0RLnbnjmKLsZpjdqvbmUVrwzSJEJxg1Er3xHbgKfd/Sv9X9EOP3x22LT3TFJdw2+Bg6h
 cRBA==
X-Gm-Message-State: APjAAAXh2mGvznYWQ6xLoc7yceKvoz6iPEMYBPkSNknf+4VH/0Sj191X
 Ysm6BZsEkxFu+NgYDVFBu/LEr/Hiag+HWyGuEQoOTA==
X-Google-Smtp-Source: APXvYqxXYJzmirdsgvoJ34UTlLelxA6yyImSktWICiO9dU7LD1JAMjGaAmcoW7KED6N3SgxbHT0Jn1AyQoQ0wQzgPrE=
X-Received: by 2002:a5d:94d0:: with SMTP id y16mr25200571ior.123.1560717066510; 
 Sun, 16 Jun 2019 13:31:06 -0700 (PDT)
MIME-Version: 1.0
References: <b50499a6-da24-b9fd-dcfb-54158b326963@ti.com>
In-Reply-To: <b50499a6-da24-b9fd-dcfb-54158b326963@ti.com>
From: Olof Johansson <olof@lixom.net>
Date: Sun, 16 Jun 2019 13:30:55 -0700
Message-ID: <CAOesGMiBxYOZrtRsJvpMZ7CHUshd=ee2WqEMmuU9JKu+N6iBiA@mail.gmail.com>
Subject: Re: [GIT PULL] am65x fixes for 5.2
To: Tero Kristo <t-kristo@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_133107_487159_AD5452B8 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
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
Cc: Nishanth Menon <nm@ti.com>, "tony@atomide.com" <tony@atomide.com>,
 ARM-SoC Maintainers <arm@kernel.org>, YueHaibing <yuehaibing@huawei.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 6, 2019 at 1:42 AM Tero Kristo <t-kristo@ti.com> wrote:
>
> Hello arm-soc maintainers,
>
> Please pull this quick fix for a simple Kconfig dependency warning.
>
> Thanks,
> Tero
>
> ---
>
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
>
>    Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
>
> are available in the git repository at:
>
>    git://git.kernel.org/pub/scm/linux/kernel/git/kristo/linux
> tags/am654-fixes-for-v5.2
>
> for you to fetch changes up to a6b112b04355b87a2baee448165bd00889ac523f:
>
>    arm64: arch_k3: Fix kconfig dependency warning (2019-06-04 12:43:21
> +0300)

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
