Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA71B15BA0B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 08:27:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VvwZ8wZaldJQgsJIjDdTyDAeHPMZPQ7LiV65aXQmAf8=; b=qTtgnqFAGCbIxT
	5TI1N4tsVhKmZDqjc0Wfo3SWym93Z7TrdPCmZDYuGiFEhJ301Ecv3/DoA42yWmCi/EQ2UFMvL4PcC
	LGX2N/xJMgR7NpLkijuQEqjpLo6PFeGszxrRr3TmRQBnyMs1jZ4DCSl8qL95gtGjOq/pJsIpn3LAY
	98banqtUHxZgsRU4pm2JsRp9E/eFCn6zAAqL6oAnUNXmRVBGvqBiMKW/Pt6Kt2AcDuuKijsBUCh0e
	SeOPK8OW3Cz9AHjvvuVSic1Iq9Hgzts2gmLVRA5oplN47N2O+rbM4rWo4NWcD22iXbSJYqFVoFjHd
	xzeMNs3cMZGbUigvpukQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j28uF-0007Nx-Pt; Thu, 13 Feb 2020 07:27:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j28u9-0007Mb-5o
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 07:27:22 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1j28u0-0005XO-CY; Thu, 13 Feb 2020 08:27:12 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1j28ty-0007vn-A1; Thu, 13 Feb 2020 08:27:10 +0100
Date: Thu, 13 Feb 2020 08:27:10 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH] ARM: dts: imx6sx: Add missing uart mux function
Message-ID: <20200213072710.4snwbo3i7vfbroqy@pengutronix.de>
References: <1581576189-20490-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581576189-20490-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_232721_218386_C38C6776 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Linux-imx@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 02:43:09PM +0800, Anson Huang wrote:
> From: Anson Huang <b20788@freescale.com>
> =

> Update i.MX6SX pinfunc header to add uart mux function.

I'm aware you add the macros in a consistent way to the already existing
stuff. Still I think there is something to improve here. We now have
definitions like:

	MX6SX_PAD_GPIO1_IO06__UART1_RTS_B
	MX6SX_PAD_GPIO1_IO06__UART1_CTS_B

	MX6SX_PAD_GPIO1_IO07__UART1_CTS_B
	MX6SX_PAD_GPIO1_IO07__UART1_RTS_B

where (ignoring other pins that could be used) only the following
combinations are valid:

	MX6SX_PAD_GPIO1_IO04__UART1_TX
	MX6SX_PAD_GPIO1_IO05__UART1_RX
	MX6SX_PAD_GPIO1_IO06__UART1_RTS_B
	MX6SX_PAD_GPIO1_IO07__UART1_CTS_B

(in DCE mode) and

	MX6SX_PAD_GPIO1_IO04__UART1_RX
	MX6SX_PAD_GPIO1_IO05__UART1_TX
	MX6SX_PAD_GPIO1_IO06__UART1_CTS_B
	MX6SX_PAD_GPIO1_IO07__UART1_RTS_B

(in DTE mode).

For i.MX6SLL, i.MX6UL, imx6ULL and i.MX7 the naming convention is saner,
a typical definition there is:

	MX7D_PAD_LPSR_GPIO1_IO04__UART5_DTE_RTS

where the name includes DTE and where is it (more) obvious that this
cannot be combined with

	MX7D_PAD_LPSR_GPIO1_IO07__UART5_DCE_TX

.

I suggest to adapt the latter naming convention also for the other i.MX
pinfunc headers, probably with introducing defines for not breaking
existing dts files.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
