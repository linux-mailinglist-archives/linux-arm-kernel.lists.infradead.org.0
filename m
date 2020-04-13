Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99B3C1A6533
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 12:29:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y8vfwvFiTPnp9tDW4svFY8K4+le6MzZRUw3Z2MKDtwc=; b=pgQHlw18xLH/vP
	SxgTBQn3VL4PkLlMzCLKOn8kWX7XCIcTFmreyYEIJ1hYUPnoYaltx/AlYBsifaYwzpWd3rRnjPVQb
	RcblTcI1VnRgYdLUWQCntHCIduteRvXdtXXMme9Lwz74R+QAYXzwf4ynJe5wzBUieUL+p+s3gytqD
	1QtsU2b9ItDnxkSDb878TrtIk8EO6ytcLDun0A2mWwgtSXRXt6Lk1WrIgzSWb0zP+We2V6CLYQ0IV
	GblTwAc7xdeEVaOGhFwacf7ajJuqmuqHXqSaPuJulu6KfxFmiGaT3BKh2bfidIQ6iPR6Odt7thtfZ
	+RkFMvEA/vN20GmBqFIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNwLI-0002Ta-9Q; Mon, 13 Apr 2020 10:29:28 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNwLB-0002Ru-4m
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 10:29:22 +0000
Received: by mail-ed1-f68.google.com with SMTP id cb27so11334357edb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 03:29:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BbWHjSsUQrh2BcH16tvNHQAGyd0qaneJDULzKls8PTI=;
 b=OVRkWQmwoFxMFI11hyF8xPpHo7nAQUH5UE7FUzh4a21Duvv+UO5BiUPQ/6120Abmu0
 IFSj0/uyepxl7wXTftf13PZgCz7MCpKYNZ/Nlpatx5kd7acnwiBdp7a7/dvDIowblMjY
 Hps4TAci58TeaugO1B7JQMpbmMWA4yeDI6BpZ0Ld7eRJak8NNqJYF0FToFrEAF3ffZ+L
 SqVB+aFl22Z1PQmhINf37hx2LvlqD8IRQRQg3WOuGUcF/tblBvzM6bEPvtyLTnb/Xhut
 MEuJJPr4uAADW5CeTf3LT64/QE5zyHE+sZwxd61WeUdAja21B4B2PxLzibCanvYO5i7h
 dS2Q==
X-Gm-Message-State: AGi0PuaRYw66vwCrVXbieCFCnmqxojthNrDk6o0Sl5xgyhYXP+Ij1FuM
 gdONW022Ysyl30ZTZX+pbFQ=
X-Google-Smtp-Source: APiQypIedXmcxclTCvgH+IO52NsgOdHSPUM9V+iK7b0YTTiONfFblt3zVHInsMkfzBnfKdib4MGamw==
X-Received: by 2002:a05:6402:16d5:: with SMTP id
 r21mr5822530edx.150.1586773757041; 
 Mon, 13 Apr 2020 03:29:17 -0700 (PDT)
Received: from kozik-lap ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id w3sm1557471ejf.21.2020.04.13.03.29.15
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 Apr 2020 03:29:16 -0700 (PDT)
Date: Mon, 13 Apr 2020 12:29:14 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: Re: [PATCH 1/1] ARM: mach-s3c64xx: convert to use
 i2c_new_client_device()
Message-ID: <20200413102914.GA14922@kozik-lap>
References: <20200326211014.13591-1-wsa+renesas@sang-engineering.com>
 <20200326211014.13591-2-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200326211014.13591-2-wsa+renesas@sang-engineering.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_032921_179709_359E994A 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-samsung-soc@vger.kernel.org, patches@opensource.cirrus.com,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Kukjin Kim <kgene@kernel.org>, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 26, 2020 at 10:10:14PM +0100, Wolfram Sang wrote:
> Move away from the deprecated API and remove printing a stale 'ret'
> value.
> 
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> ---
>  arch/arm/mach-s3c64xx/mach-crag6410-module.c | 7 +++----

Thanks, applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
