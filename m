Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 076601D943F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 12:22:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m2DHorZU/NXWUjC3wHnOlXGGUujT6dMs0x55bKeS5sg=; b=j/fXeBn3XfK4Vb
	ndFxwxSQEcMuxqnLaroQ0CWL1z/lAG/YHLuCJ3AjjjKzcvUoLyGZOO5wG8QEPRXv57yQjLK8hVkTj
	G7kQroB0+omztWpCfRapk5END1JLWiDGvRfjWbc88GeWMv9sCMa7Yt5Uo1EI4nO+10wlDPmXr6Q63
	QG6Fen6ZbVWR4g6Tyj9GWM2KZGvzvgoCOnMWVNISFu5gV0es4BAwg/T6QgO9n4QBee0ylS+VDPXFf
	XBokT3RhFtBBup7+aRXY4mHrtQ0SOmX0V2R9+FWv9xl0hVKUStfpii3EePRXIqK//h5FjPAsnvSFM
	Waaih3qPfY/pClevXeKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jazNs-0004xX-Up; Tue, 19 May 2020 10:22:04 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jazNi-0004vw-0D
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 10:21:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589883713; x=1621419713;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=CsKj8Kuj1IbnbFOhV7YM/UtfQRXVj8rj3zOQpiZ/WF4=;
 b=o2AiYLUjWGzTL8VaOLXTKN7L8RWtxH0vDmcJ9PJhA7vIUMI4IzKxj71a
 aqrtUmV+V6g79gqNNnxoljaRmFNI5Pa+Wxyu6Fe2zyr850tWVmb+bnPqz
 xpzNl6rznHAVNloZvP0PMoaZHTwpqM87XGF7WAOAa4/YwMIqnEBHluzKJ
 q3mY1uPy0fkNKa0rj4RLspHtEDiCt9dr2yktO5RW1z164JJwKPqdU0XLJ
 i1FaZEhtMYhBWNO/EXulVajUA2twvVYeM+OT3feKkNf6EpaCMblftxWXn
 FCqiPSpk+0NNP+OIttEnNYerl5GKsLSpdb2mMuSp1h8hFE2kSADEKyVFU g==;
IronPort-SDR: 9qhl5kGKNOKLh9hl3xxT6jcZB+uwNX1sM4EFvkXp33o6GksLQoD5emk71KwJOdrx0G0m/SvSIw
 e3AIIUOTP5YNtoLq8y6wP8Sxey/QxM/Bbb+Dgvmp5CDE8rw+sE7fczmwo8qNgUUgAa8WtIED8j
 YGYn27lafrgcGmss/Bw/zWwCWYup81AaUtUShKDEgjQvJinGXGxFghcDu2ojxR2ieWscHxNIv6
 TBX0q1oISeeAi3J9vumVlHrPqwYlY2k38q1OKxCQtBsAxUqQwecBjPOdsB8quqi6GnaIIYLPX/
 pLM=
X-IronPort-AV: E=Sophos;i="5.73,409,1583218800"; d="scan'208";a="73862619"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 19 May 2020 03:21:48 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 19 May 2020 03:21:48 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Tue, 19 May 2020 03:21:49 -0700
Date: Tue, 19 May 2020 12:21:47 +0200
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 01/10] spi: dw: Add support for polled operation via no
 IRQ specified in DT
Message-ID: <20200519102147.GC24801@soft-dev15.microsemi.net>
References: <20200513140031.25633-1-lars.povlsen@microchip.com>
 <20200513140031.25633-2-lars.povlsen@microchip.com>
 <20200513143753.GI4803@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513143753.GI4803@sirena.org.uk>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_032154_137582_B3CA5D2A 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 SoC Team <soc@kernel.org>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/05/20 15:37, Mark Brown wrote:
> Date: Wed, 13 May 2020 15:37:53 +0100
> From: Mark Brown <broonie@kernel.org>
> To: Lars Povlsen <lars.povlsen@microchip.com>
> Cc: SoC Team <soc@kernel.org>, Microchip Linux Driver Support
>  <UNGLinuxDriver@microchip.com>, linux-spi@vger.kernel.org,
>  devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
>  linux-arm-kernel@lists.infradead.org, Alexandre Belloni
>  <alexandre.belloni@bootlin.com>
> Subject: Re: [PATCH 01/10] spi: dw: Add support for polled operation via no
>  IRQ specified in DT
> User-Agent: Mutt/1.10.1 (2018-07-13)
> 
> On Wed, May 13, 2020 at 04:00:22PM +0200, Lars Povlsen wrote:
> 
> > +#define VALID_IRQ(i) (i >= 0)
> > +
> 
> This isn't something that should be defined by an individual driver, it
> should be in a generic header.

Thanks, I will work with Serge on getting this integrated right.

---Lars



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
