Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ABEE9B409
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 17:55:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:
	MIME-Version:References:In-Reply-To:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yEm75gzJUvRkwJZgp6zi1QCt112hG9GkhdJ2+4mfMk0=; b=Fy4qwH239itmKa
	yjKUmfavbJvKIeKrNhS8C8jloepLt1JtQS9vV3Zot+wNJtD4w6RPqkt+VNbI18846MU1JkADXsa5c
	WiHHDcOblP36KECe6QN1w34ghjz0Mx8EtE173aZASOlQBnjjJjBuE91mAELs1aIF5MopvjRQEiOCM
	DhsSvVO8cdwwhoRa9uu29MXo/uGa8drvx7W4k9mwJNcda7Fv7zpNnU+IRXp0FuXEvFUuATDzdvZ2T
	WqqG3iB03q7H6X/aocWJbm62uHG92C4PfzvDoVyCua8FsYwz0QrtMQGyKE34+h64+plaJXD8QR6N3
	i45hMQkM1Po7psN/38xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Bu9-00032g-JV; Fri, 23 Aug 2019 15:55:09 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Bt0-0001vX-Cv; Fri, 23 Aug 2019 15:54:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566575603;
 bh=FK/DtQ5Llw4RPvOVNrNip/D5BGMGtxLPTS+xnBnysO0=;
 h=X-UI-Sender-Class:Date:In-Reply-To:References:Subject:Reply-to:To:
 CC:From;
 b=ieLXZPuofR8v8hpm8ouQ4E4j4buWbG1qRfYQQ0hGHWK3qRFJe17irZp5yOaWwdcWz
 Cqw5NsfccGIIwggDgq1Zrc6Ee2AYpn+xSihVMAKXF/I+eBbLMhT6z8/HuqjdOxij5y
 LVeecZRGXVqqQryYhy7Vo+BI+D16/sfPThpwadwk=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [10.159.16.108] ([80.187.106.162]) by mail.gmx.com (mrgmx002
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0MTjua-1hatYA3FTs-00QPrq; Fri, 23
 Aug 2019 17:53:23 +0200
Date: Fri, 23 Aug 2019 17:53:15 +0200
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
Message-ID: <4F1618E8-7D0E-41D1-AF27-5FCD2CFB41E4@public-files.de>
X-Provags-ID: V03:K1:jm5tZiQamB/MJ0W0uEyjRC5MhaRG3dAH20+JY9cKvyP2sW+tgeU
 LRA7Mbw/oroMo1SinJ8iZJeeSZbFOyNZyr77NM8YF1KH/QbDZmLLwlfnHmAUdDCHW8BQhEx
 r/s5t7MgBoJ1pATOm+l1NfxqpFJkfo/UbJqolBSsWouKmPAXR/h7OMj4P9pJiUE1YNP80+k
 JhDr69HXLz585HMGQrPjA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Os/ILefmo4s=:e0nK4T51S/PYzI/jH+lnR8
 XWhG+l0ZhTeu8S617OptcTMdC+QWOwOZAjn2zq/GpgGqvQKPtX8N5SxzcyvhLw/2T0Nh8+CLd
 2Qnkz/lBkwXpZZT+hzcb6DEK0Fr8Y/vM30Df7Aplh8wRWm8KV07ywRQEPSb0d01nj0ekqV6kp
 VHeEDTei27alpTD96Kqp4QqSk0CFS7NN9NDpvTZTq7B6onY+kmThLdtnYrWruAXiGJoVWhkSt
 mdfw7O0IbD82LNOvoCdJD1uiGzZKLyUcYub2kYS8MOXtjeduVV+OBy/XkAdKZpAZPCCceRIMd
 QuIKVtfDlCBbSGMXauDYA6MJ2++5gCisgZVlm1BFnT2TiwIGQYQcYIswnf0SNlzfoT0gxUYqW
 pACXClE2Ewm9scILIB7C+jYZs2i1KRTdQxKmVyQITG6W6kz0AGVS9kFXe2frFJrza6HrGKRHp
 H/H7VTipdZ5hvs/0wX9HMAWcQdzG/7gSiHl0Q+QFWH7s0yeLqmjuRRE7XcZOIF6Cd6gj/UDaV
 XzetBZBTdw95tipLXgitzbtbt4WxP/Pdy+lW3v6UYcXVeXqSZrb6NNbLG1bRr7P355XWFDgOX
 MOY9LT5puXIKbUFn84K8r3whTb1ugcsaY9hij/idyXn+VrmDzotvctCsOYUoxgGnusyryiVFv
 jWODV3jj0qeY3Y5XXG0phUga12J1OWRmcSn81hEoPx9VRGA6Zg47BNWmbPrcExX5wJn83uaeb
 TUYCkNVxQDpx5B8AirSLsMz/qbCIE2ejT0Fh6Gw/vAVY8PMSkP6rGsnjLCJkkpkHbDeMHVIcd
 SNIGjgMoYA135wFhXydKFC9AM02pVd2j65E3+i1iRA8EK+cEbqXEf8TpQA1RVcVCjOzY7ZuGt
 sBn33DUUea1fpkQYNmE/1L3p5efTqBCOB5XtqXbQKoxEcn5spLlOUGhSrRQ3O1LorhJhfWAx9
 u2wXx2chGAkcfJC5kJKDh2wBzHZNxZOi/T9MeyuysJRZqjcnPVYLQWc4yY0MmvlXYFqWcjhdk
 d3JOxQc6k565BC5MokFrYSkw9Sd+t8xPOAoQErw4KNdTrT83ZlkqpQEbtxuLfHiqItqdUZg2o
 2OPYiJqDBrhOHRZj4hkz3qSUU+N4Y4XmLDoL4DDygNSkAjMuHP5UjMhKMvBI3vZTGj3AFwYF3
 p9TT8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_085358_750042_FE4496C0 
X-CRM114-Status: UNSURE (   4.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
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

Seems chip-id in 5.3 is read here

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/mfd/mt6397-core.c?h=v5.3-rc5#n282

It is before platform_get_irq which may call irq-init changed in the problematic commit.

I will add a dev_info here in next-code to see value of id

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
