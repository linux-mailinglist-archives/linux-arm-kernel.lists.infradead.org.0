Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29EA818C481
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 02:06:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qOfGOd1kwrQ2H3Ap3oaPkiGSfCa64es+MLTB16VRUKM=; b=HiDyr0iSsyGaMX
	JVPeITFU8ClBjH/2VTKydGMHDKVrbV9uXpKawZvEXkjQc426XWOkGxIy039pA4g82zqq4dD0gR4q8
	j3FyPEMYWG41LxYB7YR4vqUxu0wD7EhjVWbHQfqANkZVp4zGufTgoEaUJmSGcSAuJ7y8FtmLBZCsg
	JnK9Uv7xwyn3A3P5oHq3kg74ARZKuUWyS/N1eb3b6KO4DQVpGPyGqQimrPucwRJvUARELxr5xuosS
	mPPA1FMJ/M64Yd2D636HkLzdiKuFj+Too34st1AQUf2c5V9cDN+0GzH+whmWOQzanfTrpz2j8aO/L
	n6WPm/xkG3fKFWF0/8fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF66n-0004eZ-OO; Fri, 20 Mar 2020 01:05:57 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF66e-0004dI-LL; Fri, 20 Mar 2020 01:05:50 +0000
Received: by mail-il1-x143.google.com with SMTP id w15so4132595ilq.6;
 Thu, 19 Mar 2020 18:05:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pIKmKtPK9inyHBgOdGiW1cUuusmeVK05PlwwC7X+p5I=;
 b=i6AR+D3jHyppvVrFUj442iIkudhoNOYo5aGJ+CNFj4M/c4ChNUL/eyGofj6hWNHBuY
 4P5MAkxAR1/5Xr1GPtYHWDK8fooG4Eg0/nh4cqrwaKcwhHE83DU8URq9JUcY7FBq86ng
 Vt124ONAuGsAl7gw8EKfp4oYNlMq73CH1Kxszez5Mh6pTu6dFBmXZiCJtqgpEgooOJDx
 KgXJSjHjsuscAUJZZsQMV60PVMH5V77m5x48qnL1DHE9FGkbNGCDZ7AJpgWJYieESVsU
 U0ZGI+6jQT7vCtloA+JY0ChZq4krmDE97EP5hRb7DEKbqDtb3GxDbLrpJex67SaSbs8R
 4e5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pIKmKtPK9inyHBgOdGiW1cUuusmeVK05PlwwC7X+p5I=;
 b=Blo6CMHXO3N9NSAHb6L/GRaEO8vUoWr+gABd62r/LPw78s4TWJSC3KHnWT3uYdNVc/
 33efIjO2ZmCxoRJBV+4niOv4EZlG7+OSPk3B0N9IItdwWei1zyIo5YxMhakrfLYZKUIb
 mssfxeX33cINyXwNSdDuTWl//C7RZbQJT/bdnS6qkHfJLSq+pm2LFspxrOv3nkKGFgaa
 jKTsMvP4GvyWxh8l4qrg13cwHKz/Vpdr5LLhB9AOfMDd7ICYVGg0HFygPgCTSDPzUbG9
 lF3baGhh7Nn+amgt1pesLnFkxA9wZ4rYzBlcv3TDIq3j9oaguP/0c6928qG6ZTMEiggw
 g3UQ==
X-Gm-Message-State: ANhLgQ2Vprg1/yZRAo855MTQ18gQm7EdwfkMrIKIk2x6FVciz3+UIuxb
 Hse8feA8mPVi4IUkCXKNzIjp8EVxK4GkvzeWBDk=
X-Google-Smtp-Source: ADFU+vsXyzyi+qYF7P30xEdl3SKnMs0e3iLkESTh2BBQsMZWVdzJW5b85BdQP4rcWeSVIDarW3qIa5gY6lsuDO93L54=
X-Received: by 2002:a92:5fc5:: with SMTP id i66mr5814798ill.303.1584666344631; 
 Thu, 19 Mar 2020 18:05:44 -0700 (PDT)
MIME-Version: 1.0
References: <1583664775-19382-1-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1583664775-19382-3-git-send-email-dennis-yc.hsieh@mediatek.com>
In-Reply-To: <1583664775-19382-3-git-send-email-dennis-yc.hsieh@mediatek.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Thu, 19 Mar 2020 20:05:33 -0500
Message-ID: <CABb+yY04NbSvHkQ0sVHd+KjU3ZFZSZD=H99OSNjoeu+Qpk7R8g@mail.gmail.com>
Subject: Re: [PATCH v5 02/13] mailbox: cmdq: variablize address shift in
 platform
To: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_180548_724472_79B6E871 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jassisinghbrar[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, wsd_upstream@mediatek.com,
 David Airlie <airlied@linux.ie>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel@lists.freedesktop.org, HS Liao <hs.liao@mediatek.com>,
 CK Hu <ck.hu@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Houlong Wei <houlong.wei@mediatek.com>,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 Bibby Hsieh <bibby.hsieh@mediatek.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Mar 8, 2020 at 5:53 AM Dennis YC Hsieh
<dennis-yc.hsieh@mediatek.com> wrote:
>
> Some gce hardware shift pc and end address in register to support
> large dram addressing.
> Implement gce address shift when write or read pc and end register.
> And add shift bit in platform definition.
>
> Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
> Reviewed-by: CK Hu <ck.hu@mediatek.com>
> ---
>  drivers/mailbox/mtk-cmdq-mailbox.c       | 61 ++++++++++++++++++------
>  drivers/soc/mediatek/mtk-cmdq-helper.c   |  3 +-
>  include/linux/mailbox/mtk-cmdq-mailbox.h |  2 +
>
Please segregate this patch, and any other if, into mailbox and
platform specific patchsets. Ideally soc/client specific changes later
on top of mailbox/provider changes.

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
