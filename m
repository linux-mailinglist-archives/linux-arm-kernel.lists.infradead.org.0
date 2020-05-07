Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB8B1C9D7F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 23:38:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d/+R7CY4vyIaRyurMKmLekxZcDl/hhJfrjm6JUXjoMc=; b=JLb/W1e8sqeWna
	Ofmu54PkbGvK+uWhj7TrTtRLT2BtwgV78kgM45n542NwQzojHRFgel9TWk4dGiYAllkfqU0mzpOlj
	YS8zi99bsTQhRaeA5YV1N2NWURAISeqPFi40MO8BCyUWietJwgSSTiOxZJO3PhAHLtI+Yi9/GDCLI
	wZQesoxe+gdhbe0Jm+DDU7PouRY6QRvWuIhVOMIhtQVnfR7Rdttnry6TD5b3Prl1YXL0CrnZsJpJ9
	f4JUPBpZMvXCjBfXeoC5BFZle7YN5j7DCWzYPPd6kpcelyphh4Jarmi35fux06ybq/+BVTv1v/rI+
	ciaXJuayQ20J9qDGeqig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWoDT-0005TD-1V; Thu, 07 May 2020 21:38:03 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWoDJ-0005Sk-Il
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 21:37:55 +0000
Received: from mail-qv1-f54.google.com ([209.85.219.54]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1Mum2d-1jG6H73RIJ-00rr4R for <linux-arm-kernel@lists.infradead.org>; Thu,
 07 May 2020 23:37:51 +0200
Received: by mail-qv1-f54.google.com with SMTP id ck5so3452819qvb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 14:37:50 -0700 (PDT)
X-Gm-Message-State: AGi0Pub+SYGIGSVhSen1l2wWLJ67eDSnKmfmKAMfMQaARE9lS3ZpZCby
 lJQpfPxScpdUWIiBCDNSF0b09Eg/jck9ORd19SA=
X-Google-Smtp-Source: APiQypIy0ivVXkCT3c5B4I5EgvFGLWa7J/9f8YYkIpCwUCnJWSFZ90o0xiJTmB7TdUw0mxevxdV5Wmq5dREViYtj/Ks=
X-Received: by 2002:ad4:4d50:: with SMTP id m16mr15688068qvm.222.1588887469634; 
 Thu, 07 May 2020 14:37:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a1m-zmiTx0_KJb-9PTW0iK+Zkh10gKsaBzge0OJALBFmQ@mail.gmail.com>
 <20200504165711.5621-1-clay@daemons.net>
 <f07c695b-5537-41bf-e4f8-0d8012532f64@ti.com>
 <20200506065105.GA3226@arctic-shiba-lx>
 <1654101f-9dd7-2e10-7344-0d08e32bc309@ti.com>
In-Reply-To: <1654101f-9dd7-2e10-7344-0d08e32bc309@ti.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 7 May 2020 23:37:32 +0200
X-Gmail-Original-Message-ID: <CAK8P3a07z=kauDKVJzroHyOZ1ZSqpqZA4X69XJ5QCQ4c6JO_pg@mail.gmail.com>
Message-ID: <CAK8P3a07z=kauDKVJzroHyOZ1ZSqpqZA4X69XJ5QCQ4c6JO_pg@mail.gmail.com>
Subject: Re: [PATCH v2] net: ethernet: ti: Remove TI_CPTS_MOD workaround
To: Grygorii Strashko <grygorii.strashko@ti.com>
X-Provags-ID: V03:K1:YHfIP6cWUwPnO2ZZvy1RotxY9OsfBFD0f9Q7RDxsp1WM1jGc/My
 AdPhHj1xKzvVdk+CJmwgSyAaDlP5FtfMYFd/U5BkSd4vyKnKe+8KRZ5r0AWQcxQ7MTItT/8
 k80k4eakgRCDnCV4MWTgnTbnSu4gkrF4EJldQFeSzsTXlF81LeYOsDCI6BK5YvwVNtbEsV3
 U51r2veDJvwaXcx7/0AxA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:i9f3dfQr+oY=:GvnBti41Txiw1IASn6IIzV
 fOyh5Vvvv+/rC+cQ7diAbcdV8PjSUcNHQkC60OozC+pHzzo7gzQMn6j2uFgv/E65YFSbeiZBF
 ylFioqYkMMmLx855ENy82CqmVCNetafHcvE7BREnOnuUIvXKH97+HXyxu8aOtcB6JJvPCOJHk
 HuEdMVw2i+LxFDqbfU0fNRtK37325Ypxf8QdTCJYcuo6Uu69iBYhLWg8AW7RWNyjJLrcE4Rvp
 CmKJO/UignkUqNpj+g8snViV0kOKRMjwFmg5u8EV62OIYbTioEdXck6IZiaYmlUmkOfNloOj+
 5MzBiGKSUwBhlS9TTiRUC3gu8EsN0J+sI2AapymPjCA9xjqW9BzrMGKH1bWxzbBwzGv3lbPtv
 nbGYdnc5wiREwFHV+UC/sXiZNEHkD8zM9F0iXcGRM59KX7/ZSu9ESsU3+7Q4VaowKWYIkjWom
 SLZTuPRbCpPwiAesCB0CYwW8yxpbXIUPacNMenlHf83X6pK9Yf2AkVv9XaMB3+NsDytd74/8z
 cATCclqD+l9gCYgqh7u+4f9Nbx/Z8wsFPXgI8FqlnKxIMgTMbPux3uhAQhbYuJn6Otv7No+/T
 GmSRO4+1NQx5rN8ECa3r5zpoL1gGXI7gsbhsuXjQ0VjMws3cPLFvssF/clmgPcewCBnGR13CE
 KvkLO//RRQD4o3na2w001bPbrZKpY8pspnxE1+9kM/IJDiisG6Zs1Qa7dkcsimastHAO+DAbt
 cy4cdc5Ap0qDGpQx/GzJHshqH6OdylPXaZ7NzgobbUJK1Shzw0RPnuwcZaybibBehcvuB8vlr
 8y0VFxGsQcxiIGAq97rXDrtiBBC/rOg9c5dJuySyGEa8NFVB34=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_143753_914664_C9F1DE9D 
X-CRM114-Status: GOOD (  22.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
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
Cc: Tony Lindgren <tony@atomide.com>, kbuild test robot <lkp@intel.com>,
 Russell King <linux@armlinux.org.uk>, Krzysztof Kozlowski <krzk@kernel.org>,
 Murali Karicheri <m-karicheri2@ti.com>,
 Jesper Dangaard Brouer <brouer@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
 Kees Cook <keescook@chromium.org>, Richard Cochran <richardcochran@gmail.com>,
 Santosh Shilimkar <santosh.shilimkar@oracle.com>,
 Clay McClure <clay@daemons.net>, Thomas Gleixner <tglx@linutronix.de>,
 linux-omap <linux-omap@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>, Andrew Jeffery <andrew@aj.id.au>,
 Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Networking <netdev@vger.kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 6, 2020 at 10:57 PM Grygorii Strashko
<grygorii.strashko@ti.com> wrote:
> On 06/05/2020 09:51, Clay McClure wrote:
> > On Tue, May 05, 2020 at 10:41:26AM +0300, Grygorii Strashko wrote:

> >
>
> Ok. After some thinking and hence you commit b6d49cab44b5 ("net: Make PTP-specific drivers depend on PTP_1588_CLOCK")
> seems was merged in net (not net-next)
> 1) for-net: defconfig changes can be separated to fix build fail, but add change for multi_v7_defconfig
> 2) for-net-next: rest of changes plus below diff on top of it
>
> diff --git a/drivers/net/ethernet/ti/Kconfig b/drivers/net/ethernet/ti/Kconfig
> index f3f8bb724294..62f809b67469 100644
> --- a/drivers/net/ethernet/ti/Kconfig
> +++ b/drivers/net/ethernet/ti/Kconfig
> @@ -49,6 +49,7 @@ config TI_CPSW_PHY_SEL
>   config TI_CPSW
>          tristate "TI CPSW Switch Support"
>          depends on ARCH_DAVINCI || ARCH_OMAP2PLUS || COMPILE_TEST
> +       depends on TI_CPTS || !TI_CPTS
>          select TI_DAVINCI_MDIO
>          select MFD_SYSCON
>          select PAGE_POOL
> @@ -64,6 +65,7 @@ config TI_CPSW_SWITCHDEV
>          tristate "TI CPSW Switch Support with switchdev"
>          depends on ARCH_DAVINCI || ARCH_OMAP2PLUS || COMPILE_TEST
>          depends on NET_SWITCHDEV
> +       depends on TI_CPTS || !TI_CPTS
>          select PAGE_POOL
>          select TI_DAVINCI_MDIO
>          select MFD_SYSCON
> @@ -78,11 +80,9 @@ config TI_CPSW_SWITCHDEV
>
>   config TI_CPTS
>          tristate "TI Common Platform Time Sync (CPTS) Support"
> -       depends on TI_CPSW || TI_KEYSTONE_NETCP || TI_CPSW_SWITCHDEV || COMPILE_TEST
> +       depends on ARCH_OMAP2PLUS || ARCH_KEYSTONE || COMPILE_TEST
>          depends on COMMON_CLK
>          depends on PTP_1588_CLOCK
> -       default y if TI_CPSW=y || TI_KEYSTONE_NETCP=y || TI_CPSW_SWITCHDEV=y
> -       default m
>          ---help---
>            This driver supports the Common Platform Time Sync unit of
>            the CPSW Ethernet Switch and Keystone 2 1g/10g Switch Subsystem.
> @@ -109,6 +109,7 @@ config TI_KEYSTONE_NETCP
>          select TI_DAVINCI_MDIO
>          depends on OF
>          depends on KEYSTONE_NAVIGATOR_DMA && KEYSTONE_NAVIGATOR_QMSS
> +       depends on TI_CPTS || !TI_CPTS
>          ---help---
>            This driver supports TI's Keystone NETCP Core.
>
> It should properly resolve "M" vs "Y" dependencies between
>   PTP_1588_CLOCK->TI_CPTS->TI_CPSW
>
> On thing, TI_CPTS can be selected without TI_CPSW, but it's probably ok.

I think that solution is reasonable. I had come up with a different
for when I ran
into the build failure, but I like yours better. Here is my patch, for
reference:


commit 94233d78655876f735189890eb40ef33c49e8523 (HEAD -> randconfig)
Author: Arnd Bergmann <arnd@arndb.de>
Date:   Thu May 7 21:25:59 2020 +0200

    cpsw: fix cpts link failure

    When CONFIG_PTP_1588_CLOCK is a loadable module, trying to build cpts
    support into the built-in cpsw driver results in a link error:

    arm-linux-gnueabi-ld: drivers/net/ethernet/ti/cpsw.o: in function
`cpsw_probe':
    cpsw.c:(.text+0x918): undefined reference to `cpts_release'
    arm-linux-gnueabi-ld: drivers/net/ethernet/ti/cpsw.o: in function
`cpsw_remove':
    cpsw.c:(.text+0x1048): undefined reference to `cpts_release'
    arm-linux-gnueabi-ld: drivers/net/ethernet/ti/cpsw.o: in function
`cpsw_rx_handler':
    cpsw.c:(.text+0x12c0): undefined reference to `cpts_rx_timestamp'
    arm-linux-gnueabi-ld: drivers/net/ethernet/ti/cpsw.o: in function
`cpsw_ndo_open':

    Add a dependency for CPTS that only allows it to be enabled when
    doing so does not cause link-time probles.

    Fixes: b6d49cab44b5 ("net: Make PTP-specific drivers depend on
PTP_1588_CLOCK")
    Signed-off-by: Arnd Bergmann <arnd@arndb.de>

diff --git a/drivers/net/ethernet/ti/Kconfig b/drivers/net/ethernet/ti/Kconfig
index 4ab35ce7b451..571caf4192c5 100644
--- a/drivers/net/ethernet/ti/Kconfig
+++ b/drivers/net/ethernet/ti/Kconfig
@@ -79,6 +79,9 @@ config TI_CPSW_SWITCHDEV
 config TI_CPTS
        bool "TI Common Platform Time Sync (CPTS) Support"
        depends on TI_CPSW || TI_KEYSTONE_NETCP || TI_CPSW_SWITCHDEV
|| COMPILE_TEST
+       depends on TI_CPSW=n || TI_CPSW=PTP_1588_CLOCK || PTP_1588_CLOCK=y
+       depends on TI_KEYSTONE_NETCP=n ||
TI_KEYSTONE_NETCP=PTP_1588_CLOCK || PTP_1588_CLOCK=y
+       depends on TI_CPSW_SWITCHDEV=n ||
TI_CPSW_SWITCHDEV=PTP_1588_CLOCK || PTP_1588_CLOCK=y
        depends on COMMON_CLK
        depends on POSIX_TIMERS
        ---help---

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
