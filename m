Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB0E19738A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 06:45:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=saPDqX9BxY9YSbaeN4W2PPaMSOPzhIABvwnWT4BepTE=; b=m5v10f6dYFTuVM
	MO1Uqwbf7IIg+4S6kE+2MEJVe0oPPi9o5kDieCvF2OtbRrOk4RcaEG80D9N64cAcZ4KCBa9XSbevf
	cgIKHOfdjPxHy9NoOT6+WeNrlLf7BTSXomE1agGsUpzfcnzHwgYAAWp8/hP3GHMzSl3WFmkHmPUi+
	0Gdch3aoeeBduM+LPAt/tu1Haj3R2cEoavK7GrTNJ7Tft/9CGFW+ZyBYhOqkDchxoLZ9oGak3uk7B
	toMLulTDDRxOeBCkCs+WvB3ev1quvMbKkEOkYg8YDieC9rWf1ZyEUXeO/HPrD5n0msGqIE2x1P6p6
	4dSSHpx4cPFY2xVHTMzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jImIU-0008Bu-5Q; Mon, 30 Mar 2020 04:45:14 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jImI1-00083b-3U
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 04:44:46 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id A906415C5482C;
 Sun, 29 Mar 2020 21:44:43 -0700 (PDT)
Date: Sun, 29 Mar 2020 21:44:43 -0700 (PDT)
Message-Id: <20200329.214443.1573923323943355565.davem@davemloft.net>
To: philippe.schenker@toradex.com
Subject: Re: [PATCH net-next v2 2/2] ARM: dts: apalis-imx6qdl: use rgmii-id
 instead of rgmii
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200325173425.306802-2-philippe.schenker@toradex.com>
References: <20200325173425.306802-1-philippe.schenker@toradex.com>
 <20200325173425.306802-2-philippe.schenker@toradex.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sun, 29 Mar 2020 21:44:44 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_214445_206432_55410C18 
X-CRM114-Status: UNSURE (   7.02  )
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
Cc: mark.rutland@arm.com, andrew@lunn.ch, f.fainelli@gmail.com,
 a.fatoum@pengutronix.de, silvan.murer@gmail.com, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, s.hauer@pengutronix.de, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, o.rempel@pengutronix.de, robh+dt@kernel.org,
 linux-imx@nxp.com, festevam@gmail.com, shawnguo@kernel.org,
 kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Philippe Schenker <philippe.schenker@toradex.com>
Date: Wed, 25 Mar 2020 18:34:25 +0100

> Until now a PHY-fixup in mach-imx set our rgmii timing correctly. For
> the PHY KSZ9131 there is no PHY-fixup in mach-imx. To support this PHY
> too, use rgmii-id.
> For the now used KSZ9031 nothing will change, as rgmii-id is only
> implemented and supported by the KSZ9131.
> 
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>

Applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
