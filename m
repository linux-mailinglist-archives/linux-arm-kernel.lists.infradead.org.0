Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D511A1D593C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 20:42:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/9DtVsYVRvuuhGOcF99voK+C1zrLX9uYG42u+SHJ+m4=; b=fCZyOIplzXQq55
	yll4Qvrx8Te8ZwhAVXnW0LEYQnB6rFac38cWmjL57fAeQeV6tKN2hLJu2gNUlGdOTqzQUgZvjRt7C
	Un0yYWct4yTvTavYHB+VxnjMUy075xrwjKHxNKb633WU3ptr6Jw8AgfGoZjlafLQxTrWlimtqcxmB
	xtgNnFUm13vpYbsjUjKK9fWLFt6LMm6ua2f6cpLceHwHTFIlouwx4biSGZM4dhFol4bF7L9uEvVtT
	at5AIR9BsUfMsdBnA+OvaCuTC1t8iTR2OMbt8Bfweb9jtyF0JS/AzEp1dEZv4cbYUN9ARPw7y27O8
	cGHsgrVXFWdu0IYgUq4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZfHN-0000sl-Dg; Fri, 15 May 2020 18:41:53 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZfHE-0000qq-Pw; Fri, 15 May 2020 18:41:46 +0000
Received: by mail-ed1-x543.google.com with SMTP id h16so3053601eds.5;
 Fri, 15 May 2020 11:41:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kv5MUGjy/Y9+njlPVWiZ3iEONaGvUB+Gebu1dnu2KGM=;
 b=ujlKf2bmyqPK5q4p74/GDbGVJ43T0RZnhudgi7n1l3KeJmLjhq9FRvW+ly3rplSZw/
 SShXcTT1vXathOvlWEpN853Noevit9g2dNWB6aHQOaCM3GbURUAjjNABKHtugKyC7pzp
 yrc2jGfe+UP0BX7owd0hprTmIB8+dPFvsRZ2z59fYVlOI6dWY9wJqBFNwvMQF6tytc/C
 J2q8UqC4917gXeX4gvlTV2nZTl2lvRMJp+aqGcW3bG2A4nsFRe0sOmwpoRE6lWWkJQMK
 zSkTCp3aEtIg/2Vg5023BRydDCthya0H6yD4SwWhzdykq2Vf25NK+U24fYDd5keEbumH
 lLTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kv5MUGjy/Y9+njlPVWiZ3iEONaGvUB+Gebu1dnu2KGM=;
 b=GbMfsScpFt6xBvw2TvmRnL7Y2NMAWvyLx6IRXw3GjT0AYwbfCi8+JK3l33trADsJ56
 2X5l2Yqj2/Saiu4DtfpYiuPnfyK0JuZe9cuQL2cD0j6zmfTJ0uMHI7h5D4DXbf0WQbxF
 NuToUUJFDU3hl8aWyNDMiAR2gpkfBTxsVhRtFFL0VpF7hqWOqwBOVmzV1VFHBN9+qk9d
 Ps3QoHFUsmx88r6Md8A821C4l+f/1k913jQjENfG45RhamtdsuSaaIA9Tl29MH9Mxm31
 ozPGTN1Dq/2F+ca6bu9TjOV6eFMYyXr55eP/vFIZUwC4waSpvyyp4iZj+igyXQGWA1XY
 mITw==
X-Gm-Message-State: AOAM530uG0eibaTIm3uBDThYLq1k2IcTvxXEPodVAq4dRsqBW9L2z/yj
 JYh5uhY4ZGWcxDIvSTTZ80GFclEwzE084OgluSE=
X-Google-Smtp-Source: ABdhPJw75eCBt+AI/OMsnjMjqhZaamKLCUTFwu5SGXAJdiwEJWMf0HfnrJS4BYtF3MwaV7yuh1t3Lq3sWs5D+CNlTNk=
X-Received: by 2002:a05:6402:2208:: with SMTP id
 cq8mr4347508edb.293.1589568098804; 
 Fri, 15 May 2020 11:41:38 -0700 (PDT)
MIME-Version: 1.0
References: <1589472657-3930-1-git-send-email-amittomer25@gmail.com>
 <1589472657-3930-9-git-send-email-amittomer25@gmail.com>
 <b2ad8a81-619f-5f35-9596-c2061ae15e4c@arm.com>
In-Reply-To: <b2ad8a81-619f-5f35-9596-c2061ae15e4c@arm.com>
From: Amit Tomer <amittomer25@gmail.com>
Date: Sat, 16 May 2020 00:11:02 +0530
Message-ID: <CABHD4K9+2DKWiLATEvHLNgUj-otD1iNAkkYV1feXX3e-0HPvFQ@mail.gmail.com>
Subject: Re: [PATCH v1 8/9] arm64: dts: actions: Add MMC controller support
 for S700
To: =?UTF-8?Q?Andr=C3=A9_Przywara?= <andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_114144_859982_C6B18A66 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-actions@lists.infradead.org,
 cristian.ciocaltea@gmail.com, Rob Herring <robh+dt@kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

> I was wondering if we should add a SoC specific compatible here, to be
> on the safe side. The BSP driver seems to differentiate between S900 and
> S700, although it looks like only to cover some misplaced platform setup.
>
> But if we later find a problem, the DTs stay the same, and the driver
> can easily be fixed.
>
> So, using "actions,s700-mmc", "actions,owl-mmc" here, adding this combo
> to the binding, but leaving the driver alone for now.

I think, it can be a good idea to have this extra compatible string that may
be needed when MMC driver evolves to support more features which requires
data to be differentiated based on SoC.

Thanks
Amit

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
