Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89FF21ECDE8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 12:58:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gxeo/Q6q7dIeC5gF2TNDsMdgIRdjcnc1XaMK5DB1PlE=; b=PeMjQU/tUXXJcU
	qdcLXhrku7kY/UPC78DqsZvYuS7nidsIBa6JkgzSK6+bRiAjgmOjJS3bFHs2OrU/3CTSDATOooY6j
	og/epYJprf/qDCsgXNPIN5dLKJrTXfmO19mtAIAVFdzf6XS1pqxJ1Il5obJKi02wx11zAKJralGeV
	JMUk0c1CYVC3xpFV7i/Aok7Um6rGc+dExYf6lyqsDjIuEycXoNWL+pfNWRAQHda3c4dJhGtc4DYil
	JSGIUZgDO3Cg8P5L+WRGY3jjfI79gH4n94s3GNG/DZFEilZGPYy7Me5SbxugDrwXGdWNk+djw04vU
	2uXXEf9NZQV6jgMdQZpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgR6c-0007yF-Q5; Wed, 03 Jun 2020 10:58:46 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgR6V-0007x1-SX
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 10:58:41 +0000
Received: from mail-qk1-f178.google.com ([209.85.222.178]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1Mrwnt-1jABQK18q5-00nxqs for <linux-arm-kernel@lists.infradead.org>; Wed,
 03 Jun 2020 12:58:33 +0200
Received: by mail-qk1-f178.google.com with SMTP id g28so1657418qkl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 03:58:33 -0700 (PDT)
X-Gm-Message-State: AOAM532IAt37cylzZa4dur/OYCmUx15KF29WKCyn6qJt/SFWN9icDuBH
 MwOzX5bgd5e2IHy6XSdu2yQ9VWvweUaE1yDMc28=
X-Google-Smtp-Source: ABdhPJwp4BruVv7x5KWHmKJY0GqISo7xEiXCSVQRm9DX9mEfuj1pqEjlD0cOd9acGIKxlDiPqlWzDUxi/5J33dKl6LM=
X-Received: by 2002:a37:6188:: with SMTP id
 v130mr23821454qkb.138.1591181912135; 
 Wed, 03 Jun 2020 03:58:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200408160044.2550437-1-arnd@arndb.de>
 <CABOV4+WerpJqsy0-uBPBZfpnDaPn56fn0Zvv1aMUJJSjEqGhAQ@mail.gmail.com>
In-Reply-To: <CABOV4+WerpJqsy0-uBPBZfpnDaPn56fn0Zvv1aMUJJSjEqGhAQ@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 3 Jun 2020 12:58:16 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0ffn2wtWB=bogi78MmW_8ZvNTHneVMicPU7AW+s2tmCA@mail.gmail.com>
Message-ID: <CAK8P3a0ffn2wtWB=bogi78MmW_8ZvNTHneVMicPU7AW+s2tmCA@mail.gmail.com>
Subject: Re: [PATCH] [RFC] clk: sprd: fix compile-testing
To: Chunyan Zhang <zhang.lyra@gmail.com>
X-Provags-ID: V03:K1:8asQR3SOiNVl3IvyzIRWFlUKXcbLzq8FHjF/mYhPJB4IFxV1TNG
 pBKOWRspF7DuoqccYhW1hiDnqkqUvQwjTpI9CIfCpA8/DIMggDPzj3n/d33Lj1wdIizBGeT
 j9owEu3l5MqwKaNElNwt++RfR4vQbm//BdcfdUI8palmLT2mNxmqPdfFhOD09dPUCOHNFGE
 G54Nta25YoaPXkPdWQXlg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:8eAJxVrMoXk=:yKUIQLbWXkdooq1LCr/qtF
 i78dzfB+k7bmaMwHpGBslba0nvsaMm+FSw9VghoCjDbwyxgeKjEE1ORdkastio16XA68P1SMP
 8I9DTpOpvoLcT2jc6cZrPdUT6P/EIfZGSNE5RB+N2UjELH41jEXrDB6Xjshkn7B1ItVfLt6Cq
 2NTu7pVmxiKselbzz/Ff5kptVza2AaDlbfmiylI+B79k9qTdfjLFHZ03ubME9GbqSH+2E6opl
 mF3lK0Z5nlO+SLmsucwOqvXbTocnMrSAZvfW5vfU4uFINw7wI/Qmy8rasJsyvXCoFbncZTMIJ
 ecIqjx2reIqqxwQK2zdUiXV/Ciq41N0eB9d2Zp3K297Tj2keVALXdhrd1n63GgOvvCRnnGSvD
 wy5sFZF70d4ybcJg/XghGVlnzwWQyJwOsCasRMLWybggi2OagFttm8a7R0wSTb08Plon4Yp9T
 npnLmFgdACWnRIKuUKiY2y8fHt8b31GnMlripY8GxWn2nrsucgUlptWmjHMEVdBt5Fb5ZMYZb
 kltEV2xJ8RYbH2rIM8yK6mIVBEPo4UWpoL8tCPZIGk+TtH4RvqgPlEDe2+ptLcRGW25534fdt
 6YRV+5KRrD4QRRCMcM1kwTr/ipx0Scu11hZ3nNNap3REgEz/9xxxND75L0Ar5VhiK+ml0n2fq
 VhsjKCav9ok7MB/relSt+ucyDi07lrBK6zqxM/I/lVp53YsO/yxYE1GZAyzDxEk3O5jkacL/2
 rGHxGbvkY1t00nEc8+HB3sPvYsm/HMxLksvGYX0R8LHWY3E8FMihJoQDIBpJhFmw2btTG/nXW
 XoqlvmlfMru/o20g9vsi91PwbEqzplFLspggQzR6DtrB0x5Yik=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_035840_213501_F835C0F4 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
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
Cc: Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Michael Turquette <mturquette@baylibre.com>,
 LKML <linux-kernel@vger.kernel.org>, Chunyan Zhang <chunyan.zhang@unisoc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Will Deacon <will@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 3, 2020 at 11:17 AM Chunyan Zhang <zhang.lyra@gmail.com> wrote:
> On Thu, Apr 9, 2020 at 2:57 AM Arnd Bergmann <arnd@arndb.de> wrote:

>
> This patch seems not been applied to next branch? I haven't seen it on
> linux-next.
> Arnd, can you please pick it to your tree.
> In case you need my ack:
> Acked-by: Chunyan Zhang <chunyan.zhang@unisoc.com>
>

Ok, I applied it on the arm/drivers branch now, thanks for following
up on this!

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
