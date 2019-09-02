Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECFABA57D3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 15:39:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Subject:From:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UOPW/RtoY2Y/qxmXeKDW8gnw8zcF2mkZLh0lYXgxwpc=; b=on/PFEucGMGfGn/xo1l9j0uev8
	n732Wo2q1xpe9zEj+WYBaP4tG0Oun7aEi5wDA98KeDqp+kpTpZ5nT+o0uQt06UsaxMAEZD4EZJAXV
	NIKxBHmiCBYgiO2+V8YP9NLIjxP6O4exD5pNaodw78FGlXE/ued/wFxCNGFYcS2F/dy3viFiEIkgp
	jTyScI7D6bm5MOggybEM+lO5AmPcz7+wvoPnYFPC3sIdeEgSv3+CKt2IOOHmV36KygPeLj9haWd4j
	xqoDTr8uPy3SuOLdOV3qgfgHkAdM5KGf/xtA22mlrPWH8wAywj2RFrJ83EU0kuXlVOXU4oyAs0gWu
	CGlWzYUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4mY8-0001PY-JH; Mon, 02 Sep 2019 13:39:16 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4mXd-00016x-Dp; Mon, 02 Sep 2019 13:38:46 +0000
Received: by mail-wr1-f68.google.com with SMTP id j16so14060224wrr.8;
 Mon, 02 Sep 2019 06:38:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:subject:references
 :in-reply-to:cc:cc:to;
 bh=09FoypwgmyRAmmFg+Htl5lGcxB/1mAqQuM9bRNLvNts=;
 b=o9lfqqduDjnd7Bzakn3bIXG3EFmmQ7b0u/asKPT90MCWpYlYHHWrpAQx2FDNY9MYBQ
 JiczrMXeGm2n3PGiFrhi0aBUXqyauHcyknKf6l9Hre6ATszRY3QwJkjB24/zIsQEB3eo
 TzjspYcgEB8HA+mo7rw0gF84Flhugr089KEbShyHzyxP0B3N5oFMZUSdIwn2vm+qvxC9
 GGdv960KrutRP1hEFXx+IaoY9i02RmQDrJv0lHBBsxeW3VL4vgVT1jRKq8M/vcBInANx
 aMChZKD0K4ZDTmZ5wOjpcfg3NYHR6ngJWhCUaKXez7EIwuVZFTwiNp4HszoU6bGB11VV
 HgGA==
X-Gm-Message-State: APjAAAX4s81ow5Rjb0RU129t8+525w2NFAYucyF3OYJv02Vme/feqLMO
 0sCAFf2TPMfLhKbgR47pXg==
X-Google-Smtp-Source: APXvYqzUIDBa+LF4N8gaqJYa3KSq6v85Fgr8KXNSFW+T9D5h8aoLxSoonU1EHXuOx23Z15V/h+Jqug==
X-Received: by 2002:a05:6000:128d:: with SMTP id
 f13mr37181235wrx.241.1567431523763; 
 Mon, 02 Sep 2019 06:38:43 -0700 (PDT)
Received: from localhost ([212.187.182.166])
 by smtp.gmail.com with ESMTPSA id a13sm1559920wrf.73.2019.09.02.06.38.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 06:38:43 -0700 (PDT)
Message-ID: <5d6d1b63.1c69fb81.1cab3.5ef8@mx.google.com>
Date: Mon, 02 Sep 2019 14:38:42 +0100
From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 2/2] clk: mediatek: add pericfg clocks for MT8183
References: <1566980533-28282-1-git-send-email-chunfeng.yun@mediatek.com>
 <1566980533-28282-2-git-send-email-chunfeng.yun@mediatek.com>
In-Reply-To: <1566980533-28282-2-git-send-email-chunfeng.yun@mediatek.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_063845_462414_C7FC3030 
X-CRM114-Status: UNSURE (   7.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: , Mark Rutland <mark.rutland@arm.com>, Ryder Lee <ryder.lee@mediatek.com>,
 Weiyi Lu <weiyi.lu@mediatek.com>, devicetree@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Nicolas Boichat <drinkcat@chromium.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Erin Lo <erin.lo@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 28 Aug 2019 16:22:13 +0800, Chunfeng Yun wrote:
> Add pericfg clocks for MT8183, it's used when support USB
> remote wakeup
> 
> Cc: Weiyi Lu <weiyi.lu@mediatek.com>
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
> v2:
>    use GATE_MTK to define GATE_PERI suggested by Weiyi
> ---
>  drivers/clk/mediatek/clk-mt8183.c      | 30 ++++++++++++++++++++++++++
>  include/dt-bindings/clock/mt8183-clk.h |  4 ++++
>  2 files changed, 34 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
