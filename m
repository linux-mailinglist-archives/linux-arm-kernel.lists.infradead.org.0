Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B725CC0902
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 17:56:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C5A/E+1uhdnToh6MtrzAlbLjJJgJG1fto9rGdKkaNVg=; b=lFkDegPENshISu
	cQH2Epxf6xcVY68Oib8fl5PBiq4dgTsML9dYM0s+KZzZtSyOBjgdq3c/onMGVgnAvh2uehyNIib6K
	w0XxJmGpSUIxbhpMCMiSiTdXTYGXceRpe2j+JyUoZy33QI85St4jdB2dxFcz5A68ZZ1TGJUYGzBn6
	e4aLE/R7sdL5x2xR9acXMl1YimwYZR+knkFGvG3t5neBAMsOUfcLFFjGUjBejOM11SInu1PFQbJqO
	Ersdp73EgilLQ0r1zi4jKF5niNkm/HIyx0chaufFjTHGCCfwOgSO4pUgVX4KuG3ORpFS1DittODhp
	9LvchWu+9/9fdo75nEug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDsbP-00046z-N1; Fri, 27 Sep 2019 15:56:15 +0000
Received: from atlmailgw1.ami.com ([63.147.10.40])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDsbF-00046B-9S
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 15:56:06 +0000
X-AuditID: ac1060b2-7a7ff700000017bd-67-5d8e310ed195
Received: from atlms1.us.megatrends.com (atlms1.us.megatrends.com
 [172.16.96.144])
 (using TLS with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by atlmailgw1.ami.com (Symantec Messaging Gateway) with SMTP id
 D0.07.06077.E013E8D5; Fri, 27 Sep 2019 11:55:58 -0400 (EDT)
Received: from hongweiz-Ubuntu-AMI.us.megatrends.com (172.16.98.93) by
 atlms1.us.megatrends.com (172.16.96.144) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Fri, 27 Sep 2019 11:56:01 -0400
From: Hongwei Zhang <hongweiz@ami.com>
To: Linus Walleij <linus.walleij@linaro.org>, Andrew Jeffery
 <andrew@aj.id.au>, <linux-gpio@vger.kernel.org>, Joel Stanley
 <joel@jms.id.au>
Subject: [v2, 2/2] gpio: dts: aspeed: Add SGPIO driver
Date: Fri, 27 Sep 2019 11:55:48 -0400
Message-ID: <1569599748-31181-1-git-send-email-hongweiz@ami.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569439337-10482-3-git-send-email-hongweiz@ami.com>
References: <1569439337-10482-3-git-send-email-hongweiz@ami.com>
MIME-Version: 1.0
X-Originating-IP: [172.16.98.93]
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrPIsWRmVeSWpSXmKPExsWyRiBhgi6fYV+sQfcOE4s569ewWey6zGHx
 /8NuRovv+2exWvyddIzdounQKTaLL3NPsVjMP3KO1eL3+b/MFlP+LGey2PT4GqtF8+pzzBab
 5/9htLi8aw6bxaGpexktll6/yGTx/lMnk0Xr3iPsFjemNLBZ7L33mdFBxONq+y52jzXz1jB6
 XL52kdnj969JjB7vb7Sye1z8eIzZY9OqTjaPO9f2sHmcmPGbxWPCogOMHpuX1Hucn7GQ0eNv
 41d2jxPTv7N4fN4kF8AfxWWTkpqTWZZapG+XwJXx8YNzwQrmir0fP7I1MJ5i6mLk5JAQMJE4
 fKWFGcQWEtjFJPG2waGLkQvIPswo8ax7ERtIgk1ATWLv5jlMIAkRgX5Gies7mthAHGaBrawS
 2w80sYJUCQuYSSydMY29i5GDg0VAVeLGznCQMK+Ag0RT63c2iG1yEjfPdYJt4xRwlNjWsJMJ
 YrODxLtHLawQ9YISJ2c+YQGxmQUkJA6+eAF1nazErUOPoa5WkHje95hlAqPALCQts5C0LGBk
 WsUolFiSk5uYmZNebqiXmJupl5yfu4kREqmbdjC2XDQ/xMjEwXiIUYKDWUmE1zeyJ1aINyWx
 siq1KD++qDQntfgQozQHi5I478o132KEBNITS1KzU1MLUotgskwcnFINjCs/Buk+L37G2a/y
 ZvfFi6uVZnSJd3IVin/leb1R6JVMmqL4Is/UmgfObbbfsuN/qZ3e/bu8z23dnbI1zZt91RyV
 zTr1g6W1WEpeZIh2uN/pMow84L2YN9jWTUquIPRUzh2jyxrnBPedfFecmCbFF8y/RKD6l0Fx
 y7TiNzoB9ivecGxu0lugxFKckWioxVxUnAgAf+/1tsICAAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_085605_394145_B3B044BE 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.147.10.40 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
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

Thanks Linus,

> 
> I sent a separate patch to fix this up the way I want it with the file named gpio-aspeed-sgpio.c and 
> CONFIG_GPIO_ASPEED_SGPIO.
> 
> I don't want to mix up the namespaces of something Aspeed-generic with the namespace of the GPIO 
> subsystem. SGPIO is the name of a specific Aspeed component.
> 
> Yours,
> Linus Walleij

I agree and gpio-aspeed-sgpio.c is better.

Regards,
--Hongwei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
