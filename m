Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 470C971DB6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 19:30:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ylPCAEXRG+6ChEanfUKi2x5+yh8JELLc5siMUD/lEVA=; b=k9j7Lwwmo9LH0V
	yJCz97WEUSpo+u45Kj7vW761heu2fohBaCUSvLHuHAMApiMyE3oyFgbT7HyVVgZSAFDlgb9MUVDUA
	k/2T1CgGDJu3Tjb/dCANctev6B1U/KQy04CvucS0nX14rw+/1bDGrI+3O2jqU6pwhK+H759jzUKyv
	X6QEgpkzi4jswwMad5roIIHeWnHhurFVeKq5dXt4snFtICbiw/LDps73yi9DTax9cy/ticShDw1sb
	zNlJVcwk97BDTVILXC3a4YHWPZR3e3FCHoVvN7HhQmbF0Pe34Ski0ee3EmqqTwfaEKUrIHAtXjVV6
	LiKgYX93BHqSmcQXNhOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpycT-0001nO-AA; Tue, 23 Jul 2019 17:30:33 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpycE-0001mz-Gz
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 17:30:19 +0000
Received: by mail-io1-xd41.google.com with SMTP id f4so83586366ioh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 10:30:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hRCwFNrGBrvKyo8oI1LnVSC5xKaBDKBb/68xDzXFy6g=;
 b=Xf8QLse7KA/32uuFIzpa6eddh60j+8SQlUBBetVO6qvte6vLuuRMLlL3FhiyQz1oPf
 Pmy4p3Y/eFTTjzlFYTGlbd0I32l7YfO/Ji5rkyecXvWN4IeuVMCCytIiftCkZQWym/YF
 YRlDlQA501WPZaUTuABHIyhlNnE2d9Y0GWqwhnE3wJY2DiobaO1HNoRKf5oeWSIccuJu
 Yyaox37baY1v+JEq/E2BsJWGNOtGgvBHfO2nABbmlKwSjpkXqk0dbJ8ENsZ8ttEzqEWm
 +uP6c0/dVFnSH0dpYTQqwAN0Wv6ZT+zD9f0fuwAxIod4WAjVIzlFpW+HyrUHu7xoavuo
 ym7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hRCwFNrGBrvKyo8oI1LnVSC5xKaBDKBb/68xDzXFy6g=;
 b=keU/ewPdBd50Z7pOcGXtbD+SVkBrH/WZfj+2rajFjgcY2FUdTQqH2t0TeaVRxirwKW
 n3dRN7vL6PuHy6qKJ5zjvIr/lDVnNC0GxoecuWJSYP/LRDYUbCsPwY2q+F9TP8dbCgwr
 1tnNFczECM/FnHGbSLixjBVOHF9aqeUmz3XCpAnxU88wAIrilCHCLY+hG7qbL7I8cYl2
 kt/9qEpQXjDAfRT4MxC8C68aX6okqHCL3r5qLt5IYf7kuXeTuDJmKdS7b9+J2dcXJffq
 NUo0N5VMD/PI08KGrDo3U2HIMR0sTUM4qbdTcBgyNuiJsPEuyOMrrnH6oUB+OiNTZwsn
 zSsg==
X-Gm-Message-State: APjAAAX7Wi/Me5Qnm2+4Epv0/XNTMtHDjxPK3nsbeMwatluPJxz64KNj
 DqRPUtgTCdenM0siLQcOkN9TANFnxU2F8K3/tjc=
X-Google-Smtp-Source: APXvYqzgHysMZI9o9ReaYwKdwcP6tPwdTBHMMBRlCR2m4MqUQjYe3eBGB1em4uMBBKGqKp/1ia1S8BI4jQL6pIP0zWM=
X-Received: by 2002:a02:7f15:: with SMTP id r21mr82997526jac.120.1563903017180; 
 Tue, 23 Jul 2019 10:30:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190723090827.GU15632@dragon>
In-Reply-To: <20190723090827.GU15632@dragon>
From: Olof Johansson <olof@lixom.net>
Date: Tue, 23 Jul 2019 10:30:06 -0700
Message-ID: <CAOesGMgT1jxpk9E5ptmbGMLqaTu3s4omd1BD6OPn9HBD3dT0Sg@mail.gmail.com>
Subject: Re: [GIT PULL] i.MX fixes for 5.3
To: Shawn Guo <shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_103018_625854_451A0D84 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
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
Cc: Stefan Agner <stefan@agner.ch>, Li Yang <leoyang.li@nxp.com>,
 soc@kernel.org, ARM-SoC Maintainers <arm@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 2:08 AM Shawn Guo <shawnguo@kernel.org> wrote:
>
> The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:
>
>   Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)
>
> are available in the Git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-fixes-5.3
>
> for you to fetch changes up to 8d0148473dece51675d11dd59b8db5fe4b5d2e7e:
>
>   arm64: dts: imx8mq: fix SAI compatible (2019-07-23 15:37:31 +0800)

Hi,

Seems like patchwork doesn't support auto-reply when pull requests are merged.

Merged this one into arm/fixes. Thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
