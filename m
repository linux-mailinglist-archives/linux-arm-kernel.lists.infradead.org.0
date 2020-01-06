Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 033501316D0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 18:29:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0TsN/kpsqmpdOztublo315GOr04Co4VbSUmc1909MKM=; b=bMmgvQi2EgqiRo
	us4rHvTGkukjEUY0LXI4qZuiM4kj13Ds5gWuZmpaH1qJjeG+/vT9dKBx3DTM3+hAwL2/djedWWGlf
	TrtdH1QsXt3kDLuiUqIediLglJv6bNJT69OlP+a/GamdfCCg/PYv+qvTk9xzMueciSmYLyfvbmsSY
	OGt03CrTx7Hpa0ShO2uaEY3ZV9Gi3FF+7nxcEPgapWtl3BcaqdIzS3uOcgk4JAcKlvkn4k3jQ/v/C
	01priyMNErf5WQ4dfvK1q1I3bkzph7TmRMzknMoo2crHU2dd/UoKH0qRC6/cyGmryCI/7cloKIZQk
	zDHIxaZkPTk4PsQbddew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioWBs-0004kl-Vq; Mon, 06 Jan 2020 17:29:20 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioWBl-0004jM-K3
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 17:29:14 +0000
Received: by mail-qk1-x741.google.com with SMTP id a203so40474269qkc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 09:29:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NxZmBvBguF1JcQOjsls5F30x6tlo9ctviEfiJvkYBfs=;
 b=J3cwtQO+u6RU4bfiCikVMB7Fvel/CoINo9oGSTbye/Gz0zWBDvkBkc6C6gmykLkmM6
 JolbSRBFZU94D5vJ3a5toJ/T7sHV+rsuSHvKkqRlFupT4yJ78XKiFP+5d5QfOTEzfH2Q
 MkJInwxDkUjsPhFCEGjgwGZMjHISfUCmKtiQlu7RtgRHoU7eaCP8JANW92zT2HAu5jam
 idoOXB+SzZwp9Kp7VAesfSmgtvlo9Aq1lpIStOwv8wTSiJLOLovH6gkMIXKoe21pGL/W
 4xDNsapUPCoyQIbUDU4+4Hxr/o06UlgyyjD4B2dHK/1JuupEDhrbGrTM00ppNuc02WII
 df/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NxZmBvBguF1JcQOjsls5F30x6tlo9ctviEfiJvkYBfs=;
 b=nFvkt3E9GqsMjm2qGCqYoYBOnKLfZKiroOd7Ad39UVdGB+MYsLG0ZQYyPINE/e/GZ5
 ujPNFOAeTFWQAFs2WvrYanU2H1Z+tninX8/tDzX+NfjoLkErwJTtM+zvUNZMVhjsFfKG
 ghVlXtiUxpnt5o0gsSGdmwllbGUmVD25uSTa3CXa71248wd2aonw+1JryyzesQhAufgC
 pMIYF4FyHDxAm8KCkFerFVXoAB+AQqNyi2VX1/pZ4Ye/J5QKxbGccq0PD9KPYFS3zEKJ
 iwC3/Fg7fm9tnGSKBZZ+nJ9wHgASHFZum48D8Bbd9c5C7i/EDr9Z+S2weaFgJwxNlQqf
 HJlg==
X-Gm-Message-State: APjAAAV8eWGRxiAPYViBmzHzMTKWLzniPXd/r9OzTgATHlzqIgGIeanq
 U1rsDT7aJtHqgkM3bT1GdMyFLIswgYC7zQF72nM=
X-Google-Smtp-Source: APXvYqzcdm+2thl8HHqrCf9rsaN4i4OXg2U/csojMViUWqozVnMmtx0KDP6ARuGZL/t+re1lAMRRufOeZ8f7BmmPlgs=
X-Received: by 2002:a05:620a:918:: with SMTP id
 v24mr84077158qkv.22.1578331752458; 
 Mon, 06 Jan 2020 09:29:12 -0800 (PST)
MIME-Version: 1.0
References: <20200106172254.20271-1-tiny.windzz@gmail.com>
In-Reply-To: <20200106172254.20271-1-tiny.windzz@gmail.com>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Mon, 6 Jan 2020 09:28:46 -0800
Message-ID: <CA+E=qVciDPXrHCGsHR7mjFuaGrv_K21ZAdWW28_fnSV3CvEDCg@mail.gmail.com>
Subject: Re: [PATCH 1/2] thermal: sun8i: fix r40 ths number
To: Yangtao Li <tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_092913_685561_457D93E3 
X-CRM114-Status: GOOD (  15.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Linux PM <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 6, 2020 at 9:23 AM Yangtao Li <tiny.windzz@gmail.com> wrote:
>
> According to the spec, r40 has 2 thermal sensors.
> Sensor0 located in the CPU, another in the GPU.
>
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>

You should also add "Fixes" tag here.

> Tested-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> Tested-on: sun8i-r40-bananapi-m2-ultra
> ---
>  drivers/thermal/sun8i_thermal.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_thermal.c
> index 23a5f4aa4be4..c5661d7c3e20 100644
> --- a/drivers/thermal/sun8i_thermal.c
> +++ b/drivers/thermal/sun8i_thermal.c
> @@ -565,7 +565,7 @@ static const struct ths_thermal_chip sun8i_h3_ths = {
>  };
>
>  static const struct ths_thermal_chip sun8i_r40_ths = {
> -       .sensor_num = 3,
> +       .sensor_num = 2,
>         .offset = 251086,
>         .scale = 1130,
>         .has_mod_clk = true,
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
