Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4995B1E585B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 09:19:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=epwSnlLNjF7xqOPF/lbhUHXt5FZue+eyN4hvwtLNu30=; b=I8tbM79ktrcrvK
	huHR4hllsAGjKvtrHLJoJzLbGCGh4fLZodIceUN/vYBD5Se4RnQIYbaxCbFLJLC4Dbcu9uv3ekrd2
	ueGWHzym+nBgLmNB67QLAX5AaDQLK2ocGxr9Xk6vtJeuHO1lcUlYX2QBKIzMe1ABdu8VtsPur6c2P
	+Uv9P7tn75s0iEN8FidianA3E54egC5RQB06o4Z+o28zY0U7ZRAkBUnC+tAzlpV7YIlsHiIVw3Meb
	BDnDQFJxsxQ7iJWPybX9xx+kLROtHi0Fml1H1isAfp8omJ07FyKSABwusTafMb/fqEOWvTVDE5hDl
	c0zajIXob5qVeonK59RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeCpK-0003dF-Ob; Thu, 28 May 2020 07:19:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeCp6-0003bg-VF
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 07:19:31 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1jeCow-00040N-9k; Thu, 28 May 2020 09:19:18 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1jeCou-0005YR-Qw; Thu, 28 May 2020 09:19:16 +0200
Date: Thu, 28 May 2020 09:19:16 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Fengping Yu <fengping.yu@mediatek.com>
Subject: Re: [PATCH v10] Add matrix keypad driver support for Mediatek SoCs
Message-ID: <20200528071916.2zxch46lbimxet2u@pengutronix.de>
References: <20200528053344.25936-1-fengping.yu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200528053344.25936-1-fengping.yu@mediatek.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:17:22 up 194 days, 22:35, 194 users,  load average: 0.08, 0.06,
 0.06
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_001929_008383_556ACC78 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-mediatek@lists.infradead.org, linux-input@vger.kernel.org,
 Yingjoe Chen <yingjoe.chen@mediatek.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

this version looks nice to me =) One last question.

On 20-05-28 13:33, Fengping Yu wrote:
> 
> Change since v9:
> - modify KEYBOARD_MTK_KPD config dependent item
> - remove wakeup member of mtk_keypad struct

You also removed the device wakeup capability completely, was this
intended? What I mean is that we don't need that member within the
driver state struct.

Regards,
  Marco

> - remove default pinctrl state set
> - modify request irq failed return value
> - add space of kepad matching table
> - modify align issue
> 
> fengping.yu (3):
>   dt-bindings: Add keypad devicetree documentation
>   drivers: input: keyboard: Add mtk keypad driver
>   configs: defconfig: Add CONFIG_KEYBOARD_MTK_KPD=m
> 
>  .../devicetree/bindings/input/mtk-kpd.yaml    |  95 +++++++++
>  arch/arm64/configs/defconfig                  |   1 +
>  drivers/input/keyboard/Kconfig                |  11 +
>  drivers/input/keyboard/Makefile               |   1 +
>  drivers/input/keyboard/mtk-kpd.c              | 201 ++++++++++++++++++
>  5 files changed, 309 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/input/mtk-kpd.yaml
>  create mode 100644 drivers/input/keyboard/mtk-kpd.c
> 
> -- 
> 2.18.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
