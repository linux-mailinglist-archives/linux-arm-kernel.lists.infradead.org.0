Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23AA11345E8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 16:15:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+5c9EZo6TbNXoVqC3SbOqrxrZ2iNQJuP2Jppp5mQ3sE=; b=UOy8akO5oRRhkF
	z8LhxXeXf9dDnmBsuiTvfYaxjzwSJDWaBkUqLxHPrsbbPcHaTpOoUkYaAOi2C3qH/2vJyrYrv4GBl
	q3Db6py53IL0tarylMUbJGpoXIAR0JoqRXZ5qJspioDJyXPIDF9xwQR3sA0x5zbfU41CdqGjJmobQ
	D0cRVbRfutGZDCTZjFfN1FHWCbK5P8rkZEKYJlrWtBYRM/fupbbJtQPMu3Rh6CLFsLuXnyrxLfTEo
	SYi2R60VbUV73m4j5oCPWxWrL3vJMIdLkjXr+SO6x1w/R5hEd0h1Ez6YMeTfSQaHQZip55sng7pWd
	K8Pj5bIUMr2c8mosZkWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipD3S-0003px-Sx; Wed, 08 Jan 2020 15:15:30 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipD3J-0003oK-Ve
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 15:15:23 +0000
Received: by mail-oi1-f196.google.com with SMTP id 13so1016414oij.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 07:15:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9MKeoU4FP/L/hIFVTYWRTXWHyDcNCL5GfbSqC8Dc1Ew=;
 b=aIjhg+OLIUtEE42v78DKfHkCxK7o6DJZ8oWLdLJxRMcWCjXMvsEbSgL4lEcZz+U4Lb
 hIBHM5CI/JBAfG2yd6eCJ1sg6Uslcaqdv6m+BuDJFlruPGyi2/F3JTCwam2O/KO8aQTj
 NbGcoOtklzrcefLZ7L6MAvq4mX87Jvrsr/C54kH75onIbKit6H9+26m92gke3RhOlr80
 Cem8TiXGY8RCKwfj1K5FKvyZxo6DYuaOTJFfO4pEXfTFMCVv8t7K/9wS7dQTVf+EXCTY
 4Brw/QijaXUezVYoA3OHvdRgxv/6HXnomWB1ICZc6ELTKSSoZ4cGIKAGT+2Fz9+p7xRb
 QIBQ==
X-Gm-Message-State: APjAAAVeknYTm1pWzQy03THhtdhfNpLyqqdVuE+ebiF/7fdgn4MiSxzp
 uNK65d4W6kJ41hq//jQE8QTNpI0=
X-Google-Smtp-Source: APXvYqxCZ9G5mMVb4A1WDRiKJC945GiUnS4s9tNuWrx/UPx68v3mlpbJr341eDB/TtOFOvyBXz+91g==
X-Received: by 2002:aca:f242:: with SMTP id q63mr3544185oih.72.1578496518038; 
 Wed, 08 Jan 2020 07:15:18 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id h1sm1177520otm.34.2020.01.08.07.15.15
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2020 07:15:16 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 220333
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Wed, 08 Jan 2020 09:15:15 -0600
Date: Wed, 8 Jan 2020 09:15:15 -0600
From: Rob Herring <robh@kernel.org>
To: Ming-Fan Chen <ming-fan.chen@mediatek.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: mediatek: Add binding for MT6779 SMI
Message-ID: <20200108151515.GA18724@bogus>
References: <1578465691-30692-1-git-send-email-ming-fan.chen@mediatek.com>
 <1578465691-30692-3-git-send-email-ming-fan.chen@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578465691-30692-3-git-send-email-ming-fan.chen@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_071522_013859_DDF7C7DE 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, Joerg Roedel <jroedel@suse.de>,
 wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Yong Wu <yong.wu@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 08, 2020 at 02:41:29PM +0800, Ming-Fan Chen wrote:
> This patch add description for MT6779 SMI.
> There are GALS in smi-larb but without clock of GALS alone.
> 
> changelog since v2:
> Add GALS for mt6779 in smi-common.txt
> 
> Signed-off-by: Ming-Fan Chen <ming-fan.chen@mediatek.com>
> ---
>  .../memory-controllers/mediatek,smi-common.txt     |    5 +++--
>  .../memory-controllers/mediatek,smi-larb.txt       |    3 ++-
>  2 files changed, 5 insertions(+), 3 deletions(-)

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
