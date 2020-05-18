Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 780701D8ADC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 00:29:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hccrpKSOB4J/tF6SOYiKj3zTyeuCPKeqWxnU2SSebcQ=; b=RsGNcQeVFOGyFS
	uU+2TY8EfE0couXQ4BiVssPP9i0L9LLL1hidbg5g0Sb83kY1TdedcM44iRWG8xRKVWtaKgPWJVnz/
	SBwnm7w/FFy+bS8G5FXrbS8wHYMReif9zZi+d3Mx1+qAAVV9ESLoh28ZSYujPPs3znC7xavXEI9gp
	8XdweGSdgY/7t2UIexsm/FmOnb5FWBmxFxpiMHzV0l52FVQAaNNY/gUoa1NXm9i2VTFyFUhHXrcc9
	Scb9oOaqIZGfP+QG1yw1wnDXZrfPaTiAZXDF4nKVPMXHq67Nq7AmxLRIQEchAHKsh0kqfloBEQJ1t
	EIQ4pn+nivI2kXEaZw+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaoG5-0000oK-N3; Mon, 18 May 2020 22:29:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaoF0-0008OF-3x; Mon, 18 May 2020 22:28:12 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jaoEu-00005F-JV; Tue, 19 May 2020 00:28:04 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: replace RK_FUNC defines in
 rk3326-odroid-go2.dts
Date: Tue, 19 May 2020 00:27:56 +0200
Message-Id: <158984064169.2259329.13349671967447925273.b4-ty@sntech.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200512203524.7317-1-jbx6244@gmail.com>
References: <20200512203524.7317-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_152810_172179_29F9D74E 
X-CRM114-Status: UNSURE (   7.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 12 May 2020 22:35:22 +0200, Johan Jonker wrote:
> The defines RK_FUNC_1 and RK_FUNC_2 are deprecated,
> so replace them with the preferred form.
> Restyle properties in the same line.

Applied, thanks!

[1/2] arm64: dts: rockchip: replace RK_FUNC defines in rk3326-odroid-go2
      commit: 213f272b754f4e27aeab9d1265c775610e612bb7
[2/2] include: dt-bindings: rockchip: remove unused defines
      commit: d09855bdd8c4d4eb6e58b8546318ebb5859a513c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
