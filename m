Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1713712BBFC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Dec 2019 01:34:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NSvhzP8onwfj++EGjOxOkQkD+2CnPiAmCyDeLgY2IF4=; b=dFlSJZX5jfU4oq
	ue+G9zs4vl++4tfzKqmsWdwJ2B+O2MI73tKxkeZ+5NQTwvxgrmJ9bYNpl/YVdztyOrFUaAyvVC4UI
	0D7r5eFOmm7gwbzkIt/kHPLHakhZEUMdmCYkpI01GVRurKFI7X4PhOMd3qdsnGQLD8Yu6tDdQ+5xC
	Vs6z2YAE2ANHrplYPhQQqEornc45/DpH8vOAVdEdx85TXv03u7gSclW6D8qvCntQ9+bEUnn6q0ByX
	GtzWxGpTDpKAx8I6JP3vhDY0T8RhU3Pb4riISyRg9FF+Q3q2N2k55JSBD4QXSIFMYcaO/Danahvw8
	7LGsDNgup8wsc6/+vnpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1il03S-0000Ej-7o; Sat, 28 Dec 2019 00:34:06 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1il03I-0000Dk-5h; Sat, 28 Dec 2019 00:33:57 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 39CAE154D1158;
 Fri, 27 Dec 2019 16:33:49 -0800 (PST)
Date: Fri, 27 Dec 2019 16:33:48 -0800 (PST)
Message-Id: <20191227.163348.1668601477335834984.davem@davemloft.net>
To: martin.blumenstingl@googlemail.com
Subject: Re: [PATCH 0/3] Meson8b/8m2: Ethernet RGMII TX delay fixes
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191225005655.1502037-1-martin.blumenstingl@googlemail.com>
References: <20191225005655.1502037-1-martin.blumenstingl@googlemail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 27 Dec 2019 16:33:49 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_163356_212691_62B604B9 
X-CRM114-Status: UNSURE (   5.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linus.luessing@c0d3.blue, balbes-150@yandex.ru, khilman@baylibre.com,
 linux-kernel@vger.kernel.org, ingrassia@epigenesys.com, netdev@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 jbrunet@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Wed, 25 Dec 2019 01:56:52 +0100

> The Ethernet TX performance has been historically bad on Meson8b and
> Meson8m2 SoCs because high packet loss was seen. Today I (presumably)
> found out why this is: the input clock (which feeds the RGMII TX clock)
> has to be at least 4 times 125MHz. With the fixed "divide by 2" in the
> clock tree this means that m250_div needs to be at least 2.
 ...

It looks there needs to be more discussion on this series, please respin
once the discussions are resolved.

Thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
