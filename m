Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD3C54E71
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:10:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ej1rWWR3MXizT0prGnxkL1yS2y6CJ8rDg3NZEPIs20M=; b=ZdPtXsObgcKiBV
	cunuSHi6d0/fdeDycT6DO6Q0MmfcT6whCA4+amBEglww68Ou8/4EQEz1N9zen0SCTcwq7fHzBLuLB
	3FU319oMQQv0MBLD4fEYou4Iltj6eBg+EDrMYMV0RDc8d4POVvoG9tRhStNafyACrP25kR+tHMB9u
	TLpbAC38BhntJautzbmLUjCQGlWGERUKw2B9MJDArMpAOvDbzvmX3qkACkI96Qt4oxiOmEF6tAm8s
	ZxyurmXnFJeZpvQOHLhOCQdFpsTR4xcRpo/vJrdQtQjNnwMdtUnxAA88Y7j1W8Z4yjZ7bp87DVng6
	rYOt+AoMkvmg1EYIpILA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkHi-0005LB-3o; Tue, 25 Jun 2019 12:10:50 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkBl-00006m-9G
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:04:43 +0000
Received: by mail-lj1-x243.google.com with SMTP id p17so16023973ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 05:04:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=GAUXAaHWCuLr6rd2FUXjlw6FojVB92zjxwnQtL3Wb+M=;
 b=ZG2of+xp/uiiwfXUwmTIPXGPA8b7Pes5MCvf4F5i8K3HQmCCiHUlnL7OEO2qysSUuF
 TSVv9hJCV7VWSK5rmA3upkowRE/p32d5EQsYl8oFgEHHt/wPQnSpMqPu7znZbAjpVnSh
 alPAcGkJXa7hylPFeN16B/IlJbHnq35l/JWYTmsKqEj4x984Yka4DCHH/MyicfFYd5qp
 L2Ljsf7tolMbH5QEMwz1XNIZeO/jPrBK0Nd8IqviruJLTdqgay72ISGy3E2OcWs2aWEy
 98CXUCU4LZnKy1X6VNdWbzQiRHKWRRV+N8bcB3EnFBaMyzClfEdhoJpNvRb2LVMpMAuC
 1QpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=GAUXAaHWCuLr6rd2FUXjlw6FojVB92zjxwnQtL3Wb+M=;
 b=hB/bCp87SqpvwK+KRc5xP+UdW0x3MwUvPliemkg5AfNpgdAuNNfVeNy1gg4lZyzJnr
 geDmk0cHGov8lKaTLWZDqMpOZbfLG5tjN3XTIZdZPOqe3gmfD0Fzi2v6MrdcEuo2UATc
 llabQgmYQmCGJzODyxhMfLsvD4+JPHoUWp3pJBX847g49OWEsabi1uYZZCx8FRaYeaKF
 Z+WhISyT7gZ4WrAkszpyW3pj0jr0ft3xiyQ6eXFYyIVwADnTycblVQtnqkEB04HF2jMt
 bcUpEG9h2IjGXqTFOTR/JKLn53jPrGc0a7EuSKGH0PdwLK/nUkl1Wik5NZUHIwwt6Pkn
 UrKQ==
X-Gm-Message-State: APjAAAVrab7oxqc1y6CwKFBeSM8+czxjhTzdH23WEwipE99h9wVRWfis
 n/hsCT4Azd6/M10exsN2RuHtTQ==
X-Google-Smtp-Source: APXvYqxCJzstT7k2Kid307L3GMUHsblLzwyBpdZedDNhVS8ltARvz1YHH/uEdZWITTZ1HBkZ6G7huw==
X-Received: by 2002:a2e:9a82:: with SMTP id p2mr10131679lji.64.1561464279663; 
 Tue, 25 Jun 2019 05:04:39 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id p87sm2220377ljp.50.2019.06.25.05.04.37
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 05:04:38 -0700 (PDT)
Date: Tue, 25 Jun 2019 04:38:00 -0700
From: Olof Johansson <olof@lixom.net>
To: Sekhar Nori <nsekhar@ti.com>
Subject: Re: [GIT PULL 2/2] DaVinci DT update for v5.3
Message-ID: <20190625113800.iymzbufvny2ajs4r@localhost>
References: <20190620110703.18616-1-nsekhar@ti.com>
 <20190620110703.18616-2-nsekhar@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190620110703.18616-2-nsekhar@ti.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_050441_390242_A36B3E36 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 ARM-SoC Maintainers <arm@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 04:37:03PM +0530, Sekhar Nori wrote:
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/nsekhar/linux-davinci.git tags/davinci-for-v5.3/dt
> 
> for you to fetch changes up to 3a4b44d5c032f03cee71a8f2ad5c10ce18b3519b:
> 
>   ARM: davinci_all_defconfig: Enable CPUFREQ_DT (2019-06-14 18:22:37 +0530)
> 
> ----------------------------------------------------------------
> This pull request adds CPUFreq support for DA850 boards in device-tree
> boot using the generic CPUFREQ_DT driver.
> 
> ----------------------------------------------------------------
> Bartosz Golaszewski (1):
>       ARM: dts: da850-evm: enable cpufreq
> 
> David Lechner (4):
>       ARM: dts: da850: add cpu node and operating points to DT
>       ARM: dts: da850-lego-ev3: enable cpufreq
>       ARM: dts: da850-lcdk: enable cpufreq
>       ARM: davinci_all_defconfig: Enable CPUFREQ_DT

We try not to mix defconfig updates with others since they get conflict ridden.
I merged it now, hopefully we'll be spared.


Thanks,


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
