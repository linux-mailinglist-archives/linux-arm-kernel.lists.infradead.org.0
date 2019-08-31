Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4473A44E3
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 31 Aug 2019 17:02:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nXEcydFEdjzToIcGjmzmhyrAPBdS24VLPZB6adMSIRI=; b=AFrF46VYR9n9n/
	ApXap/M1mQP3z3HpeJyRLoJW0I43eXDvSNk3fTwFuGu988f9o8wqtsX7fsBiecApBzcmwzrU40du0
	bBWWsSUZoDIvzymgK5lAaVINjzRACjL94R2KJZxju288z0zT04HClyzqpsu5R6s9sues5MHWJDWRU
	MaOEcAlWtPhRm+5/Gt87CD91lLfny3fBNWur/YLRNiZjsxTW/Tow83Kct4yYPllmzXwAi21L0XPId
	BRWprHFajo2sY4Thrg6X0sLUT8c5uDyO8ZTZZhVqLLzAQGNu5M50ox6tEigYymvWvWZELnRppKrzB
	bpmyF4OY4VWeI0zXQdfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i44t6-0002wN-6K; Sat, 31 Aug 2019 15:02:00 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i44sk-0002ta-0T
 for linux-arm-kernel@lists.infradead.org; Sat, 31 Aug 2019 15:01:39 +0000
Received: by mail-pg1-x544.google.com with SMTP id n4so5042059pgv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 31 Aug 2019 08:01:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=pgmHg3ukoYkhaRQ72n0KiU687Zs7MhjBlJ4ipL0qwQE=;
 b=B3bTo9nmMR/i7oh0IaQJj8OJoTDX+qoEGfM41Dt+zLDGc70vkBAsDR6WZJxYKyTByR
 ToqEQBhAvFzUGcgZYhC06n26Dv3l5QCPzWBTSZ7jb38S47K+8Ow0peFxgaasP+Fz2JKG
 /Xs4NfxIEhsZCMMcDQz0BBRKp9aJ2nq9R/odVV+jl+tDkopQs2p9N2JXnhi8626PsZiT
 JKloU3LculAz8V+r9ktvuT31bx+7GtcIuN1aDVs+g4sAIn/cqmDwxzDeyW21Z4GON4hz
 T7AIB3kalcAWUpCo78XZiuS0ACwNaYRjDOQmCLAGMe2ZUpdUd5gOEL9xIQ+CNCPoyOtK
 ELEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=pgmHg3ukoYkhaRQ72n0KiU687Zs7MhjBlJ4ipL0qwQE=;
 b=MaLEkSYFLgOBu7eXS96IfyTobH5+04C/bf2+pqv8+uNxDdf+5u6Og5PmaX3HnhuKmH
 BvXFarpY+8d/HjxWsSKsJR6z2Z/X9sjZTO7nhYvmax7uvLNoRhwFv8vrsS6hIQN+8P24
 pMDkKE23Mh94P6f7fdnIayu6HfLosuUInmZIAB5ygNZ8n9NxAxEEIAIHzzu1XF5PQb8N
 5kOz24Yfv0aQOYHxJZz6ZjX8cwit+LuUrWlDyDuFK7gD7Qvl1VptyvjVFjGfb5VA0H5a
 rZc8iWO3lAr2IlZJQmPqv+WMCC2Yy+n3m/NvecVMfdwjtkgCv1ZaeoIA5slC5bJoDTKs
 OGqA==
X-Gm-Message-State: APjAAAVfIo1B+fa0C7K8t8tNf5wZkfRFWSzIVDBVnN6bWyrkvkjfIVnx
 wK2anRpYk2k77ommVZ5rzc0=
X-Google-Smtp-Source: APXvYqzxO5TxxgJX3+CZnA8sNzId2Ur3EJ1lJTqlYglz6V20PPBYoElyIToU51GXQcMExZzVIgyYcg==
X-Received: by 2002:aa7:96dc:: with SMTP id h28mr24787013pfq.86.1567263697149; 
 Sat, 31 Aug 2019 08:01:37 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id t70sm9610914pjb.2.2019.08.31.08.01.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 31 Aug 2019 08:01:36 -0700 (PDT)
Date: Sat, 31 Aug 2019 08:01:35 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Ivan Mikhaylov <i.mikhaylov@yadro.com>
Subject: Re: [PATCH v4 4/4] aspeed/watchdog: Add access_cs0 option for alt-boot
Message-ID: <20190831150135.GA7230@roeck-us.net>
References: <20190828102402.13155-1-i.mikhaylov@yadro.com>
 <20190828102402.13155-5-i.mikhaylov@yadro.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190828102402.13155-5-i.mikhaylov@yadro.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190831_080138_084310_05D70C8E 
X-CRM114-Status: GOOD (  20.97  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, openbmc@lists.ozlabs.org,
 Alexander Amelkin <a.amelkin@yadro.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 01:24:02PM +0300, Ivan Mikhaylov wrote:
> The option for the ast2400/2500 to get access to CS0 at runtime.
> 
> Signed-off-by: Ivan Mikhaylov <i.mikhaylov@yadro.com>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>  .../ABI/testing/sysfs-class-watchdog          | 34 +++++++++++++++++++
>  1 file changed, 34 insertions(+)
> 
> diff --git a/Documentation/ABI/testing/sysfs-class-watchdog b/Documentation/ABI/testing/sysfs-class-watchdog
> index 6317ade5ad19..675f9b537661 100644
> --- a/Documentation/ABI/testing/sysfs-class-watchdog
> +++ b/Documentation/ABI/testing/sysfs-class-watchdog
> @@ -72,3 +72,37 @@ Description:
>  		It is a read/write file. When read, the currently assigned
>  		pretimeout governor is returned.  When written, it sets
>  		the pretimeout governor.
> +
> +What:		/sys/class/watchdog/watchdog1/access_cs0
> +Date:		August 2019
> +Contact:	Ivan Mikhaylov <i.mikhaylov@yadro.com>,
> +		Alexander Amelkin <a.amelkin@yadro.com>
> +Description:
> +		It is a read/write file. This attribute exists only if the
> +		system has booted from the alternate flash chip due to
> +		expiration of a watchdog timer of AST2400/AST2500 when
> +		alternate boot function was enabled with 'aspeed,alt-boot'
> +		devicetree option for that watchdog or with an appropriate
> +		h/w strapping (for WDT2 only).
> +
> +		At alternate flash the 'access_cs0' sysfs node provides:
> +			ast2400: a way to get access to the primary SPI flash
> +				chip at CS0 after booting from the alternate
> +				chip at CS1.
> +			ast2500: a way to restore the normal address mapping
> +				from (CS0->CS1, CS1->CS0) to (CS0->CS0,
> +				CS1->CS1).
> +
> +		Clearing the boot code selection and timeout counter also
> +		resets to the initial state the chip select line mapping. When
> +		the SoC is in normal mapping state (i.e. booted from CS0),
> +		clearing those bits does nothing for both versions of the SoC.
> +		For alternate boot mode (booted from CS1 due to wdt2
> +		expiration) the behavior differs as described above.
> +
> +		This option can be used with wdt2 (watchdog1) only.
> +
> +		When read, the current status of the boot code selection is
> +		shown. When written with any non-zero value, it clears
> +		the boot code selection and the timeout counter, which results
> +		in chipselect reset for AST2400/AST2500.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
