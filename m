Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC73195864
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 14:51:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ZVZ50+HsxVrCVsTp0zZRWM5fWYyrtQyktf2GpD1bAI=; b=BqInddA4YGtbYt
	eFmCCZnjCC1nZNCQ4y55sHjosybdLNUtqq6HSDO5X62iGyCPDUUSuEPlsGeNg8YyZlZc7tjUs96xy
	JUZ1E04wQrg5rQMJqBZpd0DzQ5epq89X5xJ8gwp2veJTRa0+XMFyclTKw5+TMrB3sj9CuKaxmIsGg
	Je+jfrr4eailkO4NE5PxFotHz0HEa/+ryoKUG9LbXsUzc/qer2S2vL+PQ/VfQ9NlQ70hJHSq9fPZF
	kP+HTN2wDsVuOpcHx/8xQv5lilOy1q6RwlnCVCPsOzJeBF7I4ob9MMNPDRsWkgyNQx4ikkxPj7dJS
	fwaPA9MFHVZKU1oTJW/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHpOQ-0004hv-U4; Fri, 27 Mar 2020 13:51:26 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHpO5-0004a1-3l
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 13:51:06 +0000
Received: from mail-qt1-f182.google.com ([209.85.160.182]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MS3zP-1ip4N30qlv-00TVHj for <linux-arm-kernel@lists.infradead.org>; Fri,
 27 Mar 2020 14:51:02 +0100
Received: by mail-qt1-f182.google.com with SMTP id z12so8548326qtq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 06:51:02 -0700 (PDT)
X-Gm-Message-State: ANhLgQ3SkNytgxoXQD+haXDK3N5p5gZRifGCuvimmgwhGU0dOScOvqlX
 lxQuWqEKgmXqky2wESfkJRX8+UCRdNnFdHKIjtE=
X-Google-Smtp-Source: ADFU+vshNURS/9HDv+oLa8JQm1ylr9owZmjcnTSkVVaH5iSMiWpwyPAHJ6GKmm1np7lsir9XH7ml3tLULZvcP2HhgCk=
X-Received: by 2002:aed:3b4c:: with SMTP id q12mr13766906qte.18.1585317061089; 
 Fri, 27 Mar 2020 06:51:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200327092741.1dbd3242@canb.auug.org.au>
 <20200327131831.GC2282366@ulmo>
In-Reply-To: <20200327131831.GC2282366@ulmo>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 27 Mar 2020 14:50:45 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3At56pHFJNojHFa=CHQxSXT1dtYTr8_t34AOcooE_b+A@mail.gmail.com>
Message-ID: <CAK8P3a3At56pHFJNojHFa=CHQxSXT1dtYTr8_t34AOcooE_b+A@mail.gmail.com>
Subject: Re: linux-next: manual merge of the tegra tree with the arm-soc tree
To: Thierry Reding <treding@nvidia.com>
X-Provags-ID: V03:K1:cptqGsd1fHVwBMWYqzxtdylC4kfzVjRLSWXN8Hj/9ghCYfM17t6
 MUUbQyQUmMegypqxdTeQ7BNRK3/mwPOqHnWPpnGKkc35kFqXv0KMgwSMAZmfml4fHk+5DEr
 gNkGtaTka3Vyxsbw177lYzXXUDULAdY4gyGft/2/MsWH46A49MAWfOHyXF8oI35z5n4uRy5
 BKbF23ebBCs3+PcSCBiWQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ErFATGyI2YY=:B5ABia5bSp9G3XahFh8JJn
 /GCzshkmhC/quchXHddKmAugTIA55Kl3mlAn1lSNmlbhoBqDV0vHA3vxjaz4wIZcnSEvHSOUL
 V9gXIhyBaPVGvs0b98/5hXpkioJ1jE4yRRjePirkg9hSaFTgFM7VwvnffTCwvs359CpMaS1eg
 81YFyeVT2ox+nDUi+z7M01h8nUmDonlstuIjngRObSBdKCth/UdpGJDhGquhHN0WjyYXNEilW
 hRoVx88emc6bh9AOK/IrsQvdsQ83V3HWN+FtJjlvdLFn41NpMP0hMuFhR5Vvpd+eHcL3Z5uQ/
 kV/gOk+TCg8w5sw1Qq7CEYtUFy4ZZbipyNXyDE9s3YUplna0+LuTFoeIftBDpW7k8lL0wXQoR
 lxkw5eiG06AOv5EIPQ5npSRp/SIH6SmnUkl39e8aIpBbXL23+uUpkJxzBpaoOvpexuQrLe9HD
 q9p5XfpW5RIbqVg4dSKplc0P0Z6j060QdUy0Ff1UM55pt34ATU7cNVlYYni6c9U4E1/dkp94D
 DgW/uetsl2T05Pvd06zNNvX6LpSPbpBOvdwPQJ6k3z2GWigxt3NAqj32WzFl9iaQMmBRKAL/Z
 mcfhWAkGTHU3e3rcdD3U6gj1fLr5VaVpy2LN+u+PKLG/QOwQqX2YxdIJKovezXW/MzD/Z5EE7
 uwqYh4+NeQNm1Jf9Dy/XxY4Ydgt4KBaETbO837X8Aipj6nm8RA05uza1h2w2mIGu/170vTNj+
 tg5KFjAzgK3yLMWA6vBiO5KsZctUabM69h3jP0ljT1T1HGI97c4Upp7Hd2m4aapAU0UgNqjWc
 UetAfmEIqztbZDL4lO1UHgqlmkN5IFkPUrn5HQEBKvV1j9EnHU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_065105_440037_BCAB25EF 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, JC Kuo <jckuo@nvidia.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Nagarjuna Kristam <nkristam@nvidia.com>, Corentin Labbe <clabbe@baylibre.com>,
 Colin Cross <ccross@android.com>, Olof Johansson <olof@lixom.net>,
 ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 27, 2020 at 2:18 PM Thierry Reding <treding@nvidia.com> wrote:
> On Fri, Mar 27, 2020 at 09:27:41AM +1100, Stephen Rothwell wrote:
> > I fixed it up (I just used the version from the tegra tree) and can
> > carry the fix as necessary. This is now fixed as far as linux-next is
> > concerned, but any non trivial conflicts should be mentioned to your
> > upstream maintainer when your tree is submitted for merging.  You may
> > also want to consider cooperating with the maintainer of the conflicting
> > tree to minimise any particularly complex conflicts.
>
> Olof, Arnd,
>
> There was a bit of back and forth on this because there happened to be a
> conflict with the USB tree. I tried to clarify this as replies to the PR
> request:
>
>         http://patchwork.ozlabs.org/patch/1254523/
>
> But I suspect you may have missed those replies. The bottom line is,
> there is a v2 of the pull request that has the patches that are now in
> the Tegra tree. That's already part of a PR that went in through the USB
> tree as a dependency to resolve the conflict.
>
> So as a result there should be no need for ARM SoC to carry that PR. But
> if you still want to merge it, please pull v2, which is here:
>
>         git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.7-phy-v2
>

It was almost at the top of the branch, so I ended up just taking it out now, it
should be gone from the soc tree by tomorrow.

I think I managed to skip it as you asked on my first pass, but then failed to
reread the message when I went through the remaining entries in patchwork.

Clearly my tooling still needs  a bit of improvement.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
