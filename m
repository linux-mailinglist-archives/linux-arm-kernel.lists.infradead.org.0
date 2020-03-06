Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EFF817C5C4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 19:58:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W2I17SguJbl1OE7iqOUL+8BG/3xg0egP5xO2hGMeuQA=; b=IN5l8gd/4JnHNt
	JDS24f4TqKG11Q3YGYMEPal+RB7EQyzd/H/YNpUm8Soesvh79XGX2lXdO/HDPunV9s8Bk8C5+DiQc
	EQgtU3uo4//xFWXC7JHe2bCiGj5JXTj0JzIkN2/nxcbwiZRM3sQX0FpoBF7O4QCeFMJz1uFQ3dVN2
	oMsSHj7g6En6WXWT3xUwPdPwou/EAm6u1Y9DIcDTF6iPJyBBIcRF51vAQphzSar1UV1uUBngQ9DX0
	So0EqJzJej+1+czHbtKwxR5GoV+t1NwimH0FQSnxUgQ9JL57IdxQJKAyTHNCUJ7OAVb2MrUzC5sZV
	8GlPdQs6raPjE8jbMhzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAIAf-0003lA-9t; Fri, 06 Mar 2020 18:58:05 +0000
Received: from mail.manjaro.org ([176.9.38.148])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAIAU-0003kO-4K; Fri, 06 Mar 2020 18:57:55 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.manjaro.org (Postfix) with ESMTP id 9ADA13C21A13;
 Fri,  6 Mar 2020 19:57:49 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from mail.manjaro.org ([127.0.0.1])
 by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tbmb0qDcjibI; Fri,  6 Mar 2020 19:57:47 +0100 (CET)
Subject: Re: [PATCH v4 2/2] arm64: dts: rockchip: Add initial support for
 Pinebook Pro
To: Heiko Stuebner <heiko@sntech.de>, Tobias Schramm <t.schramm@manjaro.org>
References: <20200304213023.689983-2-t.schramm@manjaro.org>
 <20200304213023.689983-3-t.schramm@manjaro.org> <6168222.Wuk326WHQK@phil>
From: Tobias Schramm <t.schramm@manjaro.org>
Message-ID: <b30fef29-6667-9200-178b-4d0e9fc63c12@manjaro.org>
Date: Fri, 6 Mar 2020 19:58:45 +0100
MIME-Version: 1.0
In-Reply-To: <6168222.Wuk326WHQK@phil>
Content-Language: en-US-large
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_105754_319308_56E7153E 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.38.148 listed in list.dnswl.org]
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
 Markus Reichl <m.reichl@fivetechno.de>, Alexis Ballier <aballier@gentoo.org>,
 Katsuhiro Suzuki <katsuhiro@katsuster.net>, linux-kernel@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>, Emmanuel Vadot <manu@freebsd.org>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Kever Yang <kever.yang@rock-chips.com>,
 Jagan Teki <jagan@amarulasolutions.com>, Nick Xie <nick@khadas.com>,
 Andy Yan <andy.yan@rock-chips.com>, Johan Jonker <jbx6244@gmail.com>,
 Matthias Kaehlcke <mka@chromium.org>, Vivek Unune <npcomplete13@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Heiko,

>> This commit adds initial dt support for the rk3399 based Pinebook Pro.
>>
>> Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
>
> applied for 5.7
>

any chance you can squeeze in another small fix? Somewhere in the
process the vmcc and vqmmc supplies of the sdmmc controller were removed
in error. Those should be added to the sdmmc controller like this:

 &sdmmc {
        pinctrl-names = "default";
        pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_bus4>;
        sd-uhs-sdr104;
+       vmmc-supply = <&vcc3v0_sd>;
+       vqmmc-supply = <&vcc_sdio>;
        status = "okay";
 };

Thanks,

Tobias

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
