Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D2ADC70
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 09:01:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3CmYnE0G2GeGEtrnipQXXW1ZGQyfKFhuwmpfxqWZW+0=; b=j+YX3NiYliYegl
	29g9J+Uwi2JzCROoXna00TetWoqBRmFZrsGYPgfzjsscqMt+rcLa0X3NmoJ/NR5H0pNQ/gExiGrrY
	YrYdB2afKdT5cJAx6xEmGJ9rua2Ok97waCr63aWHNNB8VuLh02jd8chV6+d/8tsGWYxahKi12+y83
	JH6SsxKy1ALbg2CCttBB6OFMVSyz4kIUjBzm8GJYZ5EV96zBuuIE9f0MPwwrkG/H99qwxx6adf8sv
	Bw1V7HYS3GWddFpa8j9NXmLMWUf0fz1PnNwLqxQyK9wnSvIPhaNvhxpgEAR25+Sx9khyexXZavHCY
	6Xyb86xEAN1EkICB2kiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL0Hf-0001iK-TB; Mon, 29 Apr 2019 07:01:03 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0CS-000549-Vv
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 06:55:43 +0000
Received: by mail-lj1-x242.google.com with SMTP id s7so5587358ljh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 23:55:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=7kyTEB2/eVaMguT206AXQJHNkc0JX0xK0JGM0lCDZYc=;
 b=i+Gn0Ow3E5N91vhooX/ELcrd0eKbl2MD7+P33r0br5sM+4eFYs1IODL8EAZKjXN8MZ
 j6854D9dMUPnkhl/zWcBjJPacT3akswpyy1EEGsudGEXQ9JypI/2F2h3XCXmpPN77EKM
 UN1IZpmhi2suaGPutJmw1UCmFaZVMWgvCbGeE/ewVRZRcDcNN6WK2uuNYGObFun8ws+6
 XwArE3FluPWFIdxJr7UjvawkQNaq3gvSKU6mxr1qLVqDR0rHzxiU4repiJkbYA7YBf/3
 9XREJW2EkWhnyN+FhXdAJdO1vMKbP5inaxJrHwkKn5cKfDrZpV2jkZppbpze5VbvKtuC
 tUMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7kyTEB2/eVaMguT206AXQJHNkc0JX0xK0JGM0lCDZYc=;
 b=NqSboh53QW2LlpfDThzsg9XNv7PgsE8RcO/M9/6JhdAvQoSvqzr/3r10HV4DT9+zzB
 0x+9qrJ0iZhr+sG569B+E7YEtpgVUckGCRGqnpxzRGQbl+xYE6Cv5wGkIF7eBgsL1jMl
 Dm7/47fr2vzfdM6ZVDJaQJqThPBQ3rxHDnFW98ZiCa/IJiyHASVEl/WPZpNkymL5M/Fx
 jltu+pWyhXkxVwlCu7gIiLlKCrzAs22nH+QqrnZOEUEoX5XkTRM+dfuYofOlAfm+kyaL
 9nMz5wvuKgnuc/4qt3n2U1FOoM6NbLrR2uI/rqLj/BBy256K7F3QQrZLC7m+jHotwtkh
 YIEQ==
X-Gm-Message-State: APjAAAVi9JdzIxcgoxH7JO8QhIwJbtqkeJTdT+BM41fmpB2vJ03DglLT
 jGKahhyDvDocalOT0g3PAnIr0A==
X-Google-Smtp-Source: APXvYqweGqGMGqt/BVb2eLEUgmF1HH/StmdvLDabAlIudt9Rno7yqXklv+UF9v8BEY1TAJMVeb4BKA==
X-Received: by 2002:a2e:808e:: with SMTP id i14mr31300378ljg.103.1556520939471; 
 Sun, 28 Apr 2019 23:55:39 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id f25sm7181094lfc.46.2019.04.28.23.55.37
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 23:55:37 -0700 (PDT)
Date: Sun, 28 Apr 2019 23:15:23 -0700
From: Olof Johansson <olof@lixom.net>
To: Dinh Nguyen <dinguyen@kernel.org>
Subject: Re: [GIT PULL 3/3] MAINTAINERS: add Agilex platform under Dinh Nguyen
Message-ID: <20190429061523.tvpxrd2eefjwmm2v@localhost>
References: <20190416151140.2598-1-dinguyen@kernel.org>
 <20190416151140.2598-3-dinguyen@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190416151140.2598-3-dinguyen@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_235541_321536_9F75461C 
X-CRM114-Status: GOOD (  12.74  )
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
Cc: arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 16, 2019 at 10:11:40AM -0500, Dinh Nguyen wrote:
> Hi Arnd, Kevin, and Olof:
> 
> Please pull in this update to MAINTAINERS for v5.2.
> 
> Thanks,
> Dinh
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/dinguyen/linux.git tags/maintainers_for_v5.2
> 
> for you to fetch changes up to a0bdc85e6dbc6b27030e7d9b3b1a7d905501c334:
> 
>   MAINTAINERS: Add arm64/intel entry for SoCFPGA (2019-04-16 09:57:43 -0500)

Merged, thanks.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
