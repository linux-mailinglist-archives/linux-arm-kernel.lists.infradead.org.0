Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD0B9B347
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 17:27:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:
	MIME-Version:References:In-Reply-To:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WlOrfrX5CoPDrDt38hs5IomKMnem/pLQ6jcqIevgvO0=; b=JVIxVFujlhilQV
	2+s9skAc+grWNzUc5NlZWmM23kK4iP3PzKKkPTGuI4g7Yd7jwhRcEcL/8CCH7rcvmM8PYAP4vKu7a
	dJCsvV+XeEoEp6NeP75Y2aWbqgmXYTd4//fWZed2I7BklouMjKFHPV3OJtuWE0egeJRIAfWQfd6vy
	pzYoMeqlFLjbw3i9y5r1EWX3UoMHf6dSAKgi2txeF0tXPuk/mqT3G9qkXLS+hUaT+GAXVV6o6pvXF
	m+Kr4TDQP7Qo8f6lFJETNYX1QUKmqkwZ1hgsu3CiCmZaxsTm9dgd+z2LNYDtwfi4nhytUN3X/c0Z4
	bLaOwWMQ+G4dq09JqQiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1BTK-0008P4-PG; Fri, 23 Aug 2019 15:27:26 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1BTB-0008OZ-Ex; Fri, 23 Aug 2019 15:27:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566573994;
 bh=Zp3rIEiWFT/dze56KH17pc3w7hpd4V6pR+eI+ZXCu3M=;
 h=X-UI-Sender-Class:Date:In-Reply-To:References:Subject:Reply-to:To:
 CC:From;
 b=eF59Hom6dWe897cYMpJUjOA3BSPM1ZDhDFCb3zy4paWKzPVh/BJcTArszKqjkTZ4B
 LOmKbuy94EofNxw7Xl8vyes9csFFHJHpErD6QsnXBGdWWydUA/PanhgCcP5WHSz431
 oEtnvrbgYoOES0FgaZmmBKwoRE72BT3U22d7l9ME=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [10.159.16.108] ([80.187.106.162]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1M42jK-1i1BST3icq-0007yy; Fri, 23
 Aug 2019 17:26:34 +0200
Date: Fri, 23 Aug 2019 17:26:30 +0200
User-Agent: K-9 Mail for Android
In-Reply-To: <e8a918ab-3e7a-b487-db77-df28d56518ce@gmail.com>
References: <1566531931-9772-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1566531931-9772-3-git-send-email-hsin-hsiung.wang@mediatek.com>
 <trinity-1f82bff1-535e-47cd-9a2f-8faccb56e356-1566562433314@3c-app-gmx-bs11>
 <e8a918ab-3e7a-b487-db77-df28d56518ce@gmail.com>
MIME-Version: 1.0
Subject: Re: [BUG] [PATCH v5 02/10] mfd: mt6397: extract irq related code from
 core driver
To: linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
From: Frank Wunderlich <frank-w@public-files.de>
Message-ID: <0A87F427-2D81-412A-9549-09A51A021799@public-files.de>
X-Provags-ID: V03:K1:MlEGagT+FxNsAXYs/gx5WKMizc7kwSvyFUw/hTdq7YzFpwt6Zhn
 5UfK75n7wwRUKjmfPzWHnQelpZHnvazt0+9AFA28McB6YDZTZOTb05dAflzdvUC+CaTmUTW
 /7QG52/cIRR3NjqPis1bJEmb6ZhOUiAKyFf8r4seFicKLQ4zFS2VHUNEQGjBTeoLV5pdnLt
 6kS8NGzUhCnMMaKRP1gaw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:KpTz2cCVoPo=:Dl6DzB+tsFkVmbbzgg231O
 64z4l1siG51mmum9OGGWnmGFctN4tPPxgS9nTw2hIL3knuPPlM8XVRczUnZBeG3MEsGzrl7jN
 1x1W5nRSlvueAtdiKfLJ2jSwCpU8CHeN1LqaUip/XBhyLokZ8Sc6LnT9kMOa7tbxHpMWx8fSA
 eADwOE/+DytC0MgWOcZ9Eegu0Gd4EyQbE3O40E1rWccjNbLVEmpcOhV/Ixqz9Nh9pgZ1bgueY
 TqTgTnHHeS1c6WBasTT+5iMyc+ZX8pkdWfzfJYGrHJhrUdgiYxqAmFtpaO0R7fiwupI4mVExl
 FyR40FFwZ4aEp3niguXguSZ27Qvdv+DVcZ5tW1WKoKl6zpFRF78zQR6gJzru+eqy833QGbWiM
 uGSvuvcMQwwyzcWEjvMyXprX7iEPUiGqfkPdiSXvrjDD1DMAAhMYLeFjP5r/FZHX9O5XqMs+9
 IKQJIOdZ+n3NRn7R434/ryo027mFo04b4plEuSbAW4SDF+USDCMxj4kXL86lhyMjq+w4/Nygy
 eZSTjl00Xj2wBXBNm8lcgjSNmkFYDF+OMvwB0CdAmE2cZRnzHO/rWpwdSrPqokg+SatDVkqxU
 Ls/W7QYjhX7YZqbmoMVcZxO4czRO5xaLcyNJvTOgYR/kfd3f/qL1rc1AFuH7Ed6GRz1m1uzwe
 GCw0Tq61YQqDK+eylXsrBKblDIUDw8ttZUC+wKvBV/vtdOEZlzj2lfUBBl+7AjAcRQlqWqs7E
 p/wf9cLc+KtT8H4jwLBG1YFARoEAFqD/W/OAWAq28/o+IPF3b2dlkqIRwJH/rzOb/LJWkMvsk
 5vY9U69KPcCkxILQTzGebM/M8Cj2GpwDmW7QpxmtRDk6G6lxZaEqt5FiQOC5cmrC3uQ3t/Awb
 ZLXMoTTXvU+cN15u8m7uh5uWOWDsFz7uesHD43yKTIYk9y25EgJUtW/+ineBL4UY29b2Ncio6
 gXeLeTT+NjSTx0COqFypWM3sKZ9NScWOMewqsnYymone6wPN5yuLZ/Q61OzCkiNt4z+TM7E2w
 YXMcgjKKFp+9vOmAtveaHpAGEPhmUWesCew5FLvSsy8sAGcSTj+xiwmxnUJ1X6HmABQgvctO8
 mhhda235WkbaUBPyuZAjPcKEUQ/iDB9kCMmqCZhpE150ptn7B5BpxmysxjHHjPCclbHufkGj0
 k0/h3u1apZYIm1KRm/HYlhHd8NsP+jS3Rzidw9t30or3FDmw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_082717_798581_BEC73D0F 
X-CRM114-Status: UNSURE (   5.66  )
X-CRM114-Notice: Please train this message.
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
Reply-To: frank-w@public-files.de
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mark Brown <broonie@kernel.org>, Sean Wang <sean.wang@mediatek.com>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org,
 Richard Fontana <rfontana@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 =?ISO-8859-1?Q?Ren=E9_van_Dorst?= <opensource@vdorst.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



Am 23. August 2019 16:56:13 MESZ schrieb Matthias Brugger <matthias.bgg@gmail.com>:
>are you sure that you provide the correct chip_id here? I saw 0x2023
>(if I
>remember correctly), while this switch checks for 0x23, 0x91 and 0x97,
>so I'm
>not sure if the problem really lies here. I didn't dig into the code to
>find out
>how the chip_id is created.

The chip-id 0x2023 is reported with 5.3-rc5, next-code says 0x0. So i guess the chipid is read out/calculated the wrong way. If calculation is not changed the read is changed compared to 5.3

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
