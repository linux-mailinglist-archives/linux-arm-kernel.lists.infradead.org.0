Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11DECDC5F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 08:56:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mgrGftaH7BJCeGKAzAExVeFWELRkaJ7cP9ytgaAMlhc=; b=EzPFyZuZ2oZevi
	pLPU7ckc43SNv6a7qc0a5+WM+ts2LPW+quN5AqNCwGcQdfrBS8oiG7mI51S8Nsz083EqJxLFE+8V9
	XMC6/agM/X23s0pwpkPDxDoS1AZWiSWjcegHzKNxKHlV5+KdJnpfKYlZerigpxWWKKEu9u/v5SZin
	3DNENovX+OdAcl2nKp6JJPXqLryXvicIY6kfMlQzVO8oEhM2gCm5CIsl7u890af1B2OkkAm6i/vPD
	sMgQJegfxtrpe7dD9ypoFPZfShcdYy+sv0087VXqimX7FCj/pg/iQB85yGqlb1zmgruY64X87RUGJ
	PBPQJM70MPK7TEKxvMCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL0Df-0006YI-DC; Mon, 29 Apr 2019 06:56:55 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0CI-00051J-5b
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 06:55:34 +0000
Received: by mail-lj1-x242.google.com with SMTP id s7so5586932ljh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 23:55:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=q/Qpo+lIJWAcT/XVaIUKK9m4zaeZZu0vGv2INFRXpIM=;
 b=SuYI9L2zkfEUR6NnVFFZAvjka7hE5i5J+4XZOUh2fZvPjXF/MM1PUoMB5nEA/D14dC
 xeNU6NTknIvxLamrsXbUw+2x0W7eIQ/4fM59WYcCHWVtiJoUFJVWUXDndSN8IZ1Y0Tp5
 9udIUrV2O1D6eN8dn6OJ6N2X+35tnf3zAthIj5M+403P7845WaZAeF1oeElbb0wO1z22
 9gp28My4NXkcEiuLZODQy9O4k1yC+I4gQiFGe3i6qLVySEROHtjSTyd5sp6biXbbyV9b
 oge1muODFdQw0c55dS+EtTnt8qDjv5uysJbO8Fj40lvSh0OKMutUfGe0YdiIye9I3CBs
 rGMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=q/Qpo+lIJWAcT/XVaIUKK9m4zaeZZu0vGv2INFRXpIM=;
 b=GRZlblDEOLLbZsXgzyx5D/GcNJ+OAMoaijtv5oeiLt/FGvhfCz/a+pAz7OZVOx+Zrm
 oJNzhy3qJK3cV7c8OSymY+07QOzldYn/ihfoyxrfd1CronrGoN+wV7jmlTTf4b1vZ/8J
 faTFoeCtdhc4Zg0SKcl7Dsw5FRVcFKuqBXAX3AcgJ5semAd6f/N9SJ1tknAX4Yr6o6iX
 Qq7Js9aonnnPTzYPjg6Hb6LWksiTpT7BYWFUNANmrV8k9r5Fjjp+riAg5wYzkM+4hqxQ
 2MI0cmO93Cu37c3r/K3DfHuCGRVZXZqUG3Hcu/u8MHyPEtcCZ3g5ylg4RFgcLm4OpYc+
 nCQA==
X-Gm-Message-State: APjAAAWL0UkWI2MeCkZMrn6i2Dls0EYIJ7Sc6QbTKe2e4616HOzrMXPd
 YQGdySmKqk0ldu1S3rUGmp1GxFD6CtURQQ==
X-Google-Smtp-Source: APXvYqynRUU7K2UMeLWZi0t0k8hSqEVZdV6uddC9CPXzQzRTyhTxA8Ow1wxacjQm1HeNHWsnPnWd5Q==
X-Received: by 2002:a2e:9993:: with SMTP id w19mr11651880lji.111.1556520928169; 
 Sun, 28 Apr 2019 23:55:28 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id r21sm4092854ljg.51.2019.04.28.23.55.26
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 23:55:27 -0700 (PDT)
Date: Sun, 28 Apr 2019 23:07:57 -0700
From: Olof Johansson <olof@lixom.net>
To: Sekhar Nori <nsekhar@ti.com>
Subject: Re: [GIT PULL] DaVinci SoC updates for v5.2
Message-ID: <20190429060757.7zie3mhkzhfdcjy2@localhost>
References: <19d86e1e-bbae-b24d-a9ed-ae68777b5997@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <19d86e1e-bbae-b24d-a9ed-ae68777b5997@ti.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_235530_227100_26DED9F4 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 ARM-SoC Maintainers <arm@kernel.org>, Alan Stern <stern@rowland.harvard.edu>,
 Linux ARM Kernel List <linux-arm-kernel@lists.infradead.org>,
 Kevin Hilman <khilman@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 15, 2019 at 09:12:47PM +0530, Sekhar Nori wrote:
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/nsekhar/linux-davinci.git tags/davinci-for-v5.2/soc
> 
> for you to fetch changes up to 512de1ce7bb71972e223ec179fced1945221522d:
> 
>   usb: ohci-da8xx: drop the vbus GPIO (2019-04-12 19:46:48 +0530)
> 
> ----------------------------------------------------------------
> This update for DaVinci SoC support simplifies the VBUS enable
> and overcurrent handling code in DA8XX OHCI driver by modeling
> vbus GPIO as a regulator. This unifies code for all users, device
> tree and non-device-tree.
> 
> The OHCI driver patches have been acked by its maintainer.

Thanks, merged.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
