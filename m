Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E09611D5EFD
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 May 2020 08:06:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j3q2eez4SK9DWL+vz3a7UeaVt3/UrZ741wKy12d4ULs=; b=Xx1RnacIlqrjh2
	OBnPfKd05KKn6I+UYP37kpz54wEnW/sRZ1D6XBCxAlkFJZQAID0+5QjKxJn4y+xnM6jxZrAecXsIO
	laFz+5TCKzi8doroPv21v1qyPsFGGfMUuOxLIKfFymL5yQQ/Za47FHFVjjnoVaH0zu7UV2A/kdw8V
	aOx2y+xmhd7Ab/nrAx4RvQTmfeVXv7xCwIEKfjQeP5+/2QXNFKPIAKqaneEOXhMbwRcPZEp71K3yu
	Jq2QhrC1jXYNFrGmQPgEK5GiYd4K3sfAojjIk95hCUygbwuYtCXvCitsBStjsT9TdgOMijEmdeoZt
	vfcpBBif1oXXzvRuGUww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZpy2-0004YJ-8B; Sat, 16 May 2020 06:06:38 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZpxu-0004Xx-8N
 for linux-arm-kernel@lists.infradead.org; Sat, 16 May 2020 06:06:31 +0000
Received: by mail-pj1-x102e.google.com with SMTP id a5so1918890pjh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 23:06:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=9yedn3qfHjLM32OIbYmV/Cr3YjdgfcJ0Re0Gxm2GLZg=;
 b=CiSDknuW2CMRJcaVSe9+ahgAMOD3wVXZZnG3298IFAjWCkN9aLnZT5eiBzoRU/9aXy
 egbfwuoj8CVSPlgRT6xaI2W4FrvUAGdFx857ZhrgxBubFNXnA6DkdJkJrNONhobUUAOV
 YMNJ7yd9CipogGdTJM2Oa1gc2QlmHziCfTwzL2oYf9np0E6ZpHTjjUG8Jif4ObLYp9vn
 0C2yPY/uZ17YWxTbon97nipp94Z87HXdak+ufcmyooY+iXFcJbjHyM37fdbHjgtLONKk
 331d95TkOfJ6w7wSi0XNbHrtBOiKRQAJBEhsdYQ/ZhbUM3sD41WsCHKXdOJ89TMi0I4v
 cZ+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9yedn3qfHjLM32OIbYmV/Cr3YjdgfcJ0Re0Gxm2GLZg=;
 b=IDi4I5CuX5byHFXIWXAJw4Br+FjR1NIiEP+IT0+ieSl9wkF96MTdckXy/3DbXJJgnI
 q9hY9hh8DkMQhjxGqC2N7GAeA4V3rXTX3+0b/h06vmueBht5X+HjbVHP045XnuIcfd/T
 Yw2RCtN4G3wwJBgER8MgOnjcFpGdvNm81/cNxL2nIPzsnK2Rn0ko2BQ8saC4twao4/GX
 vT7ZVVACw8gweKMosGXHDaD0HuhokREQk+f2fOf1RjzcSWThNtYVedImJ7WG9Vqv3N1z
 xnuk9aZvnGSWNvFEL+spuKkU6JoXv0Y0RgxiLJoFWVtX3GpD6qWJofU48FaoeRIHioIV
 FAqQ==
X-Gm-Message-State: AOAM532nULshdFX+cXVmBRQPEZr7Au7god2q7BNIeCDl1IxXDI2Acit1
 EjEQED8LNCzReXmUWYyBlW4=
X-Google-Smtp-Source: ABdhPJzGAfpa04r3IfhHrHbETdXS4Ctg9HnFuKMrWSojSbA63aMYelLohClIUG1dqCwqc1UpdZ+BVQ==
X-Received: by 2002:a17:90a:2567:: with SMTP id
 j94mr6900442pje.26.1589609187183; 
 Fri, 15 May 2020 23:06:27 -0700 (PDT)
Received: from localhost ([49.205.222.224])
 by smtp.gmail.com with ESMTPSA id s2sm946201pjs.9.2020.05.15.23.06.25
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 15 May 2020 23:06:26 -0700 (PDT)
Date: Sat, 16 May 2020 11:36:24 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: ARM: static kernel in vmalloc space
Message-ID: <20200516060624.GA6371@afzalpc>
References: <20200504091018.GA24897@afzalpc>
 <CAK8P3a25sZ9B+AE=EJyJZSU91CkBLLR6p2nixw_=UAbczg3RiQ@mail.gmail.com>
 <20200511142113.GA31707@afzalpc>
 <CAK8P3a0=+aBJLTvHOskTv=tba_s5b5MzWrYG8mxH3iLNy4hfBw@mail.gmail.com>
 <20200512104758.GA12980@afzalpc>
 <CAK8P3a1DQWG1+ab2+vQ2XCAKYxPUjJk5g3W3094j-adDXSQfzQ@mail.gmail.com>
 <20200514111755.GA4997@afzalpc>
 <CAK8P3a2PNZY-9L9+SFDLtrp731ZGo6Nbs-7jY6E2PwWXa0kfKw@mail.gmail.com>
 <20200514133545.GA5020@afzalpc>
 <CAK8P3a1PVwkAi8ycUAB-7EMk4nQ_qOu0rC5vJAQk_q9j5xvOJw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a1PVwkAi8ycUAB-7EMk4nQ_qOu0rC5vJAQk_q9j5xvOJw@mail.gmail.com>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_230630_323085_62E90658 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:102e listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Thu, May 14, 2020 at 05:32:41PM +0200, Arnd Bergmann wrote:

> Typical distros currently offer two kernels, with and without LPAE,
> and they probably don't want to add a third one for LPAE with
> either highmem or vmsplit-4g-4g. Having extra user address
> space and more lowmem is both going to help users that
> still have 8GB configurations.

Okay, so the conclusion i take is,

1. VMSPLIT 4G/4G have to live alongside highmem
2. For user space copy, do pinning followed by kmap

Regards
afzal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
