Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6832BD4355
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 16:47:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tC4ZTopQej2YCjXg32Q+qqEYsup5v2WNSE9XopdpIjM=; b=btetpG3jgdkvu/
	c1MONbwLNelkP5rKbFkmP1TuEADZzklOby4/22OHxkOoxjj3ubz/JhYxqzsPNxi+/ZCJ5HL1VMhdx
	EgmbbkWDBXkhp+fElLnB9qGFFT2uG9ffniKSxo8hutnJ/K+KNzW4H5V69fFDTDKcLSFbuRQHrVDO6
	REWyyaja9QRtonleJYT24DjltC+3++pSwFNesSIoeTVJefLnHQUg/hvlt+lnI03Nx6nbqf5c4On63
	+c+Lu99hQ5piVUr9hh8IH+70jeKXRFifiky14aAHDhE+Vr409Q0bui9eJcR1llOi8nQUS9sykoa7G
	Yq7GGwuacis2W9uq+U0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIwCK-0000oQ-5P; Fri, 11 Oct 2019 14:47:16 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIwCB-0000ns-2f
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 14:47:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1570805208;
 bh=LsPU7W9YTeeBaQ9Wk1nYxmRBBhS6FmZXbYGQrLdCWI4=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=kUVy5s3ZlMlosv7ZEBoiXN7ipGuS6GzsCYYBH9N9FofjB91QgrCjzSP7bEVwCHR1s
 vTbkjn/eLneSSDrdXqnSZflxTxICnT7w4HfYvCq3f0uZtT+VXpHKiouICQm3KirYEI
 GZOQTMclM40dkl0pVN4JitZN13CwJDclyQWvWGt4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.112]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MulmF-1i25xj0SHr-00rqXH; Fri, 11
 Oct 2019 16:46:48 +0200
Subject: Re: [PATCH V4 00/10] ARM: Add minimal Raspberry Pi 4 support
To: Marcel Holtmann <marcel@holtmann.org>,
 Johan Hedberg <johan.hedberg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Eric Anholt <eric@anholt.net>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
References: <1570375708-26965-1-git-send-email-wahrenst@gmx.net>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <11857a63-252a-00d3-d777-aed1c515ec47@gmx.net>
Date: Fri, 11 Oct 2019 16:46:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1570375708-26965-1-git-send-email-wahrenst@gmx.net>
Content-Language: en-US
X-Provags-ID: V03:K1:NPnfcLzrB1pQn16JnjKeo8SoS3sJYtf2PAgJYi5A2u6+KvUP6yH
 4U0eloxlZaU7O+8nAy3MF+MmaZPiisXAB/TbdVu8P9LyadiST6MUQ9Qd8RGegUh7YnToTGz
 a2PJ8tovb7oJrb43vuHRzOA+QBlMzaAkcyWza8DiI9Lnm9Q5ZWsg6u1H2sNbncLs8JJe0tT
 uLrBVIMUDVzAfaPqyB0yw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:MDQs56KP1zs=:TkyJfzgmJbfegXhbTGl9Ef
 tcwvYSEQJD+fRvQaY1eKFini1uJ3disQP7nawDgJvlfh784422v+wGTn7mjNo3IdPluohtMgj
 hZdaFONFHwkX1dUw6CN8SVXtI1NZO2fbvCa6vZSqHbiUB88jnMHH9gt1fgpppb219rsQr7WyU
 1CREC3jExbHH27k5dG9vhLtMIZD/a/lYpMZWAkmM05ETOW1L2KuohDGRql6TxzsCnJGEYAAW1
 9Pwd8wu0ebKh3KQSig5Xi5djQwPkbEBDocWPD4luGPsY4N1efmENsAzcr3s1Vu5WwZoeZ8LsW
 MAtaZ2/Cmi4WWXIaaMUR3GVO9/Z31mMCgaha11LepXjo4uI3lNOfJb+eZHj/+NN+P+IDVpJ7j
 nUFWy2Lj1k6bl2ffOrsT64rT5eD59F/ZrixVtn1ljQDefv3UZMFEoYsKxt5cm8JrjWrvoRw8z
 hsLYMKu+7MlblFV+TRs9oIQHMB5GWHomI18Ptx0A3Bf0RTywHC6xbMGRzPsc0I0RWx4Fd6X++
 G+vLQI9AF6EN4qzPU6o2XnungESGfmEBBjviEV63mH3PVYyYjlaYKWJh5pwZKnf0QamWKZvXM
 0y/GKGJxwU58DBXLToDCMhLqJv/0LMJT9UvAhOqpznWGpBsM/xq26C/cMHU5km1hPTX9P3h8A
 uYQkQLB1E5bgRsl61Kc1bvIts8FT9GQz8qtD8TivQycxpnTQLrgykYrtq9FdOC6hI+ZeUW8T4
 T2gTDlz3g5af3+5jDv22ts69zAZ1zZS1puSqtIxPHgBJRj/+ce/Fii6HwK/3M2BwK4ohRHdjj
 mOuM4CcqFKmhnzErwJQvdOis1jLA2Nr/ecXTXxxJWfvdjSZ6uCj/KmUkUMeg/eLdhgvHfI9Dk
 LyylgVxRNEp2p/A4tAP1cUtcqFToWC0ChWGi/ft+sNjWVABwB7rPg71PxKmhiN/GOxQHqWW2A
 dz7+yZvSFv+EXhMHGuIVIsbQfniisGS3dVZzm3iXQZfjXiAnFzW2mViu2UcBNpT80O4S2q+Lr
 YH/19eDVK02vapneIW0N4/HNcPIJ8rbQeo3ne2u+B9FXksy6MCfY1kQIs6D9JxHi75M2K1D1V
 NXbXD+Tz5SWffNOpYnAodl+z8ufj9PYRivIl8b1QT+0FXYfwG/dxQEkSISfifCEm3p78QfkKU
 tEU4qar+wp8X4qufZ6rydwTvffd8Lrpr1Yw4GXoD3uk+0u7ICs0M6RN/j3soe1YpzjhMeMjrA
 wiCLMT+6b3pNmLT+3t4vr+qLqfD4ILYr4nMTQA2vKgkVUm7jqFIM+9kJuWew=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_074707_456880_AF1B16FA 
X-CRM114-Status: GOOD (  15.83  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-bluetooth@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 06.10.19 um 17:28 schrieb Stefan Wahren:
> This series adds minimal support for the new Raspberry Pi 4, so we are able
> to login via debug UART.
>
> Patch 1:     Bluetooth driver fix
> Patch 2-3:   Fix some DT schema warnings
> Patch 4-5:   Prepare DTS for the new SoC BMC2711
> Patch 6-9:   Add Raspberry Pi 4 DTS support
> Patch 10:    Update MAINTAINERS
>
> Unfortunately the Raspberry Pi Foundation didn't released a
> peripheral documentation for the new SoC yet. So we only have a preliminary
> datasheet [1] and reduced schematics [2].
>
> Known issues:
> Since Linux 5.3-rc1 DMA doesn't work properly on that platform.
> Nicolas Saenz Julienne investigates on that issue. As a temporary workaround
> i reverted the following patch to test this series:
>
> 79a98672 "dma-mapping: remove dma_max_pfn"
> 7559d612 "mmc: core: let the dma map ops handle bouncing"
>
> Changes in V4:
> - add Rob's Reviewed-by
> - enable ZONE_DMA for ARCH_BCM2835
> - fix spi reference in bcm2711.dtsi
> - fix bluetooth section in RPi 4 dts
> - drop "always-on" for armv8-timer
> - add necessary Bluetooth driver fix
> - add arm64 dts link
> - additional comments to the dts files as requested by Florian
>
Patches 2-10 applied so that we don't miss Linux 5.5

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
