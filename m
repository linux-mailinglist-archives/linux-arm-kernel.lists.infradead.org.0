Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B73C21A9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 15:17:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h2EQhQaLqATVbNUiYRjK6Ugk3dq2i/5wQCQM9vosAB0=; b=ciXAkEWcS0SqHN
	+UWh5Mrj88TUMB9fn7w2wqUXwliC/sYkGWa9FPjFVM0rUBkv5vWe4Bx1RcwAJ5OHX3TcsfDLgOxxN
	9NPsyz2ysSBGyBmaTCNvbl3tl/zSPFjEMB8d/F9KVFFEHR4jISbu1Ak3NO38AKenq2Llq6GFGgNf8
	1ZET7lKltGyrFegTeF8Ma/+7jtvpc3wnR+BY4P8nMgHGxDE8ue1KaJGc+qKVCryLNfKliZTs9N5k7
	2tpRB4+G6QnVvvl3VbOhsAAC4BStYQmN6zLVpPxsPVS/OXMw2xsnM/BNqv5KWBvfW3EfY9+8aEwjb
	jzSiAEr8z6R4Kv6IUlag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEvYK-00012d-Gk; Mon, 30 Sep 2019 13:17:24 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEvYB-00012A-90
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 13:17:16 +0000
Received: by mail-pl1-x643.google.com with SMTP id y10so3911491plp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 06:17:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=B4ggzzzVRq7D1/IrWYPZsS6mZyXtJfN7dDcsMNzyKxY=;
 b=mDQBmKq29AbFtd1CnyEwPK/vZbkcZ7/cSi4rUC6VX2Xyd+TWXE5t9hFSNvgcrmaqCq
 VjVJcQ8YShs3drchBpCCG2mvNK6A54mf9pPaKx7McgcZKAuXJths5euUNspk26l42Ymr
 vVmSDhM/rUSnkKNnkHRLZkB2V2I1WcD56J5cYGVwnw0XW9i85pi4rzQ9UCH4IDx/iVR6
 Bh+gXAywLHOb6x+tev6zVykr2xJrqTXZgES8LI6FxYY3c19qiXffhQzIXVDgl9+8ASEz
 6cqGUpVMhENeeEiLbb8thoTzdBdwQ2BMUB/qlkx6YbXPS4bZTZQU8BZd1q6sgsqWIipF
 dTtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=B4ggzzzVRq7D1/IrWYPZsS6mZyXtJfN7dDcsMNzyKxY=;
 b=AlZPprRiGnSKDLgZTP3j3G6uJFxq6kRvhrV9Awzv47DaBWoVqB4/Fwoonc/sKHygpd
 vzOJwfGCthhUVLD6dyYQLhQBwdnYzTnMn4pUBSJEnCwBDKOaz4/JlPhzZCeyeZF4j/Pt
 DTHUBwGubO4LgVgywjU5rvf4h/f9tAG1QC/4DFcC8tPBLfbMA+b9fn+gAv/RiFqouZhS
 7MlbNV5CS+lQgxzEhf8hV83Th7l9VwKawBy1NM+Xg64mA9iHq416Aj/a490Io8d7q+R0
 ikheYBqjUgQMFXu4hkuMegA4pY5iJ4FLmRmAo3zd+zW0wgnGp1Wj0kQqJOu2cryr0JZh
 64Ng==
X-Gm-Message-State: APjAAAUkVJ5uC8fP/azuq6xZ13MXsO0fVibGP9X0cZ8uen0iIEWfGn8U
 DO3MCMvSKCsJA2FhsXlMEuE=
X-Google-Smtp-Source: APXvYqyORv2gkjwW7rfZFXwSfREuRsSvclviOWTEAU/DB8OGnqKhjK89jVUVsDBYC2vqB77YvAkwqw==
X-Received: by 2002:a17:902:d685:: with SMTP id
 v5mr19638281ply.15.1569849434796; 
 Mon, 30 Sep 2019 06:17:14 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id bx18sm11615970pjb.26.2019.09.30.06.17.13
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 30 Sep 2019 06:17:14 -0700 (PDT)
Date: Mon, 30 Sep 2019 06:17:13 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 1/3] watchdog: imx2_wdt: Remove unnecessary blank line
Message-ID: <20190930131713.GA29750@roeck-us.net>
References: <1569308828-8320-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1569308828-8320-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_061715_316023_90C9D592 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: linux-watchdog@vger.kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 wim@linux-watchdog.org, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 24, 2019 at 03:07:06PM +0800, Anson Huang wrote:
> Remove unnecessary blank line.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>  drivers/watchdog/imx2_wdt.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/watchdog/imx2_wdt.c b/drivers/watchdog/imx2_wdt.c
> index 8d019a9..6711b4e 100644
> --- a/drivers/watchdog/imx2_wdt.c
> +++ b/drivers/watchdog/imx2_wdt.c
> @@ -72,7 +72,6 @@ module_param(nowayout, bool, 0);
>  MODULE_PARM_DESC(nowayout, "Watchdog cannot be stopped once started (default="
>  				__MODULE_STRING(WATCHDOG_NOWAYOUT) ")");
>  
> -
>  static unsigned timeout;
>  module_param(timeout, uint, 0);
>  MODULE_PARM_DESC(timeout, "Watchdog timeout in seconds (default="
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
