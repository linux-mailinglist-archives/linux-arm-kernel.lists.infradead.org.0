Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EE01D9BB1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 22:23:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kr1PVOh4Baqkf9+d/oM95ObjPzdTKwv5S/RtacOSY5Q=; b=RjMNiQ9PYjywuw
	VLXZmbM67b/zd4m1By3cnKJLKmXjfPkGFHBh74YxOXordgiMFHRJBfxQfnVHUe0y5j9wXu0CQ18RD
	BKhCzw98kYvOZbACQpJ6Q8sJZS82LWC9deJ934hoq/Ur6aM4y7x35JJjKyfcWst9+uVVV0tjE2pCa
	uRKfFHocT9YSO2gemptzLRjQmznWaZQtkLzsyi0IomjPPHYYXNg0pP9+BSXZnmBklpvzVS1tdURzR
	2VOoAs4qqaN/W4CMzLwyXakqnfhxxp0ttWyt7ES2mIzoeVpZaMLiolYnhjUHg/w58TNP42B230Q8k
	E/Riu/ZS5jCXdf3tJ3DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKppK-0002Tu-O7; Wed, 16 Oct 2019 20:23:22 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpeK-0006ir-WB
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 20:12:06 +0000
Received: by mail-wr1-x444.google.com with SMTP id b9so29508766wrs.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 13:11:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=0edoD8qXLxIMb9lHusA8ctqCBdpgHnIWpnlud4IpS5A=;
 b=D0+TbLXKv4nLHH1PICBuG4OHzzfCNolpysA0NdqnggM3oNHvONZBsSdcdyYHeY9PTX
 BP6Q63iG+P0ZkFrmsMgZT2VJOejwCv/iBGW5e0FpACARXwR8xLRqsCvBYYKdlB1L+noa
 Lx/omyHvcnCfCbRtMo6vA/PY8I3hPfWaxFVsbLjbAfNU6LF/WG20V9YcGalaWYe7Hd0u
 EdO3lyIna8hymw4xsraJB5FfvRxQTbWl+aeoUziSGcsuQ2Edln+e7pMsaNFPqtxmKqEo
 p8/mYJAKLUed5W2eaIdkVXtkgFPBl/9U2+YXsjyAHA+8A0PaKzQC/8Q1eBg9jfscJ+Sz
 hVGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0edoD8qXLxIMb9lHusA8ctqCBdpgHnIWpnlud4IpS5A=;
 b=Sq410/iSi/hnSW8+/x1J2rs0hhe3+hTCp63sZLmDt1Dbb99Kz2oHR5MMK4z/fvKwBU
 f/x1+KH0eTS3Xh3hX+Gga7Q3kTy8ucrFWiond0d7jksyQifl9unjhRnpXFiu0vhsJI79
 e2pjxHUS04kzioaTufYd7js7frL0JtBM6LVOLJeykYYkQFGDIAnz9ya5qIgzv5BNwMmd
 xM98MccY/++mWAWAqrhtnLxw1AwOjy1ZR61+vic23nP1zvD50XuXf7JLjtjLNg33ZHUK
 vZuriWJsP7Dw5YMSb7EVnOCqHmNAp72FAFNeV5JCDiWCVBX0i+byPcrnQUvP7Ymt2/Ag
 KBIg==
X-Gm-Message-State: APjAAAUnEO4PK+LvxWm/2l2DJLZqljqFd9d642BqIlFvpVHu55CEDfni
 pHR71tCMr/yQQsHdWkJhttzagNk0l0g=
X-Google-Smtp-Source: APXvYqw8vdKpG2sCTiy78c9P1m7wEQV56IyUIiYGlFpvMM6Z1PosXut/bgrU1zDYkR1e8mM7XnTE5A==
X-Received: by 2002:adf:ed49:: with SMTP id u9mr4127114wro.229.1571256716203; 
 Wed, 16 Oct 2019 13:11:56 -0700 (PDT)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id l18sm29539138wrc.18.2019.10.16.13.11.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 13:11:55 -0700 (PDT)
Date: Wed, 16 Oct 2019 22:11:52 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: Randy Dunlap <rdunlap@infradead.org>
Subject: Re: [PATCH v2 3/4] crypto: amlogic: Add crypto accelerator for
 amlogic GXL
Message-ID: <20191016201152.GA31674@Red>
References: <1571031104-6880-1-git-send-email-clabbe@baylibre.com>
 <1571031104-6880-4-git-send-email-clabbe@baylibre.com>
 <8f9be4a8-ed6c-a2bd-f3ba-df22752e7172@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8f9be4a8-ed6c-a2bd-f3ba-df22752e7172@infradead.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_131201_128386_CBDD6838 
X-CRM114-Status: GOOD (  16.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 herbert@gondor.apana.org.au, martin.blumenstingl@googlemail.com,
 khilman@baylibre.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-crypto@vger.kernel.org, linux-amlogic@lists.infradead.org,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Oct 13, 2019 at 10:41:06PM -0700, Randy Dunlap wrote:
> Hi,
> 
> On 10/13/19 10:31 PM, Corentin Labbe wrote:
> > diff --git a/drivers/crypto/amlogic/Kconfig b/drivers/crypto/amlogic/Kconfig
> > new file mode 100644
> > index 000000000000..9c4bf96afeb3
> > --- /dev/null
> > +++ b/drivers/crypto/amlogic/Kconfig
> > @@ -0,0 +1,24 @@
> > +config CRYPTO_DEV_AMLOGIC_GXL
> > +	tristate "Support for amlogic cryptographic offloader"
> > +	default y if ARCH_MESON
> > +	select CRYPTO_BLKCIPHER
> > +	select CRYPTO_ENGINE
> > +	select CRYPTO_ECB
> > +	select CRYPTO_CBC
> > +	select CRYPTO_AES
> > +	help
> > +	  Select y here for having support for the cryptographic offloader
> 
> 	                to have support for
> 
> > +	  availlable on Amlogic GXL SoC.
> 
> 	  available
> 
> > +	  This hardware handle AES ciphers in ECB/CBC mode.
> 
> 	                handles
> 
> > +
> > +	  To compile this driver as a module, choose M here: the module
> > +	  will be called amlogic-crypto.
> 
> That module name does not match the Makefile's name.
> 
> > +
> > +config CRYPTO_DEV_AMLOGIC_GXL_DEBUG
> > +	bool "Enabled amlogic stats"
> 
> 	      Enable
> 
> > +	depends on CRYPTO_DEV_AMLOGIC_GXL
> > +	depends on DEBUG_FS
> > +	help
> > +	  Say y to enabled amlogic-crypto debug stats.
> 
> 	           enable
> 
> > +	  This will create /sys/kernel/debug/gxl-crypto/stats for displaying
> > +	  the number of requests per flow and per algorithm.
> > diff --git a/drivers/crypto/amlogic/Makefile b/drivers/crypto/amlogic/Makefile
> > new file mode 100644
> > index 000000000000..39057e62c13e
> > --- /dev/null
> > +++ b/drivers/crypto/amlogic/Makefile
> > @@ -0,0 +1,2 @@
> > +obj-$(CONFIG_CRYPTO_DEV_AMLOGIC_GXL) += amlogic-gxl-crypto.o
> > +amlogic-gxl-crypto-y := amlogic-gxl-core.o amlogic-gxl-cipher.o
> 

Thanks, I fixed it

Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
