Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5342C2E8AE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 01:05:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J2wFrGpWraN6Hcn2mYG61CoQyOp8eJ/3VPe8x7wX6JA=; b=F3pRD7rGPy5ZFx
	n3f+iVNdcuLiy4MOWAudj596Em2VXRdp5ncRi/WiiGUnifWc9KpmUuC310gDCvsxPRbPIa1u7Kcil
	SDb+Fv4idvcmvgYpuhznrRroEWcPl5Pdd8w7k7TusHwSJGh//NC5NlbB/78LwF5czIaz3y149BPy/
	tSwL94COOd3wYz+0D4A2jiEFENyqM0QpiKbO6DNetqVzoizm+1acde1e5uCvZTO+mqbP7nNiSg36a
	5ob5M5V5ddTWLV1F5jQjKsDo23mm62WD5DkmM38OGkIZi6TU6vqHithoxqrNe/819B6nyZA+V1F9Q
	BhoW7b/KkfJeHvthN44g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW7dD-0008RP-2I; Wed, 29 May 2019 23:05:15 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW7d6-0008R2-LW
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 23:05:09 +0000
Received: by mail-pl1-x641.google.com with SMTP id d21so1702630plr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 16:05:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=sn7SzLVePT74hYMrzOggoTTgR0I4/4qPqO4K8HBko7Q=;
 b=LBLUDOMQ6xSIKd5t0CVXmKnt1n9IcYRe4f2iENYgZQTG82Zhf4MtWusceLH4KdlVCU
 siTOUmbaiAUi8F5kfspioZsp/hePgBrFqNX9d8KYRaIGnXbewet8GyZtEdkxPcanuwKH
 /0HJG6Q1gu97wPgB2Be8xBr4st7zRMNkP7NYVeYbgpGoVcXPDDTEHtyC7cDP1dqugmYe
 XZqoviY0Sjj6yf9KcbvE0Vi8JRZOn3jFURIpel56Y6TPgry08kMQyWD4oGtAP9KidjP2
 e3D/ug4SyEtf9hoNn9MrY7JQV650Nl983cftcQb36SHpNKiPDpFEV37aVTEVs365rXpN
 3Eng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sn7SzLVePT74hYMrzOggoTTgR0I4/4qPqO4K8HBko7Q=;
 b=mwgZxPGpb8nla+v+nFN84lWz2+8jVxl58kHtzqQ6k17dyndofNwuKh1oMCIhdZCgW+
 YENSkJKFD/mWkkTI+vjLNQUt0Mez0DYADu0zuTGNDzJI45Qmyypi5mGqBPY9BKIAKd5Q
 8SaPiCs1CC9R0xGSgMWd0jirpu0hHpygGG+/rZdkD1LZ1uGL9m4Qu0R4x0Hnykec7SI4
 h1hW7sy4SGU369xC/rsYkQJWwLqZhBLK+Gl8uZ7zRnQAxIWC61Yqafirq10xpw+dexq6
 FHvO9bW6uLROm1QUBOPVGYwKm9r2RTjdv46rTNjE+xhvYzPGrC9wK9IMR8u9+VGhR+HZ
 7RBw==
X-Gm-Message-State: APjAAAWvFnpWnElKcgBjNjFTXIVihGtALvcPa8HAoJx3qYhY10hXliuQ
 GpzYuGo7/Sqjx25ckxvvr5t9MjU/ZZE=
X-Google-Smtp-Source: APXvYqycvHn89zXHAwNBj7eZzs5T844h1v9oUP4/ximCLwqfgyxhCd66AUf4/IEmieDgzjtiZALRcg==
X-Received: by 2002:a17:902:2907:: with SMTP id
 g7mr513993plb.114.1559171107812; 
 Wed, 29 May 2019 16:05:07 -0700 (PDT)
Received: from Asurada-Nvidia.nvidia.com (thunderhill.nvidia.com.
 [216.228.112.22])
 by smtp.gmail.com with ESMTPSA id t24sm813254pfq.63.2019.05.29.16.05.06
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 May 2019 16:05:07 -0700 (PDT)
Date: Wed, 29 May 2019 16:03:57 -0700
From: Nicolin Chen <nicoleotsuka@gmail.com>
To: Daniel Baluta <daniel.baluta@nxp.com>
Subject: Re: [PATCH 0/3] Add mclk0 clock source for SAI
Message-ID: <20190529230357.GB17556@Asurada-Nvidia.nvidia.com>
References: <20190528132034.3908-1-daniel.baluta@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190528132034.3908-1-daniel.baluta@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_160508_707698_930ACFDF 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nicoleotsuka[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 "timur@kernel.org" <timur@kernel.org>,
 "Xiubo.Lee@gmail.com" <Xiubo.Lee@gmail.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "tiwai@suse.com" <tiwai@suse.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 "broonie@kernel.org" <broonie@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 01:20:46PM +0000, Daniel Baluta wrote:

> 1) SAI clock source select MUX is really part of the hardware
> 2) flexibility! We let DT tell us which is the option for MUX
> option 0.

I think the "MUX" is plausible comparing to your previous version.
As long as DT maintainers ack the DT binding doc, I would be okay
to ack too. Just one comments at the dts/dtsi changes, I know the
driver would just warn old DTs, but it does change the behavior at
the mclk_clk[0] from previously bus_clk to NULL after this series.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
