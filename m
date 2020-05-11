Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0981CDF09
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 17:30:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U0IxFnNUxt2FhfHYRAQHOWOOt2OtHrTsSAkCX6fWdsM=; b=PyDc7bwYyA8/pJ
	iCp+HQlP4hkthgtEhDMrfFoRxUeFXOM06rGcAIoFllUDUG7uinAKbXU4mpr++J0MtAwJkU747wyrD
	cZnVzJzVomKb/cM6rRuzAQ8GvnlgIGaunZAHea470YTla2/stw2NdhAbAXbxD6XPKOxLvQusb46sI
	b2YiCicR1w17CTz+dHN3SHV6WdA8+1ecCrPNMdpu5wc5jjmodoqa2SAvs+E7lYHsc1CuDNtXNpY2T
	9JaTqwykEmUIrBqCnRkYPUrv3JbOjIM9m3mUGZBi+UtqI2Wyz9QFA+tycuwqYm1Uris7GA114E/9d
	OZCmg0haP004fwvKbtNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYANp-0003XZ-Qo; Mon, 11 May 2020 15:30:21 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYANK-0003PV-Q2
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 15:29:52 +0000
Received: from mail-qk1-f169.google.com ([209.85.222.169]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1M7bJ5-1jSOY50lgr-0080Re for <linux-arm-kernel@lists.infradead.org>; Mon,
 11 May 2020 17:29:48 +0200
Received: by mail-qk1-f169.google.com with SMTP id b6so9029272qkh.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 08:29:47 -0700 (PDT)
X-Gm-Message-State: AGi0PuYBv1iFjcpVEScbOuDVRIRHTmHuDwfRwZ3DWHYtjvYITR9NMNBm
 hi5WMzWQ7n4NSAi/zt1q/RaOzDJlWBrmSQhmUMM=
X-Google-Smtp-Source: APiQypJqkx9Wh1nNgK7vVycduyuXesKEQUeeckiF+gPcu6V41M9Z/9Eq//BTqI9+j2JHqoWMGtanrCSLxeUhS5Jd6lo=
X-Received: by 2002:a37:4e08:: with SMTP id c8mr16010333qkb.286.1589210986640; 
 Mon, 11 May 2020 08:29:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a3LokurC0n9XiwtPQh9ZgQcswMKY4b+TEsQh1VgYDNeWA@mail.gmail.com>
 <20200408035118.GA1451@andestech.com>
 <CAK8P3a1JS3_2fWrhNTZx0eTWjJa-GTb4AscTPqydpSP5EB15Yw@mail.gmail.com>
 <20200414151748.GA5624@afzalpc>
 <CAK8P3a0JW9x-Wk9Ec3+zLjPHbWAvPQx8MF-xe-PnWUgEjRAuTg@mail.gmail.com>
 <20200415135407.GA6553@afzalpc> <20200503145017.GA5074@afzalpc>
 <CAK8P3a3OC5UO72rTDWi6+XgmExJmkATEjscq8hns8Bng06OpcQ@mail.gmail.com>
 <20200504091018.GA24897@afzalpc>
 <CAK8P3a25sZ9B+AE=EJyJZSU91CkBLLR6p2nixw_=UAbczg3RiQ@mail.gmail.com>
 <20200511142113.GA31707@afzalpc>
In-Reply-To: <20200511142113.GA31707@afzalpc>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 11 May 2020 17:29:29 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0=+aBJLTvHOskTv=tba_s5b5MzWrYG8mxH3iLNy4hfBw@mail.gmail.com>
Message-ID: <CAK8P3a0=+aBJLTvHOskTv=tba_s5b5MzWrYG8mxH3iLNy4hfBw@mail.gmail.com>
Subject: Re: ARM: static kernel in vmalloc space (was Re: [PATCH 0/3] Highmem
 support for 32-bit RISC-V)
To: afzal mohammed <afzal.mohd.ma@gmail.com>
X-Provags-ID: V03:K1:9qdkbTJTJQhe9O7Tp/T4Qzm851bZCjsp1TZcLuqyxE0LnpXuvMa
 F8og235/skzY2zcoA7sldZfm2Xo9m2forcxInOh3De6eFJZ8DsAqy5F8q/TDUfOyT6zK8vi
 tW+3W+IuoJezKUwZvZ42CFE27UzTyud9H1xXhyICn2LoBfJ9WNSnlyFfa06JNFdxhvn54Xc
 yhm88br4s+vB03IpQbw3w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:HSxPklhK3wk=:57b1/MwrOuaUVCJRZqKpuv
 suHjCjsPRn1s8EIxjO5iJmlC/jClKtJ/Df5r/cX/iHyTVPZbzeHVVXvUgXU2wmeL2gIrSDQnk
 PqtJa5q0UaNoeOVlRNR18ZFqHu1zIS+rk66Lnr07lDQ00F/DBT0SB0bIaU600eRRI6c+1BSPY
 4mH3cXKd56P60GZ0Fr/BnPcEi3dHRhB/5l/vNJ6Cz1F2leq2mzMk/Nru5mCgTf80UAIg33esx
 +U+Lo/sXaVGT8CmA3dDSCRcMz+lUDYaZUSz2rvbQxaNDiA3maqU+8kiSwTOHXhLYzQvnxnQUy
 L12LkXz1Aj2FXE+pXWwtoQLH6/kj/4U7V+JGxOjnxn9/RFBBsFXoZ3qMtwQzL3Bh5sSFZ52Y1
 oqbQAoNcIh31nbSU6dRCEGrJiUlkjWBZSV5tbLVyy2pgoSkusc0nTc+qTTiGK4kCl/m7Mf1dP
 baXHYhYF+TtEv7K4TBV0E62ey1z7hqh6VxpaloNmmUf3AgLwt71E0eajUTue9V62SYLHVIaGE
 O5komGxkwgTHTtZT88W6Df1xy0toVXGmXZtP1Ncu82p20p8CmCZkwemz/lUwTNp8fbfXJ/341
 Md64UjlEOjusb2EjloV+4NIVvRaEdwFEspXNq+H9+5w9SfG9IFWbPPloy0mSMp3AdwXb6CcNJ
 1UVcm4AxVDlQ+gdymoDKUC1caDIwRuY81QjWbS9Z0/jqWAkwfrBXHe/lIEZqqWn71v8EHAHM0
 /dOLBRuHRB6+M5VhGpwNDYeU9DEOx7l57SztPzYTZ9sc5q425TMlP2+glA/YfJbqiUQiHHOSZ
 rWuLRlWsAQYN9gwLYsm/Q7Q5AmY9Q/OgwUSgXecFoSiXi2xbLg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_082951_140374_6C684D3F 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [217.72.192.74 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 11, 2020 at 4:21 PM afzal mohammed <afzal.mohd.ma@gmail.com> wrote:
>
> Hi,
>
> Kernel now boots to prompt w/ static kernel mapping moved to vmalloc
> space.
>
> Changes currently done have a couple of platform specific things, this
> has to be modified to make it multiplatform friendly (also to be taken
> care is ARM_PATCH_PHYS_VIRT case).

Nice!

> Module address space has to be taken care as well.

What do you currently do with the module address space? I suppose the
easiest way is to just always put modules into vmalloc space, as we already
do with CONFIG_ARM_MODULE_PLTS when the special area gets full,
but that could be optimized once the rest works.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
