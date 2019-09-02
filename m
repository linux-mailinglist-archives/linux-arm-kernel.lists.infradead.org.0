Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6085A5801
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 15:41:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SMjLjYknnwIMoKgk1FLYeend+jOrzrQmeoGy6FR5EhE=; b=SIN4I+YXSxHQfq
	fG6nGTyyEZyYjiNwbH8qJyL/hgN3Fx1cAWfeVjo/ShHq2m0QTV0/CGAXJUIvY4mGxDxqiRh+Gc1ne
	pmJ1WB17taiFO9BxfhhMrpOfSIIsn6r+TXm/Mw1UFsM1nwYc1gxMnJZnZjN0CzvhuOPNkyvlvZfvr
	n9ui4gYUHynljro+mJWJVVgKKMnrFVgleIwJtvG9huvuKBFRO3eueAEsSveES8lCIxU5bwmcYL/2r
	jvG7moYOAxrZJkMGhVfaKtRNY30FVSlbSg0pNdX4b4IO2Lq33bTWHEKzLw9xKs+/2me3QzCRyH3hJ
	dvS8UGHl2WBxxC49Iq4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4maT-0005Ci-DF; Mon, 02 Sep 2019 13:41:41 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4mY0-0001Vv-SA; Mon, 02 Sep 2019 13:39:10 +0000
Received: by mail-wm1-f66.google.com with SMTP id k2so13201905wmj.4;
 Mon, 02 Sep 2019 06:39:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:to:cc:subject:references
 :mime-version:content-disposition:in-reply-to;
 bh=GVEasEqqeIWhgTsA62bLGjzbtsMIu+aXOa3k3gYlHts=;
 b=h8nFcOy1HWr8C3t59geKcGGJduFfVHIO1faXZwaDkSsQi1bW6R3HfNDwGCixG57TSM
 WoNg6//HR6kz+q5b9d9wMHCsQMA33RNjSfuoBwCANf7d0DEYmLg9jRK1ygWJLDQg18DS
 9mg6Kv7MIUbVI4ygi7yno2flOV32JxleJx4Pq1zTNXzbQ8RKHaOINgrjT8AyAFQu9IUT
 Jma5aFeOFucyHbeHVUj3eZlKrTwOtrR6r1uW3txCH0pV+Fizys46wSrQ8/hoZyZiYbfa
 z1vcDkAjMLPKXkgB0GTAGochCsDTqcnhPbnWUTPBj3RJP1MOoHdC13uFPcwrSkditgA6
 E1yg==
X-Gm-Message-State: APjAAAWsJcQMizPIbmeRFKy9GKP4ZH3L0CqfI6WbmxwA8+BrSEcKuED8
 jyqLMbmkNVbqoDZQWUhDgg==
X-Google-Smtp-Source: APXvYqybfmVuJa9iOGJ2fvD1GWg5NV6+g4arEqtk0dHjj3pS8kjaPdVIiMcwXoDWIDF9AQ5On+rsZA==
X-Received: by 2002:a7b:c186:: with SMTP id y6mr8364988wmi.12.1567431547140;
 Mon, 02 Sep 2019 06:39:07 -0700 (PDT)
Received: from localhost ([212.187.182.166])
 by smtp.gmail.com with ESMTPSA id c8sm14124965wrn.50.2019.09.02.06.39.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 06:39:06 -0700 (PDT)
Message-ID: <5d6d1b7a.1c69fb81.24dbf.bee8@mx.google.com>
Date: Mon, 02 Sep 2019 14:39:06 +0100
From: Rob Herring <robh@kernel.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [PATCH v3 2/7] dt-bindings: usb: mtk-xhci: support USB wakeup
 for MT8183
References: <1567150854-30033-1-git-send-email-chunfeng.yun@mediatek.com>
 <1567150854-30033-3-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1567150854-30033-3-git-send-email-chunfeng.yun@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_063909_026655_651C0613 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Mathias Nyman <mathias.nyman@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 30 Aug 2019 15:40:49 +0800, Chunfeng Yun wrote:
> Support USB wakeup by ip-sleep mode for MT8183
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
> v2~v3: no changes
> ---
>  Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
