Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B6A6148F1C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 21:09:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+PCaBpZZ80QiSigSVgmyRMDkqFoIHIQcyLHa976qNeA=; b=uJ2CXkQD+B9NAM
	KyXU0w9RL3YjXcwn/lSO91w8nIIy8gRDOLfB0/Cf4ngygpzx+xpJij6jUCybDWjsdpPlJekgzabMf
	r0i7vODki6InZ2SB1DTl/mW9uixuKAH03sr0725KEqH5hk5uVXOIyE8WED5WaO8R9qR82q4twvn5t
	Rxf26ugUtSWWtarjbnRMzi02yaBZ09ISFmuCUk+76vMOvNGA4rEUMs+YGoDAjB96v/+/N/s/Cb6dO
	yLxuNJLpXdNIG4DUwA4BTORJ7poJV3j12ThKk7OgXeexykv1cfBmSA5/0KMX/hMep3s543CibYG7w
	Y66EdNbw8xdb8ncRzEhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv5H1-00063T-OC; Fri, 24 Jan 2020 20:09:47 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv5Gs-00062k-Nl
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 20:09:40 +0000
Received: by mail-lf1-x144.google.com with SMTP id r14so1998183lfm.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Jan 2020 12:09:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=o+eDZ1ZIHATZsT+z13u9M4co0FtT4EjyFv0GIZvJISY=;
 b=NYq7FezCj3bEtWKiAwW0HHg3flWJlqCVvwfn1Mlk3mbrLER/rFs1QVNVVhjMNE4j8W
 Vku2OLV7Klv36CsubYyfWCMINn/dZb/AXsbqFcvO0UrgIcysQ8tndAuBA1YPte9ykgJi
 yFbpMYNCxt8Vkvck1zVQZUFme2y+QUl+PFVlHLZxhkOFat18liv0+smQpn6tWSxFpFyo
 wgiyjWzj/z0+9cOpv2t9D4vguwiC6ENUSt5Yht+bybSV0l05BxtMpCaWTiIuCvcSnkzF
 qNC6T4DLEbzqA0zOc3Bn7vKk6uWv0yeq3ZRclwwb+yZBk9Xgix+004TLjvIaGGCu6BXB
 fWiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=o+eDZ1ZIHATZsT+z13u9M4co0FtT4EjyFv0GIZvJISY=;
 b=C7yNfjbZis8+1hnrDF55OIIMwO/JFFSq215ZuMJcBnSDV1y6y+mFBis3E+/moferLw
 Rr2Zf7ChQY3Nf90BBJ0SxZzBKSWxVJZUdKegYNQ5HGSId9ymnrQ5B4eoe0j52tlynrRs
 2NFBvpcka2a6n9+Yfp44iwiOX6gQqTsl+shIkfvHgNhdRIBXQsfRXa/sZzcJX91z9prQ
 Vk30R5iuji0hZjg7hx1rPojV+0Y6ktATnP32SX3bRpkLe/Qvh+FDw/Azs9aavaX90toG
 xgfJjfBLqVA8uXLTtz88McE17i+tj0qrP6FCYdzAIJ9MJCjCaseBQLywtKN1Ze7nfRCz
 i0zw==
X-Gm-Message-State: APjAAAXMeXO2pMIo1yA1aO8sNeisJ6D/gEfeuD0TKe6asLQN5ZnYp72G
 Hk1rGTL0NApvHqCc2QESix4zIA==
X-Google-Smtp-Source: APXvYqzpZY1+H9hrD3gFt4xRhhyreKvMSPQqX/A+26P1WtqQZoMeISzeAooVglpoeDg1xh/Aj3B6kw==
X-Received: by 2002:ac2:5a48:: with SMTP id r8mr2255355lfn.179.1579896575099; 
 Fri, 24 Jan 2020 12:09:35 -0800 (PST)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id z11sm3604246ljc.97.2020.01.24.12.09.33
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 24 Jan 2020 12:09:33 -0800 (PST)
Date: Fri, 24 Jan 2020 12:08:11 -0800
From: Olof Johansson <olof@lixom.net>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH] arm64: defconfig: Enable Texas Instruments UDMA driver
Message-ID: <20200124200811.ytgs66cg5qpugi5c@localhost>
References: <20200124092359.12429-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200124092359.12429-1-peter.ujfalusi@ti.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_120938_799638_0136ABB7 
X-CRM114-Status: GOOD (  13.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alexandre.belloni@bootlin.com, arnd@arndb.de, soc@kernel.org,
 catalin.marinas@arm.com, linux-kernel@vger.kernel.org, t-kristo@ti.com,
 vkoul@kernel.org, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 24, 2020 at 11:23:59AM +0200, Peter Ujfalusi wrote:
> The UDMA driver is used on K3 platforms (am654 and j721e).
> 
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> ---
> Hi,
> 
> The drivers for UDMA are already in linu-next and the DT patches are going to be
> also heading for 5.6.
> The only missing piece is to enable the drivers in defconfig so clients can use
> the DMA.

Hi Peter,

We normally like to see new options turned on after the driver/option has been
merged, so send this during or right after the merge window when that happens,
please.

I also see that this is statically enabling this driver -- we try to keep as
many drivers as possible as modules to avoid the static kernel from growing too
large. Would that be a suitable approach here, or is the driver needed to reach
rootfs for further module loading?


Thanks,

-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
