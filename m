Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B29DC72
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 09:01:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xT+d5+J6ULcU+kOmF5P4ojBjOupa98rfmkIvwEFoxeg=; b=AbA2YPCM24rpqh
	b0ajIc91lYmDurwg36OVkVmpTABDmEL4BzajOSii3W+AQUSnycWXjbiHSKaXEjLKVw40CoErvRXnJ
	j957GLz91gFsxMPQd61fW1BSC5Svqa/6xWYuEvlTMaA8f65lw9tGvFXT2dKIXXH4oauf61d4f2Kn7
	dH1WVOBKltFB0xchWzPoidHADmUIrBUBTpSOVun2NcK1d+tIkGydxSfHwLN1QTR+KhUO2vJ4XtOPH
	OJiiEdgb1hTh/0Oc76t3Dv3MBYLl49CrVR8RcVEYj/0k3ymTcxP3zhdzwTbtr42QCh2lmpvaf+iv3
	SFoacSq4JtntmoIWoeiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL0Hz-00023h-DP; Mon, 29 Apr 2019 07:01:23 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0CY-0005Bn-2S
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 06:55:50 +0000
Received: by mail-lj1-x242.google.com with SMTP id c6so1791081lji.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 23:55:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=nL2P1M7uDH9sqNhp+c0tFsqWVlMq3PcgiJMqWvCpETE=;
 b=bRAG0cAb/NGp1aDa5ZxRuZfUeRqje+L8uRcyOQtVyo/jq5XuvZCXnr8NBD/2lOjMfl
 0DkCJAAygyRxqXJJYX1//efxbIcUye5iGrFN2N5PQljJHffhHTu67kEsws1RhvxGe5ol
 Z688gaQk4sSLtwBnavoll93FR27qRjEyj9/hORuzZ3k4trMF+x0V0TuPvLiZ2QHvytXv
 q07VKhUctym62/n5jyzhwKPsKU3WsH9PLTs+UxNA1eJyK6Po4riDIHhcPiQI6+Pa0d2L
 OIluJHF4RqZ857/f2h6EAJz/NPAQ+vOPc4vIc2YyQDVH43lFX6F0MPdSkyS/jd+x5cIk
 CPcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=nL2P1M7uDH9sqNhp+c0tFsqWVlMq3PcgiJMqWvCpETE=;
 b=Bwn1QegZTrEIQC1pNvZNy4Q9XJD6uRQSyB2nzrIFs9ZhHNtx1ZPMB0VKKJN/i5RI8m
 dsgBr3CyTJjF1XSLmAOphW0KxKL/PuldG6h1Stf3m0JKauKQ/Uw6lze1kzkjtxbVR3zG
 s+9ioJfe3M5jgcexjmgJnMhp4m0NkM4lWGBuEP7t3Tojd+LcxsgEyI9bTwRyBArNy2T6
 6+2xYs7Qp4s5U4qzDwt3ZiB5dwkCSmCoDypr+j31ODiw5XLLoCRancxuQfZL+ponMEPL
 gonnfxacgK0m/ZQfTz0DZtaW03ZINtgb+4P8HuWhwaOICMI4sw/khdcnZ3UiuIJYXexa
 AnGA==
X-Gm-Message-State: APjAAAX58KWzKjfZacgPLfQT/e0JTum9gopsEoCF8nFuqehXNIX0AEfk
 HElTDAl3owDH6KOPryKC/wdjeA==
X-Google-Smtp-Source: APXvYqzqsho08Z3YvmgcluffQGpducz1QOUg/zvXOC32KoLffw+x3UhiG5TvAv2Eg8R1c8b0ezCjlA==
X-Received: by 2002:a2e:128a:: with SMTP id 10mr33933079ljs.170.1556520944478; 
 Sun, 28 Apr 2019 23:55:44 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id h12sm8583926lfj.45.2019.04.28.23.55.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 23:55:42 -0700 (PDT)
Date: Sun, 28 Apr 2019 23:19:29 -0700
From: Olof Johansson <olof@lixom.net>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [PATCH] arm64: defconfig: Update UFSHCD for Hi3660 soc
Message-ID: <20190429061929.zv6d2pdu5fobpzhy@localhost>
References: <20190416170221.13764-1-valentin.schneider@arm.com>
 <d12c9e59-06f1-d836-6797-ae87a708df9d@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d12c9e59-06f1-d836-6797-ae87a708df9d@free.fr>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_235546_703041_5695A6AE 
X-CRM114-Status: GOOD (  17.16  )
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
Cc: arm-soc <arm@kernel.org>, Valentin Schneider <valentin.schneider@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 17, 2019 at 10:03:26AM +0200, Marc Gonzalez wrote:
> On 16/04/2019 19:02, Valentin Schneider wrote:
> 
> > Commit 7ee7ef24d02d ("scsi: arm64: defconfig: enable configs for Hisilicon ufs")
> > set 'CONFIG_SCSI_UFS_HISI=y', but the configs it depends on
> > 
> >   (CONFIG_SCSI_HFSHCD_PLATFORM && CONFIG_SCSI_UFSHCD)
> > 
> > were left to being built as modules.
> > 
> > Commit 1f4fa50dd48f ("arm64: defconfig: Regenerate for v4.20") "fixed"
> > that by reverting to 'CONFIG_SCSI_UFS_HISI=m'.
> > 
> > Thing is, if the rootfs is stored in the on-board flash (which
> > is the "canonical" way of doing things), we either need these drivers
> > to be built-in, or we need to fiddle with an initramfs to access that
> > flash and eventually load the modules installed over there.
> > 
> > The former is the easiest, do that.
> 
> By that logic, wouldn't every UFS driver need to be built-in?
> 
> SCSI_UFS_QCOM
> SCSI_UFS_MEDIATEK
> SCSI_UFS_HISI
> 
> And generalizing, wouldn't every storage driver also need to be built-in?
> (SDHC, MMC, USB, MTD, etc)

The general guidance is that storage drivers that known well-supported
platforms need to mount root filesystem from are fine as built-in, but
secondary storage should still be modules.

> (FWIW, I dislike Christmas-tree defconfigs.)

I don't know what you mean with this, but the above is just fine. You should
feel free to use something else than just the defconfig for your system if you
feel it is getting too large for your personal use case.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
