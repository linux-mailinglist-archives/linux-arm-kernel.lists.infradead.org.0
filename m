Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87BA91FFCD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 08:45:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QoHAn2Qy0Fp1u6MOhktznfQg3xTb8PRor9OFCA7x1iM=; b=YKx3VaMyMPaxGI
	+d11BBb1ciQqKZRzMuimPHPieb38A1g0zv3bhJAUr2x0iCgUP81lTjNSIw/sc0CvpCc97ilEZALKF
	QvavhaIfokF/8YlXAKPWegHhdGDkGf+TWW4cLc7syqdjFBAQdDVJvCap9H5AVcGyb3EqKPyWu4ZSN
	6Qvbe/7H+gAy+M4468bnGir7je5nW2YTj3CefZlqC7bCc8xyVfQBPwUxe4px6j8J5aSP75yojqmKM
	xQBXftYWJN3UDrsh9e7x/TwMoJ/cPpo2ThKaB/cOspR49bu2zKjFE9RpPi+DHnYQjjhg4VNK1J+h1
	TvLdWcv0iykr5fctz44A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRA9A-00080U-PA; Thu, 16 May 2019 06:45:44 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRA7R-0004lO-E1
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 06:44:06 +0000
Received: by mail-lf1-x144.google.com with SMTP id c17so1725449lfi.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 23:43:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=nrpmkLEceLmeMXd7DtWqoy0ZR/HS2amMZRArAF/QNZ0=;
 b=VBr7ObmZxMgSumWiP6w2NVn10rjH9xR/XFhz3gTXRHvCx2mBGUROQ49psw9RQWnqOJ
 WoLBIyGbAYcI+ptQCiJaA+UScMLI7qWEdxYsxFmONkpVbwHB00V1InMPuJjhrSePCpXD
 sZRo3cP1h28JIbaausibdVdF4j891MR/L7yTZEc1PaWXg5lihKgOT3jjcuds8SF5LTYB
 Evh1FNMNDuacXW4oE9MW9kM7EWcL0JiYAQjiKL9hDLXTp6jQh3HEBc9uY4PyFSLpnEIk
 zO6GEAKELv9j3kOnR1OSovQnceZup0wLF3x84BfUP1tV2C72BFzecV1Htg0c/1QN3yjd
 TtAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=nrpmkLEceLmeMXd7DtWqoy0ZR/HS2amMZRArAF/QNZ0=;
 b=m5vxIi1H7YATWpo5MBYEQsA5qgrtUTaAadsZydRP65NOpO1ukxr6iB6n/6x+v8sYoE
 eWT3YxNpfiT/soxki5FI3VOPzpnjDynxmIxrHcx6hcvWPcX/Tx6IGfyhNvUI7yDw1Eda
 cZJ+9dDnetYA4TgqycTPwlZjhLPExv4ZpUadK//yVDwFTycbHIq5uerGS6/umt5dexH1
 KNC6iY90fJgho729u/QtmIpJ2WKFzDfMCjz4aQVbnUZVZHVfjJ5vGw0P8LTExnNi3vUf
 34edWWiIUKXV12G3rkc/WZqbwej+YGnvhv/QNLb0cyprOtbKiilY2g2Do71Gz54Rzggv
 5AEA==
X-Gm-Message-State: APjAAAWr504kD0njRe9hewhRO/6jQfk9Okf/HJr+TshBtjCpQ13tZ/sb
 0DDFeyJEq66m1blCvxn6MBD0ag==
X-Google-Smtp-Source: APXvYqwQdEZYB8r9gr4NtgCOi0Ii0gIhhKVpA5cVJOqAWIDr3Asd+hEqdKTFFDT6o/maxRxXBG9Qqg==
X-Received: by 2002:a19:4bc5:: with SMTP id y188mr24308329lfa.24.1557989035542; 
 Wed, 15 May 2019 23:43:55 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id n8sm791567lfe.15.2019.05.15.23.43.54
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 May 2019 23:43:54 -0700 (PDT)
Date: Wed, 15 May 2019 23:24:01 -0700
From: Olof Johansson <olof@lixom.net>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Re: [GIT PULL v2] ARM: mvebu: arm for v5.2 (#1)
Message-ID: <20190516062401.7wiffazf3sbrrmvk@localhost>
References: <87v9yw5525.fsf@FE-laptop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87v9yw5525.fsf@FE-laptop>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_234357_993846_1CD6E65E 
X-CRM114-Status: GOOD (  16.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 Arnd Bergmann <arnd@arndb.de>, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 09:24:18AM +0200, Gregory CLEMENT wrote:
> Hi,
> 
> Here is the second version first pull request for arm for mvebu for
> v5.2.  I fixed the coding style issue dtecting by checkpatch in the
> commit "ARM: mvebu: fix a leaked reference by adding missing
> of_node_put"
> 
> Gregory
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.infradead.org/linux-mvebu.git tags/mvebu-arm-5.2-1
> 
> for you to fetch changes up to 7af2ea3b29b1640f5aafe79d7c110ce66190c04a:
> 
>   ARM: mvebu: drop return from void function (2019-04-30 09:05:44 +0200)
> 
> ----------------------------------------------------------------
> mvebu arm for 5.2 (part 1)
> 
>  - remove improper error message on kirkwood
>  - a couple a clean-up patch generated from automatic tools
>  - clean-up in assembly code allowing using LLVM

Merged into arm/late now. Thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
