Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F96A57D1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 15:39:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Subject:From:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tHmIta4PVc0gRnYzy7LTIsYXl1WthXyPhZDs4WpYSwU=; b=BFIbq3W6X5Ck4ZmJ/QVzxKgAE9
	HQ3WOmLOrqPMXPSOEmHxCaLWHeutoOUtFJzG1d1PmeNv25pSfKjZIXwA3k4m1fBdUCcgGPN5jFjLa
	CF5Oyj8GNPCuOkf9XpCKDldGePw7w4z6SeRhMCCo4APIVWc/ibQpjkRNg+W6r99+nlX1PVluMnhvW
	nVL4w0mfuvG8kE6N1r8sN27stxRuPmhioXXoOs/HyJqljHKl4GLnReKhw5sw96SrVbU0SBBrfFFSo
	GXN8yXMOg/c5Za66cQpy9VSrQN5cw1kd2+N/DQsjh9RA/TvfcCJWUPCES2tmJEBePnssimB/eg2cE
	pEPYryGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4mXp-00018G-Ut; Mon, 02 Sep 2019 13:38:58 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4mXc-00016w-Il; Mon, 02 Sep 2019 13:38:45 +0000
Received: by mail-wm1-f67.google.com with SMTP id g207so10659356wmg.5;
 Mon, 02 Sep 2019 06:38:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:subject:references
 :in-reply-to:cc:cc:to;
 bh=0A2NGMWOy3zEuz3VxC/asQLJTnz9aoB2esNpQEgqd1g=;
 b=IN/nAH5bz4grYLi0q91AK6ihXxXAZUY+ToXrGgc5R7AJKAHYeQdClvgemXebnwNa42
 lL3mejWS58+hGvKiuU9vg31OPfjvEprd15MhHfro/Vj036qDm6db8GXMocuevnxFhOSX
 UqcEUaIHzk/zESIRpOPGQVCbj8n5l3mhszRHIhl8OnINUPfHn4Pp6MRARXa9VRcu4qMk
 IDr8FdvewZrvsmGtWX/fgLYJG3IrOCKoVI9jlW0dXcdeJ9G6h4Ye518g1IFbnZzODjtL
 dTpvnieibJAaW/NXY5+ncLzu/WK3aC+wlwNK4iR1lQVfEZnoLZuMIYsC8TiT9zxtXYzv
 dZJw==
X-Gm-Message-State: APjAAAU6EQF8/cah9bXJNsG1Flmf8ZMD0pfD+f3YVJ79AvZ/EE4/yLST
 Q5wzM58fosGqsdgvUUIWTA==
X-Google-Smtp-Source: APXvYqyryTjFEoAjRiTRD/cveMVvJ62e6tv3eGdxZSToRxqfmTU0cEJbrtDlZV7N6If8HbCiP6JxUw==
X-Received: by 2002:a7b:cc02:: with SMTP id f2mr34634993wmh.92.1567431522631; 
 Mon, 02 Sep 2019 06:38:42 -0700 (PDT)
Received: from localhost ([212.187.182.166])
 by smtp.gmail.com with ESMTPSA id n2sm9271557wro.52.2019.09.02.06.38.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 06:38:41 -0700 (PDT)
Message-ID: <5d6d1b61.1c69fb81.735c8.535d@mx.google.com>
Date: Mon, 02 Sep 2019 14:38:41 +0100
From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: clock: mediatek: add pericfg for
 MT8183
References: <1566980533-28282-1-git-send-email-chunfeng.yun@mediatek.com>
In-Reply-To: <1566980533-28282-1-git-send-email-chunfeng.yun@mediatek.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_063844_614899_9536D554 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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

On Wed, 28 Aug 2019 16:22:12 +0800, Chunfeng Yun wrote:
> This patch adds binding of pericfg for MT8183.
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
> v2: no changes
> ---
>  .../devicetree/bindings/arm/mediatek/mediatek,pericfg.txt        | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
