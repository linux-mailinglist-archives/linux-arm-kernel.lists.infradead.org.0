Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 002FA19883E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 01:26:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rNDiwTYl4UVgX63nDbBrNCuCD8LW0sga6nF5rHv8/6g=; b=H3HXRwTcdppqW2
	4DWzrY3vkgWi8d4bGZeV/i3HnvaJznluUutcDl1CFk/V9QPKcBa3xcDhVeQC9iY/0a7QuK6gThTva
	wzmw6kWjrZXAxJDlh0wV4R/GhfkTN6MK/FvmsN54MuyV0Oxw4J7MUUOnZYuyU9Je0e5PZ/YeMO1mc
	fU5fcbnxfO1lcmCsaEEfkKEtr4J8EZobUbYUHKc/fGYaI9WCVBffNQ3nC3/kWeLIl+JL6mHw0LO8r
	rqOZyegDWuItNqcqrBXlvyPeCWc+4HHENO8qF3Pdz/nwLXk++6Cv0tgSJjmBPlYQDiByq2TJ+qrEd
	APs+5lkxV25VwcVnU7gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ3nk-0006Jx-E4; Mon, 30 Mar 2020 23:26:40 +0000
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ3nT-0006Fs-4u
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 23:26:25 +0000
Received: by mail-il1-f193.google.com with SMTP id g15so17634669ilj.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 16:26:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LF85p8LiPrHnow4L9TnXbCTs4I8jEbhzC11j8ciLyRA=;
 b=pRJ1V7goBTb42kM8FbMw5t37gVuxLxETSC2JLdpJ57Ftb6sGZ8Zm6OmvXEtOxxJePn
 8yJYj9fn6sxtSvWrQakN50RNmoLJ8goZM6XAXpUU0c+hEk0jdZiSTqyjkwUtJqmR8rUo
 EKaTA2qbrwrl4KFpGkpTsz8LB+iw4eJI+HQW8zNanSZIEongBV7WvDLiBIwdAADSDiaM
 YCuRVqqwGpNICYsUt2SO9wrqYlJsov1vrk7d1WCUtlO3No8NG1xG8uhh5ziDWzQ09DqE
 fSumE20YTJY0xHvv8MzYUjfymu1imfeYMPghaOrrRh8TmPkvtZ40ls5RHhdCkxGgMmQE
 P34w==
X-Gm-Message-State: ANhLgQ2coGNg2Iut8YcwVzyHvcG1iyermIEU8q+UG9lcQSZTK1YGBYJS
 ea9I4aKDfNZ4pzVlSZu0nQ==
X-Google-Smtp-Source: ADFU+vtmhUYjMudehiqJmBH9H7jMSe35T5HDRBtsrnXGGftWUwlBk2mhZTwgUl3I5g5TpKH+1HO0bA==
X-Received: by 2002:a92:8410:: with SMTP id l16mr13898715ild.288.1585610782197; 
 Mon, 30 Mar 2020 16:26:22 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id j84sm5352015ili.65.2020.03.30.16.26.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 16:26:21 -0700 (PDT)
Received: (nullmailer pid 25295 invoked by uid 1000);
 Mon, 30 Mar 2020 23:26:20 -0000
Date: Mon, 30 Mar 2020 17:26:20 -0600
From: Rob Herring <robh@kernel.org>
To: Pascal Roeleven <dev@pascalroeleven.nl>
Subject: Re: [PATCH v2 4/5] dt-bindings: arm: Add Topwise A721
Message-ID: <20200330232620.GA25242@bogus>
References: <20200320112205.7100-1-dev@pascalroeleven.nl>
 <20200320112205.7100-5-dev@pascalroeleven.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200320112205.7100-5-dev@pascalroeleven.nl>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_162623_302321_AF1D6EAA 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi@googlegroups.com,
 linux-arm-kernel@lists.infradead.org, Pascal Roeleven <dev@pascalroeleven.nl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 20 Mar 2020 12:21:35 +0100, Pascal Roeleven wrote:
> Add the bindings for Topwise A721 tablet
> 
> Signed-off-by: Pascal Roeleven <dev@pascalroeleven.nl>
> ---
>  Documentation/devicetree/bindings/arm/sunxi.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
