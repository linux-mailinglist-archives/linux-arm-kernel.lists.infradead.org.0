Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 164001830E4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 14:09:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N8134xTPQZ24qMeKjPCoAY2rqEdBWCpOFNbionikNgg=; b=St6YKxQN1lwwQh
	meutWKLVxLIu5kQiIyNU1BYsfMYnsT525HhXHgePf+wnVuufkrH0W25ysLYEedSXxrgOfz3WcbziH
	/yxPmZzT19U22bqujnAu/9oYzVA6u8Vd/psTYrIdV1UKVaFBRJnoK98habz2RT6O1ZQzT776inLux
	eRF8KCAEpnR0mAeeKU1biFU6C+slKhFfDoO74RjOmz1OeZCf1AZEb3PBXHJ/acUISoMuFEACz7cHk
	5rPh35PIFgMcPpX1vCYpbbwp9MWyhGGf7p4NU6GABng5LblKPIqeeLsQCiC4htJdcCy+dP7vawagE
	264NTAjYQnmpXoR4X8Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCNaW-0006zp-7K; Thu, 12 Mar 2020 13:09:24 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCNaG-0006u2-UI
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 13:09:10 +0000
Received: by mail-ua1-x941.google.com with SMTP id y3so2076378uaq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 06:09:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LyzsKuloOrXeAT1eDgIMEyFoe/19CJB+RPiJ8KPwQIw=;
 b=NeWi4sT4tcbOtVyLPuM+OlmGb0SVww73M2/R4+x0yevjrTcctku9ZniQ0wxvDpbhJ3
 I4R/OYEqZArLPzoutN66dWfc7JJ37NZL/mNx9nxoeLvvnrgJEWcc1CXVMf+zn3Au+w3U
 okoA4mIsV2nkwV65aXMAwIswdl64TXCOqmu4YYKwjkzos3miKzEHnZ+GpHOuYx7uLGaE
 zHIWyCppm77BMtgL6QzXZ1Hmzbggl/6H03ugd/cIfkOT8qbVLz6/gLHeUuFfSjA9Xeoa
 MPG4tdiKgMXWO+eh5rsKNsC90o+9x14NA86uN0lqIQ3Mf/DoxgdetNVvKcjGiJ0mRcBA
 R3aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LyzsKuloOrXeAT1eDgIMEyFoe/19CJB+RPiJ8KPwQIw=;
 b=UAf2WilhXkHeRGJ2Z8a0X1H0/+NSwiFGW5k2MXCQaf144i7tGuZ+8rkBjTe1FwBBz9
 IEgwORgPA8/MqLU32XGJxSK4mB+0GpGdzBs8xpnVJIgS3I9sUEWPDL+/OgVKGC5APT0+
 YwULrKTz2jS3TbDPLYsDFij2n894zwpCJkiAeeU9noV7lyaVwx6w89C+AiRrTCK8ygE0
 WvpEbFG9itHeTGqSQtxvWm7rPDRQ3O9BrNW+w+8dw19OIYVGrspyrY+TBBzEsQivi3YM
 t61csY3c4PgIlU/GPoxtbBolFYtPNC/JSgZkg8T7gDMUdDfiI7F+zRBtwLbNbsYiPvk/
 OhTg==
X-Gm-Message-State: ANhLgQ2rExyt/ybRa5ty3M0+mJHpgEwTbTT3LP6ahSRlRf9IYjKVOKQB
 g0pukYoXtfnVg7GAygdn+noDg8LJITbqYZJ44EDtmA==
X-Google-Smtp-Source: ADFU+vvpfThPEsySr4RvSlP6UPDA5AYK/x2Ak/VHoJ9GoNUgCMWeZ+k5a42yKU7sePemyrIkQzJo3xMLVDtx8jEJPkw=
X-Received: by 2002:ab0:7381:: with SMTP id l1mr4821390uap.104.1584018547554; 
 Thu, 12 Mar 2020 06:09:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200306174413.20634-1-nsaenzjulienne@suse.de>
In-Reply-To: <20200306174413.20634-1-nsaenzjulienne@suse.de>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 12 Mar 2020 14:08:31 +0100
Message-ID: <CAPDyKFp+XwGog_w+8Sv1hYA-Umi6Rt2LYR1fyMEEb9abdb9nGQ@mail.gmail.com>
Subject: Re: [PATCH v2 00/11] Raspbery Pi 4 vmmc regulator support
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_060908_997916_F995D43B 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, DTML <devicetree@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 linux-rpi-kernel@lists.infradead.org, phil@raspberrypi.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 6 Mar 2020 at 18:44, Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> The series first cleans up a common pattern, which is ultimately needed
> to integrate the regulator with bcm2711's sdhci-iproc. It then
> introduces the relevant device-tree changes.
>
> ---
>
> Changes since v1:
>  - Use helper function istead of quirk
>  - Add GPIO label
>
> Nicolas Saenz Julienne (11):
>   mmc: sdhci: Introduce sdhci_set_power_and_bus_voltage()
>   mmc: sdhci: arasan: Use sdhci_set_power_and_voltage()
>   mmc: sdhci: milbeaut: Use sdhci_set_power_and_voltage()
>   mmc: sdhci: at91: Use sdhci_set_power_and_voltage()
>   mmc: sdhci: pxav3: Use sdhci_set_power_and_voltage()
>   mmc: sdhci: xenon: Use sdhci_set_power_and_voltage()
>   mmc: sdhci: am654: Use sdhci_set_power_and_voltage()
>   mmc: sdhci: Unexport sdhci_set_power_noreg()
>   mmc: sdhci: iproc: Add custom set_power() callback for bcm2711
>   ARM: dts: bcm2711: Update expgpio's GPIO labels
>   ARM: dts: bcm2711: Add vmmc regulator in emmc2
>
>  arch/arm/boot/dts/bcm2711-rpi-4-b.dts | 13 ++++++++++++-
>  drivers/mmc/host/sdhci-iproc.c        | 17 ++++++++++++++++-
>  drivers/mmc/host/sdhci-milbeaut.c     | 13 +------------
>  drivers/mmc/host/sdhci-of-arasan.c    | 15 ++-------------
>  drivers/mmc/host/sdhci-of-at91.c      | 18 +-----------------
>  drivers/mmc/host/sdhci-pxav3.c        | 20 +-------------------
>  drivers/mmc/host/sdhci-xenon.c        | 20 +-------------------
>  drivers/mmc/host/sdhci.c              | 24 +++++++++++++++++++++---
>  drivers/mmc/host/sdhci.h              |  5 +++--
>  drivers/mmc/host/sdhci_am654.c        | 17 +++--------------
>  10 files changed, 61 insertions(+), 101 deletions(-)
>
> --
> 2.25.1
>

Patch 1-4, 6, 9 applied for next, thanks!

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
