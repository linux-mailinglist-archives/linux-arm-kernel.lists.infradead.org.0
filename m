Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD951AD7D6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 09:48:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=maI9ICTTVQUjS+a89IC7vGPGLpd4Q4PfBipt4bp+zLY=; b=fGpS8S53tNHh06
	S7LuXp6FpzNCGQDezWXdajixVxcbvd3qWh8upKntPZqPXOjF1EdAGx4nxoOFb1KUYoOtDpYBOFVdi
	YwcMzYdsnBuNWQ5buRdgkuMPJ6vF3t76fPWS3UND3G/Pi60hbLVTRBLAGaMNmuZ6o9E58/MnhYCDO
	gyTzqwIl0YGf+0mY395s0a/cx+6r80pTVJyGsSv9LMF0DQXm7FWa6GUHjSLOYoDRwdtH1HJk4cFMR
	NanmNMV8HOH9IXh5STJBLbIgfVjSbcb1DJnFxHPXGTPd5dCr3WdGx2Mv+TDAHHNJfPRJnn/XMSpA5
	7c5FUCMwkhZdRXMeD0+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPLjC-0004fZ-G6; Fri, 17 Apr 2020 07:47:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPLj4-0004dE-MA
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 07:47:51 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1jPLix-0005Px-FU; Fri, 17 Apr 2020 09:47:43 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1jPLiw-0003a0-F9; Fri, 17 Apr 2020 09:47:42 +0200
Date: Fri, 17 Apr 2020 09:47:42 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V3 1/5] dt-bindings: clock: Convert i.MX6Q clock to
 json-schema
Message-ID: <20200417074742.geo3hvvencztb3xv@pengutronix.de>
References: <1587084091-5941-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1587084091-5941-1-git-send-email-Anson.Huang@nxp.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:40:05 up 153 days, 22:58, 158 users,  load average: 0.10, 0.18,
 0.09
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_004750_721967_5621D9BA 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, sboyd@kernel.org, festevam@gmail.com,
 mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anson,

thanks for the patches :) one last nitpick.

On 20-04-17 08:41, Anson Huang wrote:

...

> +examples:
> +  # Clock Control Module node:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    clks: clock-controller@20c4000 {
> +        compatible = "fsl,imx6q-ccm";
> +        reg = <0x020c4000 0x4000>;
> +        interrupts = <0 87 IRQ_TYPE_LEVEL_HIGH>,
> +                     <0 88 IRQ_TYPE_LEVEL_HIGH>;

The imx6ull and others start using the GIC_SPI define within the
example. We should take the chance to uniform that. Apart of this feel
free to add my:

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

Regards,
  Marco

> +        #clock-cells = <1>;
> +    };

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
