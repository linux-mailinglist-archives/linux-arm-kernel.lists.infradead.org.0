Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B8C91F99A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 19:51:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sdzmQWDivNRZV+QIQhetbX+amJeFF71/HLJZWqtqAss=; b=HMgTtHPvCXr4AS
	SxsGfaDgCKk17SfoyO73YgzrCrB41eepmsOLaeFGd/UfFtd7mB83Lp9sNFua+fkhiCQieiHLSRQ9Y
	CLUXiq3ZtSkVkAwuuhQl0OyHy8s0J2ctXiAheIQhSQ9tkc+6Gp8Yxwd1hZccPCm9IaCeAC38IBPaX
	gIdhVulQZerQXgHkS7q/nAxcqemqCHPS0JFR1UEnq2Xe9tbvHHs73KRmwF3BnbNbW8l1iyDLuNOWT
	OLvmx9aStQ7yW2PU0AvOeRp71VLohoW57rn/UIN0LJZWMwZ+sql0CfPhaZauJokJqljQVhqDLOFi2
	puxQEnXdTBu39HYYN3qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQy4D-0007U0-G1; Wed, 15 May 2019 17:51:49 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQy46-0007Tc-2j; Wed, 15 May 2019 17:51:43 +0000
Received: by mail-pg1-x542.google.com with SMTP id z16so133538pgv.11;
 Wed, 15 May 2019 10:51:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=TRGf1+kdZ2LE2HkkmVS++x5KyY0LL5ZbUVqdxubob+8=;
 b=g3E/fMQzJWGEZlli7Am13Y+rNOe+jNxnuKnQV1C/BROegYSExEa7md5qeAN3gqRd+8
 pkJWAF4vIJEHbBhNnpp6pJ2yc9YeBegdgwrmMz1lzoywhba8gHKijnBLXlDqbW/etCCq
 B8gkc5RYCTFP21+0FUNJXfVUzYR9H93HsyZzu6L30/ldih4lzQdYuU39nKsWfI+xTnwx
 JLXAzaGgYsGozzuHnza7aSx25UaamKBtFDNqNHVFXnQa0JwZS61SpD7R/DKqdeuh9ATX
 Y3qRle/OX6INQivCIQIO1QaXBpvl2X4hScRK/i6yzBDzU3oaDyLeYybJtMBdvoTyE6/D
 Bg0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=TRGf1+kdZ2LE2HkkmVS++x5KyY0LL5ZbUVqdxubob+8=;
 b=P1rzG0YHDcAfFxrcWd31BfBVb2jeI7/2mxJ1wf+yoTh8RK8lniy+3DrD+/lb7p1F0Y
 cHoGkALBxcXBvebaZajnjcrSy0srWkc+z9kkgsgEaDsmezrCstJIIhEVe2qM6awVYNpr
 J5bX+1j5ZW7zTopKA4yUsWGpuhaHKNlVMuP4OBk7oy0pvR/Dd9rEoZjV2lEhSlv2B29C
 Q8kshkdKuIAtMlK03hs7xC7mH0pSPDY6/LIyF0+95eshRREPpiBUQUmEwB6qag45827O
 8REzO6dhTYyUI9waCp7o0ozXp51QB3mHZ2NRmy9nTtgpGTj57obdwuygTEwMDSx6Q5Pe
 /fbQ==
X-Gm-Message-State: APjAAAXSpDg1plRAtkr4dPOPJscO35BJMxviyThRGu/DZ5+oFGhwa0Yk
 KvOK4o1Q5/jWOprX6+Wasbs=
X-Google-Smtp-Source: APXvYqxkB4NTD2q0KknbHrBK3jynSGINqFlBcas+vPFn1Jt7aAm53TicUSvHumAe+8X0Hf7F9fyPlA==
X-Received: by 2002:a65:56cb:: with SMTP id w11mr25371204pgs.236.1557942700508; 
 Wed, 15 May 2019 10:51:40 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id 187sm4194495pfv.174.2019.05.15.10.51.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 10:51:39 -0700 (PDT)
Date: Wed, 15 May 2019 10:51:38 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH] watchdog: bcm2835_wdt: Fix module autoload
Message-ID: <20190515175138.GA16742@roeck-us.net>
References: <1557940458-8661-1-git-send-email-wahrenst@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557940458-8661-1-git-send-email-wahrenst@gmx.net>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_105142_146458_A9D13634 
X-CRM114-Status: GOOD (  16.21  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, linux-watchdog@vger.kernel.org,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 07:14:18PM +0200, Stefan Wahren wrote:
> The commit 5e6acc3e678e ("bcm2835-pm: Move bcm2835-watchdog's DT probe
> to an MFD.") broke module autoloading on Raspberry Pi. So add a
> module alias this fix this.
> 
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>  drivers/watchdog/bcm2835_wdt.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/watchdog/bcm2835_wdt.c b/drivers/watchdog/bcm2835_wdt.c
> index 1834524..c7695a0 100644
> --- a/drivers/watchdog/bcm2835_wdt.c
> +++ b/drivers/watchdog/bcm2835_wdt.c
> @@ -241,6 +241,7 @@ module_param(nowayout, bool, 0);
>  MODULE_PARM_DESC(nowayout, "Watchdog cannot be stopped once started (default="
>  				__MODULE_STRING(WATCHDOG_NOWAYOUT) ")");
> 
> +MODULE_ALIAS("platform:bcm2835-wdt");
>  MODULE_AUTHOR("Lubomir Rintel <lkundrak@v3.sk>");
>  MODULE_DESCRIPTION("Driver for Broadcom BCM2835 watchdog timer");
>  MODULE_LICENSE("GPL");
> --
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
