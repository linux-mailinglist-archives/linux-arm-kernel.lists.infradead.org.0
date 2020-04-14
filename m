Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B761A8812
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 19:57:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Xgqg2467XL6C9oHL2tUzO2F41VxqqBXdEnGgIxZG3k=; b=N3/QaXR91mgYv5
	RNWzuhpnoWUBH2GecXKWTLiNUFgmOxBIsGhqLFzumQ3KlT9OZ1TZ6kwCh7KDdVXCCTTpFK9c3v6kq
	vlegbUl7Gcv4P/rHDQc96dd+aIQnYQGvpMaMNNKbnxusrRvtjlePk87VlQfkWL0jGFRPXzayJjE+j
	TZsHDxqcntwZ5g+nFhqN9kpu51d5bGre5xoVTx8UI+jwI5TYNxXCftrg7u45jZNCIops/ladcnwQ6
	rKBlColPE8cNi5YK26T2dy2zSYIUgVweSkFaZP1X6fsaZp78AavqomLFJb5AyaA1htr5KlAdk5+TA
	mQKx2j4EPptW2wqLBD+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOPoR-0007BZ-EM; Tue, 14 Apr 2020 17:57:31 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOPoI-0007BA-Jt; Tue, 14 Apr 2020 17:57:23 +0000
Received: by mail-oi1-f193.google.com with SMTP id o25so11168253oic.11;
 Tue, 14 Apr 2020 10:57:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tK0IFUlYSFlpwtU3mw9yw0HRR5HEG0AfQTUoX3ZwpXE=;
 b=UNEHZPs6M7IfbxCYhfldJTJW8SulSHICj3k60uwCVeHA5Uznl4eMP2+X4e9gUviXHs
 ML6iYH8tDDfxcxsgB1NRTA9SNc4YuxRffpPwMoALv85hcQIynvOhuk0OFGH2D8wColMD
 VGX86nueapnoOld7d74wD9bN+b5O03f87i1p73omZpQzwt5hIhqqU00UWGiKq82Afv6e
 p9nacij7r11AErEUrhk+uH8gLBC2txTk1uZ+SBIRxbovCvewOyuaf7rkMmPZvJFxyvP5
 J5KrUH2soFNJBhK69uSBFqtE8r8iEhFvIwLeeVL0DVtt47TVCN7WwF5tYWhHdoLvCbmr
 c9Aw==
X-Gm-Message-State: AGi0PuZyrfvTRO3yeqb23e+L0eDi3Tir8YfWK5G7zMa2CjRClIDZ/784
 ObTaMG1LxSFC37wqk3pARg==
X-Google-Smtp-Source: APiQypLcyf/n6ci6IwSg1aCxtAmgXiXqH5mqKWHgDXSYiQU4A+MiKq/SoER9LlqU1vkuA9hod5P3/A==
X-Received: by 2002:a05:6808:b1a:: with SMTP id
 s26mr15506712oij.150.1586887041653; 
 Tue, 14 Apr 2020 10:57:21 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id j90sm5689967otc.21.2020.04.14.10.57.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 10:57:20 -0700 (PDT)
Received: (nullmailer pid 29896 invoked by uid 1000);
 Tue, 14 Apr 2020 17:57:19 -0000
Date: Tue, 14 Apr 2020 12:57:19 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: media: convert rockchip rga bindings
 to yaml
Message-ID: <20200414175719.GA29816@bogus>
References: <20200403130607.6138-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403130607.6138-1-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_105722_655127_431343C5 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 robh+dt@kernel.org, linux-rockchip@lists.infradead.org, jacob-chen@iotwrt.com,
 mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri,  3 Apr 2020 15:06:06 +0200, Johan Jonker wrote:
> Current dts files for Rockchip with 'rga' nodes
> are manually verified. In order to automate this process
> rockchip-rga.txt has to be converted to yaml.
> 
> Changed:
>   Add missing reg property
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> Changes v2:
>   Change MAINTAINERS
> ---
>  .../devicetree/bindings/media/rockchip-rga.txt     | 34 ----------
>  .../devicetree/bindings/media/rockchip-rga.yaml    | 78 ++++++++++++++++++++++
>  MAINTAINERS                                        |  2 +-
>  3 files changed, 79 insertions(+), 35 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/media/rockchip-rga.txt
>  create mode 100644 Documentation/devicetree/bindings/media/rockchip-rga.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
