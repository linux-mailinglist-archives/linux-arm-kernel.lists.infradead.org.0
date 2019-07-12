Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E2D664EE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 05:25:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EVc+GsBZMZtloImfwSbmJCDNg9WJ7F8MNxEn5xpqA5g=; b=gRfPfHQMah5iIS
	+pqbzh0bN2VaWt8WonZa7pYXxRfhoLLZX5Do/4zfzGKioQo31CQWfoXolnps2RhV3qsPWiaw6dffy
	zMH6jcjZ55bBunDipHJBjzsKux7lR2j720vuqFyXRlrIBsDVITqSZpl81cwTMenGVUegICsACq8A8
	b6jjPo5dUfB0FImg9ZuzNw+iy+Nk9icsce+3IXtC8xVvO1fZtUThxgjvezZal/YHJ/RB86SC7u4Ib
	asTCWANQMmKPJvsfU38RXlx7Q49DPGj6X0AEQvkDH5QI6NN2wpufkVXDUeiP9L8EEexI1McR0AqkT
	Rc0GH4xAwV61kxqni70Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlmBv-0006pH-4g; Fri, 12 Jul 2019 03:25:47 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlmBg-0006om-9t
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 03:25:33 +0000
Received: by mail-io1-xd44.google.com with SMTP id k8so17398337iot.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 20:25:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=915jr1GvJqW/XnIrI3t1cz5Ff5V+KSrPiSwAsvPilYA=;
 b=jDAdGMyUD3QP0hDtMwRDoksOAUXjXCNAb8xrFWjIC6U59Jqn2rzmjAC9TjWKRU3oAg
 YeVglVOpwPTMKgy5jtpuGKFZfPUqG3VV0d6E3gZ2DGhSIyMFRW3vqXK9T/AQiXKhe87e
 hob4i6tNfEf3sW+zdh46mx5EPOz/T36Hw4jBLelr/DNfyZE1VEmjNUdnpHEW5h9NvAgc
 LXgdjZm7sFjWZspS9JToXExMoEMJ6oYou1wt9h/noA3gddJYFT3AAuEBZHrSeDvxXl09
 F2UXKBCcyy+PCTZkylpc+E5OEosTkbvexsGVFeHvC6ufTpgmrHGPbWPEXJ9WK22hekYw
 D7Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=915jr1GvJqW/XnIrI3t1cz5Ff5V+KSrPiSwAsvPilYA=;
 b=STgio7hBB7zkBKUof489vyRGm8NAVPjMgJiiZKRkHGUNsPlcOgDhOcpH3b+R5Ocd3p
 8oP/wLmnPruQyG/y5JLa8yartvi+tdnPTyYyo4Zz1exGguEY6BV25z1yzeQQR7ZYrasB
 64CAwLA3ZIqXVHfVu0VQ7SPqop3bULO+/AoXHtjUnX6qWmtpMcWwj7yClwQwNU7s9bxM
 boJjVIeBV8VQVhoNXZuzq6YuHcSEaWpWIhPiuxxy9f/xx24X4nzdX7nd1MhehzrDfjo6
 asnuj3aCw0vFe5DKq4ByWnAZZ8wZG9W9+1BSEODumRXoLQNoEfL9K2jd78dXudK8Iw6D
 HXeQ==
X-Gm-Message-State: APjAAAWhnzXGFiq+8zTWDqj7zppjLCQpsCWup+unsvmXT4xxEfPZUU6h
 3H3zjsb/YUcuakTJXclbvMvLYIBK73V/uc0eUNAee54p
X-Google-Smtp-Source: APXvYqza8rWHidcHCCjVSBTPT+5lCJioVNWdyCZbW7cNHRuU9UZiZ+nqv4uprd5V5nvKK7gywSHHdFQ5iv3dyS8WUXM=
X-Received: by 2002:a6b:4107:: with SMTP id n7mr7372020ioa.12.1562901930907;
 Thu, 11 Jul 2019 20:25:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190609055658.3446-1-andrew.smirnov@gmail.com>
In-Reply-To: <20190609055658.3446-1-andrew.smirnov@gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 11 Jul 2019 20:25:19 -0700
Message-ID: <CAHQ1cqG0=_ONFALzqCmsvKU-Lm4TFqjuiNWF=qz-GGm+5EJGag@mail.gmail.com>
Subject: Re: [PATCH] i2c: imx: Initialize DMA before registering I2C adapter
To: Wolfram Sang <wsa@the-dreams.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_202532_348992_CF2C8A08 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: linux-kernel <linux-kernel@vger.kernel.org>, linux-i2c@vger.kernel.org,
 Chris Healy <cphealy@gmail.com>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 8, 2019 at 10:57 PM Andrey Smirnov <andrew.smirnov@gmail.com> wrote:
>
> Allocating DMA after registering I2C adapter can lead to infinite
> probing loop, for example, consider the following scenario:
>
>     1. i2c_imx_probe() is called and successfully registers an I2C
>        adapter via i2c_add_numbered_adapter()
>
>     2. As a part of i2c_add_numbered_adapter() new I2C slave devices
>        are added from DT which results in a call to
>        driver_deferred_probe_trigger()
>
>     3. i2c_imx_probe() continues and calls i2c_imx_dma_request() which
>        due to lack of proper DMA driver returns -EPROBE_DEFER
>
>     4. i2c_imx_probe() fails, removes I2C adapter and returns
>        -EPROBE_DEFER, which places it into deferred probe list
>
>     5. Deferred probe work triggered in #2 above kicks in and calls
>        i2c_imx_probe() again thus bringing us to step #1
>
> To avoid having this problem, move i2c_imx_dma_request() to happen
> before i2c_add_numbered_adapter().
>
> This problem was encountered on VF610 CFU1 board with
> CONFIG_FSL_EDMA=n.
>
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> Cc: Chris Healy <cphealy@gmail.com>
> Cc: Wolfram Sang <wsa@the-dreams.de>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: linux-i2c@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org

Gentle ping. Any feedback on this?

Thanks,
Andrey Smirnov

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
