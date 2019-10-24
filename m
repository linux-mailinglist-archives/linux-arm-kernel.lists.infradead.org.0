Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC0DAE3D6A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 22:36:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UZxCjaIBFfDzIwFUtv/dljDpr7s62va/kGOS5+DFwqE=; b=HZcVHEhK6qOBon1ItXkb+glno
	txYq1E9L5zY0MgkVpuRKSqoOipIK9+YO5oMZap5ndSToOeeu80g7A6sYEgZ/KcU3uY8S9EFdVFLQ+
	m4ZZxxFyQ3ATrbf9H+K98QaQY3ploGg2nnBob/8OlJsRRUhTckwCNTcZ3rDGUO0905uerRlW4gTkN
	VcqMqRa+yY7QSzKFfEW4PkcZJl/thYdVMDt9E8TCCeXLsjQtpWs4Mgyhjh3ij40CTfk2AHbUS3x70
	++HdeRDRFbtm+d1p5qIi5L+mNW9MbvPZvCQh7+2HX0F0GuPiIKiF16y1pMHeSccjiJXD9m13sWzqG
	GxNiWCX4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNjqZ-0003le-PO; Thu, 24 Oct 2019 20:36:39 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNjqR-0003lD-2L
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 20:36:32 +0000
Received: by mail-wr1-x444.google.com with SMTP id a11so11424963wra.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 13:36:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=TcVdzhKCHKceqty/bwdBAIuB0q/LLF2xHZuEhIcLaNw=;
 b=cqY4m0XypXCSBqpzHHtWhgUFCHbmT57VQy8oBvnLAISynQINKKpzPP6+odj98MFuLE
 HluqoobpQbDLlzYbGlTU5gANVlaIukNdocp4R/2PpCbiGX6WIq5iDHqaFG2OEBKfgthz
 kyxybD6XLbFeFBfs1XEXDILzcwfH98xvfcKg0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=TcVdzhKCHKceqty/bwdBAIuB0q/LLF2xHZuEhIcLaNw=;
 b=ghs4mPpNgGfV2vrDX9AHu3U4+tR3r+QQh0pPuDjs9fIEEbi2BvSikQGhIhhP9ESYy2
 ZbOd1U7tShPTwgfQXaZo9KauoXeEmRTl+91VXC5yRYS+2fG8zlkC/zC1RCmlCb5g8/m3
 vBrmKhzOfASGrymQG3U7YddlE8BS/9DF+q2dPVsxljGr7YIn0mib+Y5RB865rMRVzxFs
 5BcgqoCmBXhEn/mC5K+gYrE4BYyct6gsSNZi2LCarQg90Y+yJDKbc2uOL7FBqEWwfBue
 Tmz1NaTa/PO05KjbElsguzObSGnMDM82mr5tVmyOsQbvT5HwL/wyQ6qsz+YJtxuWDCb4
 CTMQ==
X-Gm-Message-State: APjAAAUF8z0s8vzYmBVzPxhGiu63PmVZYo+hAxIEramP5p/P0keGZpQp
 w61nWNoNvTYFgN9RY8qKf0sP+w==
X-Google-Smtp-Source: APXvYqziKV2Dmlxn7bGB5F4iUFgJyQstWtSJc7wJ+q0Mtatc28JLRUxC2wgpiMudMnrZyLRPQIFYJQ==
X-Received: by 2002:adf:bad3:: with SMTP id w19mr6002008wrg.17.1571949388807; 
 Thu, 24 Oct 2019 13:36:28 -0700 (PDT)
Received: from [10.136.13.65] ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id b196sm5240713wmd.24.2019.10.24.13.36.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 24 Oct 2019 13:36:27 -0700 (PDT)
Subject: Re: [PATCH v4 0/2] gpio: brcm: XGS iProc GPIO driver
To: Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linus.walleij@linaro.org, bgolaszewski@baylibre.com, robh+dt@kernel.org,
 mark.rutland@arm.com, rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com
References: <20191024202703.8017-1-chris.packham@alliedtelesis.co.nz>
From: Scott Branden <scott.branden@broadcom.com>
Message-ID: <12a8ace7-f69d-4002-0146-e84a62b8fd69@broadcom.com>
Date: Thu, 24 Oct 2019 13:36:23 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191024202703.8017-1-chris.packham@alliedtelesis.co.nz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_133631_115996_1352BA27 
X-CRM114-Status: GOOD (  15.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Patch Series looks ok.

On 2019-10-24 1:27 p.m., Chris Packham wrote:
> This is ported this from Broadcom's XLDK (now heavily modified). There seem to
> be 3 different IP blocks for 3 separate banks of GPIOs in the iProc chips.
>
> I've dropped everything except support for the Chip Common A GPIO
> controller because the other blocks actually seem to be supportable with
> other drivers. The driver itself is halfway between pinctrl-nsp-gpio.c
> and pinctrl-iproc-gpio.c.
>
> Chris Packham (2):
>    dt-bindings: gpio: brcm: Add bindings for xgs-iproc
>    gpio: Add xgs-iproc driver
Acked-by: Scott Branden <scott.branden@broadcom.com>
>
>   .../bindings/gpio/brcm,xgs-iproc-gpio.yaml    |  70 ++++
>   drivers/gpio/Kconfig                          |   9 +
>   drivers/gpio/Makefile                         |   1 +
>   drivers/gpio/gpio-xgs-iproc.c                 | 321 ++++++++++++++++++
>   4 files changed, 401 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/gpio/brcm,xgs-iproc-gpio.yaml
>   create mode 100644 drivers/gpio/gpio-xgs-iproc.c
>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
