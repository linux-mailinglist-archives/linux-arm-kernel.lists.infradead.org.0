Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C48C4BC66
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 17:06:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dKQePRUzmI3DwMEPjy0htFFOHVBwt9VgNyIBJ/rdBec=; b=qfzVpu81C9SbD/
	gpXtDFEscKG6gHA1L2cb6pyMBYzkUdreK1vdQgFQfWi+qoFSvX/Zyw7/VDWpqQOMzmN7HLX7HV71i
	/9WOGsWWHgcm6OcYzmag3a/TZ63z0B1wgHAUUu0Yye4B2ECuG5NwyQ1/F+HT6u9S+aopyrSSkC9iD
	rZJD8QLXSobLWYsX7/IVfRjVQ9YbFRb14WvkmYfPoftaQtoRVgZX5BC8cQulJa7ItD4F8UZL1kJeh
	4km6+drjj+qRqhF88S5tzyTipvLXNgOukQ3R1+dGlHq0lFjCSORkLTJuKFiKoq4DE3t3d7/1k7IoW
	Oyf/3VxoctJh+e/BwmOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdcAc-0002Tg-7o; Wed, 19 Jun 2019 15:06:42 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdc9r-00026j-AW
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 15:05:56 +0000
Received: by mail-lf1-x141.google.com with SMTP id d11so12413447lfb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 08:05:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=rLIkqlGn9cUlPf38s8MiT2bIRqxvXG+Su9LV/bpHzd0=;
 b=A80Z3wePQk+3ikueP3DX3ZYZi5GH6ORG5QlDkVy+ZFzIpC7UJEN2CEyfM87XGy2Kml
 UMB7BDT2oVm8cajDJkV6PAUOakeu+92GVcs/QkoaiNhn/gyGbY1QZCMs1B9TvgOdWxqN
 kR8/cuu487HIgBWxwrnQWUUEwU8bLwivUxGncg0azOcql7GuF8DDnk2ML030xCGds8uG
 jIdqharE+JH/Fw1qdVwPBC2R4uFcaSsIHy+nmcqynRMdH5ro5KP8E/ITzF2H4yDnD1A5
 nuY6r5xUO9S09bTcjrPtGb66vRplTzhfcWwTa5rLXbmBJ2/P0VLWpkbh5axjvezbhd0c
 EIow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rLIkqlGn9cUlPf38s8MiT2bIRqxvXG+Su9LV/bpHzd0=;
 b=X0qUhNXT2XKHlOQzh/dL41jbC0Xu42sZK1MhoN8myMBnNuy3Uh9iB0xaSI2auMBiKL
 er+RT7RvqgbijTxpfZzFLYlFYpM7DQizwu0bzq1w0ydrS1qPDrctmUlWriroIq6KJzon
 loOz1F8gp0TlErseB3IRWi+bopsCrN9kxwBwjLfIpEJ8s1v/6bEuGWzpX+A9pz/hEFVl
 1bCwulbg1EI35NTHPChkIY88j8UPBrn3VRPa9etJqHbq8oOj2TJu6CulqKPIjk1UPgPx
 a/XCH35v6Xmj++a1AD5t7wmsIHhXFlGmuCBQOIlt3V4gFRE2dlggobPsDuBIIPAabpTm
 YDbg==
X-Gm-Message-State: APjAAAXMpr4Re/BEVtNyQHijAlH48RbSLo+d+BQEhvAZ56l5VMvD/U//
 a33JgGPJM0npxXybfMDsGiSjdfORFGXA/g==
X-Google-Smtp-Source: APXvYqxmdNV7xq5YR13Vg4a3/65Jiq4IWvBSJdIVrPquKzCKn0zJgudmzb7b2ZjN0LydNtOJs2ajbA==
X-Received: by 2002:a19:710b:: with SMTP id m11mr56799598lfc.135.1560956753593; 
 Wed, 19 Jun 2019 08:05:53 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id y18sm3123964ljh.1.2019.06.19.08.05.52
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Jun 2019 08:05:52 -0700 (PDT)
Date: Wed, 19 Jun 2019 07:03:51 -0700
From: Olof Johansson <olof@lixom.net>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH] arm64: configs: Remove useless UEVENT_HELPER_PATH
Message-ID: <20190619140351.okscbbzudzwv5gup@localhost>
References: <1559634748-19546-1-git-send-email-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559634748-19546-1-git-send-email-krzk@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_080555_359016_2795F7C6 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 04, 2019 at 09:52:28AM +0200, Krzysztof Kozlowski wrote:
> Remove the CONFIG_UEVENT_HELPER_PATH because:
> 1. It is disabled since commit 1be01d4a5714 ("driver: base: Disable
>    CONFIG_UEVENT_HELPER by default") as its dependency (UEVENT_HELPER) was
>    made default to 'n',
> 2. It is not recommended (help message: "This should not be used today
>    [...] creates a high system load") and was kept only for ancient
>    userland,
> 3. Certain userland specifically requests it to be disabled (systemd
>    README: "Legacy hotplug slows down the system and confuses udev").
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Applied, thanks.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
