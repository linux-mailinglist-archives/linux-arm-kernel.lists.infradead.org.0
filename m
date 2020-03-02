Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 380A81764C4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 21:16:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TAldEHqFApUmujwSmH/ZHzVSxqjgDIc6ylRjoggMzNU=; b=AQzoVCkGMOCEiM
	xbnFoxZvNXO9Slw4Vv5mdyvLlY8MdOmZ9nxmReXIKub6C1KEneWZRWeK/jl81TkeF+vHPv6gw6Gb9
	v4V15UHX1CZCRMxVIcVAGouKyd+AUc/P839nELbxXIhNThkNVivZHYnNaRwZWOu4dZi1jdcY1mkia
	9oCpGP0P9Gppn70ex/4QqXPxYXD957Hs9P5RyQyverhUMbyXoJpdQV3sHfQmotbh5CIlA1fblcANX
	XAWLTh3zyZh2+MJYc4Ruf3gxjgPrC5+A34CIrXJq0MR2i5g3Hu56H/jFHnGTLxR2yUntyvMxicX+B
	eo/JM71Tsj0ZAakrMjeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8rTq-00046B-Dl; Mon, 02 Mar 2020 20:15:58 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8rTi-00044b-0T; Mon, 02 Mar 2020 20:15:51 +0000
Received: by mail-oi1-f196.google.com with SMTP id d62so514065oia.11;
 Mon, 02 Mar 2020 12:15:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uloyMFrQMW3e3WA+o8H5r7/9NmI8i2m5BMZKHBf+VaA=;
 b=RFNzeXghQI0T/9Zl8VeCcgXFKfM5XYnvA90cDYTpopa0dSI9mtsxNMFmx2gXnqiI1G
 RdaVYw0VN+IJddAhdZSZkuoqWPUens/OzzgAM0w+oLDe6hlGlMqBAnVg4GprGYBmymP0
 2PYVrXtkh07vVJi+e8PgIj8Om8AwRKwa9zXv1H2jh2iXctpFZRzCnhzAtVppfrfuHA9l
 ULQdF/MTJlKC2w1Eopwj66DxCLagBVX+CUnR3EhQL6aUNdDpplPt055AQ+KcDxYvZP7L
 myp2hrPUQIOrWjOJ3YLDHgYbt0Sefb2MvZuBjFEUy29CE0oby0TK2VWSbhh2Op6MGTZI
 WjrQ==
X-Gm-Message-State: ANhLgQ0LXxkt25Jeu7vZXshDvmILgSRjLGi2HGM6RG9BXYdz/1OebRlH
 Qt98qqBMd0dhEnqHCBWHxZDAYbM=
X-Google-Smtp-Source: ADFU+vs7D7qTQC+jUddUuufziRZ92WcFPe3N0lpV52sZ1nny4AXBcH1g+VSOzHxL/JLm0bXW03K0Ig==
X-Received: by 2002:aca:5205:: with SMTP id g5mr108991oib.43.1583180149145;
 Mon, 02 Mar 2020 12:15:49 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id a10sm222365oti.44.2020.03.02.12.15.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 12:15:48 -0800 (PST)
Received: (nullmailer pid 21968 invoked by uid 1000);
 Mon, 02 Mar 2020 20:15:47 -0000
Date: Mon, 2 Mar 2020 14:15:47 -0600
From: Rob Herring <robh@kernel.org>
To: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
Subject: Re: [PATCH v3 01/13] dt-binding: gce: add gce header file for mt6779
Message-ID: <20200302201547.GA21778@bogus>
References: <1582897461-15105-1-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1582897461-15105-3-git-send-email-dennis-yc.hsieh@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582897461-15105-3-git-send-email-dennis-yc.hsieh@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_121550_046774_FD034768 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -1.5 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 wsd_upstream@mediatek.com, Jassi Brar <jassisinghbrar@gmail.com>,
 linux-kernel@vger.kernel.org, Houlong Wei <houlong.wei@mediatek.com>,
 Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>, CK Hu <ck.hu@mediatek.com>,
 linux-mediatek@lists.infradead.org, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Ming-Fan Chen <ming-fan.chen@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 28 Feb 2020 21:44:09 +0800, Dennis YC Hsieh wrote:
> Add documentation for the mt6779 gce.
> 
> Add gce header file defined the gce hardware event,
> subsys number and constant for mt6779.
> 
> Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
> ---
>  .../devicetree/bindings/mailbox/mtk-gce.txt   |   8 +-
>  include/dt-bindings/gce/mt6779-gce.h          | 222 ++++++++++++++++++
>  2 files changed, 227 insertions(+), 3 deletions(-)
>  create mode 100644 include/dt-bindings/gce/mt6779-gce.h
> 

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
