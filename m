Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B2F0DD852
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 19 Oct 2019 13:07:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vvfD0iSVTND8C7TqUC7CLE4fWBotiwqcNeUFrBKt2uE=; b=vBj1Fjvi5Ycakb
	4mjFjNeOmaR9RXiHKNdkUQEAPAjlPLO2gUQDB+9G3sfVONuflqip3GBzG76FWHMOT+IlVAoyEtDxn
	n8Ct2KS4WaWNhAZRg86Cx3dfBtWn63BPyKq9O+Dyhj7mpJvK7HUMziz53pErYayEJorLXUCSnklC7
	Bpj/H4uYvUwLPxEyv5lyS+cGsH3Bo9tI75V1hPTkyZO9BFPlOU/uRoZ5HyjfdlLNUpuY6+q2dctI3
	OK+8KBANuTWi65nAcUkwv6GCnKHgStue/uQ9OatR+1lWA2pDM0AXL76Y6bFChFXtPyWmd5dCv7SQg
	6oUomBz1DrSMGdn62aTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLmZZ-00027Q-6e; Sat, 19 Oct 2019 11:07:01 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLmZQ-00026t-CT
 for linux-arm-kernel@lists.infradead.org; Sat, 19 Oct 2019 11:06:53 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 3267660D59; Sat, 19 Oct 2019 11:06:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571483211;
 bh=wnOIIW4MR+CLK/071OVBzNZaauLzgBfSEoUioJEm5WY=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=LJ3WBBtmUl28mQPuUH7cOn3/SNt7WNhkVTxOm2/FoUoWM177EMQBU3fhRDrrDv4LM
 44TIGZVRjG04P+wPJ8ne5GHUpLtcRtGuj4wRfcoOYICRu/2VCc2vAQsikCvk2yRG+p
 LvBnDW67RmL2pjgKjLlvL65eGTjyESqlHYqR0qjM=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 920AB60D39;
 Sat, 19 Oct 2019 11:06:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571483209;
 bh=wnOIIW4MR+CLK/071OVBzNZaauLzgBfSEoUioJEm5WY=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=go6dHWqpkYFY2dGyszr8OAmuSCwtZIGaTWdcfcoar0dXcL6Qvguo3sDrIpnYI9o/9
 gwK00FxgPmGb2nKbbFTpfYe8GrirVct7y0Swsj86DabGQ/V1l8/OzsDcSaQs+LR6Kw
 mFzFHQt5LGvtJDsyRhPd7elZFcICtGj/iQ+n/GVU=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 920AB60D39
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Subject: Re: [PATCH 0/9] OpenPandora: make wl1251 connected to mmc3 sdio port
 of OpenPandora work again
References: <cover.1571430329.git.hns@goldelico.com>
Date: Sat, 19 Oct 2019 14:06:41 +0300
In-Reply-To: <cover.1571430329.git.hns@goldelico.com> (H. Nikolaus Schaller's
 message of "Fri, 18 Oct 2019 22:25:21 +0200")
Message-ID: <87sgnpvvsu.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_040652_464042_C9750F09 
X-CRM114-Status: GOOD (  18.16  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 devicetree@vger.kernel.org, Tony Lindgren <tony@atomide.com>,
 linux-wireless@vger.kernel.org, Kefeng Wang <wangkefeng.wang@huawei.com>,
 Bjorn Helgaas <bhelgaas@google.com>, letux-kernel@openphoenux.org,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 Yangtao Li <tiny.windzz@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Petr Mladek <pmladek@suse.com>,
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
 kernel@pyra-handheld.com, Alexios Zavras <alexios.zavras@intel.com>,
 Rob Herring <robh+dt@kernel.org>, John Stultz <john.stultz@linaro.org>,
 David Sterba <dsterba@suse.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-omap@vger.kernel.org, Allison Randal <allison@lohutok.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

"H. Nikolaus Schaller" <hns@goldelico.com> writes:

> Here we have a set of scattered patches to make the OpenPandora WiFi work again.
>
> v4.7 did break the pdata-quirks which made the mmc3 interface
> fail completely, because some code now assumes device tree
> based instantiation.
>
> Fixes: 81eef6ca9201 ("mmc: omap_hsmmc: Use dma_request_chan() for requesting DMA channel")
>
> v4.11 did break the sdio qirks for wl1251 which made the driver no longer
> load, although the device was found as an sdio client.
>
> Fixes: 884f38607897 ("mmc: core: move some sdio IDs out of quirks file")
>
> To solve these issues:
> * we convert mmc3 and wl1251 initialization from pdata-quirks
>   to device tree
> * we make the wl1251 driver read properties from device tree
> * we fix the mmc core vendor ids and quirks
> * we fix the wl1251 (and wl1271) driver to use only vendor ids
>   from header file instead of (potentially conflicting) local
>   definitions
>
>
> H. Nikolaus Schaller (9):
>   Documentation: dt: wireless: update wl1251 for sdio
>   net: wireless: ti: wl1251 add device tree support
>   DTS: ARM: pandora-common: define wl1251 as child node of mmc3
>   mmc: host: omap_hsmmc: add code for special init of wl1251 to get rid
>     of pandora_wl1251_init_card
>   omap: pdata-quirks: remove openpandora quirks for mmc3 and wl1251
>   mmc: sdio: fix wl1251 vendor id
>   mmc: core: fix wl1251 sdio quirks
>   net: wireless: ti: wl1251 use new SDIO_VENDOR_ID_TI_WL1251 definition
>   net: wireless: ti: remove local VENDOR_ID and DEVICE_ID definitions

I didn't get patches 3-7 so I don't know what they have, but what's the
plan how these should be applied? Normally wl1251 patches go via
wireless-drivers-next but are you planning something else?

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
