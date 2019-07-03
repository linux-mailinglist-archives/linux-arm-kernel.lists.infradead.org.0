Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5685E03E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 10:52:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:To:
	From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jFFP+Gj/rTO8FPSlpvGJT45pwClCutbWmk0QlTDVzls=; b=HWi5VVVyxj6EWJ
	T0xqolSADyFBhVYoqVFrt70D49IO/dOaI7ypjuzgHpIU5sOt17TxvDKLNaWe4UuMcZQ2Uj27C79wi
	/dwis6I9lzF62Yw0L6NMuiZrCPCutKf974XYKUfdkMLjBAugRzJMAkdl8xpBL5u0F3+VMsnGlP4IK
	a+3HgwGJXENcOOkW9CDO1iDMZg2i2sWRCQaAhluDtaOl5MTgDske+2b1h/vsxFhEg43PkAl5XFIkN
	4/ZxWrR6m/LDAzQJp7E/Dw6nXCSWPnzOZBSQ+OUTrIhNcBD0jeutQ3xNjITExcNQTUnYghcjmn300
	ZLRKc3L/SAWfrcBvDKyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiaze-0002Cy-IW; Wed, 03 Jul 2019 08:51:58 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiazE-0002Bg-DS; Wed, 03 Jul 2019 08:51:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1562143879;
 bh=9PB186LEloBouYC1p2ldmUewg113AS/sk7TTgnQz8eE=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=GP5yP5IwXwZWTpXfe8SA3N/3zIgAF+n+xBPjg9pP/80VsehK5SJFrQkblA+mcm8DL
 sUdghrvHHHWKKaCfmCJ0D3UG6/YDOjOQpxkP1ZLW5p34Vlg8nDHz2GbATIjAq4iZnF
 HMkkGm05EwVq93gDCm9rVb23E/04+chH5Y0S9mZk=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.158.204] ([217.61.158.204]) by web-mail.gmx.net
 (3c-app-gmx-bs07.server.lan [172.19.170.56]) (via HTTP); Wed, 3 Jul 2019
 10:51:18 +0200
MIME-Version: 1.0
Message-ID: <trinity-ca99ab22-eda4-42dd-b6eb-8e4bb5c99165-1562143878858@3c-app-gmx-bs07>
From: "Frank Wunderlich" <frank-w@public-files.de>
To: "Matthias Brugger" <matthias.bgg@gmail.com>
Subject: Aw: Re: [PATCH 3/3] add driver and MAINTAINERS for poweroff
Date: Wed, 3 Jul 2019 10:51:18 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <c1358da0-60a4-49dd-71a8-77e90178c9c9@gmail.com>
References: <20190702094045.3652-1-frank-w@public-files.de>
 <20190702094045.3652-4-frank-w@public-files.de>
 <c1358da0-60a4-49dd-71a8-77e90178c9c9@gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:JPZTCh1ZfJHpWzb5eYAk5s1kOodanJvlOtH0JoIL8Th5cL5eBNXN53MDJZG4Tiea1rQbA
 ZPZUQ2sgDFECxxKapNnBOheINb976QRPW6Wr+OzxgmAp/lN91irS9iqxWTnAZKTjmXV12PyN+sy4
 NbqHa0eaADVQOZFLcZBw3UAFT3quKZoGm9gT5BJ8AnNIp6Q2+Xhtg56dlrva6jfmPpBj/aPTgVlv
 qN998m7tH0wsHPJGQ0k3O8vu3SoNVkokqEOBJ0FoektvVCYGUVcdxc8BFFzZ+UHMiman3Qxnb3Kr
 1I=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:1DICHQPpQTI=:A+NaXAfFhjiJt8kS1grdXD
 I8q+xw9r5eK5Hs0XxMcq9YAmZoEbhl5ngXLZirqdMYPNCsnaKMeVeOGCf9SfEUioYjkiIUQZB
 TiTU8Tw6t6rLww2mYVN1zH/UGj6ISVUDdFgBQzicUwLNh7UP13UCGyLB+vaa+JHKeyjJhppkh
 BOkc62et0yP0yk/E6tM1TaT+Q8NjGJhKTNSJ4AR2VqJJKLaFVhE/S5qmusGjjOrn7imr1sP2J
 YWSqbIRWftYdT90MSZWM/nf5wB0aEcYxrwElx37L5KD4b1WAMyQSQCHqKYDuqkDnO6nhM4tzb
 VnWUJ/TP7MdswuWgS3pfMJr5XBXJkMnvTgVk0LTfAtgRqeIz2VeNu6nQ/ixPwXb91Wj7ozvzq
 yFfBYU/ahOjjVvEO01PVk+8Mkmf//BE6fUQMqH98N5YHiAXJiP9SzCkZ1r7FFSAa6+hJC3nJs
 pr6O7q1FU1E5qaHAM6+fUin6y8Ub+D5hgJ4C7Mhe7dAnun5Ww3Kx9D39Vl4lk6sFiVxJbDO1j
 SFZGpLKXUGusvNivSBCQDEA6xIf6PV3Cx3dTQdyTIE5iXnp/dPMTYDFgVmWmyZNl89b1elkg9
 sbM2p9+6MwlcJiHH4VvESL7N3bbu3YQlskn0BljRWyD9FjsUmDrJRvl1abkbvjegDrIJ3Ue/u
 BODs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_015132_786819_ADA0FDD7 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Josef Friedl <josef.friedl@speed.at>, Ryder Lee <ryder.lee@mediatek.com>, Sean
 Wang <sean.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathias

thank you for first look on this. Patchseries is originally from Josef Friedl i got some time ago for getting poweroff working on bananapi r2. There it works and maybe on another devices too.

drivers/rtc/rtc-mt6397.c and drivers/rtc/rtc-mt7622.c look very differently on a diff (you've commented in part 1/3)

maybe code is compatible but i have not the knowledge to compare this...maybe sean (sorry, that i missed you) or ryder can say a word about the compatibility.

> Fix the commit message. MAINTAINERS get normally send a independent patch.
> Split patches between RTC and PWRC.
> If not a new patch it should be stated in the commit message at least.

i will try to split this

> > + * Author: Tianping.Fang <tianping.fang@mediatek.com>
> > + *        Sean Wang <sean.wang@mediatek.com>
>
> You are the author of this file, aren't you?

no, afaik these is code taken from rtc-mt6397.c and put in a separate header-file to use it in multiple c-files.

sidenote on encoding/word-wrap. i use only "git sendemail" which afaik calls sendmail (no other mta like thunderbird or similar) on ubuntu 18.4....curently have no idea how to fix this...have searched before, but not yet found anything. if you have an idea please give me a hint.

regards Frank

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
