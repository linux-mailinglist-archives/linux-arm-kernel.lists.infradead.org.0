Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99001B688
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:22:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7onIbZfwtglBUvTwWQCfEHq1eQR7DNEALywi38BUPQQ=; b=KUkT7EKLxBtiGM
	VYTHyBhqp4l+FrC/xPUDtTVLDY2NPDqOGt1GYayllV7dt+RRDOszlHuISOqyUDuZtamqZCTvUpgaA
	7lxCUCVZccV0Wqafqxc3uhZrkhpiq74CYju/LJu0Peaw/tTZTlR5sCOYug7ZAQYXg3n0n8GUJCRvi
	WiEPFQ4Dvtw89e7TKe2wCVGcGQFChaWkIE9rSOAuem9ZxE7MEs3l6H4GgqPsQh7p8HJiELMAt4lda
	KUjkQ4fnWgqDqXyQ5t9qXxWIP+tk/IeDuVC2qBjLq8QTkJDmuC6ljpDfxSPdrneF1vKOqp2Mhhoiq
	GTULCqeuOZj8wtzWxRsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqJg-0003Fk-8b; Sun, 28 Apr 2019 20:22:28 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqGn-0007Zz-AT
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:19:34 +0000
Received: by mail-lf1-x143.google.com with SMTP id t30so6224199lfd.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:19:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=4gFP6nWT+v9sCe8V/BEGPCP6lT6kbfIIykjMlFe+O80=;
 b=pHpZCJupjiRDX+BQKboQ0hTdBAZfkAM/sg+tvQEpnU2zL59x79a8Wpkn1OffIjY80P
 9asJ0G0HTi9+cH3aI3A//9K087M9r10HHdNB1tai1xCySZa7r3k4UzfPjWh0vXkzMgBt
 ibG3X1maiv3Ib/KKbsYCsFmVkgXUoNHMynIPUM+LRJBAK7ZBfbKDJCt54lHyvTgVnJfc
 0UjJwlb6/O/eO/rcoj3u2HEf4+jutnXylxbm5IQ6+O2v8qAoKNaSgQ1D2YUDgxG4uueI
 r+4Fk32hER/BYOhoV5qkn28wGavsWSPSBrZ3Wsba8jl8vUW+pU407M8slpihkjkpADOx
 ZfBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4gFP6nWT+v9sCe8V/BEGPCP6lT6kbfIIykjMlFe+O80=;
 b=Oe7kUEGb06HdyL9vEYU7n6VAu4MT5mYQrM2nKAVwXSrlH4oPqdrk+qJoPsoOoEVi/J
 NgMY9Qlyw/UsdOCINwjU6f0xHzSaxXjqoapfUngnH3FOokWitCPdarUIuC//C6TayHxW
 jZd0hzF6SbiZ9zh8zs80Oaot5HfXDdQvgib3pr+ZvZoUUsjuC8ONm+eiyt7GikDug1BJ
 6GJ+XoPdodDT8+vTp3JwXwV6jxhl/HGQBDTCd4LDpKN0MlrR9r0+ONAXZUcH7oy4dn++
 jzXojEl9dHhFkLDHitxGwHiQgOWFf+85W+EZW7X7b7RgZlh6ptWu1gnpVtIFznke9zAo
 Q92A==
X-Gm-Message-State: APjAAAWvefqh7f5NvOIcAMD/1KczVaCnfPpKORSOhvOkxvsrI+fUOeR1
 8NVP82M4IkcTJ2DwMyAvFijRlQ==
X-Google-Smtp-Source: APXvYqwWnEHaBgp4vLgwVo/Jrc7cvchx7gOr2XwbAvzERbi1tGrms+hPhJVNeORJIw+cEYQOicj/Rw==
X-Received: by 2002:a19:3845:: with SMTP id d5mr30583376lfj.77.1556482767660; 
 Sun, 28 Apr 2019 13:19:27 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id h2sm7006816lfc.77.2019.04.28.13.19.26
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:19:26 -0700 (PDT)
Date: Sun, 28 Apr 2019 12:31:40 -0700
From: Olof Johansson <olof@lixom.net>
To: Michal Simek <monstr@monstr.eu>
Subject: Re: [GIT PULL] arm64: dts: Xilinx DT changes for v5.2
Message-ID: <20190428193140.vwwsqtwluxip5exg@localhost>
References: <f7c97dc7-0aa1-ea3b-b788-7fdf686181ed@monstr.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f7c97dc7-0aa1-ea3b-b788-7fdf686181ed@monstr.eu>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_131929_859064_4CF34FF0 
X-CRM114-Status: GOOD (  13.87  )
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
Cc: arm-soc <arm@kernel.org>, linux-arm <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 15, 2019 at 10:44:46AM +0200, Michal Simek wrote:
> Hi,
> 
> please pull these patches to your tree. It is just 3 patches where two
> are related to firmware clock. One is file rename and second is binding
> doc separation. And the last is adding standard TI quirk to phy node.
> 
> Thanks,
> Michal
> 
> 
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the git repository at:
> 
>   https://github.com/Xilinx/linux-xlnx.git tags/zynqmp-dt-for-v5.2
> 
> for you to fetch changes up to 78c484a55d915e36891be5bae92e516fdac8609d:
> 
>   arm64: zynqmp: dt: Add TI PHY quirk (2019-03-18 15:59:08 +0100)

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
