Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DBC524788
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 07:31:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J+sX3c2BP2ri5/UvnbSCeDPolFLhblMLckPWp3yaVJY=; b=O773D8mdzLrsqp
	Rd55pvA2B1ZaphTTJJo7nziAKAdXPMLzpBNC2zdlVx835eBxmAEiW6wlSH8gzrK6LSSH03qgYuhBJ
	ekYQZHGMD/v2GYWBWR3dxE8BzSq6xOtwQWTyK1vyzYnC9WTNEvldyr+4ujld3/ZXqMK68KPQyyfD3
	GeHirWks8hCGsXzhvm9onbkqtZwjn2+UWUgKHAjdwaDTISKNpr8IFNjhrBIG6pESt6y3VMFdV0dWL
	Bolah5nq+WQP+xLh5TU2NVD8ekw2fJw+6fz18XcFPsAlN2q1hNt6h9qkD6zSnFUqWnsRpwtuQoQVf
	Yrw55eiwhZLW5hr22Rog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSxMZ-0000xy-B7; Tue, 21 May 2019 05:30:59 +0000
Received: from mail-it1-x132.google.com ([2607:f8b0:4864:20::132])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSxMR-0000xW-Q7
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 05:30:53 +0000
Received: by mail-it1-x132.google.com with SMTP id e184so2772404ite.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 22:30:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=8qN0twdFcwXuepzLmJZnPlQPdwe8pV/UL2Zay+CiZEw=;
 b=KInkiCDFWuYqXHPIDcw89Bqsu1qxHPFy0Ke9vwbcjv0yIpwnhei08uqTk+c1S26RHs
 0wJBAt7cmZz5bO/4Hie52tA5ikSCxvJ1jHjjUMGNuWuDUTnkRE//rkLI47Qzxers6ozt
 P9jXOxiLTXavrK+kpnRszjdkJY/eA2m1PM9l1sVGHtRhHeHc9y6V6O4xDEPigQKsTSXs
 dCXTYy78q0EZp8FOLwbd3NaushImT1RR3cU0PB86wzU3xNlAb27HbEKn9KD7CikA42VI
 yrmd0nLS9xWbmoyfPPCq+xFa6Fu1IM19OPkDZEs3uAIvR6sf3rrUDp6iDwCCMAFHPOE0
 UTtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8qN0twdFcwXuepzLmJZnPlQPdwe8pV/UL2Zay+CiZEw=;
 b=kQ3bpuBUuCys32UGfWla9o6pRUvmAAb+bXQqEXTQKWDzqb3sQhbuU0nYDpg1yEfzqV
 sLOcTNBlaxbSyxNQ5CwsHJnCClRWwMr6crd/cfSVT5GnA9SNpJqsWv8SuoCielRTvmKi
 PT4XHgU0BccU/eDns6n7AXnE3/gSKXaIsbAcIpBOMZPrxpyxz4+ed9rz8oPNBx20X8PB
 kczQ+BcZ6vQhv1zT+MRlB74wDKnoG+qtLYFIrWEZ81eKVSdITLy0Cyc7SCvO5eI+eMnL
 kLvZ818yO/qqE53/c6RH0kZnFZhaFZrjiv6z0uXi+v3ufIM0zdXnG/VZ5T7KZaroeMqT
 YlIA==
X-Gm-Message-State: APjAAAUcA0ai4KPXQDMJQAF4VRRfKOb3CaYWEzwZVmPAjBLW1VKuXKBj
 4eTLClGxD8p5A191gsOpo5o=
X-Google-Smtp-Source: APXvYqwuIWQFVA9y0u/gRe18vPIYmGs1HAuZAsz6ATsaeQ0fOvJWojiW3Q1JE8LlXwqX/9UZaYFbsA==
X-Received: by 2002:a24:618f:: with SMTP id s137mr2331223itc.134.1558416650374; 
 Mon, 20 May 2019 22:30:50 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id w132sm861310itb.30.2019.05.20.22.30.48
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 20 May 2019 22:30:49 -0700 (PDT)
Date: Mon, 20 May 2019 22:30:47 -0700
From: "dmitry.torokhov@gmail.com" <dmitry.torokhov@gmail.com>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [RESEND] input: keyboard: imx: make sure keyboard can always
 wake up system
Message-ID: <20190521053047.GG183429@dtor-ws>
References: <1554341727-16084-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1554341727-16084-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_223051_873994_193F4BBE 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:132 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-input@vger.kernel.org" <linux-input@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anson,
On Thu, Apr 04, 2019 at 01:40:16AM +0000, Anson Huang wrote:
> There are several scenarios that keyboard can NOT wake up system
> from suspend, e.g., if a keyboard is depressed between system
> device suspend phase and device noirq suspend phase, the keyboard
> ISR will be called and both keyboard depress and release interrupts
> will be disabled, then keyboard will no longer be able to wake up
> system. Another scenario would be, if a keyboard is kept depressed,
> and then system goes into suspend, the expected behavior would be
> when keyboard is released, system will be waked up, but current
> implementation can NOT achieve that, because both depress and release
> interrupts are disabled in ISR, and the event check is still in
> progress.
> 
> To fix these issues, need to make sure keyboard's depress or release
> interrupt is enabled after noirq device suspend phase, this patch
> moves the suspend/resume callback to noirq suspend/resume phase, and
> enable the corresponding interrupt according to current keyboard status.

I believe it is possible for IRQ to be disabled and still  being enabled
as wakeup source. What happens if you call disable_irq() before
disabling the clock?

Thanks.

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
