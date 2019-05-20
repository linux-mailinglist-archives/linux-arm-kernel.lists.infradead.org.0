Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 125F723FEF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 20:07:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qv1tZfBKIiAPsBq9bHQ2LIkDZzSNwzKgJ4rYJKI2FXw=; b=nxFYZ/y2+DvC2Z
	Ir58UtONPOpZTHsrhHK9sIOYqFOcSEW9gy9bQ6uLYt8OOFKLmkchDIs6Cvy2nTCEbo/Q3GLJ8taD9
	aOvhIVMX4BIy7jkEWOEVKmPxmXLLV3l2X08pU0XjkoSwAYGAbzsPXCk/WbB2IAd+kicdj0x3qoz3f
	Bz6xDXaVl/wvr7ulHwTASE11+hchCsyQ02AylHIL1W9TLmU7SkEQC9ZqjUAOiAliioPQMDT/quvqf
	92Fc5/iPOFAp1cMpCgsbmpDCqZhS+1q2deNPbjlFg3nQumE+sNg2+Ajwp/izIkgJ7NvyF30g/NWaT
	jq5Orcgf2mXUHOxUgTqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSmgn-0006SV-Ne; Mon, 20 May 2019 18:07:09 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSmgf-0006RY-IE; Mon, 20 May 2019 18:07:02 +0000
Received: by mail-oi1-x241.google.com with SMTP id u64so1481957oib.1;
 Mon, 20 May 2019 11:07:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=L/mkNRaloYm4q4e81CZAIxtva6CYlEwPt4YAYYrKrHM=;
 b=Gw5ZFVvWbGzpmF8y+hSk7oez1jyyFwu8IUGwPSJyfDu1oSbl8A71FC/8MM5seTbyYc
 nuo3bsJir7/6msWzaYixA3kZWV+qQRscTDPO7wgQ1CigsRRWt+jUNbq92qvrhKCNLMeN
 ltU4TB02W3YKesBRXKCtic0kTRChVtV7wDkcuKnh/V+kLWdK9BBhhow2r1cRmq/JfMOr
 mc1uK3tVodISTIUqEwTRx8kK/C6CHFcsxf3tkmQmWLHHxGGq8VtFmgVA3FM/ARqwe+Ph
 DtLGQC3ZEOGqKIhmSsPZBDRVeucSx2J7tmH2B5dM3nOfZQ1OoSgWgAxOkYD0mbrMLz5o
 jG5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=L/mkNRaloYm4q4e81CZAIxtva6CYlEwPt4YAYYrKrHM=;
 b=at4eCOktQvKUNxkvRYbbuXs8pBKpukUgHjK3Brgy1ewVWqfKusfQQzZ5yZk01rLVS7
 YMlJVDvDtPTz1Wav/6avcPq/K63fGNsieGN1uv7DPvmriGZEHblPiP1NN8GHa7aPND+c
 8mM6GKOKgph06+7m7yJmnYxSQ5Yryfq2SGE6Ycr+XCpjc8Ga72EsE3oKNJMoKltHuJ4Q
 AM9MiSZxp7vncGEYpKBxOGUNu1oHg4BbHdWwZ8/zkNy9ceIun/NWm+LnJqLEHq3JMqB6
 WIFas3TvtiroV2Pj9aD9HCpzPlQdoiwXkN291sBgpjjfiupX8urvZEMlbkU2/1cs/6VI
 Tt7g==
X-Gm-Message-State: APjAAAVyLX2xUaOz9HweA4XHhMiadtGke3SOemwzzAuaaUU77ijkCaQf
 oRQ60wlU76LJS+ZTKZ04btl5DqoOKgBEINILrVQ=
X-Google-Smtp-Source: APXvYqxbuQHL22U8lHijHjitJPXnnx300LA4EOUxMrBsIl4UhxogFbmLJxCUA3WXmBC1dAmeI82mdcOhr+suIYh5+YE=
X-Received: by 2002:aca:4341:: with SMTP id q62mr358048oia.140.1558375620395; 
 Mon, 20 May 2019 11:07:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190520143812.2801-1-narmstrong@baylibre.com>
In-Reply-To: <20190520143812.2801-1-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 20 May 2019 20:06:49 +0200
Message-ID: <CAFBinCCEi8OjeDaWxfhyfoQOu3GVsw=U9jBLQ2LEkPn7Ataf7w@mail.gmail.com>
Subject: Re: [PATCH 00/10] ARM: meson: update with SPDX Licence identifier
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_110701_601747_3025D99C 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

On Mon, May 20, 2019 at 4:38 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Update the SPDX Licence identifier for the Amlogic DT and mach-meson
> files.
>
> Neil Armstrong (10):
>   ARM: dts: meson: update with SPDX Licence identifier
>   ARM: dts: meson6-atv1200: update with SPDX Licence identifier
>   ARM: dts: meson6: update with SPDX Licence identifier
>   ARM: dts: meson8-minix-neo-x8: update with SPDX Licence identifier
>   ARM: dts: meson8: update with SPDX Licence identifier
>   ARM: dts: meson8b-mxq: update with SPDX Licence identifier
>   ARM: dts: meson8b-odroidc1: update with SPDX Licence identifier
>   ARM: dts: meson8b: update with SPDX Licence identifier
please check the .dts updates with my comment on the meson8b patch
because I believe there are two typos (which managed to sneak into the
rest of the patches)


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
