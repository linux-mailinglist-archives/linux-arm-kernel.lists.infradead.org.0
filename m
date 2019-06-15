Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 710BC47069
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 16:22:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eXrYuiF4PfDFYHq+rnjhwqn1TCwzJYPPXpxEEjL5j7M=; b=Z7HghEw8fr87Ls
	UEHpsAZJ+8M3gzODFI8Ops4dyZtXM4WpwaABfpFHMzHtZv5WMKj2EIGk/v8B9/bXbWxze5nNu8lOp
	roJUW5giUNu1WjBkC8pjjYM4x6aRgDkwno5YnXXPPSEG9yffjGeXV9QGhF8RQSatgB873rKxUXuY5
	ua0cyah9mGuTdr1LXNfpXC59+AAMpvhbOFdhAxfK25u5Hhl5QgyWi0VkHPtYoosjmKj9WiDd8V383
	dD18aQ47sKIel1L+YQvWWzlLckOZytzoEQBasahhNiHs7PrKtK9byD07iOGDu0Etczs1X5/YGSTD/
	i+RKvEU8gEocGCXG6ITw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc9Zc-0006eH-2N; Sat, 15 Jun 2019 14:22:28 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc9ZT-0006dd-6m
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 14:22:20 +0000
Received: by mail-pf1-x443.google.com with SMTP id q10so3123182pff.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 15 Jun 2019 07:22:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=4jcVnha6T/SSJcKsN+RA/B8GQPj4ptbm/niXDT+3DzY=;
 b=mk2sKC3F5T58Z1iiRMMJtRkKPF2mkjQjQRK2iNpYMAZt4DuB2xtt3Mbq2HgnMn6wnS
 7SPYL0jEB8/hrXOtg6GghB6mo1YLz38IXSyl8ctZdnvwYFZzMiOaxipPYUjfE7RrdOzR
 RZqeah6HQjJ09p2OOMcUN7EMDgKx6E7FONWErjUjrry8l66bFuLZd6ODEZIClaPDEkk5
 rXIjJuYADfRnOSjEbcbyOSnEXxbIi8n536c88BIxDrZANlgRehtW1fcUHZTjtheuqr9+
 d3wtXaY95UHrWeAtlptMuV7IZeaLJreOGIlehXjVoNRQvU9gIITY7PsRipzhmLkEggkh
 i1ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=4jcVnha6T/SSJcKsN+RA/B8GQPj4ptbm/niXDT+3DzY=;
 b=p7dhBx7sn9DZvrNvdIQTow1ogDXjyROad7n3oW/njqNe2joQuwnVakW8HI5kkE47EU
 rDNnVPez/IZctUMZXVBaXHvOPa9bO5lOOuTgtvVGdq1BzkANkJWWXdFzD1Fs5ZUkO477
 qCecFB1ySwuajxb5OIIw9MzCOMNqAJAwNBGjqHFQdjkuRjrAnIB+siqMzUA5OdytAnPI
 bPH2sdCLjjgnlF/mc7cg6scSxXnoB74mVtn2u6dudzwYNpwHc5Hi7cxj+NNWi5PxD5h+
 hSYRLHSV0BbePDN6+KN+yPH8nGVF23vdXP4uHL+GcLdHC0b4iwfhBoeUolzW3j0+jp5r
 QQ8w==
X-Gm-Message-State: APjAAAUWkx85E8E0L1B9N+BrVQhW2IjwdykuFiH3ourWsSh9QYC1kEF3
 AZKJNPRhw84jZDlCjFast5k=
X-Google-Smtp-Source: APXvYqwVayNboag+Dn8UwiSaLd6i9GFJKHjWbJ0mgRF9hnnKtw+1Vr+mwRUJaDySVmvmTyAXT2kCrg==
X-Received: by 2002:a17:90a:e38f:: with SMTP id
 b15mr16850637pjz.85.1560608538196; 
 Sat, 15 Jun 2019 07:22:18 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id e184sm10290803pfa.169.2019.06.15.07.22.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 15 Jun 2019 07:22:17 -0700 (PDT)
Date: Sat, 15 Jun 2019 07:22:16 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Ken Sloat <KSloat@aampglobal.com>
Subject: Re: [PATCH v2 1/1] watchdog: atmel: atmel-sama5d4-wdt: Disable
 watchdog on system suspend
Message-ID: <20190615142216.GA32514@roeck-us.net>
References: <20190614125310.29458-1-ksloat@aampglobal.com>
 <20190614164609.GA29814@roeck-us.net>
 <BL0PR07MB4115E99D065FD9BEA4C43BB5ADEE0@BL0PR07MB4115.namprd07.prod.outlook.com>
 <20190614180826.GD3369@piout.net>
 <BL0PR07MB4115D5ECDEDCC028197637E5ADEE0@BL0PR07MB4115.namprd07.prod.outlook.com>
 <20190614203327.GE3369@piout.net>
 <BL0PR07MB4115721DA2EB445BE7590BF6ADEE0@BL0PR07MB4115.namprd07.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BL0PR07MB4115721DA2EB445BE7590BF6ADEE0@BL0PR07MB4115.namprd07.prod.outlook.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_072219_278794_A5A0DBFD 
X-CRM114-Status: GOOD (  24.73  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ludovic.desroches@microchip.com" <ludovic.desroches@microchip.com>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 08:45:28PM +0000, Ken Sloat wrote:
> > -----Original Message-----
> > From: Alexandre Belloni <alexandre.belloni@bootlin.com>
> > Sent: Friday, June 14, 2019 4:33 PM
> > To: Ken Sloat <KSloat@aampglobal.com>
> > Cc: Guenter Roeck <linux@roeck-us.net>; nicolas.ferre@microchip.com;
> > ludovic.desroches@microchip.com; wim@linux-watchdog.org; linux-arm-
> > kernel@lists.infradead.org; linux-watchdog@vger.kernel.org; linux-
> > kernel@vger.kernel.org
> > Subject: Re: [PATCH v2 1/1] watchdog: atmel: atmel-sama5d4-wdt: Disable
> > watchdog on system suspend
> > 
> > [This is an EXTERNAL EMAIL]
> > ________________________________
> > 
> > On 14/06/2019 18:43:22+0000, Ken Sloat wrote:
> > > Well I'm a little confused still because there are two separate
> > > comments in these statements. The first within resume implies that the
> > > init should be called because we might have lost register values for
> > > some reason unexplained.
> > 
> > The sama5d2 has a suspend mode where power to the core is completely
> > cut. Only a few IPs remain powered (in the backup power domain).
> > Unfortunately, the watchdog is not in that domain and may lose its registers.
> > 
> > > Then within the init it says that the bootloader might have modified
> > > the registers so we should check them and then update it or otherwise
> > > disable it. I'm not trying to pick apart the logic or anything, I'm
> > > just readily assuming it is good as it was already reviewed before.
> > >
> > 
> > The bootloaders may have started the watchdog (this makes sense if you
> > really care about reliability) and so we need to be careful to keep the proper
> > parameters.
> 
> Thanks for the explanation Alexandre I appreciate it.
> 
> > > So without digging into that too much, if we don't know if any of the
> > > runtime situations above might have occurred, then isn't it best to
> > > leave my patch as is? Yes this has the side effect of resetting the
> > > timer count, but if the init call is needed and we don't have any way
> > > to know if any of the situations occurred, then we have no choice right?
> > >
> > 
> > Until we can differentiate between suspend modes, we have no other
> > choice.
> 
> Ok I will leave my patch as is for now then
> 

If that is what those involved in this discussion argue for, they will
need to confirm with Reviewed-by: or Acked-by: tags.

Thanks,
Guenter

> > --
> > Alexandre Belloni, Bootlin
> > Embedded Linux and Kernel engineering
> > https://bootlin.com
> 
> Thanks,
> Ken Sloat

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
