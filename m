Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA031807FD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 20:28:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ptztWUVM3fcpREzKBAdnMuFkhH93gF0HTlqhW4wZ0qY=; b=spamQ3cIrQXazl
	bUKKAkZNhZ3eLh2sZv8yyqR80SNi769/ISEpjzVem5CqjQRFBc6xqSZMNu3WZeXw97emBfe9OS853
	YhrqcaEnrT/WHBGn6SzP8Q73lOySIPEzn34Em8Iuws/od5LvLi5v0bLF98uyqR8pblqca+o7KuORu
	P/4UVRwPkREa7RsCovihg7Wr++6WtSCJleMzBBE95X68/mDVTwYk5ku2baRzwaMw3U1Dju2/b2y4S
	6mHCLrAyR32sfa8xQ0xb0kGkWcpVVh2IxTfYyfODFvgr8KP8eId+/Kh7smYIg5qE5Ic4TZKo2+UM/
	844JQCzMi3sumUc4A8sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBkXo-0008Tn-UL; Tue, 10 Mar 2020 19:28:00 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBkXU-0008OU-0G; Tue, 10 Mar 2020 19:27:41 +0000
Received: by mail-oi1-f195.google.com with SMTP id c1so15123088oiy.2;
 Tue, 10 Mar 2020 12:27:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=2lXAOtfUNJwV/UZjRrVCvi9g1TVoJjiAHJ4McAxapBE=;
 b=ADrF9tWea2ll1a/LNi1JYrIb2P11eIYjfNr2qnmKTsYuKmYK74LQM8k0FSpdmcQK6t
 cpbLkOZTWDZBO/62L4yhRyamatYPHjQXM3b4ilzZYOwzpBTcCl1ICuTVxV4yP0ZYNr/G
 x/a4DfwETABgYAFH2r/pC9gmP7kcYN2EViYQ1ibzHtMSVWshFdS68ZXrj/zo8SByvTbV
 WWxkoOcqRYVQg4w7c9Y+8zEBp9W37khT5QWaP6FLRj0phPQi4iaL2QLMyER3tzuvtdhz
 MwcjxpfzXMkKvun3s37NKb/4/9zVi2jYMrU0GaL711eMFPV4jZwHfv6Jn7wBnKoUChT3
 HJAg==
X-Gm-Message-State: ANhLgQ1S1aJiUunBVjw37pFazrFFCOLkw9tVuqxQ6+zS2GkVHXRO3oWy
 /haqtpNR8M/0LOzfZd9nfixg3J4=
X-Google-Smtp-Source: ADFU+vtHlGSiCDvcMp7DplfwyvRqWh2+hg+grkGoN94UOz4kFCTNzNZ+btv/5xQ+r3ApEWQB3x7C2A==
X-Received: by 2002:aca:8d5:: with SMTP id 204mr2257269oii.141.1583868459024; 
 Tue, 10 Mar 2020 12:27:39 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id s2sm8970666otp.35.2020.03.10.12.27.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 12:27:38 -0700 (PDT)
Received: (nullmailer pid 14587 invoked by uid 1000);
 Tue, 10 Mar 2020 19:27:37 -0000
Date: Tue, 10 Mar 2020 14:27:37 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: arm: add Rockchip rk3036-evb board
Message-ID: <20200310192737.GA14520@bogus>
References: <20200302092759.3291-1-jbx6244@gmail.com>
 <20200302092759.3291-2-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200302092759.3291-2-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_122740_061281_47635FC0 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon,  2 Mar 2020 10:27:58 +0100, Johan Jonker wrote:
> A test with the command below gives this error:
> 
> arch/arm/boot/dts/rk3036-evb.dt.yaml: /: compatible:
> ['rockchip,rk3036-evb', 'rockchip,rk3036']
> is not valid under any of the given schemas
> 
> This board was somehow never added to the documentation.
> Fix this error by adding the rk3036-evb board to rockchip.yaml.
> 
> make ARCH=arm dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/arm/rockchip.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
