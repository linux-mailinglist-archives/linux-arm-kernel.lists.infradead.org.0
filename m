Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD0299862
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 17:45:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:To:
	From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1qOjnH20Z/PHhk2iZNOGKwAszBo/hZCpk4G9pBP/6F8=; b=gJI+SZT4M9yhEq
	DKZluVwDP3IuheeKXCgkwzbhidR9ROVAYH74+xDD+SqgSMPbR6IhCW/JsEKbzcUxI3sGxmro8R0XS
	RNmfAoJx2I1IHB3LICPcZATbN8M5O1G0hmX4sTUvwW5DF+FH713RVleirbxvlW0sfiKXm/zRgdM28
	PK8BjTt19byi3G4lnDTZiOJQtUwxa58hdSyGY1xwygEp/XShBqTBTlsDMDRk5dvpgNZC8olcWPoL8
	sTaUUBK49uSXl7cxJA+uGkW3A2yQRO3wnGFacisfuIPS3dUgT17yXvj/aAZfMR6WT6DPVVnJaPWzp
	gTQGMV+ML0Ya1/SGAbcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0pGu-0005fg-DS; Thu, 22 Aug 2019 15:45:08 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0pGe-0005e8-1j; Thu, 22 Aug 2019 15:44:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566488653;
 bh=Vy2sL6yIc2Cm33yYziTqAMn0mT4b4EWOI52QiBXdRmc=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=QrOHC6/2NAmFobf5S2YYzs5TWISc4dkEgsm5srJ57fksDPmZB21ItRv9XjzV9cu45
 9nYnDIY/F6xa164T9B2M2OOw5hOcwSpgxZJAnlhW002+Z4B1iLgtsZfGSgDtAqqWR8
 c0/aCfFCDn9ugbR4ouH7YUnV+aie8Hwekw14+hfg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.154.89] ([217.61.154.89]) by web-mail.gmx.net
 (3c-app-gmx-bap07.server.lan [172.19.172.77]) (via HTTP); Thu, 22 Aug 2019
 17:44:13 +0200
MIME-Version: 1.0
Message-ID: <trinity-b1f48e51-af73-466d-9ecf-d560a7d7c1ee-1566488653737@3c-app-gmx-bap07>
From: "Frank Wunderlich" <frank-w@public-files.de>
To: =?UTF-8?Q?=22Ren=C3=A9_van_Dorst=22?= <opensource@vdorst.com>
Subject: Aw: [PATCH net-next v2 0/3] net: dsa: mt7530: Convert to PHYLINK
 and add support for port 5
Date: Thu, 22 Aug 2019 17:44:13 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <20190821144547.15113-1-opensource@vdorst.com>
References: <20190821144547.15113-1-opensource@vdorst.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:OnOmnNjRELKVDhw1WQ00dkVJuIqcBT9mIxsIJFG3y8nB9jk9SoGT1zYS+j7Hrug05uaRc
 wyfpj5sv6EnDKgPWJT1nDz20RXXwzuhx/jflRFQlLJECmmRxBLZT0IDWBzDceWlqwm05vt1Q30ZB
 qxHcSPFXQfWgRe6xK7ko3+YGTQsteRpHY6fIjn1gREIrNVmzXUH898hwnFvyxpkJw7gBmpF5JbYX
 OotJuHOPdSolA/xZdJ4ol64gN4UuJddW0ahxqEcnYXSi4BvaojZNNekB7/0c1Z/6rTCdONIWuqqA
 FU=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:A9vU9Oh1LEE=:DFgHGOwKN1RHx6kZQ498pi
 zX+xC8Drxjpw+G+vUDjrzkxjmEdsaQWF99BUxfFFCB1Lbuxweib2bcOxiDc45mjrxOKULzmBh
 Tc2QG63jIq3UVmi7GJusiZoTjWppmjHJnLO7rDs3sgR8JItcfzD7Jrpm8MCL0ZgeQek/IL3S5
 MIlrU9tpcspXV28cUK4mCDjbykLugedrl7F6hjyTULWoG6kiPjLERQ+tK8mD9CKwmRIDNHM5U
 pj3Iy3MikCcaCxfSaOzM/mFoqXkbr5HjHN1odpnXWmt6OFas74gyG/3zS0YtfbfWmEaUZETvG
 mtVkJqwC5SmAZO7A/U6QPdQbtz7by7K2q4BuMpLEOG00hcZd728gvTyFy4ijTfLJqvNbf9pLb
 QvpKS3YZjTkgd6EEk3AnQvLG5DdDJDqP5B8+dKZ5uvrgbDt309vqoAKI1acHb9grNIqcyzsc4
 9FsqenYJm99b8XMLxZNWdelX12TmV2HUBZqqzOFxZ8W3vIf9dGoD+qMk8kPnQzLd9Tz7BSLuS
 d8292YpgCPIH1Plr1UZUan+Csz6krXBBiDhfgA70meddJds6kDD0b5bh7MuDwMC2Dh90kb38D
 z/9p4y6SR4kUOz/OHWXwi81phfKlOK/oZHIGZVPpSXN3d+rXsqoINiaFv7EBjC7s40cZQQ+yM
 0UfGTxouFcI+56UwaoItJWKiDXNeSPvXruKyh7SCBStUFbg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_084452_425861_BB2F8382 
X-CRM114-Status: UNSURE (   5.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 netdev@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 linux-mips@vger.kernel.org, "David S . Miller" <davem@davemloft.net>,
 =?UTF-8?Q?=22Ren=C3=A9_van_Dorst=22?= <opensource@vdorst.com>,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>, Matthias
 Brugger <matthias.bgg@gmail.com>, Vivien Didelot <vivien.didelot@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

tested on BPI-R2 (mt7623) with 2 Problems (already reported to Rene, just to inform everyone)...maybe anybody has an idea

- linux-next (i know it's not part of the series, but a pitfall on testing other devices) seems to break power-regulator somewhere here:

priv->core_pwr = devm_regulator_get(&mdiodev->dev, "core"); returns 517

#define EPROBE_DEFER517/* Driver requests probe retry */

https://elixir.bootlin.com/linux/latest/source/drivers/regulator/core.c#L1726

without linux-next switch came up including dsa-ports

- RX-traffic (run iperf3 -c x.x.x.x -R) is only 780 Mbits/sec (TX=940 Mbits/sec), same measure with 5.3-rc4 gives 940 MBit/s with same devices,
maybe caused by changes for mt76x8?

regards Frank

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
