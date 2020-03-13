Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3B018447A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 11:10:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y7XU/sivoBCiKFymuLQhxxgmtH239Ett0P7HbTyVvw4=; b=gxq94Tslfrq+1n
	DrSWgCEiVskTWX30oCI2qz00ZC6DfvQ5I14qCIy19lItQ80oC0BESKa5nE4HmSj691ZIab5ayF6RF
	rhVbS5+uwUgLEpAkO3yS4KlvbBW1uGdzUvUCLw6HsfIGGVQf5dbQPD/Nxec1aLbTEedQNirhxzIA8
	3qqHfnygrYmJEPiMtUm0TqOrBXKaRlrhJtkO5WKGApWrMyQ5FA7oMWwpkPch/fm4KzBc6jIgauigN
	Aepuv8V9VWBboLVolVIMtT1RRxFJg9aO2kfmFlQNwwS4ZvYC1wAsiBpXZxHBH7WvwD1z8cE8ePVjQ
	F38j14VfJm+ibMzJZzOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jChGj-0000mr-Fa; Fri, 13 Mar 2020 10:10:17 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jChGT-0000Ty-7e
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 10:10:02 +0000
Received: from mail-qk1-f171.google.com ([209.85.222.171]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MN5S1-1ivrCU0Uuz-00J5x8 for <linux-arm-kernel@lists.infradead.org>; Fri,
 13 Mar 2020 11:09:59 +0100
Received: by mail-qk1-f171.google.com with SMTP id e16so11470474qkl.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 03:09:58 -0700 (PDT)
X-Gm-Message-State: ANhLgQ3qmkGY2eRu7qSF23U7Wrr+7AM2YwtFZOZWvk9mPiiHrmwcXUcp
 2vz7ksDwo2yyX9gH5/QwBr/6jOZnRHVT+mslVb8=
X-Google-Smtp-Source: ADFU+vvWYzbzswGUwj98LCXyumKjsg6WUR5/OVwtFB1yQQW0GRetsjSX3tCPfS8PNkhlu5bWjtf3hlPAc+3Hny+d/0E=
X-Received: by 2002:a37:b984:: with SMTP id j126mr11430329qkf.3.1584094198024; 
 Fri, 13 Mar 2020 03:09:58 -0700 (PDT)
MIME-Version: 1.0
References: <1584070036-26447-1-git-send-email-peng.fan@nxp.com>
 <1584070036-26447-3-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1584070036-26447-3-git-send-email-peng.fan@nxp.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 13 Mar 2020 11:09:42 +0100
X-Gmail-Original-Message-ID: <CAK8P3a05++P1_0HxTrQueUhjnj83F1QOXES8SnmKkSX0a8fryQ@mail.gmail.com>
Message-ID: <CAK8P3a05++P1_0HxTrQueUhjnj83F1QOXES8SnmKkSX0a8fryQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] clk: imx: drop the dependency on ARM64 for i.MX8M
To: Peng Fan <peng.fan@nxp.com>
X-Provags-ID: V03:K1:I5seLZU+HPqvA6Afr+qY+8h7m+2ppsX3G+0Gec9jGiIXM3odvoE
 MwE+k41uuH/to6dHq0wI+709UXu9lNx6o7hDHNfBB5cHJChn+igFoIGhYQSB8uW2kwa7YnT
 XniN9I7iNAD7JLu8EU0J7qYPx4+kEWKDPb9UFndRvDUuMEjQmSZrlUCx19cGEQ5iQfNOw3U
 7UgWxagWxEDWiHc/kwBfA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:BVrjEbzA5uk=:Xo0obHihD4c6leG+fXu2BJ
 8v5AyQmPDFB1YB7nB3kAeCSE7IivsX/VVH2WEgzV8toBK2HVgsBb//ojumsk7aQRwrSnFLDuR
 OBS4PV1ZSJP9Eae16wo5z1mtQo2mSCFBfaI96uJ2rcBkeHsdYhKGAC/Uuf4FiEzKfW8XGp7dX
 seJt45MBaySCH7fomSk9n4oZ85aJpKKVvUwqzNfSx6EP5LVA4wDgVnZhzLkuljJ52d0L2LW44
 o52l4ePiZ9Nqvv4kZj7L5VKp3tGZhJVCmPCAh4JwqPdDpX+yfSHItcDVybyn2nen9ZtY/6RgB
 /WI6IwfadBhoKDXfHjdUuU9hC3JTk/LpFtepJofJdQnLAUwldtK/UtxqN7w//hNhJsHJ2xdaC
 17egwYHK2ANM8uAvNQAuSzHJ0uj1or90BjBUR+3gjV5KwRKSMtlhz/pmpp3VW9Hb2D8yCLCi7
 IR4GxwRvLs/O2PkDBuRb4BSFhNPD0F7A7SRyYssrPt5CnVnYDWn4P80+p0Sb8ST4CDTX4zlmj
 IxB5RmbVJWXcI6RnNx142YsqTsioqJtCm1N8RRsVwmYX4Mq4cmewKOawk8JA+fW19WRTOza74
 kHUPCnVMpfIzK34gdXBBRWVSCUlFUi30hLQnpSds81H3kYRXm6GCfwxgEczEVEwCrWUQCMlu1
 HRRX0HEG8EDAde9Pw5ZrvOvEsXCE26HV1ejwiWrOZJv2eXDoGpDlJAttUz5bA0BH5HisrIjL5
 QlewFwH/tA2t0W2mPtqut/Ceu9iMNvTdPp+UFMMmUKec3m2ExcBLZvpBjgXNaAEwKTumZeBp5
 utzVWtXCEyGZeu1ogn7P5wES1uEJxQpP8YoaRRt/p3l8mAGVw8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_031001_604555_415CDC8D 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>, linux-clk <linux-clk@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Linus Walleij <linus.walleij@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 13, 2020 at 4:34 AM <peng.fan@nxp.com> wrote:
>
> From: Peng Fan <peng.fan@nxp.com>
>
> Moving to support aarch32 mode on aarch64 hardware, need to drop
> the dependency on ARM64 to make the driver could be selected for
> ARM32.
>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Acked-by: Arnd Bergmann <arnd@arndb.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
