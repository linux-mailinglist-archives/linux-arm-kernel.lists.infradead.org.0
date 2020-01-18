Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (unknown [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C7701419F8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Jan 2020 23:02:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iLm9Op7M08yT9WAzepPGit2JqEAZsb0pq74Xq0Zi588=; b=k0CfVkvIO45onp
	wep9HVnbWFcv5TGmP8g4x4K0IxnNLQbbN05X1SplO85nqleVZAO2L6c1/9ZezBJ2vkMhFoT3wmCVJ
	+1ehTLhqGXOkxKjMpFYGcV3MysEMa0X4bhw5vfNcCtE+D/4h02w+QPyaE4ofPw0upHRImMCAAnCea
	MMD/bPOQLjh62om9iuvcD5ZxIUpGyLn5N6gdkw6lQMF87u/68GofNmEhuPQvEcMqacJTkRu8kS1Fl
	YUbUTMVlnSlGlbffOVng+9KxwMBv/Ui7Tph7EFxtl1CrOwnarjt731a9/w2esHt89EMWQQKYdvnbo
	SXz+2URSDC/ebF4s7vjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isw9E-00047j-Qr; Sat, 18 Jan 2020 22:00:52 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isw97-00046g-9M; Sat, 18 Jan 2020 22:00:46 +0000
Received: by mail-ed1-x541.google.com with SMTP id dc19so25870209edb.10;
 Sat, 18 Jan 2020 14:00:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hhGX1nqtyoIZtWHowHcHPTDuXomALEwGp67YDIAs05A=;
 b=Hma47cnZkW8SDZySjYMuPSLqtSqE+IGLh9ZGHEFQJ7/WvVbaeTgLg5nEdn68Vy0dCK
 GUBMZrRmAWrTo84VZE44KJpsZFWbb1YoVyTe6dCcVTbLHIJHY/7SAUFl27ZA4Kr8ZVID
 BijVsnKRqrvLW6r9pjuSbPKhlMb5Aaei7Niboxwmwr2HPBl/F2yJpy3XtSVI6Xz09G8m
 hZwYqoMwOLqnUbyrNTdQx2+v5XDeC6RmkSaUKqrMWGBja8VIZgczhZk4bYCaG4KFh3sv
 WHuYswNS0goNqezzYhOH8T07sY0avlTpkA7XYSTvuyl+k6G+wYkk8RZhv4ALnNcG8kI0
 4t1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hhGX1nqtyoIZtWHowHcHPTDuXomALEwGp67YDIAs05A=;
 b=tDRWlSekvIy/4iCf2jAIcXsnrD2IRCCNwly8KzJ1+nrihFaVIRPgOWPzaHnOj23mdn
 wc1rux/JZab6Wd7rdO4ffea7TFHUFf5gu3tmRi5StZwRNB8enjOfRzbtRPvUAbUJamRa
 167T4Bxkhbpv/K42qM+wdDhJ45r2+rtkpvQ1Sbry2RmVtxEYcMdKVHYGHEFCIWelEz6a
 4Kzf5+SULdEIU3JBGTTeomtpuo/3u3+2oHRFdPzRQ1F5ffBHwXH96SC1hFUU3Coz5QDN
 JJmZQxCYzNMFNPQndZp8JyzkE5pMSOySkvXUXXPEee1ZqF0tiG0trqtlRPgKHYwYDLuh
 IRjQ==
X-Gm-Message-State: APjAAAUNcZ7VhlD344b6ZsRDzcdkKPXx0VokLW+qFn9LhTHu733ot5cB
 kgKddSR/imA3sZoB0lHypSl9g1N7z4fu92DJSUA=
X-Google-Smtp-Source: APXvYqx5U4qXgJUFLodBAh/Su0iA4o4YjM2gOenS+CuMOI6/b0kQEpYd45al918MVd/znVyYVIAaXhGujEJ328y18VE=
X-Received: by 2002:a17:906:2359:: with SMTP id
 m25mr13932991eja.22.1579384843512; 
 Sat, 18 Jan 2020 14:00:43 -0800 (PST)
MIME-Version: 1.0
References: <1579220504-110067-1-git-send-email-hanjie.lin@amlogic.com>
 <1579220504-110067-5-git-send-email-hanjie.lin@amlogic.com>
In-Reply-To: <1579220504-110067-5-git-send-email-hanjie.lin@amlogic.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 18 Jan 2020 23:00:32 +0100
Message-ID: <CAFBinCAZ1iUKDnV2ewrT0ytXjVbpbZVpn-Ybj9caN4Od3Z0UEg@mail.gmail.com>
Subject: Re: [PATCH v6 4/6] usb: dwc3: Add Amlogic A1 DWC3 glue
To: Hanjie Lin <hanjie.lin@amlogic.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200118_140045_328887_E4DF7440 
X-CRM114-Status: UNSURE (   7.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rob Herring <robh@kernel.org>, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-usb@vger.kernel.org,
 Yue Wang <yue.wang@amlogic.com>, Qiufang Dai <qiufang.dai@amlogic.com>,
 devicetree@vger.kernel.org, Liang Yang <liang.yang@amlogic.com>,
 Jian Hu <jian.hu@amlogic.com>, Xingyu Chen <xingyu.chen@amlogic.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Carlo Caione <carlo@caione.org>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hanjie,

thank you for this update - your patch looks great now!

On Fri, Jan 17, 2020 at 1:22 AM Hanjie Lin <hanjie.lin@amlogic.com> wrote:
>
> Adds support for Amlogic A1 USB Control Glue HW.
>
> The Amlogic A1 SoC Family embeds 1 USB Controllers:
> - a DWC3 IP configured as Host for USB2 and USB3
>
> A glue connects the controllers to the USB2 PHY of A1 SoC.
>
> Signed-off-by: Yue Wang <yue.wang@amlogic.com>
> Signed-off-by: Hanjie Lin <hanjie.lin@amlogic.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
