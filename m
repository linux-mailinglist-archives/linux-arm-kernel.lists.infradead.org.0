Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB94154D24
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 21:45:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KgFMCH+G2+cy7mabPLbOESZUhht02rH53KY/oXCCZ/U=; b=tQiKJW4WU+UUZ4
	akvNmQDPAXh/H118PRKvjn62bThEcUZ25vcF0tKwT9d3m1vG0xqCqM1D+Kkii2WP1shEsi2I2iDHW
	KZs5UAWRZvYsl1wr/QQNvLEMb3G72eTeQ9q5k90m5/9PnPccy/LY7qfp4+AhZP9cvo/G4gEVR8par
	5lCPdnATYpwgAKbryhL1kCqvl8bfi21wMrRgnshMUiQHkoR4j4q4iTj1orWvpQWkugYSFz76ZH+Q5
	bWXYGvmiwEfaZVNt5FBnRKuRtbQ0YWVTHoFAVMvBNxmvdjacJif+qXn3lzvR1+sq3H+pZyv3pAgm/
	zp10RQ3QXxNnJ5+bY5pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izo21-0007V9-8l; Thu, 06 Feb 2020 20:45:49 +0000
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izo1k-0007O3-BE; Thu, 06 Feb 2020 20:45:33 +0000
Received: by mail-pf1-f196.google.com with SMTP id p14so55336pfn.4;
 Thu, 06 Feb 2020 12:45:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=H2tVfCzm70bqHn3/yPEccEJKGtHclRembq2rrvGRktQ=;
 b=grs08bRkkB8O9FtmXib/mJaWqlqh8x6mZHZuj7eFsBhQ44IEWQu6h0OCMuIHGvTFLE
 ThdMQ98JykQGLw3nWq9eM5GB8fK3kqSDnj2K/OjoxtTO0iZ2Q0BZnL8YVEbAt1X3kucG
 rzzpZBcJgpgqRiJ1H0wNDXwv06vPghbHoDAk82NoH5pWecfOYX+Y5fNGs2ogM1qU74Ht
 nZENBIeUtrnM6XXDcHGXQauONvdzoIvoNhBm0+ZSKvIm44fpNKgvYLAn3O/ZR+RW9ydz
 BNkMezmdgzEllJuWmm9105Vje2AY6M2wqJxtA7F8sDDAYcLf/mnRo7/hxOSuIRxOH5Qy
 9kuA==
X-Gm-Message-State: APjAAAU/qLvGrOuI3UpwUWuhuOHtWFlt0Ma6fEKQvwkUh7NaE5h+KGdC
 TMcHtZRVf5FfRBSumm22xA==
X-Google-Smtp-Source: APXvYqwfL4vZeTOwGsr6xUGNFEjJf8dH67j94K/HXOdtctgmKZDpYGF4Hd+jwY8XeBUB/qLzc7l6kg==
X-Received: by 2002:a62:c583:: with SMTP id j125mr6195854pfg.27.1581021930368; 
 Thu, 06 Feb 2020 12:45:30 -0800 (PST)
Received: from rob-hp-laptop (63-158-47-182.dia.static.qwest.net.
 [63.158.47.182])
 by smtp.gmail.com with ESMTPSA id b1sm282011pfp.44.2020.02.06.12.45.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 12:45:29 -0800 (PST)
Received: (nullmailer pid 28991 invoked by uid 1000);
 Thu, 06 Feb 2020 17:22:58 -0000
Date: Thu, 6 Feb 2020 17:22:58 +0000
From: Rob Herring <robh@kernel.org>
To: Louis Kuo <louis.kuo@mediatek.com>
Subject: Re: [RFC PATCH V5 2/3] dt-bindings: mt8183: Add sensor interface
 dt-bindings
Message-ID: <20200206172258.GA19946@bogus>
References: <20200129081650.8027-1-louis.kuo@mediatek.com>
 <20200129081650.8027-3-louis.kuo@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200129081650.8027-3-louis.kuo@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_124532_397920_FFE2EB3A 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 1.1 DATE_IN_PAST_03_06     Date: is 3 to 6 hours before Received: date
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.196 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Sean.Cheng@mediatek.com,
 laurent.pinchart+renesas@ideasonboard.com, Rynn.Wu@mediatek.com,
 christie.yu@mediatek.com, srv_heupstream@mediatek.com,
 Jerry-ch.Chen@mediatek.com, tfiga@chromium.org, keiichiw@chromium.org,
 jungo.lin@mediatek.com, sj.huang@mediatek.com, yuzhao@chromium.org,
 hans.verkuil@cisco.com, zwisler@chromium.org, frederic.chen@mediatek.com,
 matthias.bgg@gmail.com, linux-mediatek@lists.infradead.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 29, 2020 at 04:16:49PM +0800, Louis Kuo wrote:
> This patch adds the DT binding documentation for the sensor interface
> module in Mediatek SoCs.
> 
> Signed-off-by: Louis Kuo <louis.kuo@mediatek.com>
> ---
>  .../bindings/media/mediatek-seninf.txt        | 66 +++++++++++++++++++
>  1 file changed, 66 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/mediatek-seninf.txt

Bindings have moved to DT schema. Please convert this to a schema.

Sorry to ask for this on a v5, but I don't recall seeing an earlier 
version recently.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
