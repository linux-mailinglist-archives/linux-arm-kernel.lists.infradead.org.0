Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5BB1FFCE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 08:46:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rv6z+UrXfRSIBMgi9lHqfITJz2vaiLoren2qF9XbptU=; b=ZbuRxMlBZPFk5y
	ZtcIq0b9jBN+nlvdq/r641gl325kWFTvk+51kUetOWL0zCJNe94YjC9LZyrwnjeurpLYxTHQu7VyP
	Ii72UDTrd04xC8Jea959dGol0lZeMQprc3WfiHDttN8m1+3L/yMz85bGXHxv2Bx0a+o6PxHsRUOkT
	94E82czvfvgvnZNxTHQRw/y2ZojitIyd6h2sW7Ai9kyTyfreHmc9R4Y7K4RlUYwq8MjRMpJdYZZkL
	cKgGYHw2JlO5FNJc98UAgcmJjqxPFpsc3D0x3nxv3LpGgMeJ7hauKKRUPjlIfrw6ROafnUOSlWC+C
	uPigcuu0Rm4QuuXsv0Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRA9O-0008Fb-DZ; Thu, 16 May 2019 06:45:58 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRA7T-0004oZ-AX
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 06:44:09 +0000
Received: by mail-lf1-x143.google.com with SMTP id y13so1684001lfh.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 23:43:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=imhQI7GDUD7lkEFWiWq9LCRO6updyJwsynuuz3zk8A4=;
 b=RnCL2vpDFDeF9T0vaCvryQmcHOeIkW1g0H3ycEvTcZURbuYVHU9LVNDgGKKOijBD72
 3hjDY9Cpc/NcNt/YYH4o/yQz4Af1uRd8twYJcBwL8jeEX72E3XJptEL6FTWjunv4HL2c
 AkMWRwAEGTzzI4KfS1xpKUd/QpjWVkJ7Llypd9kaogq+U9h1kdrKnSEieckPnRykBhZz
 FOZW4AxbtEkRzKTZ6x5buBwLor9nfdrplF2GzlIHiykGeYVSTnPF55VL3Xt7lEn03n00
 iO2TzN3jmFggpaYJpnLy1X9d3FquG/tUaEc/7JfEBeMalSq31cHaQn1UBjXwU0hUgMhK
 kDcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=imhQI7GDUD7lkEFWiWq9LCRO6updyJwsynuuz3zk8A4=;
 b=aKi+UnvC3Opc+XcDqocc0l1m9ZvKIU9epwNmlrs2KJe81zCBNz4DDdhhtpl6StRZaP
 vRwzzJiEYSVFFZ0G+q/pN/CvaZQ4eyM1T/Ejc6RIaBr/pvlo8R/iYrVF4CbmGHMQPqwh
 CSmHTBAYlFmuzMHURrWKNOWaMqXKcRGXbX4lYz4d5p2pfJoeAay1YCDUJ5IgJsfyymX8
 yKfDuXz7AUIG7Lr7p8tzZEMELxKUsu4O/RaUemnuMJn9Kd0Ac6dNARmJ5P3jDP3lFhlj
 /XIL8AdVjdbZ/tMEszShb+aj1c8hVgrsvPfcf6ZgoTHFv2uFL6U4J8UVlHcOqDxGfiHK
 53Kg==
X-Gm-Message-State: APjAAAX0qzZZxSHJcY+fX5tq17W3Ckcpusxei3W5Px8bsjrHhIQ0yAC3
 9lEv3kA27kUP7nSPORWlBMyK9w==
X-Google-Smtp-Source: APXvYqxZtW6IDc+EPw0F+TXziG3dbjLWv6UKEKzEnJ2Zzlp3bursU9lKtoJDm9LGprugMwVQq68SJQ==
X-Received: by 2002:ac2:51d1:: with SMTP id u17mr22525545lfm.151.1557989037799; 
 Wed, 15 May 2019 23:43:57 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id x184sm905564lfa.27.2019.05.15.23.43.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 May 2019 23:43:56 -0700 (PDT)
Date: Wed, 15 May 2019 23:24:40 -0700
From: Olof Johansson <olof@lixom.net>
To: Li Yang <leoyang.li@nxp.com>
Subject: Re: [GIT PULL] fixes to soc/fsl drivers for v5.1
Message-ID: <20190516062440.x23dgkuikrbfcnqa@localhost>
References: <20190501203748.5393-1-leoyang.li@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190501203748.5393-1-leoyang.li@nxp.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_234400_640876_6D73DD81 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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
Cc: arm@kernel.org, shawnguo@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 01, 2019 at 03:37:48PM -0500, Li Yang wrote:
> Hi arm-soc maintainers,
> 
> Please help to merge the following fix for soc/fsl drivers.
> 
> Thanks,
> Leo
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/leo/linux.git tags/soc-fsl-fix-v5.1
> 
> for you to fetch changes up to 5674a92ca4b7e5a6a19231edd10298d30324cd27:
> 
>   soc/fsl/qe: Fix an error code in qe_pin_request() (2019-04-02 18:02:48 -0500)
> 
> ----------------------------------------------------------------
> NXP/FSL soc driver fixes for v5.1
> 
> QE drivers
> - Fix an error path in qe_pin_request()

Merged into arm/late. Thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
