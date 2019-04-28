Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D817B699
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:25:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TQVqFPpSpQrtbokk040PBGwRp7cIfSy/sSlR5BsQaJ8=; b=daotX7z40Vct25
	UEWDxBUdjjbOHyVZTa0/5gm/Gl5jpRfxivQrVqT3rm378wd39JhZasUtrCo+jVpwR2OVE2/EhQpNF
	ddAuEoocn5/RLwmFl2Kbg6rX/21InIjY/Ivx3I8VanPT4/+cjAeDLu6grfm3vGv2rf2VBCcNg8pVU
	iRqT+DDTe/+WKoiGIVvCskdpy6fMb4ZGKYxwrEyHIh1T+Zz/MeaGO2N21gymHixkJbxRpT6TT7zQ8
	hViY8fe3MxqsXIKgNgo8DTuzQLooeAlIU4Z1LKOak8I/eu+ceJewo/ZUqRVtlDxjhQfQKqOyAAxKX
	/ajUviFfRV0yFOfuwfVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqMN-0006tv-Ip; Sun, 28 Apr 2019 20:25:15 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqHJ-00087t-Mb
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:20:04 +0000
Received: by mail-lj1-x242.google.com with SMTP id s7so4759324ljh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:20:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/TiM3QOq77UXU8UuXIC/MnuQwwJP3i4j4CNdcOAI12s=;
 b=X3Ofe1hYSMQSenw8HmrvaGNib/O1BW5N8GDVCcG/JWjjOelt8VFaubgjr5nEPRnZOE
 VjYGbkeaG7+uAERZjoZeDqufpifYXF+Wf2dzEZLx4dM2iFIFTrGX2YD2zAVZZZ2m3SOT
 V7oZsrK+YXthgaknOX5dCFtGBNhy3+zGJ1Lw5Sqh1/amypHQQdUrOBBKfEY4c963WiHU
 Ba/pq0DwWTNqNnRLpzZwkg6dK7squhltJ7ItEu/6HvOn773mAi0rEzOoId3BI00+qr5C
 wWNSZoVZwsaievSB+kfKnAy9hWvndYYq6EyG7zmo8ISWQ+7hJHjntPswxhSEFwKE0ENg
 jX/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/TiM3QOq77UXU8UuXIC/MnuQwwJP3i4j4CNdcOAI12s=;
 b=QoBysveX95GpvaCP1u45VqI3iT16VoP3kdk4Jhcvkz135wgratg0f08UtpARYVLYow
 39cJFt69iZz8rvf9ADMQlu/WyiT7gnedeRqkxudat6sO3SJAJUBJyl8SLAm++zrN0v3U
 WaFSQU9l6WrTPUvTCcdHWNoCXPb4mt5hn09YPpWvIDlmiXTm7B8TjxqocsOh03ZV5xZv
 +/NpsshBDJ1x95uZqa9DmPMH4YR89PNNCbgPcI+sUwDKaXyqnG1k77PsKlCcIpCfBoMv
 7/NvvylTUl64GNjQRtm3Wy+fsofmMxmckOBhXXryX9I7V7N/XJ4/YKd0jrMlMiVXGvK7
 yEzg==
X-Gm-Message-State: APjAAAXc7fo5bxlIvhDYBqA3arBVdJwNsYWdV4ppaNGHSNe7DRS5VCYZ
 pVY96oSkGZMAQPdTTIL2xkkCnA==
X-Google-Smtp-Source: APXvYqxs0RlnZwBqMoqWOA3dUb+Uwo7tXqrODP2Xk7hSYs6nV2ihqiL/aDkAvEnopHAJ8G7+C+Kk8w==
X-Received: by 2002:a2e:9241:: with SMTP id v1mr8232057ljg.6.1556482800181;
 Sun, 28 Apr 2019 13:20:00 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id n20sm1357734lji.53.2019.04.28.13.19.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:19:59 -0700 (PDT)
Date: Sun, 28 Apr 2019 12:49:49 -0700
From: Olof Johansson <olof@lixom.net>
To: Kevin Hilman <khilman@baylibre.com>
Subject: Re: [GIT PULL] ARM: dts: Amlogic updates for v5.2, round 2
Message-ID: <20190428194949.75s7yp2shknbdbcg@localhost>
References: <7htvera073.fsf@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7htvera073.fsf@baylibre.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_132002_321237_7C940AED 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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
Cc: linux-amlogic@lists.infradead.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 21, 2019 at 07:43:12AM -0700, Kevin Hilman wrote:
> The following changes since commit 07f9da2900674e8e7b15b090b878d8defe223277:
> 
>   ARM: dts: meson8b: odroidc1: add the GPIO line names (2019-03-29 13:59:02 -0700)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/khilman/linux-amlogic.git tags/amlogic-dt-2
> 
> for you to fetch changes up to 09ee951617d9af8a86d228b2ed34035076ab6001:
> 
>   ARM: dts: meson8b: odroid-c1: prepare support for the RTC (2019-04-16 11:58:00 -0700)
> 
> ----------------------------------------------------------------
> ARM: dts: Amlogic updates for v5.2, round 2
> - enable RTC on odroid-c1, ec100
> - meson8: add internal clock measurer

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
