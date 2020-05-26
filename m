Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D74D01E2991
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 20:03:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zvl+hIWO+RpK09Y0fczPR7IckgjM3lM5qRNbeYdWR7I=; b=mifbE8rszEGRoQ
	k+00LZ3L6FkjOn0YAprgVlJjrTkD4djRInMgZ9R2r1j2T0kOnSYS83BelL0AiBSaMkNkNuV86Ccnl
	jrb/yLq+KbX82nXP2CeAv9Gn6X4VFIZzmh3CHx6853LH0xHCEKWNPPxy0boxFJNQxSq25Gz8uOM94
	j4WQC1/MgNsbenhf2Qu6a8zJ8clSXT8mUXV4Vg+fg3T+kDXOagXF4jxdPnSinLVW6vlbr7anIgutP
	8qFkNmo8BcsW21dGpjt1ixjxCqT6IzlFd4Mqk+FnJU5YbfnR6ROHOqs6JusXeYWqZWnq+W3mjLSGF
	kiX+8ymctcHt7uN4FH5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jddvO-0001tv-TM; Tue, 26 May 2020 18:03:38 +0000
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jddvA-0001sW-2G; Tue, 26 May 2020 18:03:25 +0000
Received: by mail-il1-f195.google.com with SMTP id 18so21451353iln.9;
 Tue, 26 May 2020 11:03:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=udyKIAgzUuMLjrt7p/tKMSuE96YEp3YyGPeKVs0pC30=;
 b=IvIe5A3k4WfzsVb6xYpBZAT0WRCC6OTdYOXYS96gzTCAJKcVqB03O2FZeXJRN/Ec5Z
 88SyHOl24lW1L/5sAYXbWuJnRk+HwB5KUELISjk9j8mIIf/reurTYsK1wPmrQE632BmS
 Pm2cFpUpjwZGjvhLAw1r98Srv4ofbiG9OshydxoszKFUFwd6M70XlZQN/paaL8hGZBpj
 kLFloYpM2lyMONDEnn2J5WLpaEqwaorjxrglBw4sVr4fm136bKw21RdGhxelBcZVzSWy
 s/wH2XE0hEtE+/uHj2lhZUTOQCq58lCuO4kBx6o7gFXvZxO+H5XRKJUM8FXX/FoNki9p
 UmlQ==
X-Gm-Message-State: AOAM531uOagWpogKlVpYteu2Njhe0IxlvQ2zvRC0F4SYVm4e4btLLqhx
 agr2r5CAC1+NO9L4FNuJag==
X-Google-Smtp-Source: ABdhPJz49fxHgfKUlXk9bT+7PEkcHyxo07cWGJ72t5O8q64FjmH/+SLrhIzcouiT9jARc7MEOifDQA==
X-Received: by 2002:a92:3d8b:: with SMTP id k11mr785485ilf.122.1590516203049; 
 Tue, 26 May 2020 11:03:23 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id 4sm337307ilc.34.2020.05.26.11.03.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 11:03:22 -0700 (PDT)
Received: (nullmailer pid 77730 invoked by uid 1000);
 Tue, 26 May 2020 18:03:21 -0000
Date: Tue, 26 May 2020 12:03:21 -0600
From: Rob Herring <robh@kernel.org>
To: Weiyi Lu <weiyi.lu@mediatek.com>
Subject: Re: [PATCH v15 02/11] dt-bindings: soc: Add MT8183 power dt-bindings
Message-ID: <20200526180321.GA77691@bogus>
References: <1590051985-29149-1-git-send-email-weiyi.lu@mediatek.com>
 <1590051985-29149-3-git-send-email-weiyi.lu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1590051985-29149-3-git-send-email-weiyi.lu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_110324_099490_E797E191 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Nicolas Boichat <drinkcat@chromium.org>,
 srv_heupstream@mediatek.com, James Liao <jamesjj.liao@mediatek.com>,
 Enric Balletbo Serra <eballetbo@gmail.com>, linux-kernel@vger.kernel.org,
 Fan Chen <fan.chen@mediatek.com>, linux-mediatek@lists.infradead.org,
 Sascha Hauer <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 21 May 2020 17:06:15 +0800, Weiyi Lu wrote:
> Add power dt-bindings of MT8183 and introduces "BASIC" and
> "SUBSYS" clock types in binding document.
> The "BASIC" type is compatible to the original power control with
> clock name [a-z]+[0-9]*, e.g. mm, vpu1.
> The "SUBSYS" type is used for bus protection control with clock
> name [a-z]+-[0-9]+, e.g. isp-0, cam-1.
> And add an optional "mediatek,smi" property for phandle to smi-common
> node.
> 
> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> ---
>  .../devicetree/bindings/soc/mediatek/scpsys.txt    | 21 ++++++++++++++---
>  include/dt-bindings/power/mt8183-power.h           | 26 ++++++++++++++++++++++
>  2 files changed, 44 insertions(+), 3 deletions(-)
>  create mode 100644 include/dt-bindings/power/mt8183-power.h
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
