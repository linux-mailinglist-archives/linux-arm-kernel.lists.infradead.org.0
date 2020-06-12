Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E04A1F76D4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 12:40:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aBH/7t4dc2zU7XLGwN/Q+uRj80kHCTfNsdvHIDlKm3E=; b=g00QpfMGWepmQ0
	DpivgOfBqfDjesq4SZLjEu7f1Gnrz6oaXUfGQeUhBqtvkl5Mnc4PZyAtzdvJGrv51lt6KW44L9AFt
	xzMdd77cCx9JkJ3IYsjjc80Ma1bXEnZ57lINGDU/XoHcjbs9/zDXoRtz4PEIK8YPI5hv+yEvMrCTV
	Khux75MxNfbIWC296Heg6B4f8FEHxe/pm4ufVm/HqL/zGVDMyuu2qv2YhdPthdA8i5PtSmq7BLTQQ
	osRiu4mShrbpiKUdjL2pHeQgGw6ZFe7s0TZ4tVlbSkn9+fiURDc47ewMMR+bSG7ljWSZ0AkvzQAZM
	gzC33VHvNOuObx9VBgjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjh6g-0007JM-QI; Fri, 12 Jun 2020 10:40:18 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjh6I-0007Iu-6R
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 10:39:57 +0000
Received: by mail-ed1-f65.google.com with SMTP id m32so6074737ede.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 03:39:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=bBguARwUO/wHNwoTqDLDR0r7qkZEicJBKW50tLs1qxM=;
 b=W6FC9GwRWFTv+0JqjpSagLfUzvyRBRTNrt5tEE7AIDsXAXSNfkj3zdawZHJuvKX2+m
 d6c43g5lDm2zlLlKZYph4GQYL3rkH3mde1WSs77M+CUW2Xgqr++mJ2/oSBeNCoueHIcZ
 1x+AEPmb3KP8GT7j1M3gJEc9T8FVgX+LhavdvbhdM0JdOiNtDaN/hXnkDxwSImS7PPQa
 77SeGCdjjkG0K7GoXbp2LVbK79NHMJUJRhxoODTTt2PnfhV3fC34Ka3dDCv9KZHsAWfV
 EG9xNRKLHnZBHdjU2QBBI2Fk+GdBxZy/qJydNQk1VufHrsfMISr8Zznc91sqDrPgtlhV
 +pcQ==
X-Gm-Message-State: AOAM530MLJuEoCXBcwbJGQbXlQTPbTD46xsyl2gXVGrwMBG/P9TN22EA
 WLiIsU0VmOQ6cTVHkszFbG3wepj2
X-Google-Smtp-Source: ABdhPJxUutltGtDoTvlpjvOa5B+zbRtPHYPgbVfuqRWP8igjMXRPh0MsA09sbMQFUVf8LtHUBKErmw==
X-Received: by 2002:a50:fd19:: with SMTP id i25mr10916965eds.248.1591958392580; 
 Fri, 12 Jun 2020 03:39:52 -0700 (PDT)
Received: from pi3 ([194.230.155.184])
 by smtp.googlemail.com with ESMTPSA id qp15sm3379298ejb.69.2020.06.12.03.39.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 03:39:51 -0700 (PDT)
Date: Fri, 12 Jun 2020 12:39:49 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Subject: Re: [PATCH] i2c: imx: Fix external abort on early interrupt
Message-ID: <20200612103949.GB26056@pi3>
References: <1591796802-23504-1-git-send-email-krzk@kernel.org>
 <20200612090517.GA3030@ninjato> <20200612092941.GA25990@pi3>
 <20200612095604.GA17763@ninjato> <20200612102113.GA26056@pi3>
 <20200612103149.2onoflu5qgwaooli@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200612103149.2onoflu5qgwaooli@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_033955_740945_B72C33ED 
X-CRM114-Status: GOOD (  17.08  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Oleksij Rempel <linux@rempel-privat.de>, Wolfram Sang <wsa@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 12, 2020 at 12:31:49PM +0200, Oleksij Rempel wrote:
> On Fri, Jun 12, 2020 at 12:21:13PM +0200, Krzysztof Kozlowski wrote:
> > On Fri, Jun 12, 2020 at 11:56:04AM +0200, Wolfram Sang wrote:
> > > On Fri, Jun 12, 2020 at 11:29:41AM +0200, Krzysztof Kozlowski wrote:
> > > > On Fri, Jun 12, 2020 at 11:05:17AM +0200, Wolfram Sang wrote:
> > > > > On Wed, Jun 10, 2020 at 03:46:42PM +0200, Krzysztof Kozlowski wrote:
> > > > > > If interrupt comes early (could be triggered with CONFIG_DEBUG_SHIRQ),
> > > > > 
> > > > > That code is disabled since 2011 (6d83f94db95c ("genirq: Disable the
> > > > > SHIRQ_DEBUG call in request_threaded_irq for now"))? So, you had this
> > > > > without fake injection, I assume?
> > > > 
> > > > No, I observed it only after enabling DEBUG_SHIRQ (to a kernel with
> > > > some debugging options already).
> > > 
> > > Interesting. Maybe probe was deferred and you got the extra irq when
> > > deregistering?
> > 
> > Yes, good catch. The abort happens right after deferred probe exit.  It
> > could be then different reason than I thought - the interrupt is freed
> > through devm infrastructure quite late.  At this time, the clock might
> > be indeed disabled (error path of probe()).
> 
> This line looks suspicious to me:
>  Unhandled fault: external abort on non-linefetch (0x1008) at 0x8882d003
> 
> 0x8882d003 looks like not initialized pointer.
> The only not initialized value at devm_request_irq stage is i2c_imx->queue.

The queue should be good at this time because it is part of i2c_imx
which is allocated before interrupt (so freed after interrupt).

Like Wolfram suggested, the interrupt comes because of deferred probe.
The only solution would be to free the IRQ in error path... and in
driver remove.

This basically kills the concept of devm for interrupts. Some other
drivers experience exactly the same pattern. I now reproduced it on
unbind of dspi driver of VF5xx:

echo 4002d000.spi > /sys/devices/platform/soc/40000000.bus/4002d000.spi/driver/unbind
[  218.391867] Unhandled fault: external abort on non-linefetch (0x1008) at 0x8887f02c
...
[  218.754493] [<806185c4>] (regmap_mmio_read32le) from [<8061885c>] (regmap_mmio_read+0x48/0x68)
[  218.820049] [<80678c64>] (dspi_interrupt) from [<8017acec>] (free_irq+0x26c/0x3cc)
[  218.827853]  r5:86312200 r4:85a71d40
[  218.831602] [<8017aa80>] (free_irq) from [<8017dcec>] (devm_irq_release+0x1c/0x20)
[  218.839420]  r10:805f91fc r9:8630dac8 r8:8630dac8 r7:805f9214 r6:8630d810 r5:85a54780
[  218.847468]  r4:85a54800
[  218.850152] [<8017dcd0>] (devm_irq_release) from [<805f98ec>] (release_nodes+0x1e4/0x298)

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
