Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD34BE582
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 21:20:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iiFbDWL4INdzWOn4wpAQCjx0fkJR2YRaFqxIIG2Dsds=; b=bKs1ap/a04w3Dm
	RTWMH9A4OKtDDruM2QmX99VbTeh7AiLFFQ7GVufV2gM5NmEX7i85j+ErWVbQDOz7257dwpfMu8s9S
	YzRXsDD9ITRxRi0FkHfQZCKhCQnVHngyfAKNKoygf+WFAbaCEH6AwnN/9CCWNAQc32QOT66/Pg7Uw
	qWr3JWkRkvuxiOCWXk9ZgO5X4N7KeXjbzi7QLNAPMEWD1u4YGXrMf6eS16RkXG+E3OYshpiPwaLTx
	+z2p5r7kiWpfGm1sPB84VyV8/iXzi1dlhzbsxO5AdZ+7r+1Wgqhyaqi+PT53KaQX3fRGy1Gnix8oU
	rsu8s7wFWA3cLPkA8UEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDCpg-0003Tu-RI; Wed, 25 Sep 2019 19:20:12 +0000
Received: from atlmailgw2.ami.com ([63.147.10.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDCpQ-0003T4-Lb
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 19:19:58 +0000
X-AuditID: ac10606f-371ff7000000187d-a9-5d8bbdd8a5b9
Received: from atlms1.us.megatrends.com (atlms1.us.megatrends.com
 [172.16.96.144])
 (using TLS with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by atlmailgw2.ami.com (Symantec Messaging Gateway) with SMTP id
 58.7C.06269.8DDBB8D5; Wed, 25 Sep 2019 15:19:52 -0400 (EDT)
Received: from hongweiz-Ubuntu-AMI.us.megatrends.com (172.16.98.93) by
 atlms1.us.megatrends.com (172.16.96.144) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Wed, 25 Sep 2019 15:19:51 -0400
From: Hongwei Zhang <hongweiz@ami.com>
To: Bartosz Golaszewski <bgolaszewski@baylibre.com>, Linus Walleij
 <linus.walleij@linaro.org>, Andrew Jeffery <andrew@aj.id.au>,
 <linux-gpio@vger.kernel.org>, Joel Stanley <joel@jms.id.au>
Subject: [v1, 1/1] gpio: dts: aspeed: Add SGPIO driver
Date: Wed, 25 Sep 2019 15:19:48 -0400
Message-ID: <1569439188-10378-1-git-send-email-hongweiz@ami.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569352021-6383-1-git-send-email-hongweiz@ami.com>
References: <1569352021-6383-1-git-send-email-hongweiz@ami.com>
MIME-Version: 1.0
X-Originating-IP: [172.16.98.93]
X-Brightmail-Tracker: H4sIAAAAAAAAA01RW0hTYRzvO+fsnLPF8LQGfliJjG4E3iLsC8TLS5y3xJdAFD3oQUfTyeYt
 QZqahVNEhpUty8scxlxFm1Quh7obaqIOl04TfTDIl7KlpjhHtY3At9/9//CncYmFiKPlFVW8
 qoJTyEgRYWaKOhP99raCFOe0FPW8MZPItkijPz8/ArQ/rhegkM5DoSbHDIl2n88QqNc1J0DB
 +RCOuo6GMGTZXBKg5uE5HFl7jwBatPWQyPHIDpBx2Yuh7V+tGGqxuyjk79KQyL6+A7Kk7OeH
 Noo1vzADdnHJi7PBQx1gt/0tFOsNeHDWYmol2bWlMZKd6g4SbOfABGCtg/fY+e5+wIYa9yh2
 6sk+we5Y4nNi8kTpJbxCXsOrkjOKRGWzOj9V2Y/VtTyepDTAB7RASEPmGny5MUZogYiWMDYM
 7v4YxKLECaBhqJ0Mp0jmIrRbeyKGlJkAsG99HYQJzjQJ4JgzENk6zaTBg+WRCCaYC3A1oCHC
 WMxkwbWpT4LovXi4MteKh7Hwn/5KtxDJSJhMuO8+xKP5U3D66deIjjMQTm5t4dHMObjq2MSi
 OwnwW8cm0QkY/bGK/lilD2AmIOGqFOWcXFFaezWJK5cnFSvLLSD6V+UHEAhcdwCMBg4AaVwm
 FevPagsk4hLubj2vUhaqqhW82gHO0IQsVmwy/86XMKVcFX+H5yt51X8Xo4VxGuDWguq+XD7B
 Wf+97eRwtsUI3OmuBk/8/WypL5R8udDQnOrJPn9JbQi6xosXjEJbevJySseJESavMTNxI/N2
 nOGLeidGk39zJMv3gJLcau9IPEgr28sQE2+f5Q0Uj9ZMvDeNuutmgDDR+87alTPbrXzbvOKL
 3bhRa3zN5DbICHUZl3oFV6m5v3DXd1rFAgAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_121956_779660_DABA350C 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [63.147.10.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Arnd Bergmann <arnd@arndb.de>, linux-aspeed@lists.ozlabs.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Doug Anderson <armlinux@m.disordat.com>,
 Andrew Morton <akpm@linux-foundation.org>, Hongwei Zhang <hongweiz@ami.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> >  obj-$(CONFIG_GPIO_BD70528)             += gpio-bd70528.o
> > --
> > 2.7.4
> >
> 
> This should be split into separate patches with one extending the binding document and one adding 
> actual support.
> 
> Bart

Thanks Bart,
I just submitted splitted patches.

--Hongwei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
