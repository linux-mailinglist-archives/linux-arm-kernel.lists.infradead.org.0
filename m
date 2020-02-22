Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B30716901C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 17:02:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f7IOUDT6iP+BqrYK8fVuVO/TS8LIBpD78M5vAAzsStE=; b=O9RDGtUnF71+3U
	w7BkgkdOsaYVMTkkyEHV6YwvNSSMwxeZArrl0R9uPgIRkyxXTUDGmoG1aIVEoFnisV6bHnrKUTPp6
	Sesx4H50bmpoNe8ssrPCg/2ivp3y+cXtQd2RDvrrXCaYymqacrEj2MTWCtyBXt1Uu7g2oRnIlUXNw
	IlbNhenja6GpueyuOyp0d0MGCFn72ZL0ckxYSzfkziQ776nbrgzbDdoGFcDkE74xEsf3s9SrIOM68
	4E6qpVJDDEWQRAi0o4mBzmmg5aGf4MnC7y9sASxT98PrbZq8jmYbgdo0RRdjXhyOjOSahhszLKhdz
	AlCRRiH2ESzOD076Qjrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5XEb-0000Xu-Cq; Sat, 22 Feb 2020 16:02:29 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5XET-0000XI-Gs
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 16:02:22 +0000
Received: by mail-pl1-x643.google.com with SMTP id y1so2168600plp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 22 Feb 2020 08:02:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=xcfWc07VJgwKZWSeCtj3dYfSkWoqRHSEjLvzNesnjm8=;
 b=e4W4iJzwkVD5G8ryoMxoC3o2gWbdwIv9HJtioaVLJ7r/aeVIXyg7ksO3Y+tiCeVfgk
 +p6CZizrNgdd+J+pFWQJW4dVn2MO5KGHhReEfjK3ZqtjG02RsHwVOt4LDX5SNiI25D/f
 8XKNUzx889WR5FX93+ydAxbkqOuot7q4Y5TNZ5aJ7tpUqnV4oSEwWDglgi/dhYeNT/XI
 JlldbMY5iRlj04KnA6LYgsOm3iMR0pM0PP4V9G0bBL4mP1OKz9Ol8NiZFPtXRpCoVRX4
 QrTv8I6iSu07vNSkj2kH3/AG4CZSFh1CZxIaWCf0pcVAQAmKA/TwhAKJbdCcCqCBWl+L
 fbQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=xcfWc07VJgwKZWSeCtj3dYfSkWoqRHSEjLvzNesnjm8=;
 b=h4kTrWmZczu+NV3fowbsONCsz1c45D0ISWeXdGeOz5JH6H33mjgwV7AcB87c0oMUM+
 xrhSilHegRmlZNGIvYuxmVnzuIuX1AGMYDMYZcFwjA5WflWMTXhdudRYos5RzMfRNHTL
 0EA+CcI3y1MOgQfI60L4SCT5tDys+ve/zNKgtg3WJdiJKLNcyBnI0AHZRV96OJ2HAl4P
 5jIr5NdzdStk/StGJIP5Z7Jg9C7VO/9aZfPYF6zDmTF0BIEFYO5maj0OdCSpV/hU9BL7
 rOGX4DcJXWYYJ8A+eUA7r+DZS6R6dlqcqpiwZOS06fOFXkUBgnAQd9NyF5lfjme8SFG+
 IMuQ==
X-Gm-Message-State: APjAAAUXgOH1jW/fpBqLZiKwu2tx/NDkWlQloPnHPkYZnBOTnUj6HyLU
 IgScnD8oP8PwzAM5IBiURsg=
X-Google-Smtp-Source: APXvYqyUxZTcZApAopyQ3ulF1Kav/0gLlUvfK+oVe/98iwN5Xsh9EpL6rdRREX1moN7GmZOsUIiAEg==
X-Received: by 2002:a17:902:82c5:: with SMTP id
 u5mr41030877plz.219.1582387339765; 
 Sat, 22 Feb 2020 08:02:19 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id e7sm6909915pfj.114.2020.02.22.08.02.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 22 Feb 2020 08:02:18 -0800 (PST)
Date: Sat, 22 Feb 2020 08:02:18 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 3/3] watchdog: imx2_wdt: Remove unused include of init.h
Message-ID: <20200222160218.GA12740@roeck-us.net>
References: <1582250430-8872-1-git-send-email-Anson.Huang@nxp.com>
 <1582250430-8872-3-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582250430-8872-3-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_080221_563632_86459699 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-watchdog@vger.kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 wim@linux-watchdog.org, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 21, 2020 at 10:00:30AM +0800, Anson Huang wrote:
> There is nothing in use from init.h, remove it.
> 

NACK, sorry; this driver uses __init and __exit_p.

Guenter

> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  drivers/watchdog/imx2_wdt.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/watchdog/imx2_wdt.c b/drivers/watchdog/imx2_wdt.c
> index f8d58bf..ce28e40 100644
> --- a/drivers/watchdog/imx2_wdt.c
> +++ b/drivers/watchdog/imx2_wdt.c
> @@ -20,7 +20,6 @@
>  
>  #include <linux/clk.h>
>  #include <linux/delay.h>
> -#include <linux/init.h>
>  #include <linux/interrupt.h>
>  #include <linux/io.h>
>  #include <linux/kernel.h>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
