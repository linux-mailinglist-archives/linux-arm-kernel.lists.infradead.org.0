Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF9754E7A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:12:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2tY8WWHHavKqJQ5FEWCLWf7GzowLplJx96h7k1pA+Rg=; b=eKaMhBeKY82is0
	n9F8LJnCUl9yMmegvFvRgQP1QAlcjOpP+J//srg07pyx64lhyPmDzACxLlmNpbFZTZWVw5G6CvaI7
	UrWx4Ik0+KcG0Oo/cC0am0VJg1i/clAVpMFAzcnta6rFXfJneDbJajrvpenkTCU9lc8fSXH5csrxp
	3gzIlPDCm/YpDEXQXrbrkTjIRFZZGXaCgeXSnQAexMRxiaTrTohZtHA1oRlpQNvjZ7vx0qm3GC9EX
	dqMVoluDELj3HSNyjTPVO8vh9bE+88Qelie10xbPVFa6V7ZsLzZmh8dy7v8PhDXGeG/UwKTv5KN6N
	0u7nXMfpa+NTmyRkUQww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkIw-0006ZD-GN; Tue, 25 Jun 2019 12:12:06 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkBv-0000CA-P4
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:05:04 +0000
Received: by mail-lj1-x241.google.com with SMTP id h10so16015199ljg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 05:04:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=JeWAA5pDNX4oOvKdoDr30ticzTs04Nx6g7enOApBtgw=;
 b=K3n7ycxgr23D6nLwaSys6JOe4eI10fu7TAZEaCHLkM1p+DiINMQB5ws5Xa6E5IEHGa
 quav5Vsb27smBPaLAhSsXtkR+beY+UZv3grUoug344LECS7MXeajmpf3IKLwNyjn+YXq
 kZ2Gmm2n9nCnNu6Q4M6JhrxQwn3gvcR+yrKmYgAYxdDS8gpv5pMR3alZkDqaHM7nSapx
 oOGQgyzdtn8Xx8snZ3pJveusk2ZN4zpG6dm+y03JDSF+21gbRjoDsugv0gM0gM0ARIXj
 HKkMgvib8OyWx8KICC/kfH/8yCkbE/MFdrcJb38Z80q1mXZIPtQzevVFuxR0rRYJ1xhz
 xTyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JeWAA5pDNX4oOvKdoDr30ticzTs04Nx6g7enOApBtgw=;
 b=kZ7oNAVFDgGlRlUtmXzJRc/poXwPfCbeU1WL3hhRhq9S1B2HNT5dAt+SfPhnGklf2U
 7xLkLKrWcLXjSjSVxxJpODXJ0DcsDUOcu/W3Lma4+AkamtF2PO/NxiK0nqTlGOOWDUGz
 NeRj/OVp+LUfGwpOHVXWmz5ZJgZ2UFlo/PsnDMMnfWdKxZ57ig2cLNmpoPvP678gvVE6
 Pa+m92fnKp608vpNLtkYRyDULd0lVM7W3txt8I8FLHPL/6Pivd8JX76jqBdPxQGbxhfS
 Bw8z4zLx+Zj1KKJyxw4Vv5OWAntV2BGei/NXLK9UpKh2riOS5iS/y+44OYdVTxZu0sGl
 s5aA==
X-Gm-Message-State: APjAAAXLP4WjvxymouCXuk7bfMxlHgyIPpFKcWK6S26mAq2iQebD7dI1
 YoKCaYZlkKV230PDObHvYOFqEg==
X-Google-Smtp-Source: APXvYqzXPbL+e+m6SFBkVghifyOErjpuXFKivGGBeu3z6TKbMSKVWGcpb8IYm38RfdreSRppM/mzRw==
X-Received: by 2002:a2e:50e:: with SMTP id 14mr66397945ljf.5.1561464290445;
 Tue, 25 Jun 2019 05:04:50 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id v21sm273883lje.10.2019.06.25.05.04.48
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 05:04:49 -0700 (PDT)
Date: Tue, 25 Jun 2019 04:43:01 -0700
From: Olof Johansson <olof@lixom.net>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [GIT PULL] Allwinner H3/H5 Device Tree Changes for 5.3
Message-ID: <20190625114301.aah64vukqr4uesei@localhost>
References: <df322d29-330c-40b9-8e87-282e06bbf3dd.lettre@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <df322d29-330c-40b9-8e87-282e06bbf3dd.lettre@localhost>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_050500_239745_84397E08 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Chen-Yu Tsai <wens@csie.org>, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 10:13:14AM +0200, Maxime Ripard wrote:
> Hi,
> 
> Please pull the following changes for the next release.
> 
> Thanks!
> Maxime
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git refs/tags/sunxi-h3-h5-for-5.3-201906210812
> 
> for you to fetch changes up to 9fbbbb7b8d637f7ca1d5c4e23452bf450c7cb05f:
> 
>   ARM: dts: sunxi: h3/h5: Fix GPIO regulator state array (2019-05-29 09:27:56 +0200)
> 
> ----------------------------------------------------------------
> This time we only have a single patch for our command branch between
> arm and arm64, a fix for the array syntax raised by our DT schemas.

Merged, thanks!

I don't think we'll start separating 32/64-bit DT updates again, so if you want
to you can combine them now.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
