Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13ADE20756
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 14:54:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+EUBfbr1mJwHXQ0USdE1EpHUR4ZRGW6R+YtwYugMt2g=; b=EwasWzPq5Cmfr3
	spTBcuxpYa+1d7Wr8d5p0lTRxVdOdDWYgzQ3NUCFgds6XE8K5mWSRz9dG+tws5tYRlNX1IEsCBmq3
	FXe1bKN8BAZ9/KfX39HIjklx3RgNTzja0QdNC76L6KdrZBEVM8GpfIp2alG4qsRYsEC5AZkLiaRkb
	GOud4nIRLr91yrrRd6TDF9Co4KOQKvgMviO5ePyDjMO3wvocymnT+rZdLMutYi0xtHlnqKblx4eCV
	KYHL1X9q2vZ033u9seoTekfIToci4rNM/M0A8ThsuSeYLSZxaDKX6Bq1TDaD+cDX66QgbQdvCe7W6
	Hyc2EfnRUFASBHKDzrRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRFtg-0003dg-Tx; Thu, 16 May 2019 12:54:08 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRFtZ-0003cz-BU
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 12:54:02 +0000
Received: by mail-lj1-x241.google.com with SMTP id z1so3003487ljb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 05:54:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=is+vcG0UlA2yzmtL4LYYh2ozUEoTSqklk60p4mnMQ04=;
 b=MFfg5EGV3WlcVRL7t42mRGuevg4Dw6jHWVPGT2WaA9U+imkG3qz/ByB3JShhUb2NxO
 IAAzMFCyoy1azLf5+Q4ThwNIqn4V0/PTTLPDCOt+U7xefvG3qkOt5zG0uB9cx/TNHXE6
 2+ED85Si4JXqF+cr/iQMckJ2lj+Pl65K1fgbeFkbbY1jSDmv1lN3C2eF4DTCsBjz/Zcb
 18XkqFVHEYMISKb44tLwMqYKXX9k0mqKfX0i8c6MUWXkuRuMDiTmBFpo8tV0Vx9Wtcb5
 z9tSgHWa/o0DMzx/TanVLPgRTSHg6HXiBkz+H2H7PQT21r5iYkCS8Z79gfZowJCaFo/z
 EWyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=is+vcG0UlA2yzmtL4LYYh2ozUEoTSqklk60p4mnMQ04=;
 b=sp5Hvi8BU3tLI2wv5P09xt/KkUvIl6eGC7aTodQ6Jw0fwNWeyvYN6lirnDV2vi3iJN
 6cQ2C6qdoun651TLznQhi52nbU7P6anLf6IamPqFrs+KC1JQLu34A2zbko5awb+P2VcR
 xYPqJ7nT2cpVQQfR4OaTEqpAum42M0aWzT//LLvzEuH7s5LsQ7HDA9lt/03nnsrVjsgC
 fYcRhI2igDf7hy3KYXqbXu5HFjGh0FxE/zupMX+Xud7kQ112CIIf/FAJrY8xsNU8nfK6
 RII7U3wxd2643nwQW99TnKEfv2LbiS+7jNNAupVfegtmZRF7zM0pGrnZdD8ZW/JbnLOV
 xl/w==
X-Gm-Message-State: APjAAAXvptQ1KaEtg/5hS35pqHTKs48V09BNrcUhts/Z1QY7Alh+/S5j
 auJZtd76e6+wIZmVqpvbM15Or82w5thKKkb74q7sCA==
X-Google-Smtp-Source: APXvYqwLJEUqsa8XfBzAuJKLBahg71QpFWWEysf/pHtQkxsQuNW8z5xmBuXwRIog/cBAbIfM7m/qozW3wQZmt//QoVw=
X-Received: by 2002:a2e:9a4f:: with SMTP id k15mr19599643ljj.159.1558011239510; 
 Thu, 16 May 2019 05:53:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190508021902.10358-1-leo.yan@linaro.org>
 <20190508021902.10358-5-leo.yan@linaro.org>
In-Reply-To: <20190508021902.10358-5-leo.yan@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 16 May 2019 14:53:48 +0200
Message-ID: <CACRpkda4aEfgW6e7EfqC=FE_=QzKi5UTDLLzHEryQ6kpcKYzVg@mail.gmail.com>
Subject: Re: [PATCH v2 04/11] ARM: dts: ste: Update coresight DT bindings
To: Leo Yan <leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_055401_396186_D4F648C6 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Liviu Dudau <liviu.dudau@arm.com>,
 David Brown <david.brown@linaro.org>, Fabio Estevam <festevam@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Chunyan Zhang <zhang.lyra@gmail.com>, Wei Xu <xuwei5@hisilicon.com>,
 Andy Gross <agross@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Orson Zhai <orsonzhai@gmail.com>, Mike Leach <mike.leach@linaro.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 MSM <linux-arm-msm@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Lee Jones <lee.jones@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Baolin Wang <baolin.wang@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sudeep Holla <sudeep.holla@arm.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 8, 2019 at 4:20 AM Leo Yan <leo.yan@linaro.org> wrote:

> CoreSight DT bindings have been updated, thus the old compatible strings
> are obsolete and the drivers will report warning if DTS uses these
> obsolete strings.
>
> This patch switches to the new bindings for CoreSight dynamic funnel and
> static replicator, so can dismiss warning during initialisation.
>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Lee Jones <lee.jones@linaro.org>
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> Signed-off-by: Leo Yan <leo.yan@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Will I need to carry this patch or will you send it to ARM SoC?

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
