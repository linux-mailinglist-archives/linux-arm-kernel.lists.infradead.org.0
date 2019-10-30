Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE9CCE9D1F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 15:05:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j4PmbUO255oiPD0T1V7ZifULUv5qPpU/r46WaAPmpj0=; b=lQv/R+d3DO3B87
	6fJ39WEjpy2pDY1MC1Q5dAklGOhlMqIWsDqWi1Kbf2YwKd952aI9zH3z992BLTmHZWs2WNzsG6oS7
	G+/oudiEHX6XuNLMec6N8/CDcVn/p0zaKLTYFNxsk+TVp+PffPXT74GbVFdWrYOOlrXNFOeIYPyUE
	w1t62nepkjHHryQXshWmVOJ7RA8PW75FACCEJJN01m8nCPYdikcauBGW8kbqebinnnVznCHIGWW5G
	AQCxHFD757L+vAvi4TdhbUurHWvqUo3+QyRypR45aQoP+Z3ZYD6LCvCiRoKkvsj7D41hThr85+AUF
	OzYyXB+yzdIFg+qS4sWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPobd-00050n-KB; Wed, 30 Oct 2019 14:05:49 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPobL-0004z1-Lx
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 14:05:33 +0000
Received: by mail-ot1-f67.google.com with SMTP id t8so2191804otl.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 07:05:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ChHUj/J4C6CXN9f7IReGKz0UHWgPVSTJxbHYeBoXnqk=;
 b=ItDPiXXVEwoem2uQhd6PWnnE2gPH0/WMBlvA5bCZosbI7gpMwO//7mwggxyqcQlMH2
 /Oo06SvAwfpfO/YdT0WR4EDc6DgVAt0y/x0nII417Z9nEsDu9ZnWAuP1S265sdc+GY0H
 NaC1PhVZJ+es7+Uv+ErMgxZjKlUH9bIMYNaY1E/6ZzueCyQtDBdFX0prxrdjcCQj3i2B
 VFJoLAkC93nT7PvxbAtLz6bEdcNrhX1iataY8nOKtaSVaJRYOG4IVLiRMRbUww/sMwno
 UuK4YQrsv2mf4V4SwgS5JfQ+Q2KmVxOpWGzdCo/N+yJ+ATzKBJf7coMAM5tfqmwjR0S+
 tVQg==
X-Gm-Message-State: APjAAAUicUnyiPlDv+wXQAJ9y9rzYWhYvmwqN+aPgy2+wc87YOli8CdT
 LfHs3rRVozopCmIcmD3wXw==
X-Google-Smtp-Source: APXvYqw0JFuV9/nja98wwg1bHqjpHHz7+RxqG8NqaK/yVTDxQRIuqFRJQW343FA0qpCng7ta3UI/5A==
X-Received: by 2002:a9d:5e12:: with SMTP id d18mr54420oti.220.1572444329580;
 Wed, 30 Oct 2019 07:05:29 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 88sm57224otb.63.2019.10.30.07.05.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Oct 2019 07:05:27 -0700 (PDT)
Date: Wed, 30 Oct 2019 09:05:27 -0500
From: Rob Herring <robh@kernel.org>
To: Marcel Ziswiler <marcel@ziswiler.com>
Subject: Re: [PATCH v2 5/5] dt-bindings: arm: fsl: add nxp based toradex
 colibri-imx8x binding docu
Message-ID: <20191030140527.GA6180@bogus>
References: <20191026090403.3057-1-marcel@ziswiler.com>
 <20191026090403.3057-5-marcel@ziswiler.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191026090403.3057-5-marcel@ziswiler.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_070531_724543_C80437A5 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, linux-kernel@vger.kernel.org,
 Philippe Schenker <philippe.schenker@toradex.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 26 Oct 2019 11:04:03 +0200, Marcel Ziswiler wrote:
> From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> 
> Document the NXP SoC based Toradex Colibri iMX8X module and carrier
> board devicetree bindings previously added.
> 
> Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> 
> ---
> 
> Changes in v2:
> - Document board compatibles in a separate patch as suggested by Shawn.
> 
>  Documentation/devicetree/bindings/arm/fsl.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
