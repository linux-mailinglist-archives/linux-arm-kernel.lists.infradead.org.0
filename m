Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8191F6C93
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 19:07:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hj7b6vlphE9I7Z63quzSZeWbRt94n4ShML7jgwj39Co=; b=XIWlfEESWFE+eo
	JxSogeA3UiyHA+oI3giuw1npunshj75nsa0Ti+g4/JCIBBPA8IyzmIR43lmQA14q+i8d60XiKQmVo
	tZWCAB78qBcpuz6T4VOzBy/dvGHiqwvkI4IBSQfdMzncLtk80h+/dq4pvZdQdqpljdyABu/INU253
	X6KFu96UQN4G8xcw7PPfOKp+JBLfbwpRnDwfrY7oy6pP4W4Xx93mcQ82797CmRPBebUKOgZF/PvRT
	7glBK9pDqPQIGjuEGCOxN6RlSTs5driY1Vhg2FKKXW54rY3Y6CUI8IpRc71Tab4bN9YM1EZx4nb7h
	pbG+1aQ4vIGDDvRE9Oig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjQfQ-0003xP-4z; Thu, 11 Jun 2020 17:07:04 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjQf9-0003sv-IU; Thu, 11 Jun 2020 17:06:50 +0000
Received: by mail-wr1-x441.google.com with SMTP id h5so6962755wrc.7;
 Thu, 11 Jun 2020 10:06:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=bYgWi0CbWr9efRoOcUkQ73nl3LMm75dhUsrAfK12w9c=;
 b=L4ucfsHByk+H8noH4FkTy0DyUzdKksJJZ14rVZuYiN4HFJEoSxIP5E+zpiQG5kFdJd
 Zu7asOJHLHmY2g1UhmwFqhuk6m6KDfifvQ9Rz4piCsFWAm0L5LtXDvG6xOh1FZ+2fVcq
 /Hlv7ID0RB2itcIOTkCw2Yux7a8Nsdlfe28tg7ClSNep1B/SlNmlL+eikKYl1VsdywLw
 qtz8khSiUF0eM/rGl77W0a/06ESSYk9aocIW6vaiUrnMZ6rxbm1cfBV9NuV5KGj+m9FU
 4gUR5MWQLTTL4h+K260EGllw5MlpQoWXxQjrtonMwTZ5Vg5pXGgQUbs+m+LJlU/3U5kt
 QcQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=bYgWi0CbWr9efRoOcUkQ73nl3LMm75dhUsrAfK12w9c=;
 b=erWBBVynIQgvudzGSRa1zD+lTIYF7MS80QKKjRja9QZCpgHtHIp7A2DlIBYNYrWgD1
 A0d9R2FD3BKAdb58tgM/iyTV2i1ZrJKcadI0vNvLbt0dstqtKH2T3HaGlUbW4aN20hsf
 kQmnJXWb2nJHmsLhUykJkCniEdKv0hGsEq98HbCyMGu5W8fPX0d+s+NOiIPyc3lXzUHP
 75ka8QPZj5da8wCENPrFeRd02YPCnlFdNVH4MWenplO3Lc0Zn7zxYE/jB/b5y+2hOmur
 VtoI93EUMp0cuPE4NVXi2ercCGomAwA1tv6rFdFknwSHoTa7f6Mizs3IEuVbQumuWVfP
 6WQA==
X-Gm-Message-State: AOAM533TeUP1hUBpPcyPoIqe864RhstfMFJNxUO0H0idO8CUHakhWcGe
 5+47i8v25VmU7D5FIt7V2l4=
X-Google-Smtp-Source: ABdhPJy1a2J0AjcDmA7VUeN6Mlwj09mw76s/Xu2UJ9v3l2MXyfQvCZjqdZlWsEA17q03XTAetCA7pQ==
X-Received: by 2002:a5d:6144:: with SMTP id y4mr10846341wrt.185.1591895206092; 
 Thu, 11 Jun 2020 10:06:46 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 f11sm5897611wrj.2.2020.06.11.10.06.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 11 Jun 2020 10:06:45 -0700 (PDT)
Subject: Re: [PATCH v4 2/3] clk: bcm: Add BCM2711 DVP driver
To: Maxime Ripard <maxime@cerno.tech>, Stefan Wahren <stefan.wahren@i2se.com>
References: <cover.4c4625a8e076f3163b800b3d8986b282ee98d908.1591867332.git-series.maxime@cerno.tech>
 <bb60d97fc76b61c2eabef5a02ebd664c0f57ede0.1591867332.git-series.maxime@cerno.tech>
 <e9e83c60-ef4c-8806-bcdb-a09702bf7559@i2se.com>
 <20200611165233.dmwxuz5lhxxbh7fb@gilmour.lan>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <c05ef3b1-ee1a-e4f4-c6de-a23cbe6d8670@gmail.com>
Date: Thu, 11 Jun 2020 10:06:39 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200611165233.dmwxuz5lhxxbh7fb@gilmour.lan>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_100647_622407_CC5B3766 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/11/2020 9:52 AM, Maxime Ripard wrote:
> Hi Stefan,
> 
> On Thu, Jun 11, 2020 at 05:50:30PM +0200, Stefan Wahren wrote:
>>> diff --git a/drivers/clk/bcm/clk-bcm2711-dvp.c b/drivers/clk/bcm/clk-bcm2711-dvp.c
>>> new file mode 100644
>>> index 000000000000..84dbc886e303
>>> --- /dev/null
>>> +++ b/drivers/clk/bcm/clk-bcm2711-dvp.c
>>> @@ -0,0 +1,120 @@
>>> +// SPDX-License-Identifier: GPL-2.0-or-later
>>> +// Copyright 2020 Cerno
>>> +
>>> +#include <linux/clk-provider.h>
>>> +#include <linux/module.h>
>>> +#include <linux/platform_device.h>
>>> +#include <linux/reset-controller.h>
>>> +#include <linux/reset/reset-simple.h>
>>> +
>>> +#define DVP_HT_RPI_SW_INIT	0x04
>>> +#define DVP_HT_RPI_MISC_CONFIG	0x08
>>
>> sorry for not noticing this before. Are these defines specific to the
>> Raspberry Pi, because of RPI?
> 
> I'm not entirely sure to be honest. It's the names that the register
> have, but it's not clear to me if it's something specific to the RPi
> itself, or it just means something else entirely.

My understanding is that this is a wrapper that was done specifically
for the Raspberry Pi usage of that IP block, which is why it has PI in
the name, so this looks good correct, and this does match the internal
register database name.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
