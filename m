Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EDA6D6A58
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 21:50:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lxRiiIQ2gS9QdMN96HTqIAgwg2nJ8ffxLnKc5lh+4M4=; b=JLdN4K9qIIY1bG
	ioo3jUu0mBHcKIjj5JcImoQMlL6amu3X2nZ3nrIl5Ntz25A+7sX0LBE7wFqXzNeLWLbUwmVhXbyTM
	3V4IJUljkppiwYBWaKzihDiveR0GKNqyL872YFsOkjc27z4imPBdm8sRHmDUVEKVqv0m0lWXNl6zo
	CJ7clE941BtBASlaIFb1EqWfPvanWqfmuxcRkVaj42km+YjPfBe/vospBOrEh7Rws/8/lhUS6MApm
	ukfR8NLKD2oildGRuyOFxP2c6fKSkdbgNyGT64LXGgcNhwKFyehx0siwstjvSq9niUgsFL0Cbf+Xt
	j1f9EzQy2zSXI/8b91gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK6MB-0002vZ-Qu; Mon, 14 Oct 2019 19:50:16 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK6Ly-0002UB-PF; Mon, 14 Oct 2019 19:50:04 +0000
Received: by mail-oi1-f195.google.com with SMTP id t84so14752935oih.10;
 Mon, 14 Oct 2019 12:50:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NxhCCxPZ2FpXlTCWZLPNlVYro5ejAF3sMPqwp32yhUc=;
 b=SjRo+XC7HfZT/AOWlmXtxPm00liRBCUGbXtZ3ToGjrPkEcaEKeE95Xa/qadqyzkKh5
 eVJbObQKbDHptE1lO8hMzRy4XRwZ26gTt1AQbFwOXnwMhBQS//gCkCyrHIoJZsVjnZss
 kG02w1m0lvWiUTHNm52OTeNlJfMiOuk2PbXfrpyJBxC0YYSRzDtweACcbpNealdquXL8
 e6UpveecYXJFM4SL3orkNYugr0HjJvJqORB5LNngxhRkAchHKm9JsMupHSBI+0jMy3XH
 nBStjsYJ7nCam72Sq2JRwrWFRs9NzowLpuT26XYp5NIFbV8jKpAmvgUGJpLLI313judp
 +zXA==
X-Gm-Message-State: APjAAAU1yuiTvtOx2047GsW9FOwdLANnd9rsX3IYelQKh7vBTRmplkZ5
 NC434neOe0GSPsEkmcJZCQ==
X-Google-Smtp-Source: APXvYqz8cLeQnVPXfJbn0yMhk9Ft8PU/gotpH8mO+4vzmJUPaFtR7C1fUMAwi6LrI3V2N7Rln4VRXw==
X-Received: by 2002:aca:370b:: with SMTP id e11mr25053138oia.96.1571082601381; 
 Mon, 14 Oct 2019 12:50:01 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id f205sm5792922oib.11.2019.10.14.12.50.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 12:50:00 -0700 (PDT)
Date: Mon, 14 Oct 2019 14:50:00 -0500
From: Rob Herring <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 1/2] dt-bindings: nvmem: add binding for Rockchip OTP
 controller
Message-ID: <20191014195000.GA17233@bogus>
References: <20190925184957.14338-1-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190925184957.14338-1-heiko@sntech.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_125002_841850_4BE9F979 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 srinivas.kandagatla@linaro.org, linux-arm-kernel@lists.infradead.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 25 Sep 2019 20:49:56 +0200, Heiko Stuebner wrote:
> Newer Rockchip SoCs use a different IP for accessing special one-
> time-programmable memory, so add a binding for these controllers.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  .../bindings/nvmem/rockchip-otp.txt           | 25 +++++++++++++++++++
>  1 file changed, 25 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/nvmem/rockchip-otp.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
