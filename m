Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A3FED927
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 07:51:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZapVqC4qeIQQnfy8L8KwpiWb3iuPRuAZsHgQcdzsSLo=; b=BpRHjO4x/AY5NL
	NlNzpgBssCgoGMtO5g7g4ta2cgrrlGHRj8MbredArL1KrCW5yzYHWso7XUwqrpYKVD5eaOb9I3aF0
	CmqBz48EM7TjFDXN7FdjpkAm5R52zUcXdOhZI6PJoPcl1f3zAY+4J02+cGi+oXE9nR6a5jvGRfNZc
	TJEbnOOQhD35mwwmTnT4sc38rUm2FqEk14A8ICidSYvPkaafoU0kbthdBABcsMhvptQ3u4umnzvl4
	ouEX0NoPgqFcFZleuIVdLtBn4MHk4niB/LqeYujxos3j9q5UpKv47rV54yUOXCvVGzGYMokkb4c4z
	te6FmX2wNxNAfwCSz4UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRWDH-0003kP-QB; Mon, 04 Nov 2019 06:51:43 +0000
Received: from mout.perfora.net ([74.208.4.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRWDB-0003jv-OE
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 06:51:39 +0000
Received: from [10.155.32.202] ([213.55.224.174]) by mrelay.perfora.net
 (mreueus001 [74.208.5.2]) with ESMTPSA (Nemesis) id 0M0jDU-1i5rDu3rry-00uocL; 
 Mon, 04 Nov 2019 07:51:17 +0100
Date: Mon, 04 Nov 2019 07:51:09 +0100
User-Agent: K-9 Mail for Android
In-Reply-To: <20191104012957.GI24620@dragon>
References: <20191026090403.3057-1-marcel@ziswiler.com>
 <20191104011657.GE24620@dragon> <20191104012034.GF24620@dragon>
 <20191104012957.GI24620@dragon>
MIME-Version: 1.0
Subject: Re: [PATCH v2 1/5] arm: dts: vf-colibri: fix typo in top-level module
 compatible
To: Shawn Guo <shawnguo@kernel.org>
From: Marcel Ziswiler <marcel@ziswiler.com>
Message-ID: <DE57B376-B5BF-47B7-AE7F-A89AD603F81A@ziswiler.com>
X-Provags-ID: V03:K1:qQ6B82UVh4fuMs6RI8T+GAHNqF3XNW0Zp+HEtEfvpX9GlcUO2wX
 L1JsJkiY4OVoMLqwjmbyTlvo7bVb/EWoCrjFr2WMD9naedPh5uYVIROmDdYqjtH28ugQhcE
 qlIDahFrmgm7zZH1ndAd9Weo39rU1toZ5iPGw6o/ZhkeP1fVcvGY1+MLoGLYphqfLFL3EO2
 nQLl79QAtFT9qImq1UJgg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:RuGUr5ZlRsQ=:wbQX2V4D8Afv+cRgsRCYjv
 2SZAgEFnnUJG9iE2BAtx1raUTZSuW2LBhm8D3C73juaBoiFvjfRqgGfR8DS5ttj7VZnVs5cMN
 R29JacxuPXb5pKZF+nvsV+89LywtlsyUZKRlNkLXE5eSk35vTcfrsnHEBlIiSIOU8w/qPC7eI
 v1GvB9u1nOJSZczdUbd+Xu8YZEe6dZcCsvkZhIhqrFWCNRNYV19XGCNxKDOPKiYPvaEmjscFK
 H/JHsV1VQjJhvAZ1kuyMQtlo2rJGX3nlE1vwc9rCJaGJwYtnoSkv0U6Shyl5UQaVqjJ0zYKkv
 pFHkKS5eUN9uDrdD54jUWVkV8uJVNRyU6AX5vL1Lo02rGXg53nfuGqFlQXvUgBpDL4nkSy+i8
 9oxs+MXxxJBvsjjUUhF5ARrAturCgmml5WyRsolIU86RLkOv3TtYVBNyy/Ua/b/dkUj5rzLSY
 KlrrbXgi3wfxmLOneew2JLCdqJtwwbXdHyOuMgD/K+iRFOOgyRORlUp/LJgqZpKmtZ7HdU5ad
 B/X/1eDzeJG9N8sY0R1QtZcognNNWCouEqFemz78lpz46FN4oRv5TlTEz0MTHNSZ9fVY28V4w
 DDNxV1HM+yeageJ6fJlNPztrymvxnf2A68DAlJ1IuBjV6eo6W5GPIMXIC86Pm41vBSy13ohd8
 11KWvoQKHN50LX1Ce5eoFeHl7DjkF+i2Sw+UX85EvSsYghl/atkWc8dSyWNYjDvndnmK5L4f0
 uZ+gZtmBagokJDtsDvHmYfMXpXm7XAswA4C23Sa6QzTCMTqFsb/19gq3X7vO+3Nm7z+fX2tdJ
 PxojHhpoHkfOFLvMlBMfTzXoiu28ujGv1C5Bm4peU+sozS59SU4RNNckpRdcesxr3dCGaHDXa
 rzAiEHBNJbUF+yeuFyI3aH0tjOBaX/h39mqwR8doY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_225137_859439_11DA7610 
X-CRM114-Status: UNSURE (   6.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [74.208.4.194 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [74.208.4.194 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, dmitry.torokhov@gmail.com,
 linux-kernel@vger.kernel.org, Stefan Agner <stefan@agner.ch>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Rob Herring <robh+dt@kernel.org>, linux-imx@nxp.com,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shawn

On November 4, 2019 2:29:58 AM GMT+01:00, Shawn Guo <shawnguo@kernel.org> wrote:
>On Mon, Nov 04, 2019 at 09:20:35AM +0800, Shawn Guo wrote:
>> > Also as a practise, we use 'ARM: ...' for arch/arm/ patches going
>through
>> > IMX tree.
>> 
>> I fixed it up and applied the series.
>
>Just let you know that I did not receive patch #3.

I believe #3 got already applied by input subsystem maintainer Dmitry Torokhov. However, so far I believe he hasn't pushed that one as of yet.

>Shawn

Thanks, Shawn!

Cheers

Marcel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
