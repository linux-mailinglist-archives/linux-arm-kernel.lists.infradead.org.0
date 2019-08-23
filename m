Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A96A9AEE2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 14:14:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:To:
	From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7wJFJM1P++idKNnPEZRPLONsZTshGUkO2/lb499d2Cg=; b=XTFLd0UH6LTFf8
	+u1LgOggzLLPBhcm/7fn4R8GrNs/B9LbLNqBJolNazM/L6SQoRorAFbbeanwG1a2Q4W/8AGUjynbc
	Si0eCkvg8XQAk0fPZMmCvgdhU904gi0y+D/2xLGnspd9f0JquvR+aW23Ghp5VxK5rtSJdeZIc9b/P
	FZ0mHPfSLQyc/AmHw2JUQ6yhXQK3d79clcb9wQ5ti3tLSOVA4BZaFcetAzZ5ZEDqJjG/NldzRPkbA
	S/GLGxKl26lUgJxWikzHhgDBa/6SLahFQ1Bv/4TXIFHRaemis3LzFh6LJgYjuezMNWhDPgf7nNuzU
	u5P98qXgUn42TC2OKIdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i18T3-0003UO-8S; Fri, 23 Aug 2019 12:14:57 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i18Sq-0003T5-1K; Fri, 23 Aug 2019 12:14:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566562433;
 bh=ZZeV6qRtSW/Hn8aQJ6GSyIcFFJLdxp8khErjnJb6tDY=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=FBQpYh+kIJbWDHnjvns4r0qIa5UOO4cbX3d0pJfuKJQ5y42tn0Tk1LWViStDHVUJ0
 l8u0uHxjhi1p4zou1hzwKGXjSAzdCGQY2wrJ5xNMe8gJqqMi9fLM1Hi8HCbLuWtPgM
 VE1fJPnOd5+1wXqEm283z06cO2yt5UAm9k/d7yAk=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.154.8] ([217.61.154.8]) by web-mail.gmx.net
 (3c-app-gmx-bs11.server.lan [172.19.170.62]) (via HTTP); Fri, 23 Aug 2019
 14:13:53 +0200
MIME-Version: 1.0
Message-ID: <trinity-1f82bff1-535e-47cd-9a2f-8faccb56e356-1566562433314@3c-app-gmx-bs11>
From: "Frank Wunderlich" <frank-w@public-files.de>
To: "Hsin-Hsiung Wang" <hsin-hsiung.wang@mediatek.com>
Subject: [BUG] [PATCH v5 02/10] mfd: mt6397: extract irq related code from
 core driver
Date: Fri, 23 Aug 2019 14:13:53 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <1566531931-9772-3-git-send-email-hsin-hsiung.wang@mediatek.com>
References: <1566531931-9772-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1566531931-9772-3-git-send-email-hsin-hsiung.wang@mediatek.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:nr4dyiSrd5gDD/bbRxF4ZEMIgz3xepFd/XlrekfNAvjvFi0Rx9xJ40d++NeKsHyt0x2if
 Vsxhi9F2hKxfL2TtgZhz8QB3wGKc7O4PkkNfmHp2rkd+cyNHuOeuvgv4tTWEc5vz/AKmz43rcKVO
 w2jtE9MncIXl4dzU+xzojsi78V+giOD8SsFFuIaVLPsJYTcyUSiy3wte1lI3MMA1l7eViGEXQQXU
 yCKnXLU87YTlbIylJbH+NPl9SoVc0aFsk0n3Hp4z+x5ZYnWHl7jBQ13pt2nLpkqQaYEj6njm7x2i
 +Y=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:FnVj54k4t1g=:xdot20YBEqJE3Af3zCaBWN
 Bhkf7wY8DCiRL/dAZBYCJ+tX4aoZA6MWAIBeFyPLOS1gVGIbxCzXRz+7jJbzi3VdLA9lLq9VX
 khKYQ3M03zz3DK/k4cSUE8BNkY5STJDWdOarnUPjWEFbYi1sAIMrxEhc55jbnAKL59/Ek4dl9
 WROreyN+6//0XzUk7kMUjeMmqPwOVKQXW4+xCzS3i8Yh3b2Jv033NVjhDfxHG5BLsJoW6BOcO
 nO+aobMhP5FqUb2aBCnQ9sPjA0Xo9pLiC71DAGgfe6kPNVpeP7Qss6j604hQqk5rTv0UIi6WK
 mR+UddvyW9pHXMhIWZdVnEZ1fAQxXsZdoRKQThlZ1Oz9o8iUca4ES+4R0x89lOMQ4Q4kM9/8H
 Cp1J3hL8C5iVpG5JsNsxqV3BVXZBCYZkpCdB+a6lCjEbkMPoB78sINVR3smTfETnHbq9WkbL0
 EV/uXYkwijeRyfx/7dh++1bj1hKeIaLfrew2OuZWysvrQdgBQxTrlfmWvq1olPIdBqiNB57rj
 oRsUMxl9y9Ol/SJtBbnbnADmPVLNlN+7wgl6WaWyNaBVg/6Gnk2lOf9G5P4zD1MDH6lRJ3vU2
 Un1VhrxjKj6kjzX/bMOI1VupE+fMVk+urJQ3DefrmrYUi88bbyplr1v4M8QpGaZZQM6zEtPhD
 +pVMmTPI6cM2yQC9gSvpZ6ikWI161WUqjQKjzXdXKLxy0Qg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_051444_380619_41B4DED9 
X-CRM114-Status: UNSURE (   9.34  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org,
 =?UTF-8?Q?=22Ren=C3=A9_van_Dorst=22?= <opensource@vdorst.com>,
 Lee Jones <lee.jones@linaro.org>,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>, linux-rtc@vger.kernel.org,
 devicetree@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, Alessandro Zummo <a.zummo@towertech.it>,
 srv_heupstream@mediatek.com, Richard
 Fontana <rfontana@redhat.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

this commit breaks mt6323 pmic on BananaPi-R2

https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=a4872e80ce7d2a1844328176dbf279d0a2b89bdb

resulting in this message in dmesg:

mt6397 1000d000.pwrap:mt6323: unsupported chip: 0x0
and multiple
mtk-cpufreq mtk-cpufreq: failed to initialize dvfs info for cpu0

see discussion here:
http://lists.infradead.org/pipermail/linux-mediatek/2019-August/022505.html

after reverting this one the errors are gone, please provide a fix

regards Frank


> Gesendet: Freitag, 23. August 2019 um 05:45 Uhr
> Von: "Hsin-Hsiung Wang" <hsin-hsiung.wang@mediatek.com>
> Betreff: [PATCH v5 02/10] mfd: mt6397: extract irq related code from core driver
>
> In order to support different types of irq design, we decide to add
> separate irq drivers for different design and keep mt6397 mfd core
> simple and reusable to all generations of PMICs so far.
>
> Acked-for-mfd-by: Lee Jones <lee.jones@linaro.org>
> Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
> ---
>  drivers/mfd/Makefile            |   3 +-
>  drivers/mfd/mt6397-core.c       | 146 --------------------------------
>  drivers/mfd/mt6397-irq.c        | 181 ++++++++++++++++++++++++++++++++++++++++
>  include/linux/mfd/mt6397/core.h |   9 ++
>  4 files changed, 192 insertions(+), 147 deletions(-)
>  create mode 100644 drivers/mfd/mt6397-irq.c


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
