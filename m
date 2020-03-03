Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD17177834
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 15:05:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xKrAVaA8FMVOvSMy1zBrvs6Brr3SzDQBmhbwXklQto8=; b=EYoACl/88UD9hr
	+bN9tvqpeDEJF5eSIzMhQ5AjpFqKZz0+tM1PKb1/iP43Cs/nw/GmEj1cSxGj/6qzxwfJOQXmORRx6
	X8Uce2taQXq5mzuj6hKXFFnb8KiIbICU7VkRid3PbpPz8WLPiQKDE9zjfL5vnjQ33YnUM1a5ugrBj
	q9AZqvGmAFJ7jkL2Cmqhj4fzDtmPaduwN9UF0ggBiKTe6nCJDy0zrX2G+V08+5GrDLa6TBr7Szhe1
	LKgFo2ULeqaazYHGIFwG8AH5359keKJLxmQAZjVf6wSTj/yRC1Z4o0wCSxB/4qZbomIfnJLFRV+eB
	UVhGV073GkD7JBT45cfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j98Ay-0008JJ-9r; Tue, 03 Mar 2020 14:05:36 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j98Ao-0008IA-GI; Tue, 03 Mar 2020 14:05:27 +0000
Received: by mail-oi1-f194.google.com with SMTP id q65so243724oif.4;
 Tue, 03 Mar 2020 06:05:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0jbQGA6dYjSwP62J+F4COay7zaK+oh5Bs7zMzSTsHDA=;
 b=cd4dgXO3c/EcTP/ZoxxhNRcXKG5xjRai0TslMSTUg3+D4tdVNxEVW3LeDuu4M2qP/n
 uK2FK5XyoyCY0spv+r7p/24IAUwVs95mjcgSKG9KMSIzoKc1xetxFQJo8v2yKZ9jdbf5
 UbTgNswAiopGeofLjyki79QXTv0Lei1WvWoAln69ruVF/hcD7Fz9GmUDgNVF9MaqhBCq
 IhFeKqAec9Tee4h7+HewWfNWlnsxeWFH7CwUOdCYQc3hZXf9wjkr0m1olIZCv2xICcMt
 noCOueCqH0E90XDDhZEfjR7KYTu0HUZkOzooPfvQVtsGejPbjQwkMkOnhs60bqBM5WMu
 S9tA==
X-Gm-Message-State: ANhLgQ3hi363C2PosjUJskv6ZwNtNUz0J9hxqewPSgNKk42TqsXk3I9c
 4c7c3boumfMltXsLJuA5BA==
X-Google-Smtp-Source: ADFU+vttXS1Py6bbTK9e5rZkoBNj2Je8lemdxTIY/n2cP/smJ3TW98j1PCb9hPEhtc/qkXNAeDeYJg==
X-Received: by 2002:aca:be56:: with SMTP id o83mr2583399oif.25.1583244324891; 
 Tue, 03 Mar 2020 06:05:24 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n19sm7672257oig.57.2020.03.03.06.05.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 06:05:23 -0800 (PST)
Received: (nullmailer pid 20776 invoked by uid 1000);
 Tue, 03 Mar 2020 14:05:22 -0000
Date: Tue, 3 Mar 2020 08:05:22 -0600
From: Rob Herring <robh@kernel.org>
To: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
Subject: Re: [PATCH v4 01/13] dt-binding: gce: add gce header file for mt6779
Message-ID: <20200303140522.GA20576@bogus>
References: <1583233125-7827-1-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1583233125-7827-2-git-send-email-dennis-yc.hsieh@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1583233125-7827-2-git-send-email-dennis-yc.hsieh@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_060526_546483_8492FDE3 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -1.5 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, wsd_upstream@mediatek.com,
 David Airlie <airlied@linux.ie>, Jassi Brar <jassisinghbrar@gmail.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 HS Liao <hs.liao@mediatek.com>, Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>,
 CK Hu <ck.hu@mediatek.com>, linux-mediatek@lists.infradead.org,
 Houlong Wei <houlong.wei@mediatek.com>, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Bibby Hsieh <bibby.hsieh@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 3 Mar 2020 18:58:33 +0800, Dennis YC Hsieh wrote:
> Add documentation for the mt6779 gce.
> 
> Add gce header file defined the gce hardware event,
> subsys number and constant for mt6779.
> 
> Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
> Reviewed-by: CK Hu <ck.hu@mediatek.com>
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
