Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A611947B2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 20:43:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aMTvThmb2dXgd8HRqFarFRDQiIJ55DjbZy4VCyYiSGM=; b=nXEF23MV+rMGZB
	hyE74pVIgeQuuoNWeiYa6RJGQc+GiI2baAfbjMdmIhbPTeoNmMXi5u3QlURRJ5P+K5OhDXkR7FB7H
	zPRh/AbY5VNBtUoS9X6jt0/bJMzAADroZMsIr6eKf4Ff+On9vnW6rRYo5Y0WmVKrm2P6JfrmOYLT+
	tQ8eLepkn9zMjWavxw5Ab7YKMt2dg3WBSqMDQJh0rTv9LM3VeyXP58eXSJqupBupyLHGVOYhJdVfT
	CLSQ2kQ5vNyMitlUm4RwJK7lIXUAjuymsYtGX4+cWnSAnAt+TYzWMA5lOwDSAFBz5pd7PNxOk7Wb3
	2MWeuKGxHLn99IEWeiiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHYPh-0001d9-N9; Thu, 26 Mar 2020 19:43:37 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHYPH-0001VR-Ka
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 19:43:13 +0000
Received: from mail-qt1-f177.google.com ([209.85.160.177]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MlO5j-1jeYII3d4n-00lp9a for <linux-arm-kernel@lists.infradead.org>; Thu,
 26 Mar 2020 20:43:08 +0100
Received: by mail-qt1-f177.google.com with SMTP id t17so6518643qtn.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 12:43:07 -0700 (PDT)
X-Gm-Message-State: ANhLgQ1fENcHCA74WlG9FOuLnSOu1X2R03arf6fYZYxm4By/5NxiO1pf
 PZt7A1nKmoREAFSiv5s05T1fcrwwEGDwPKtTJoY=
X-Google-Smtp-Source: ADFU+vuQR959JHwRH+KBLmVD/1dlOS/2k+q4mDywBsU5BAV8vUywPGI9ThoeZrrLVOyoyunC24NRevF5qEqcMfeovrY=
X-Received: by 2002:aed:3b4c:: with SMTP id q12mr10109409qte.18.1585251786743; 
 Thu, 26 Mar 2020 12:43:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200325114111.475258-1-lkundrak@v3.sk>
In-Reply-To: <20200325114111.475258-1-lkundrak@v3.sk>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 26 Mar 2020 20:42:50 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0175q9JvsSOW_gas_dHYrCFENW=0_CLzhCZdi9odUz9Q@mail.gmail.com>
Message-ID: <CAK8P3a0175q9JvsSOW_gas_dHYrCFENW=0_CLzhCZdi9odUz9Q@mail.gmail.com>
Subject: Re: [PATCH 00/21] ARM: dts: Marvell SoC Device Tree updates
To: Lubomir Rintel <lkundrak@v3.sk>
X-Provags-ID: V03:K1:7sl9bIlrDYY5q305Nz9/xC7fYIhDjBWpDm7pG/Ih4hq+lSLbXYC
 UxptUwT+rpXa27ivv6kfBqqSjir9bhTqU9yY9Pg2RgigJlu6FTIMy7/T+JUnAZTWAY/dsT+
 eX7Nm//QgJ827JL1GbzTo443iILbeODH/MCqdxPLoVchWcwnv1+JnTG4SAK9a4eDVZgCsYB
 mzAMW3woKR6lKUVNJXmAw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:mPJPu2XG1vo=:CdD784PftNlefVtuYKPTkH
 cqQgePcUtbSua9rK13GptorwuJqJ3ysm3zizspt6n+WoszmCyfHWbKNI//qleBRGUL9KvGmud
 Go7kLeFxi+0ONbEAQ/klJhFmOGgmDX/zxfgB28JSed2Sp7WICcaqdn1y2aS0wr1wvaiFcoDVe
 Om+Nz+8ppEOyuY7qAktUI1pU6XUaUtwOZ+KBDIpVFi78lraHT1yXuSutd29rS56Y4myV7fd1i
 rQbZ1yY+1y9OKowCLQhky0Qe7BCb8lJpeBixiWuYQ5LoJyis/VekzMWb0tiOht+9FkyBzrEfQ
 kIJrv4ElDKhW9lcr2NjV4cUUx3JaeB5jjz/p+EOlDAEWyxkQYqn/BBrFGotwNsE1st6WwwyYa
 ntgLF5ntLxl8ui3sonu938E73wHWDqxWQ+sBsRRvHJgQBe5/XRoRsSwuH0T/hh+D/wIgA/8um
 HohgkPLaNEjdMYy5BTYndUr+Fa2CB08JEdLvVu2vFrrySI+ABvwPFLSXIfQb8awFS5Yqcs2AE
 0kGE4ZkDd3T8XmE6b4bk0yMZptLRzgLgYtE8btnBf8ZyBEXgDesPLn3bQqQp5dwBGgFDOunIC
 KMVuwryP1xDS96EkDuljBPxJuORQCOgsDuJapp+t/epUpU+u+JyC1rwZWV+50+4VefGaxr38J
 uNeEW8Yz5nid6I8Z7Tl8St3BnMaDQbnba10/qegNGC63YjEe+MJ2L1R/5iPgXZeaEbeipjAD3
 AXL+XcWg1K/Ny3Xgm1Nmb1EOjIe5BimqB2OE5ZPkwnsByEGZ4jfBJAmzKoZM8rfTOD6M6dlPp
 PZjJKYxopLUxkAe3jaEKha0kTLoaR7AnH76K3Z1l1P4cnLL1ks=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_124312_009849_B066ACFE 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Olof Johansson <olof@lixom.net>, Robert Jarzmik <robert.jarzmik@free.fr>,
 Daniel Mack <daniel@zonque.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Haojian Zhuang <haojian.zhuang@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 25, 2020 at 12:41 PM Lubomir Rintel <lkundrak@v3.sk> wrote:
>
> Hi,
>
> I'm sending in these in hope of getting them queued into arm/dt.
>
> Apart from the last three MMP3 patches, they've been previously included
> in sets that aim to improve Marvell SoCc schema validation coverage, but
> are in fact independent of the actual binding schema changes.
>
>   * DT: Improve validation for Marvell SoCs
>     <https://lore.kernel.org/lkml/20200317093922.20785-1-lkundrak@v3.sk/>
>   * NS 8250 UART Device Tree improvements
>     <https://lore.kernel.org/lkml/20200320174107.29406-1-lkundrak@v3.sk/>
>
> As of today the patches happily apply on top of mainline master and
> next, so they're pretty unlikely to cause any conflicts.

Hi Lubomir,

I looked at the patches, and as these are mostly bugfixes, I have no
objection to merging them for v5.7. However, I'd like to point out
a few things about the process:

- If possible, try to avoid submitting patches this late during the release
  cycle, it's better to send a subset even while you are still working
  on some other fixes for the same release, or are still doing some
  additional testing that may result in regression fixes later.

- For patches that address incorrect behavior (as opposed to fixing
  stylistic mistakes), please consider whether these should be backported
  into stable kernels. If so, please add a 'Cc: stable@vger.kernel.org' line.

- When you think the patches are ready for inclusion, the correct
  procedure is to post them 'to:soc@kernel.org cc:linux-arm-kernel.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
