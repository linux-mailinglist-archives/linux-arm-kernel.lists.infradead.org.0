Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64898DC83
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 09:03:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dxLWcTnKU37G+xvJxlex+WuMOnO+uD1LAKmR2p1Qh1k=; b=u+ehW7kEMGLdGZ
	zYrl0s87KlR3Bc6a/eINk6JotU6REkGeuWmqPEsMNQK6hazYwoBxVv5EVekaepnc3/J0EXNipWMNb
	EkRe+gpfqG0OekSyl/Af5DWEgzqw8OOkBLMdoZXTx9Ay71/nbBKP/gYV+70YjuKznbrk7q2uoybsv
	d1KM5ZlssIosuuvAV42PSSS3hzm6mDseCv869sytht427/rWGpKaxeyvKdtasqdrhHSX0ek+gZjCw
	JQpljJAdcb7E6nYY4tC06FwbMqz2mgN2H874+zO5vxeS9/Ns38xmwHPWJdrEt+GXx8O1+SCpal975
	lT1XadTnVvcRjJSyS8hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL0JV-00043K-3B; Mon, 29 Apr 2019 07:02:57 +0000
Received: from mail-lj1-f196.google.com ([209.85.208.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0DF-0006BI-CO
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 06:56:54 +0000
Received: by mail-lj1-f196.google.com with SMTP id t10so7260698ljg.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 23:56:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=cNiynyKRK+6NofuA5ESyTbqlxT6F8CVlPOs0I0hIaNY=;
 b=fZPAINdqdX5BVZp0syZ9egbOY4oyAfzmKcQER0uvV2G7c0R4FFxrs3HKnq/Xowrk0G
 YvHhGGkFKQhYL9Fie3epjCDwCfjbQqtwx0HRqlChob3vNuH1ZABZLA/DwXJFIzosayj4
 x369xndNWcdpnWR9zxM2ItQTZaudpvXx5tFAbll9QPWSe2hmZWq9BzIKV81h1Cv5a4Q3
 fILO5Qf/yx95Dm3V9hAI7EJ2uXF71x++9qZzoYi6ZfRxjyDhI4vxD7iUL6yiTv9bTjBG
 kRT9kPG0QatqdJY0Qhfi6NRAoLVkOowDi2ElXdYlEe3D2I7MfyFOH2NbSXbUEBBg26Tq
 Rakw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=cNiynyKRK+6NofuA5ESyTbqlxT6F8CVlPOs0I0hIaNY=;
 b=afExO8cB9O8NaUS23nDGwEA3xdP4ed04ShzoGQ3rLjw2/t9NHTjcdJ5OWBx7Y4HfU2
 1IWVLtXDtOgRrqRjbvyamzR2AmPALHZ9rWMKw+VsSKwVeyMAvbGL4RHs1th9VSFHVhrX
 ZuZdYPu41vm2xfaSh89XkG3rNdGWVyOd5+nRo+/RsPHV+PxPy04Xk6ELn8Xj4PnYogM0
 CiIKIp0Uozf7kDCIKaaH2GMop4LagZd1MgpkG/1igFsUW8mNwJCMBwJDJXuunEixZ3Ip
 ASeHkdVQ2RpzVHL5rrDSeGC8lb3triRYmioEgj2SRIntWWK1x+fNd6XA3CWGC04y0OtI
 6+lA==
X-Gm-Message-State: APjAAAXO9kfPnxTJY24s6btJ2AanwhwSLPSDDXvhVS/yLIxL4blqr6W4
 6LqQXGnNkWYKYyjCaXLWfc3JIg==
X-Google-Smtp-Source: APXvYqwiQ8deQZirgfFJHIjf/B0x0s4k0KDXPLq/du0lkV0l+EX0JlZhHGtP1SiU/DnV40iDGzeiHA==
X-Received: by 2002:a2e:9dcb:: with SMTP id x11mr16048936ljj.123.1556520987023; 
 Sun, 28 Apr 2019 23:56:27 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id e10sm136357ljf.5.2019.04.28.23.56.25
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 23:56:25 -0700 (PDT)
Date: Sun, 28 Apr 2019 23:44:30 -0700
From: Olof Johansson <olof@lixom.net>
To: Kevin Hilman <khilman@baylibre.com>
Subject: Re: [GIT PULL] soc: amlogic: updates for v5.2, round 2
Message-ID: <20190429064430.bmjs7q3x3smvbkw5@localhost>
References: <7hy343a098.fsf@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7hy343a098.fsf@baylibre.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_235629_833657_ABA98F92 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.196 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-amlogic@lists.infradead.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 21, 2019 at 07:41:55AM -0700, Kevin Hilman wrote:
> The following changes since commit fdda0a6adc33536ad468f07db27325423703c5bc:
> 
>   meson-gx-socinfo: add missing of_node_put after of_device_is_available (2019-03-18 09:07:32 -0700)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/khilman/linux-amlogic.git tags/amlogic-drivers-2
> 
> for you to fetch changes up to bb1dca3a3900a00b881286c96340d6ab85eafe0c:
> 
>   soc: amlogic: meson-gx-pwrc-vpu: Add support for G12A (2019-04-16 11:09:53 -0700)
> 
> ----------------------------------------------------------------
> soc: amlogic: updates for v5.2, round 2
> - VPU power domain: add supporg for G12A SoCs
> - socinfo: add new SoC and package IDS.

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
