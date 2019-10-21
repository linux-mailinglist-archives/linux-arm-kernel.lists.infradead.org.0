Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 948DEDF814
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 00:38:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FyK0Q53NURknlOS1apCI73JzFswRcJPuyAzN2jOtsfs=; b=a93MySZM/ubApl
	Xg+3gizGCwtGPTXnKVshQENabt70xIIWeoxB8Kfd1VLF+B3/jiqYr6e4UwzGEj03LmJC5L4Vr65qO
	lqjxeDXdnSvsyR/lfLhikRUoSPx6t+HNw7cPhlLe1HyNbhmf3V43SxI4NMe6Y/y3xLZ6CJPgkPNLp
	SQs2B6jtMkg5dmjl+ZAJJYFRP5UtDLBNXGeyP7NNQHfQZC0YFoYUQ+si5CEMOHyAIzcY6/TDhv21B
	BlSErUX5SDDJGi9xGnNmEOO4TvRhhjMBtOOHRf9z0jEkjoE8SEgdC008AuGFPZw81UqPLXFzbc/c/
	yRgDPMNP5wxNOEy2EzxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMgJh-0002zE-0F; Mon, 21 Oct 2019 22:38:21 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMgJW-0002yg-Hy
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 22:38:11 +0000
Received: by mail-lf1-x141.google.com with SMTP id q28so8166485lfa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 15:38:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=M3Khba/PBt/cDJZxxRgxvW5jeQnYGBuWAHkv4SCcZ3k=;
 b=ce6zw9uZZa/LS6DvtwIvmRX/sZzVTa5jxeN87+1yWj2FpiDCYyZzvvFYjGAuQGR6ET
 ztBCWhk8z3+ao/oZ3s0huifM9RgIqrdPZrfTZpDwvJddrCB5UMx3TNziGBEDFe3AtrNf
 28J9p/F7jZ2OIvqCvedYoPQjU9gLXWIRiFFWtUjLuEnYJ8hpHXUmvP4YFKNSy89KeBHO
 DeOyHmphQ22R1lKkMVkw7PRbTaxzvKRMJSsnkIOxNSwqkXkzdtUSrRr/Ump56mBL1JQ3
 eTKXwG/vn0ZUGcOCblZxCluf7D19FRqr3fFQlRf37CloPNpEb+7kvL1wKWS2436ujq9h
 +jUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=M3Khba/PBt/cDJZxxRgxvW5jeQnYGBuWAHkv4SCcZ3k=;
 b=bZ0R8cyUpoYOdS7vMKKHpD0QbbOH/tBiBziVfGaC8O0jh7430F6AkvvVH2xDREUXhm
 VbeA0sbResMGMRsxG8LlBU4DbvbOAPn7cBSzuDt1kBfZLHu/yEfD1Y+nDhXnfrrvWAcL
 3Lork3K4x/dFEBr1dzL8RbHNOQM/61mAOs7r97MvLpCRygfm8HFEzQ3DiTffmZDme/i7
 G60XfS7sozonKIv6cB/iPWf4f5+EUi0ThM5RK0ZfTZYtUksDNPHaLhHaDLhCAnV0DC6O
 iYQavp0d89ThNohZQQ/DPz7mH1/JN4orT53Rxelu6m4GsxkU+WAgKT7EPLFXDROnYtxG
 P6wQ==
X-Gm-Message-State: APjAAAW+Aat0TP6PEv+dBzXOTWGOvz6oj9K28/jAEZNnZ2sEcKliTHaD
 5d2rHFpfw6W2/V4asmoTzaKq7g==
X-Google-Smtp-Source: APXvYqxn23d6jD4ZAfLGA3X+jeU+CPeRqAjzFb9+rafFfNd14Fp8c3c0N75Tfv8RcpsywMdKiUvuYw==
X-Received: by 2002:ac2:44ae:: with SMTP id c14mr16225216lfm.116.1571697486259; 
 Mon, 21 Oct 2019 15:38:06 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id d6sm6770102lfa.50.2019.10.21.15.38.05
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 21 Oct 2019 15:38:05 -0700 (PDT)
Date: Mon, 21 Oct 2019 15:27:20 -0700
From: Olof Johansson <olof@lixom.net>
To: Lubomir Rintel <lkundrak@v3.sk>
Subject: Re: [GIT PULL] soc/arm/dt: Marvell MMP Device Tree changes for v5.5
Message-ID: <20191021222720.e7gqwyma6zjforiq@localhost>
References: <d4897c4a92319527c46147244282803cd9f5a1ff.camel@v3.sk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d4897c4a92319527c46147244282803cd9f5a1ff.camel@v3.sk>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_153810_595088_A3ACF6B1 
X-CRM114-Status: GOOD (  16.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: soc@kernel.org, Arnd Bergmann <arnd@arndb.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 04:35:38PM +0200, Lubomir Rintel wrote:
> Hi,
> 
> Please pull the Device Tree changes for the MMP SoC.
> 
> The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:
> 
>   Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/lkundrak/linux-mmp.git tags/mmp-dt-for-v5.5
> 
> for you to fetch changes up to 5c272bee843e12e4a3a2cc38881fdf31874806e0:
> 
>   ARM: dts: mmp3: Add MMP3 SoC dts file (2019-10-17 16:18:28 +0200)
> 
> This supersedes the "[GIT PULL] ARM: soc: Marvell MMP changes for v5.5" pull
> request.
> 
> Thanks,
> Lubo
> 
> ----------------------------------------------------------------
> ARM: Marvell MMP Device Tree patches for v5.5
> 
> This tag includes binding documentation for various hardware found on Marvell
> MMP3 SoC along a DTS file for said hardware.
> 
> ----------------------------------------------------------------
> Lubomir Rintel (6):
>       dt-bindings: arm: cpu: Add Marvell MMP3 SMP enable method
>       dt-bindings: arm: Convert Marvell MMP board/soc bindings to json-schema
>       dt-bindings: arm: mrvl: Document MMP3 compatible string
>       dt-bindings: mrvl,intc: Add a MMP3 interrupt controller
>       dt-bindings: phy-mmp3-usb: Add bindings
>       ARM: dts: mmp3: Add MMP3 SoC dts file
> 
>  Documentation/devicetree/bindings/arm/cpus.yaml    |   1 +
>  .../devicetree/bindings/arm/mrvl/mrvl.txt          |  14 -
>  .../devicetree/bindings/arm/mrvl/mrvl.yaml         |  35 ++
>  .../bindings/interrupt-controller/mrvl,intc.txt    |  14 +-
>  .../devicetree/bindings/phy/phy-mmp3-usb.txt       |  13 +
>  arch/arm/boot/dts/mmp3.dtsi                        | 527 +++++++++++++++++++++

Hi,

I only see a dtsi here. Do you have an early/partial dts for an actual piece of
hardware that also can go in, so we get build coverage of the dtsi, etc?

Merging this as-is, but please follow up with one if you can -- even if it's
not complete yet.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
