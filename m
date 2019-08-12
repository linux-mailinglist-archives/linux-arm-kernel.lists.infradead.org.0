Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F808A9BA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 23:51:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IuGrhRPVZWUu2b/7MKHVyV46+MjDlVjGIw8YZbjSRIk=; b=FWREi6IjmJrI1S
	CVDCf/GWIsgIDpXmRipb2gOMR2UPHYlY/LCfs/u1FRgxbdnLdEM+ztp0kDp69kc5kYYJOSFTvZ5Jf
	O84XHXTxEOXRbIX7eKsgSL1QwobLPXW5xKpE9TKpo7X+Pz4X8OLoTAKm6zefIfXaE3tYeTQ5jDTrE
	b3tmX4TpgIEGx7wQ+Y/lcJNwY9G/3ynY7YtkWAPYwuz+RPK9tGyHvf/92x29PUYbBvzzRBW8kcmeF
	UToFCrAGSkuTRSEE3Bh8mLxrrrAymRvqpMRsF176WA7ZmdZgBcOwZYpfkcHNxmbw/KED4hSj753dk
	1O1WWu7ppo9YKHi6nkfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxIDm-0003j3-CE; Mon, 12 Aug 2019 21:51:18 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxIDZ-0003hz-IL; Mon, 12 Aug 2019 21:51:06 +0000
Received: by mail-ot1-f67.google.com with SMTP id o101so11876524ota.8;
 Mon, 12 Aug 2019 14:51:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YxUrApdtPFyU9H97SktZgYuAmYUABRE+Th0JrfsEq/M=;
 b=Bqceol6naYDew0bg3vcVb15tP03MzWZ5Za0sjzsM1trmar65azOTp1jkRQrangC2WB
 bt687ir5bR5vYUzwTVAa9zLzK1RX3BhxXCra/ET5BmWigWiJ7HmjOPic5QuNPsTtmVj7
 /zxgCo9SUXDD5WkHqY7BVzywe/XMfwb2sNutOHcE24nFzXp4HNSS57ITkq5hWxmzB56u
 hzkDnVDAZEwMBbPhJ3yLB4s6tXLTeYlwcabgVrzmmixQCQGAWVLN03vEAXWD98dBP4pp
 WtMWyDOBudmKXSDpKi0vHK51RE0Lc+YZoZ1CWVLil5ZlJBZtwnVvqfpElAg3RdPQiS8h
 8gQw==
X-Gm-Message-State: APjAAAUJIZ3qL7FWw+g8r3pTZ6McCt4rwNJBw9aFK8VUPsSs0p4bJS5K
 r5hR2wPW4MPW9L4ckR9h6Q==
X-Google-Smtp-Source: APXvYqwW5LyJN2JbS/NExdIgszJ6uaD2Tgi4uSs8FsNTdmrSvThlgJLvWGD+LXLQDLkz6CM2zEf6mw==
X-Received: by 2002:a02:528a:: with SMTP id d132mr38640289jab.68.1565646664461; 
 Mon, 12 Aug 2019 14:51:04 -0700 (PDT)
Received: from localhost ([74.118.88.158])
 by smtp.gmail.com with ESMTPSA id a7sm83055927iok.19.2019.08.12.14.51.03
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 12 Aug 2019 14:51:04 -0700 (PDT)
Date: Mon, 12 Aug 2019 15:51:03 -0600
From: Rob Herring <robh@kernel.org>
To: Jitao Shi <jitao.shi@mediatek.com>
Subject: Re: [PATCH v5 1/4] dt-bindings: display: mediatek: update dpi
 supported chips
Message-ID: <20190812215103.GB5954@bogus>
References: <20190807060257.57007-1-jitao.shi@mediatek.com>
 <20190807060257.57007-2-jitao.shi@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807060257.57007-2-jitao.shi@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_145105_603961_F8836A68 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, stonea168@163.com,
 dri-devel@lists.freedesktop.org, yingjoe.chen@mediatek.com,
 Ajay Kumar <ajaykumar.rs@samsung.com>, Vincent Palatin <vpalatin@chromium.org>,
 cawa.cheng@mediatek.com, bibby.hsieh@mediatek.com, ck.hu@mediatek.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 Thierry Reding <treding@nvidia.com>, linux-pwm@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Pawel Moll <pawel.moll@arm.com>,
 Ian Campbell <ijc+devicetree@hellion.org.uk>, Inki Dae <inki.dae@samsung.com>,
 linux-mediatek@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, eddie.huang@mediatek.com,
 linux-arm-kernel@lists.infradead.org, Rahul Sharma <rahul.sharma@samsung.com>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Sascha Hauer <kernel@pengutronix.de>, Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 02:02:54PM +0800, Jitao Shi wrote:
> Add decriptions about supported chips, including MT2701 & MT8173 &
> mt8183
> 
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> ---
>  .../bindings/display/mediatek/mediatek,dpi.txt        | 11 +++++++++++
>  1 file changed, 11 insertions(+)

And run a current get_maintainers.pl. Your DT maintainer list is out of 
date by years.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
