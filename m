Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18CDC5F707
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 13:08:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:To:
	From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=owbYXa3PlDMmTUPVcj+wnjXTKefIyurp/sqAz+1TRpI=; b=Tc1O8XF7hJfin6
	ByYDCBr/ZFEQ5SjBBTeQ599d6DH1bv2gB0bpGVB8wn8w9VICrz7ZIccpS3+Apyf3Gt7Dgp+8E/kXt
	LKAHJ703g/EXa+/EETJsZ/bMrdlWYjJSaTbPdngpfllIL48jN+cGt/qz53jNdSoWI5lgeI6Mp2RzS
	NtNo/txd7WhpoujR5Q4+Se+A9fp79o65L5jP9Fa1LHIJSkF1O8a7b6ErpU5Fp2Az/vb9RDNfhpHRm
	3Cc8+e0hs6xCHjTTstq2nOgqQ/XeKtmF9COuC7RBqKU439y6q4t/S29hcFHtD02YnQ5zHDq5cq3Yx
	V5FEOkweCat0SCzVHEOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hizau-0002Ta-9u; Thu, 04 Jul 2019 11:08:04 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hizaf-0002SU-Sj; Thu, 04 Jul 2019 11:07:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1562238391;
 bh=3Q3Rn9eFMwtoWE9WbsG5M7mh69YDe97bVxTE0e3XikI=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=hF7KV0b0k9MO0eCa11hhB84VgY38o1UgfP9XoXh9W0FL20Pofm4zFCT+ZBNzePkav
 14Wt3RXb6wCMRiuMJ24xQlcrCZVQDz+mjRj8Ls1W25xaUORUNpEHb2tJE65L+DPPpf
 gCK+VbLSQCBQKt73QByyxit3P0OMtOjDVZfn1nW0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.145.121] ([217.61.145.121]) by web-mail.gmx.net
 (3c-app-gmx-bs27.server.lan [172.19.170.79]) (via HTTP); Thu, 4 Jul 2019
 13:06:31 +0200
MIME-Version: 1.0
Message-ID: <trinity-03acdbbe-a94a-439c-a65c-88c9e23a0ae7-1562238391586@3c-app-gmx-bs27>
From: "Frank Wunderlich" <frank-w@public-files.de>
To: "Ran Bi" <ran.bi@mediatek.com>
Subject: Aw: Re: [PATCH v2 5/7] power: reset: add driver for mt6323 poweroff
Date: Thu, 4 Jul 2019 13:06:31 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <1562234589.19751.16.camel@mhfsdcap03>
References: <20190703164822.17924-1-frank-w@public-files.de>
 <20190703164822.17924-6-frank-w@public-files.de>
 <1562234589.19751.16.camel@mhfsdcap03>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:vPbFhCphLzdAJgG78YBNH1wPbJh7oFoo8LA+oV36bAGkph3x/3EaLOXvOGXWjLu6ZuoCY
 1t9EybQy+LCu4aSmT+yUJo5gl8Ju4T8aDhD1DRZWAGO5rrBCojV17nj8QNVUS3FgBZoOB/x6EwMk
 drLnkkrdyxKyi0C5iFsbPEHAByrho90e2xWkGlSORq0gv/lot3Er0z+JFebfzw+jvTVy58qZ59vU
 OFGS3kjwGbj7yDISAqTouFNs/1tWYdh6AP0tfHE4RmZGo+FyPEmVTEt2HM39l5xlJ28M1vX2l6/i
 L8=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Gra07zN8xw8=:anb8VcMZFxuoE4PI1k2EsZ
 6A2Z2hjgSFeZ7jGOE6KrcZK9v+yo52ZoN0tlYxZOOKbHINVzp3poRWA+Y0klQCe/MtWS5Sz2t
 FFrWeA4bTFLT8Zh6YLDzz5McFFj06uC+BEhCk6+POvVdM+A1ivnLXs/zM9fEMzSu2Z1lOZFfP
 1g62Mmp+NcWh0pvZ3D1UHVuzeuIv2xmoaa6L5ycCXevI0/qtt9O4xdnayCMKVBGAV8XG/1/AP
 BSlGo6q9rPqvrLx9k8amtNjnzy+pULHb1guitUl/L36xWlRE6Mp/ONToGDNeLdisQoBlaPZhf
 EuJYuDwHhvZLwTEM17u5zqCuS4QUsUNyMHpjUqvel0YjuIKOA0iig4JPhQtaaxQdWn9gmTYWH
 zA5ssDqM8LoXMhR+PNKPCJshNNESr4i8h/kiMhApmBrrHRXKWAUwGcQ/A45734/Xq+dgU4RNP
 x3nB/e/z0rFDHVtQ9sfqqjpdC7aJ5VM6bGwJorkB+GmVpDHUuVpYot3U/ea9UBjQ6Y6WDb2dX
 doR+ISW3W5uQOZAvSnp4+1LbLmot8XyCaz8SSZj6/DgUIbT4Uhnu+i08F7zytFRlChd3TnWX1
 I3xq2GFqJbKREe56K8fPrPB2wqLCee/USnbdDcbyd6yAiWSR/DF3DlCZOKebkqIICZ4wF8Tv6
 YxN8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_040750_231922_C93E5DCD 
X-CRM114-Status: UNSURE (   6.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, Linus
 Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Richard Fontana <rfontana@redhat.com>, Mauro
 Carvalho Chehab <mchehab+samsung@kernel.org>,
 "Paul E . McKenney" <paulmck@linux.ibm.com>, Lee Jones <lee.jones@linaro.org>,
 linux-rtc@vger.kernel.org, Rob Herring <robh@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Yingjoe Chen <yingjoe.chen@mediatek.com>,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Ran Bi <ran.bi@mediatek.com>, Sean Wang <sean.wang@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Allison Randal <allison@lohutok.net>, Alessandro Zummo <a.zummo@towertech.it>,
 Josef Friedl <josef.friedl@speed.at>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Sebastian
 Reichel <sre@kernel.org>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Gesendet: Donnerstag, 04. Juli 2019 um 12:03 Uhr
> Von: "Ran Bi" <ran.bi@mediatek.com>

> We had implement MT8173 poweroff function in arm-trusted-firmware's PSCI
> plat_system_off() function. MT8173 SoC is using PMIC MT6397. (Ref:
> https://github.com/ARM-software/arm-trusted-firmware/blob/master/plat/mediatek/mt8173/plat_pm.c and https://github.com/ARM-software/arm-trusted-firmware/blob/master/plat/mediatek/mt8173/drivers/rtc) Do you think it's better to implement poweroff function into arm-trusted-firmware compared to hijack pm_poweroff() function in Kernel? Right now, we are doing the upstream of other PMIC chip like MT6358's poweroff function in arm-trusted-firmware too.

ATF imho only used for arm64, my board is 32bit armv7 and i (currently) do not boot up with ATF

regards Frank

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
