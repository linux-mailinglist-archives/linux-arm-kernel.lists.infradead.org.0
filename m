Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F571CF69F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 16:13:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SWa/CSfn2xDcBoPjww3X79oZ175VfkU0UR5F178cur8=; b=OuumftZPt0B+sc
	L07/pKw3bjDa8G8H5vAY/6xZ26cCdxD1fOSG9r8xN+0OQA4E1zXA7cRsuil368juP/GPv8zd5XPG8
	Lh//7Ewt6r9/fjY8Tiy3vvmSXRyzX1rK25ROmrib75qtp9LId8wiPCNQZ7hpPK7tst3ldQUEQIKYi
	iANPqaR/FW1TXgvlox1RGz9iPBmo/rGvGwKQVDcHHCVidY8NEXa/Q8tIUTKaqw8iSqkNpzORQQlht
	4/q0fqUln+LkG+3siEGZ9ctMdmcRDIembaCDhXk464n13st7+OVKuMhH6KjXYSeYah85mrv70VaOT
	0DZzi6T+PNXXK6uTD47w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYVer-0007zB-Oz; Tue, 12 May 2020 14:13:21 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYVeW-0007wg-RL
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 14:13:02 +0000
Received: by mail-pj1-x1043.google.com with SMTP id a5so9579132pjh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 07:13:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Ci7zKqD3gUAa4Ry13dacSM6dlpd7qZR1mlqQSLUNRDM=;
 b=O/qLDBHjTmJNZ4W1E9Qf7I7qcg6eamfI+POItL7/mej0hX6DhjCfNdMtun9tUeSSL5
 3uEIkG+olE6RavA7Nz6gumINI0osXMpGfmZrF7Gi3IpxFqn7Fw4dAjRCi9HFxVoMkh0s
 WW74dtEp/Xndy66Sv0QFQVHgnWj8v9lY6LMdjDuz3qftrnH2zIE5CPU270kQ2uTCRX+E
 TJHyVDv+EQNnGK9lX1K0yW+sxwyYPbL1DvuYShy+ufo09thN1vq59owk018ZJp0wC/5T
 gX5sU79An1C83AYAqkLxM8me/QqZMV9bcCKGoV6CF38FfIl/iXAXND6KrmrxHiFjV2YQ
 A14A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Ci7zKqD3gUAa4Ry13dacSM6dlpd7qZR1mlqQSLUNRDM=;
 b=XUdN29gPAQECp3CowTperVYZD6bW1ZvYycwsGnxiie5cxbIdOMdq8bKhPJEkqJW9Pz
 KEXG5QtnZXgvPPHuyKts1Kz3qzQbf68/YrN6r9MgdE02TukR60qBOYl1FOPK6F12MYUu
 bdXwrvauNo4Luea3rVXBIWFgJk/xBZt05N1huLdHE0g3b89eXXQktjz6zZr6JEAyj7ez
 H9w1RBnjvPZkQMk4UsZeKplNGPCV2928SK2COgZ1KdmYMOUGmyu+MLNjHrqstdYztCbD
 YvJmr6M0AiJ0qczcnL2958ANqLQnM0zWP6egsrX4Df3Bmfv4ubUdAw1aMnYsh/bCsoxg
 pljQ==
X-Gm-Message-State: AGi0Pubaq2q9ed6InD10Kn4AJd4mAfrOSwAJBZKGxS9QizWnaIsvzAi/
 EfTi5S42B9hg3xnYCfnWcwpt
X-Google-Smtp-Source: APiQypJezn/TnyFOdcX7SBPrI3c2aWKI1uXvAlkdhblYFd0FY2muiujKh7MlqChB350C0ASDPTLqiA==
X-Received: by 2002:a17:90b:34c:: with SMTP id
 fh12mr26385247pjb.134.1589292779836; 
 Tue, 12 May 2020 07:12:59 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:6007:2f23:5151:5dd:ea86:4678])
 by smtp.gmail.com with ESMTPSA id 141sm12422236pfz.171.2020.05.12.07.12.46
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 12 May 2020 07:12:59 -0700 (PDT)
Date: Tue, 12 May 2020 19:42:35 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: matthias.bgg@gmail.com, robh+dt@kernel.org
Subject: Re: [PATCH 0/4] Add I2C controller support for MT6797 SoC
Message-ID: <20200512141235.GG5526@Mani-XPS-13-9360>
References: <20200222162444.11590-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200222162444.11590-1-manivannan.sadhasivam@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_071300_934784_03FC2A54 
X-CRM114-Status: GOOD (  16.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, adamboardman@gmail.com,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Matthias,

On Sat, Feb 22, 2020 at 09:54:40PM +0530, Manivannan Sadhasivam wrote:
> Hello,
> 
> This patchset adds I2C controller support for Mediatek MT6797 SoC. There
> are a total of 8 I2C controllers in this SoC (2 being shared) and they are
> same as the controllers present in MT6577 SoC. Hence, the driver support is
> added with DT fallback method.
> 
> As per the datasheet, there are controllers with _imm prefix like i2c2_imm
> and i2c3_imm. These appears to be in different memory regions but sharing
> the same pins with i2c2 and i2c3 respectively. Since there is no clear
> evidence of what they really are, I've adapted the numbering/naming scheme
> from the downstream code by Mediatek.
> 
> This patchset has been tested on 96Boards X20 development board.
> 

Looks like this series has slipped through the cracks...

Thanks,
Mani

> Thanks,
> Mani
> 
> Manivannan Sadhasivam (4):
>   dt-bindings: i2c: Document I2C controller binding for MT6797 SoC
>   arm64: dts: mediatek: Add I2C support for MT6797 SoC
>   arm64: dts: mediatek: Enable I2C support for 96Boards X20 Development
>     board
>   arm64: dts: mediatek: Switch to SPDX license identifier for MT6797 SoC
> 
>  .../devicetree/bindings/i2c/i2c-mt65xx.txt    |   1 +
>  .../boot/dts/mediatek/mt6797-x20-dev.dts      |  49 ++++
>  arch/arm64/boot/dts/mediatek/mt6797.dtsi      | 229 +++++++++++++++++-
>  3 files changed, 271 insertions(+), 8 deletions(-)
> 
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
