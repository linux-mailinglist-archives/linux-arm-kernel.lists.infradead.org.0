Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3CE1C7AD9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 21:59:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LRxf6GdDBfYpsxLWTuJuc+Zl3QkWoaO59IcLOdAJP8s=; b=AX2RtAYTodGGEU
	djdDCdIoMhaNoqyzUUZLgFk8CfJ10vpQW72SJZjP76hZ2T5ajcrxGBOXeQtQJRIHej3BQDuAn4a/5
	UeibhOUhLrOnyau35ws9/9tMA0uhs714dY+GAH+pT004RFYCSWn5onhkqfJsEbhEWihrbzud98HKo
	NxyLW06aGQNLMwTRbIckMwxBNF9DMKWykAoptG8kjk1GruIXoAcHQIGS7KVLGXEqp2B9vT4DSH8bi
	T2u3X6k2GbwkbImM9nwWQqvZshhn7vjZY9vCOanycazjnBY6iijjBue3m/b06sZIKVaKIJauFowKh
	8TsVgY1pwAd1I7V662VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWQCW-0001nU-O3; Wed, 06 May 2020 19:59:28 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWQCO-0001mz-0Q
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 19:59:21 +0000
Received: by mail-oi1-f194.google.com with SMTP id j16so2892716oih.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 12:59:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bO0DJaCUE0XKssvRg38lswObA4y7SjfSv2q1CR1u7z0=;
 b=n5QUo2nakibCXsTBY+OCDM/tQEX8y5iG7O96gsucPmLPgpA/UBruc4Uw+WnOwmoida
 PFVOs7rBttpAGpjMSbAhlx7+/533zgDHao3kxaUS6opyDG7NGPqjUqB4FMHD8kCOnGhm
 B+h9eeBWCWpt5P4jrjuH7ZzBNQWHCPid0ylRKHQ4DxRjjuGxLjhvEbvDy8xzAD7GixH4
 YeRRWoUwXxwsxKIA6M1y6ECK52FKW7sHE3O0YbEO0q688HiJp2psq7yHskw8F+W4R9qP
 EmIE4oEVridVT5RIXtxApxdREyIHXsyWG6L5tMEuFMo//3Jes6SgGdR2rWra/FJDgkPN
 QrBw==
X-Gm-Message-State: AGi0PuaBh7ic4kJTmPFS7SAyqhhTJYB0JN5t7+l5qH1X8qMv7NiG1SVd
 4hspDjltZI1oefaPL2EF85oTs5s=
X-Google-Smtp-Source: APiQypLR5WjjYamVAcv6tfzD1IA0+5vseecA/FXkvzZpzsWL3ae3CrTRLxA9Orkli3Z7VBOdSdow2Q==
X-Received: by 2002:a54:4811:: with SMTP id j17mr3960001oij.29.1588795158503; 
 Wed, 06 May 2020 12:59:18 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e13sm767826otj.46.2020.05.06.12.59.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2020 12:59:17 -0700 (PDT)
Received: (nullmailer pid 22166 invoked by uid 1000);
 Wed, 06 May 2020 19:59:16 -0000
Date: Wed, 6 May 2020 14:59:16 -0500
From: Rob Herring <robh@kernel.org>
To: mani@kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: serial: Document CTS/RTS gpios in
 STM32  UART
Message-ID: <20200506195916.GA22126@bogus>
References: <20200420170204.24541-1-mani@kernel.org>
 <20200420170204.24541-2-mani@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200420170204.24541-2-mani@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_125920_054695_F22FA1FB 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, alexandre.torgue@st.com,
 Manivannan Sadhasivam <mani@kernel.org>, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, andy.shevchenko@gmail.com, robh+dt@kernel.org,
 mcoquelin.stm32@gmail.com, linux-serial@vger.kernel.org,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 20 Apr 2020 22:32:03 +0530, mani@kernel.org wrote:
> From: Manivannan Sadhasivam <mani@kernel.org>
> 
> Document the use of CTS/RTS gpios for flow control in STM32 UART
> controller. These properties can be used instead of 'st,hw-flow-ctrl'
> for making use of any gpio pins for flow control instead of dedicated
> pins. It should be noted that both CTS/RTS and 'st,hw-flow-ctrl'
> properties cannot co-exist in a design.
> 
> Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
> Signed-off-by: Manivannan Sadhasivam <mani@kernel.org>
> ---
>  .../devicetree/bindings/serial/st,stm32-uart.yaml  | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
