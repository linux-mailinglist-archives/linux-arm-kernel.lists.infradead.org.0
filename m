Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D586BE7AA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 18:23:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CKhQ3hgEIHq04pGepDgsdd4bsaRPgeaqVemHQhuC684=; b=foe+HluB+c6Nv+
	mC94FTlhzcQf1cetGS5oL2KMW5Zo4zg6fbyL+gPMIsTkzX4foaWzzfbDIzDeI5iDSvrg+bpFSk+N7
	8W8Y4RrMBKh4c1BM6h22i/1v1sjk1hSnttw1NeR/3OH7gI3V5Gf2eR/NSaH/03WmzEatdkzs1C3oV
	5kfyss7SepaRv6MaibLcAAxc8GR5qfToAx/x43+oSS8zEIFEf8Re+6QbrsF1UlWvhcZD+XnuCVE2e
	hwgF6jeU1gywlOTXXbb+1lqo9nut4KTH36fCfEI6ECEsEX0ccooqEEV68UuVOPTjVn7kKAcwq3aEY
	cPx02g7pBPyAC8syE0Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL93r-0002kc-HF; Mon, 29 Apr 2019 16:23:23 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL93h-0002jA-0D
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 16:23:14 +0000
Received: by mail-lf1-x143.google.com with SMTP id k18so8331406lfj.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 09:23:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=AwvW2Sw1jJOmOQddvwLSFW4cG8dGJ1Do6II3a9O1zoI=;
 b=iFEXaFObvY189R9O6l3iWMTRWtFKPY0zWdzK/fxBjlpv6D3QdYLwLY+tr+zJwgXsqz
 zUe6W/7I48Zzbb2pecCf15QScGxIQCQSwFpMABilpWYZDX55LjGq/dz/2MWBpWROf91e
 39ZS0Xa4njzHBYhxDJmT1InexIN2b1rzYTLRBZO3zjFuYj6x/a//iMTOJaF4w073oR6l
 /8eDpjPYOoB2mkx9uGeWL/RWoXCLwwLVKebN0QB13NGyn6W7N/0UHAz7Wq3NoQPDyen3
 iGbGP8AqRDGpKnjtXxLXdhuU7I1BqsOdVBjrLqBKp6yl7TcFQA3M5BfEjU67fGlv8JaN
 oElQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=AwvW2Sw1jJOmOQddvwLSFW4cG8dGJ1Do6II3a9O1zoI=;
 b=QZXeu74GFPjomdYu9MEEgKy/qAaBHsHN7vZEmXaz8yYA4oaM6Qlr8H22xtBlbGfh2O
 m1edElK6BSeNk2bYoCjtD81Hse22z4rJpo6EGx5AulTtZQr/+NSElhtfC+s+9ydqeuQH
 4GgOJ1TDqVV7YFyxOXA63INJm0Q/lVKXQt1/4P0UFw6GPmctxHnJ7xlA9QrzyNbwwYjY
 TfHrZ89hVlaUVwMYXFHervLueCW7X3JjJN/OmMxrECcUpzJtSQsijtYjJCOCz6d1Ns8B
 f5oeDlJMpVVFJkr4BAPMup6fe1dn3qR9VSR56QtMxO8PQKnaAG1qYW1KVI+YQKzsstj7
 z9VA==
X-Gm-Message-State: APjAAAUG50zIKafq7X1Ge+m6pH6ZFP05ScZGJhdMIHsOVsn0XMRMWjxq
 eLO1eQLO+SRjVik0/kEO1/biKA==
X-Google-Smtp-Source: APXvYqx1IW8psVF22hlNploxE9rUHpgiVb7MpkUoeBu2BcCSTaydaClqyLV6oVYUIminTqj23i52QA==
X-Received: by 2002:a19:f50f:: with SMTP id j15mr34123230lfb.135.1556554990909; 
 Mon, 29 Apr 2019 09:23:10 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id d5sm1984015lfn.36.2019.04.29.09.23.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 09:23:09 -0700 (PDT)
Date: Mon, 29 Apr 2019 09:20:41 -0700
From: Olof Johansson <olof@lixom.net>
To: Michal Simek <monstr@monstr.eu>
Subject: Re: [GIT PULL] arm64: dts: Xilinx ZynqMP SoC changes for v5.2
Message-ID: <20190429162041.jd5fkkutlxgo55qq@localhost>
References: <2bb66114-c976-9c44-6db3-33a5dd12edde@monstr.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2bb66114-c976-9c44-6db3-33a5dd12edde@monstr.eu>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_092313_046586_5E6D86F6 
X-CRM114-Status: GOOD (  18.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Moritz Fischer <moritz.fischer@ettus.com>, arm-soc <arm@kernel.org>,
 linux-arm <linux-arm-kernel@lists.infradead.org>, Alan Tull <atull@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 15, 2019 at 10:39:04AM +0200, Michal Simek wrote:
> Hi,
> 
> please pull these patches to your tree. I have also taken fpga series
> based on agreement with Moritz and Alan because it requires changes in
> firmware interface. It is the same what we have done last time with
> reset and nvmem.
> 
> Thanks,
> Michal
> 
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the git repository at:
> 
>   https://github.com/Xilinx/linux-xlnx.git tags/zynqmp-soc-for-v5.2
> 
> for you to fetch changes up to c09f7471127e9debf3e814ffef4f4012c31a5a3d:
> 
>   fpga manager: Adding FPGA Manager support for Xilinx zynqmp
> (2019-04-15 10:23:18 +0200)
> 
> ----------------------------------------------------------------
> arm64: zynqmp: SoC changes for v5.2
> 
> - Add support for ZynqMP fpga manager
> - Defer some probes which depends on firmware driver to be ready
> - Debugfs fix
> 
> ----------------------------------------------------------------
> Jann Horn (1):
>       firmware: xilinx: fix debugfs write handler
> 
> Nava kishore Manne (3):
>       firmware: xilinx: Add fpga API's
>       dt-bindings: fpga: Add bindings for ZynqMP fpga driver
>       fpga manager: Adding FPGA Manager support for Xilinx zynqmp
> 
> Rajan Vaja (1):
>       drivers: Defer probe if firmware is not ready

So, this branch has not been in -next, since it introduced previously
not seen build errors. :(

Patched up locally, following up with patch here for visibility (already
applied).


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
