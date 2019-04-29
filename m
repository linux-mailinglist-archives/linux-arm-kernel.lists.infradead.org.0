Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44272E864
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 19:08:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dWOvw5ND/nikSpilHQKwkVlt8YNck0GFfMZTvYU0Gr4=; b=FRJn/tYGp3AArp
	Z+jb4H/MBbFcEjjWSkG2rD7wbOGPMOfAR49UUQ27c641Po8QnOjdBVnhWX92L1aVj6P8WlT3IxlgK
	nMoD82Nt1eCDeJlcMOCDC1s9Jokvy1vOUuGCE43jU4DrYs8OBKRqB9w5N8lAvBukqUDr2w6nec2WC
	LxQ/2xoDot5GYw3q8YaTU7hgc4NqG29RLzIhPKj6tzMzghI+S90r/1JfJjB9K/T96NBhca9Wat/Hx
	52+AvxPFRU5XShTHKx1kD/ZGszI/n61Gr7xpUfeTrCzNCV3dCgRDHCz2W02uVi+3En3u5WOjajcET
	U5WK3iaDQ5RQdFsnjIpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL9lW-0003V7-MZ; Mon, 29 Apr 2019 17:08:30 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL9ki-0002d6-Aa
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 17:07:43 +0000
Received: by mail-lf1-x143.google.com with SMTP id h18so8435219lfj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 10:07:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=VG4MrzGYzg+oIGGAU6FD7SkI0rO4RMoaTu/7hSil5P0=;
 b=SThCZ3voTsLvrUb8be2VObpNIf9SfmMT1syipJ3dvtKLK9TdqQbAIboY6ZBauE3uiK
 QGjbBBzj4wHu9UfuMNnFNf3Dbgobtt5AVdIdutDvpZruiuCLJ07NJqGiIdBimLw/qOD6
 9wOlPU8T+k9zd/GKKceP/mn0RSXhk6UIzfOKewpOIlFgL9nfO4PUxYzrSeX8ue7zuekb
 7vJsIO1AK/ys3RHuR9SZfaOS1wUDM+Y7iaUx+yNdXKxoE8JP7bcECz04Y7bkGV4d1x5i
 QdW5y9UDiNvzHAtVd6vCC0BjF8Fuz/L0VLh09Sfjk8ZrFZOIsdVVwVum78waVJ6JjhaA
 ucSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VG4MrzGYzg+oIGGAU6FD7SkI0rO4RMoaTu/7hSil5P0=;
 b=fVtUHqaD7IZiPGGF6ub///YbeUq3+FIWcYrptk8OF5F+edguinUG8TLI5acvzhR+6R
 CBbX0jbhRXhQn9AKhJEHzCbr6LFIeGB2dCBNmjhmhQ/NQDfNf97c+3lQQ9TIiguIZZTP
 8WKXuXQblP8za7FTXnjE3eEv0vIBenXiB5glboNvTR79C5Fq7nuluaBkGpw4/I/zwToc
 ZnIxUhtK8rhn4xc/mFHBo5TaVDBMlI35IsXBKVWCYnQhZ1hHaL7hrXm6AawpUfsDEJxY
 zjeRyPFdVMf5MKtvou4pVNcalcwgzvWc/LqsT/gktqH7TcA4KEHQWvU0y6KjNi3GkmQI
 TYxw==
X-Gm-Message-State: APjAAAVWPnAZSRd9pSRUcYKNbJ/DTcFj2ceHhImQUiL0l4NbFDQJtzRQ
 VzzjsdophY6XlmOXCWmVN6gurw==
X-Google-Smtp-Source: APXvYqxzA/08LFUIlvLp1+rai54eOvk0QkUz5Dlhhr01XFvM/OY3SyV+cRn6wAlNl3NvavqPSv8Zng==
X-Received: by 2002:ac2:4148:: with SMTP id c8mr29343692lfi.2.1556557658557;
 Mon, 29 Apr 2019 10:07:38 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id d22sm7447552lfc.80.2019.04.29.10.07.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 10:07:37 -0700 (PDT)
Date: Mon, 29 Apr 2019 09:27:20 -0700
From: Olof Johansson <olof@lixom.net>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [GIT PULL 5/6] i.MX arm64 device tree update for 5.2
Message-ID: <20190429162720.u3lq4mu42l623cmp@localhost>
References: <20190422082836.3734-1-shawnguo@kernel.org>
 <20190422082836.3734-5-shawnguo@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190422082836.3734-5-shawnguo@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_100740_839210_CF11F6EA 
X-CRM114-Status: GOOD (  14.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stefan Agner <stefan@agner.ch>, Li Yang <leoyang.li@nxp.com>,
 arm@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 22, 2019 at 04:28:35PM +0800, Shawn Guo wrote:
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-dt64-5.2
> 
> for you to fetch changes up to 00c5ce8ac0233fb8975448e720bb1702b36d0725:
> 
>   arm64: dts: lx2160a: add cpu idle support (2019-04-22 10:40:45 +0800)
> 
> ----------------------------------------------------------------
> i.MX arm64 device tree update for 5.2:
>  - Add initial i.MX8MM SoC and EVK board support.
>  - Enable OPP table for cpufreq support on i.MX8MQ, i.MX8QXP and
>    i.MX8MM.
>  - A series from Andrey Smirnov to enable PCIe support for i.MX8MQ.
>  - Add TMU (Thermal Management Unit) device on i.MX8MQ for managing
>    thermal of CPU, GPU, and VPU.
>  - Add SDMA and SAI2 devices for i.MX8MQ SoC and enable wm8524 audio
>    support on EVK board.
>  - Add LPUART, OCOTP and GPU devices for i.MX8MQ SoC.
>  - Add initial i.MX8MQ based Zii Ultra board support
>  - Add SCU general IRQ and watchdog support for i.MX8QXP.
>  - Add audio related devices and PMU for LS1028A.
>  - Enable SATA and cpuidle support for LX2160A.
>  - Other small random updates.

Merged, thanks.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
