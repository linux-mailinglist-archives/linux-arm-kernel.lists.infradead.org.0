Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5DA48373
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 15:06:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V25kSXwxrW31TDDDZUbcxAVJkGGQhSI6szThGWq6Io4=; b=WgwOBCL4wmncV+
	/PmMwwM0bwGZKMIOVPUsunoGFYRHElrLdvG1OsNHJXN+JzDvUkkEE5zpyGG4EHHUGyNrYIq1rxeM5
	LHv/fsKZ1tAKyDVk+1A0/3r5gReUs701WfMvOXjs8cX1vv8QIuXaZsHpW2IwEjllB4xO/25yjNMq/
	DheroNcqrhT2omcbg83IUkVCB4/HxFFwyl3C9KrTCa+KJbboR3D8xqXyJguPoLjlE9SgGXaXQqWaX
	ndQzYvURBQxW+6FMiVRq4iQ5LULg3jT5ZJ1l5OH0GNu+31nfMSINM/0xV1FsUUVmGt+TcP51vXBp1
	i2ZdGTa1j4vxCl/jSjHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcrKl-00057C-A5; Mon, 17 Jun 2019 13:06:03 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcrK6-0004eh-Fa
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 13:05:23 +0000
Received: by mail-lf1-x142.google.com with SMTP id 136so6432904lfa.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 06:05:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=0KqRJbvL3FPC7QkmhX15E3HE93ZyuGMTNLsfWYcNRE8=;
 b=WV+GlV5HNxaIHAV1oIVUE1rQ+G+s+nFY4sT8EVdoc1IkoiuJ+k++RBgFdahL/oDNki
 v/Bt/SbX1OApIu97wdFjEItw0Tz/KRf93273CWRPGtgp6PuPMNgd6Mh4FvapM7F9zQNB
 LL1MsPwmC9L7eWyYzyls2U3DY8hLpok9vCqqgYEr9Qo6rC7CcUIsYrghu/PzMaS/diZ/
 BKeTjxSUknSIyx+KCe5FUV06pdghE2W8sWBf5We5qunHSrYOls5DR6xTIeiZNEkjElnL
 tr1nSKm+FyOoHzbS8PB6j7JnbDrfGoaRA5HrpeTYHxFRwlGZIdkAy0GJTBkxyhSedPcj
 9zQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0KqRJbvL3FPC7QkmhX15E3HE93ZyuGMTNLsfWYcNRE8=;
 b=Na3LT0G2/6FIQrySZrVkUz3j38fPq7+v1m9hPNii2VwvycYRVO1qy4jdXDWMTDN7Om
 h/qwGqVz0d+OrXWa1CB0Ll1fLRV9rKgXrxDjwRW6/OP0LyvHCYnCQ8aA3spa9IBKMMik
 fw+oUJhaBi95IgQwIEpwuYqUSawcAk2Cd/Z03b8op/ycuB/yS1w4se0r+r6+H5CWTgHE
 A4nOtWAaD1izEXFP71X2659wpFzj2hy/vDxh+f/1osd9tsnzRiVBC1PApJAv88WkBKgh
 xKyr4kSUSCFkJ4YCh4fdbcpSAGGLqpLSMRfZ+jSJv+v4pHolQ5c0DRjxSZRnWxUcPGVi
 1ZSw==
X-Gm-Message-State: APjAAAW+tW+11tj4jwn8MRpFoH3Sqz7u1sPbbB0UTSIqImTcOLNwiTwi
 X29AtHSkdhkHD3oT70ICw8cdCg==
X-Google-Smtp-Source: APXvYqxfwLwWY+tHIZf9ylLgsFN1BoBomQ/+nIZbYcnHTBSgZaXRncUdZAFu49eMc+VuGJ1OT1KJXw==
X-Received: by 2002:ac2:52ac:: with SMTP id r12mr35231104lfm.126.1560776720812; 
 Mon, 17 Jun 2019 06:05:20 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id m28sm2113691ljb.68.2019.06.17.06.05.19
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 17 Jun 2019 06:05:19 -0700 (PDT)
Date: Mon, 17 Jun 2019 05:13:30 -0700
From: Olof Johansson <olof@lixom.net>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH] MAINTAINERS: Change QCOM repo location
Message-ID: <20190617121330.k5xzl44rwqlnvdis@localhost>
References: <1559936691-15759-1-git-send-email-agross@kernel.org>
 <20190607195216.GY22737@tuxbook-pro>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190607195216.GY22737@tuxbook-pro>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_060522_514711_9593639C 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 arm@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 07, 2019 at 12:52:16PM -0700, Bjorn Andersson wrote:
> On Fri 07 Jun 12:44 PDT 2019, Andy Gross wrote:
> 
> > This patch updates the Qualcomm SoC repo to a new location.
> > 
> > Signed-off-by: Andy Gross <agross@kernel.org>
> 
> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Applied to fixes, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
