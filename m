Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A87866C279
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 23:17:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4ukgYYq11kZs2UlCItdU8vwhSRpxINs50EC9LBQ+9Aw=; b=AlAcoaTapMT7JIfylyB936m5V5
	wW0xy0aj1xH+UDtm+wtN5aTg92ApVIiUj7zSxO9lwixCpKI6lfc88p9tiBhcpAtgiqvGYzu9u/npz
	D2ju3pAetqYpcfEC2R4LwCE8R7OoExy8sPFajQYeMsGbZRJkBMEHdN111imK510OEmL0OJMAVSrnt
	7efNugcMJr0h6lbuihPxkfXj4YbfLlNK3uOJGRMwppyketorbSjZJ+pkr7AE3qmS8Ywb/DyJBmwpz
	OK/vlenbnQyIs1bAy5jZ2RfE4nGxvJ4d9mnVPEh5+RWjEtHDK8vuzsg6rfIm/A1P1inz3OUHsYJ8Q
	IM1IvPQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnrIa-0001Fa-Vz; Wed, 17 Jul 2019 21:17:16 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnrIJ-0001Dm-QT; Wed, 17 Jul 2019 21:17:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563398204;
 bh=fREBtBg7sZfzJBkFnnARV5PEuICAISLMSAnEApBpou4=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=hQznyks2J9SpbCNv68dtEnthtgzojNVz/aiF+FsqihNUYjW4GgKvF+jqZ1Eh2xgv+
 q85wU8cuN1yU0nM/QL6bKSBXUhiX3veHXqO11LHssWbhLvnpYIUJhwxTrZEwrTVQxf
 gq+bFwgOmosL8vYx7Muh997yWl7ZRrQfHDebPX5s=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.103]) by mail.gmx.com
 (mrgmx105 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1Mwfac-1igEMA2BiM-00y71Z; Wed, 17 Jul 2019 23:16:44 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Mark Brown <broonie@kernel.org>
Subject: [PATCH RFC 17/18] ARM: bcm2835: Add bcm2838 compatible string
Date: Wed, 17 Jul 2019 23:16:03 +0200
Message-Id: <1563398164-2679-4-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563398164-2679-1-git-send-email-wahrenst@gmx.net>
References: <1563398164-2679-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:4O5FG2QQYS1bGis5sD73IOq0vtEuXq4ABLhxJfBsvHpy5QW8XeB
 fEY1oj6Fo+oughF0R4bIPpZ1yky0lTF0OVpHndEG7I64fuAat0F81LYoDrzI56Nz9k32PlU
 Jv0MD3Fbq/Jci/MQ+UmFxOdFLfmBaTO+bCYFbYjcGwYD/uyZOfAjUVITbJqvNr9yTvbr53e
 4lIRN+RT7zt7Wwg51jL5Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:uWzBgLjwJHw=:PekcwSJXA0xNgabM5LDP6Q
 YdYL7zs1jquVf4LlsWB6S+3qqC1jOwO2oMSAfWpl6xBt6ph/3qjTY0vsZb7QmfL+M6lJKzEKm
 Rq+VixvKrPu/ifBcKA83WnbYi727OS1fH/j7Akn1xbO7nCAIT+oeH9WbpwQ5Y5js9d4hSs+EZ
 Q/NMx1qhPm16LoQLa7HS93ZAHTHza+umlrPLiVcgTQIhpHnM9kKjklI8FJgMjijDhxrFgleV4
 9z949kmXVTXlWVhGL4jZhF8xLdOI74ILJnvpFBtayjlGnxPXhXzVn/UY9I8XIOtIrnLnxyOvV
 s/e16wdrESutKGKmpe2egtHzY2R0caPDuhk0ur+uMZNy86n5DzRbn5dpsDym1IoqTsf//9+kt
 AdP/HADU8RFxaV4cWCreMFqpZrhCocg1hxMArLLGRa3+XjJAA5mHG4nP8em+yV6rXivyXvOwl
 TcnJxRnjXj0aHTAxN6q2wn3FCqCwKvXnAwWpmL8flJJ1/lFqrDBEB92u6pQFXDM+XoBc4kNUD
 Vs+hrQn04hkll3RUY6OONfYStPsYMykZHo+p07qmAmNSw4apeQNPL6OtLjl8pUMFulUOgEVPp
 CYNdLcaCos/UUG/c1nrJOgnMH4shQEB/x/Dwvz08VDlRtq2nLL/GB/wkhjuYTkkwG9Yw7i+/W
 3WEWRyUlY+Uq4dRghkWHfOzuU/4Om9XjlxiZQjN05VRf9awvrrnuJ1Ne+AMBgfX33SBbAW4Fw
 oVtsP+Ew4gVbT+bD3X4lfasRjDVfsYuXyefWEaLYQevTtTA7QxrDPfPSlM8xEUkgH5RWeSRIf
 MR5FWxDzWud9qlugQsPOCjDtVBAKB9lyPP+7B3W5Mhez4EfqEqKuVHhwPBCeS25EqvRx+qhHA
 Fw5YTBccXSRUadSfBn6RjMq4SkMIeQ2qYRUeR/35M/WwDTzTsJxPfTuaHduwijKfq5BmFnx43
 rKbWkkUwydIMpLIC4Zq8x3wEeO6U2q7W8M5TgBB4ciegmgofwfDn8/krD8rA+hnGDdtjW0tpq
 wxbK3XH70WmHKaI55PEiwl9FooHBYdEZaVeduT7Oq9diErFCv1c7UbSiteloriPMbOGUR637m
 9CWLN2xPi9IEg0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_141700_197592_1CB00D29 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Phil Elwell <phil@raspberrypi.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Phil Elwell <phil@raspberrypi.org>

This adds support for the new BCM2838 SoC found on the Raspberry Pi 4.

Signed-off-by: Phil Elwell <phil@raspberrypi.org>
---
 arch/arm/mach-bcm/board_bcm2835.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-bcm/board_bcm2835.c b/arch/arm/mach-bcm/board_bcm2835.c
index d2b31a9..578eaaa 100644
--- a/arch/arm/mach-bcm/board_bcm2835.c
+++ b/arch/arm/mach-bcm/board_bcm2835.c
@@ -19,6 +19,7 @@ static const char * const bcm2835_compat[] = {
 #ifdef CONFIG_ARCH_MULTI_V7
 	"brcm,bcm2836",
 	"brcm,bcm2837",
+	"brcm,bcm2838",
 #endif
 	NULL
 };
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
