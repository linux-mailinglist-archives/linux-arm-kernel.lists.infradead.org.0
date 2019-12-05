Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE8311482C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 21:38:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qsjobzRiWkb9xQ08JX3m0rRB93Ze7Tdb+9GqiAws70w=; b=OmBtg5EF3n0bBh
	bAsAEjqbtBEwGmt59s/46aGf56iCqSPeELmU0Am5VcepoZYkbLjBkonwEsU6wwjGOaMNhmpBI7cJJ
	o5ghoXeHKuEiUyUDVff5LLkxZ/MuvDESneZ7jM/xSJUVqX/guc/wGlmPTi4OxhkrhJNDyaPQKIbFg
	C1G7Mitvf/wsLRqXk7Us22YpmR7ftZ2yigjUhH4pkLcyn3M7MuodeB9Z/rFLuvxWStGQ637y/UYuy
	NWQeV7i+Lp8rvCveTEuKKe2a6Io/K05mm6AqZSaA4ixCFPP7CYuLTEsorfIgc0bvSfcKBSTgRg8fU
	1FMp4IQNBOMbePZg+hVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icxsr-0005MS-0a; Thu, 05 Dec 2019 20:37:57 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icxsf-0005Kh-Lf; Thu, 05 Dec 2019 20:37:49 +0000
Received: by mail-oi1-f196.google.com with SMTP id 6so4028223oix.7;
 Thu, 05 Dec 2019 12:37:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=35ZG4Dt1GHQBpvFgxpqY5q80MN/v65QQgmh3mucKzk4=;
 b=mD/VVqu6vqdmYAxNIbi8m6PGDTr+19qpJALu9e+6RGxSzmGvOsAfiumdQAieRPVwM+
 Q18M48axJYadmUDFLpAff7T+TmfQeFz0n7YGcIWO0woM4A2Z/Dc+52QUekOZtTMrfjHb
 UkdWoAGLg/qJi9ZivQrcDArlRPNkHe7onSLYsmLvo2SauWPCay/oCmtUxdImOIDQ1yMV
 uxe+IGz6DSTc6zcSAe2wpgU4cfznFaPwbW0tBmezEuUylNzvbhf1zhxG1lKwVqBQl7Lw
 s7YTfAI1vOSYCw9lusFMgk5n65QmaYLo3vO96hnyMc0XsHmPnFaGPdcVX4DazqdKpidE
 J+lA==
X-Gm-Message-State: APjAAAUc2exDuNVqFYBehgo7mFBvNrkGSAAs0DDgP+wI8tzADqGcAv/5
 7jNBHYZzMVY4fCbtA5pu1w==
X-Google-Smtp-Source: APXvYqybjR88Pnl9WvXUnFPPkc+t2nP5/2RlXPj4PgV7YHQb9ufreDGJOhffZWnH5OojadDmkIESvw==
X-Received: by 2002:a54:4f8e:: with SMTP id g14mr8885410oiy.144.1575578263383; 
 Thu, 05 Dec 2019 12:37:43 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 64sm3782147oth.31.2019.12.05.12.37.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 12:37:42 -0800 (PST)
Date: Thu, 5 Dec 2019 14:37:42 -0600
From: Rob Herring <robh@kernel.org>
To: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
Subject: Re: [PATCH v2 01/14] dt-binding: gce: add gce header file for mt6779
Message-ID: <20191205203742.GA1676@bogus>
References: <1574819937-6246-1-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1574819937-6246-3-git-send-email-dennis-yc.hsieh@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1574819937-6246-3-git-send-email-dennis-yc.hsieh@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_123745_710060_803B39AE 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 Jassi Brar <jassisinghbrar@gmail.com>, linux-kernel@vger.kernel.org,
 Houlong Wei <houlong.wei@mediatek.com>,
 Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>, CK Hu <ck.hu@mediatek.com>,
 linux-mediatek@lists.infradead.org, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 27 Nov 2019 09:58:44 +0800, Dennis YC Hsieh wrote:
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

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
