Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0048711F2E2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Dec 2019 17:55:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ov1+ik6dRl9THqSBj/WWrNfVZ1cdY/O3A/wcVqHvCOM=; b=Ll+IKyRp4SzYAB
	HgyNNw2TBJO2iOpDX5Y12q7DA9fN270kJmEqU2UUftYY4Bu0unADShhiX/4oJaNAJ4DcLLjjuCEMP
	n0ndx9Sq7n3oVByyRJEc3XcL0tHXxqALu65b2cpnx2CkdLMgkRqxawEwnaOti5cBc4Bb236V+zq3F
	t+CWOgViksI3nGvTD5rfPoH4K3X12/ksWgWsO79W67dfdmdas4lHkBkbwAS6wQMFmPpekD0LbQzbt
	XLbYNE1jwwv417xJdDcJIXcEF7i4D+7LzWC147zAlNqtpj4rWY0zBxGQhF15nUL5af+uhEEskPY4r
	rMIRBoCabZ/MyFCnPYQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igAgz-0002lf-NP; Sat, 14 Dec 2019 16:54:57 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igAgs-0002l5-Bd; Sat, 14 Dec 2019 16:54:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1576342475;
 bh=+BbVCIHuNmxom49QgIOa+rVhYJNXL05jIfaUgchsleA=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=VmgSSuFHso6sSPe4dL2Mrpy3+5pVvrn50Sn4palz5AuuOf2wv6/ITivaMBffJ4kap
 jMBIEwsB3TlD/tbecm54YNYHsbGLAvlGbxhxj/hsL1AZrpEtgicjGVYu0CSsqapeoc
 DfMgcOWquAXtxcoVSkc0k0fb5L3oMCBRbVNcISXM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.176] ([37.4.249.154]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MEm27-1iVTBh3EPD-00GMNY; Sat, 14
 Dec 2019 17:54:34 +0100
Subject: Re: BUG - was: [GIT PULL 2/3] bcm2835-soc-next-2019-10-15
To: "H. Nikolaus Schaller" <hns@goldelico.com>
References: <1571159725-5090-1-git-send-email-wahrenst@gmx.net>
 <1571159725-5090-2-git-send-email-wahrenst@gmx.net>
 <12244E4E-A1A0-4EE9-ACD3-EA165D9A2C79@goldelico.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <f6f38340-2555-7907-6b89-748c34cd2978@gmx.net>
Date: Sat, 14 Dec 2019 17:54:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <12244E4E-A1A0-4EE9-ACD3-EA165D9A2C79@goldelico.com>
Content-Language: en-US
X-Provags-ID: V03:K1:ELFNI87v57TSREqtXP96vdgImKzkkUHbI3qOsvnsOa/ruWSt74b
 i3rbtP0n/I1A1A6c5KebrDoY5ezip6rimI8jNOnmroTBHPhM1nprkvAIBeFGIhJsLeAGm1X
 S/geNjiXjtNFyhU0kFK+43LQ/jrPxKdXtOUfuv2lKmK87n0TcmYzqe9ekafdHaZerwFDKur
 Omzf9vF/uSNesLYbkpAcA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:UNbQGgv5KWo=:paK+qqmVLcAsfK4nh6VZO0
 8Suk8svgYYGTWkrUvzlY67n3dtDx/blwhgLOK1dsUBRMsjV9Odbj88HMkfXfSEuv4c7DTC6Cv
 QJdSmkzM6zGDDYEJeA9vc6ociK8vnobicFTHxYfLJHZYnEAZBXp/t2jwmSUljDQ0M4pWk3PR5
 09onjuoPEvS89CqontZNOiLb42lRJzYM7M1xAwyygIqePbv/HY/QteCZ6jnO0mh/OMIPmj/uq
 YAMYwYsLDuv8iqVM8UY6vJsFaloQOF9LztiOnAcrhAORf7ukE0w5A/QHiIWHfFV4VT30nr+S1
 sNDfqsNziqIu8ng3WcUodW5j+L5HyUMtXZqfc0ElpC3ltiMNMrrDMcmhT9swK2tnU8doa/qQA
 /Kbafv/Bhe5/FSvQNEabGw3Fo2GWp6y1YUiQOlDVHyScwXOHCp7pPO8BrT1+YSovQ4i3msNTC
 dmEgbMe0DPdaYEadIRrhdYGTcDtd1sBYcc2UUY8FFmRr4uv8keqF0u58Rk2DX7eTYD2ElP4nb
 t3BQc/7rzK9DuPx+A9Ys4r/FQ2f5Iy9Vy5WsHCyTbTZ5vn/S6pX7iUQoxfbL8KHGQwcI6q47E
 zkDZyncaf5dTunui5SNjutSSdbmfMs5UIJjyokftX23qr7GJAADpPGOIz7lqbJplN6SvkvTFb
 tl0pvwVOKsHQU1BB8XGrkia6iL5PUz6fPACUfs2p7gkNUWHPDd78a6+IcPfuRVsrtGWKLknEq
 tIH4hwpGX5mAsPciQ0Np4KGrYfgE+/CY7vGpZb8OKmxwivCsjXp7K6w7HzHHG7fOkgoS4e7ye
 8lhUN4bJ6X0AknBZbiTst2Kb/TMaiYd8LGy9ZCSli/EDCnHTRC2/UFUikGjGcfScqxLwYLvup
 79VOcypVfo9q3FvvbhRBIfJdoFvXA3hvKLsbPfl4A8XO8xLKMLqTYDDIbCzRvsH4FSWxBjagm
 TtSkNSyPH2yEJMhMil+cBFUM1GQwbYdf2KHlIoRoc2IZazN0l6LzpI9V9cDOzsgNZ+Ep8oACr
 1O4K4SeKqAmzq1ykgAJMU4mkz7/jJIGnDDitNqfc3iwjxmatONfnPexO/AaILszW4GHsYuEDx
 3Ch02WHDRbWq2yOtxc/rI9EDBucPmATx2nKARHdzt1Mtk1BfNnE4cMkMolRiJ15mjl/X6t5p2
 EOp6U4068ajxNAHirzqBtpaKRnrg6QQV9+lRt0yNxlVBkgQv/WEeeIB3Qg8Nv2fytg0R3pd+7
 v2cdmaRPI09hGYnPalXy4KvlWb/GPVvN6fgH5Uq5Ds2bt52DbXJOL0ddrJeU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_085450_728265_E9E0D3E8 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, Tony Lindgren <tony@atomide.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 Linux-OMAP <linux-omap@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nikolaus,

[add Nicolas as the new BCM2835 maintainer]

Am 14.12.19 um 11:54 schrieb H. Nikolaus Schaller:
> Hi Stefan,
>
>> Am 15.10.2019 um 19:15 schrieb Stefan Wahren <wahrenst@gmx.net>:
>>
>> Hi Florian,
>>
>> The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:
>>
>>  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)
>>
>> are available in the git repository at:
>>
>>  git://github.com/anholt/linux tags/bcm2835-soc-next-2019-10-15
>>
>> for you to fetch changes up to 781fa0a954240c8487683ddf837fb2c4ede8e7ca:
>>
>>  ARM: bcm: Add support for BCM2711 SoC (2019-10-10 19:21:03 +0200)
> this patch has finally arrived in v5.5-rc1 but it seems to break
> multiplatform build.
>
> We run a distribution kernel that supports OMAP3/4/5, i.MX6 and RasPi 3B+
> but since rebasing to v5.5-rc1 the kernel hangs after "Starting Kernel ...".
> On all ARM devices (incl. RasPi 3B+).

i wasn't able to reproduce this issue with the RPi 3B+ so far and i
don't have any OMAP hardware:

Linux 5.3 (bcm2835_defconfig) + FW 2019-02-12 => okay
Linux 5.3 (bcm2835_defconfig + ZONE_DMA) + FW 2019-02-12 => okay
Linux 5.5-rc1 (bcm2835_defconfig) + FW 2019-02-12 => okay
Linux 5.5-rc1 (multi_v7_defconfig) + FW 2019-02-12 => okay

So please provide more information about your RPi 3B+ setup:

- VC firmware version
- additional bootloader (U-Boot)
- boot source (SD card, USB, network)
- kernel config

Did you tested the mainline kernel or the letux kernel?

Best regards
Stefan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
