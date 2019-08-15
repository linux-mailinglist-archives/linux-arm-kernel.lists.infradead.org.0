Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FBB8F2E1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 20:10:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mhC2mnICl3/Ycx/alzeOHXU1mqYtcX+XX+4xPe2MpqU=; b=AfroKVa9zl6uvi
	ekdU7sXtGLhg9SmKCJeqifPaacU/7ncqklunCjHLDxd78QMTIPh/i82nZGoYWxr55Qz5bDW7ZgVJa
	FUeX5OgbkK5qv43gCoAhMT8LainyV72Kvw9UQ6QBy7ge6IPcZiG9uQq7dBaJEKb+I/e4IKW56EoKm
	1BRCwjWhnTTmDKTmsD/+xkOyBaiCKD3NkgYO98V7/ID4K3WFS3sTQQ7K9c6bRXXesBQBrHNHdesgH
	vc8qVW6KpAOVWhyMTkK6bbFehKN54dVVxyJrU5URTnJetGRUfUKhTbhRjMxctov82CVo3CanxgMzY
	/d6dRebwBzU2uFYuvZuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyKCk-0001QJ-MU; Thu, 15 Aug 2019 18:10:30 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyKCX-0001ON-JK; Thu, 15 Aug 2019 18:10:19 +0000
Received: by mail-pg1-x544.google.com with SMTP id d1so1038485pgp.4;
 Thu, 15 Aug 2019 11:10:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=YGZciRmFKywos7phtHka3BMLOjJ5GD0teHhlJqhmVkk=;
 b=refM5sSMD7XaWN2cBYtXuBqQL++UFaQwWAlfDTzJPByqFlruWjmG6Yh089jW7TdpbD
 NrxNm0s2FZstcIYgXU/1OVsLWK+FGl/oYQP7+rTaMZkVBgGR23anbQo8oXgra9wTo9FE
 j2SPBqMOEPNcKZuxqfPe/Pg1VNQm0EO34QutZQTrQlKL2cYjCOVrLe8Oxo+zJZteOQlu
 B8hMLNBQEAo1UHIr3ABYn9iPuYxpRN+b0Z+J5xpbw/J0aCqSamjWusXlwPIWC+3YINI7
 nT835bJJdCLvSjcjCqTDzc+ntlidStA5Dl6+CgzdON8g1MYQ6qhhFDs0HvmQv88M+BJb
 dCaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=YGZciRmFKywos7phtHka3BMLOjJ5GD0teHhlJqhmVkk=;
 b=BwwduqDcx67ROSj6ASXZHQyl0rWxkrgHy+KdJWXMUxyTtScdfs0mHFEIiZ5FdrV6my
 qRsx225SSrKv2aqWrJkpVD5dgYts1+1CD72OzE5c6ikbKkEIrL7huDJh/0jvYOip/XaJ
 pc8MVrn0MteFZGynbRSawBztVtwe/h2BsEUeeEbtI9UqIVA/uhpgJ3DEmxk+mrQ/dZPX
 4kpmkMILQAJn7glG8PCVvKWtYWIWSpqNqR9fj919Uvhj1FwSrsbVnjUq65OVxvKRx89F
 I4mRR57fY1Wpy/HPXAIoI1ffPjVFbGx2N3banKlwnX0eYga+S+YhHl/Bo6YAgKJ5kbiy
 9R9g==
X-Gm-Message-State: APjAAAWkSGtQZp2h4DO9o4ufqXg4JLNipLk1VP4mJT/qPiIEoQaHKFln
 Zp8kRC3vi9jBOFcnH+8VUJY=
X-Google-Smtp-Source: APXvYqxIDdyy6by/HwcLogs24nzI99cv+AM8Nkc5yJYlPuae0cwXsF1pvVTorAHFvjBOwQbrOwQiZw==
X-Received: by 2002:a62:38d7:: with SMTP id f206mr6797850pfa.102.1565892612133; 
 Thu, 15 Aug 2019 11:10:12 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id n98sm1927437pjc.26.2019.08.15.11.10.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 15 Aug 2019 11:10:11 -0700 (PDT)
Date: Thu, 15 Aug 2019 11:10:10 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v5 06/18] compat_ioctl: move WDIOC handling into wdt
 drivers
Message-ID: <20190815181010.GA28580@roeck-us.net>
References: <20190814204259.120942-1-arnd@arndb.de>
 <20190814205245.121691-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190814205245.121691-1-arnd@arndb.de>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_111017_638478_B7F28675 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-hwmon@vger.kernel.org, linux-rtc@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Jean Delvare <jdelvare@suse.com>, Anatolij Gustschin <agust@denx.de>,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Florian Fainelli <f.fainelli@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net,
 Wim Van Sebroeck <wim@linux-watchdog.org>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, linux-watchdog@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 10:49:18PM +0200, Arnd Bergmann wrote:
> All watchdog drivers implement the same set of ioctl commands, and
> fortunately all of them are compatible between 32-bit and 64-bit
> architectures.
> 
> Modern drivers always go through drivers/watchdog/wdt.c as an abstraction
> layer, but older ones implement their own file_operations on a character
> device for this.
> 
> Move the handling from fs/compat_ioctl.c into the individual drivers.
> 
> Note that most of the legacy drivers will never be used on 64-bit
> hardware, because they are for an old 32-bit SoC implementation, but
> doing them all at once is safer than trying to guess which ones do
> or do not need the compat_ioctl handling.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

This patch doesn't seem to have a useful base (or at least git says so).
It does not apply to mainline nor to my own watchdog-next branch.
I assume you plan to apply the entire series together. Please not
that there will be conflicts against watchdog-next when you do so.

Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
