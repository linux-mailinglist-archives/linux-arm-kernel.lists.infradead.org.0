Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02DAF18FE3B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 20:55:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NIobZrzzOdlsd4ud7VQv1qOtKp7eF8JLA+sJobucbRE=; b=Ag0h1y/iGlxENp
	NeQAER2kaNCEgm2LlDVMBJqGipYFkjIOim2k/AdsgDKQb2rmn4auZoWEieq1FxU4guFmqxqeczlXh
	SYHNfhMIC+QagEA5G+MWadw9P+ihk2qlAMrPBTRrKRtq7wJvDnWYSJsR7+LymFnNwd1frUolW4Coe
	PYxDkyUDGac6lf3NJLDsF/DBYOIpOKRv2GoPsOj0RKAqd7qLZ091+Sf9aUz/RDVxZhKim/sGl80t0
	2P11fqgbMW0StlWJYmNchmjXjKUPviebHea5aC/DGqNB5m3x3evgvb+pAmxIBXsHKyCNjWglz5bd1
	yFA3T146PCXQCrhWN5WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGTAp-00034H-0a; Mon, 23 Mar 2020 19:55:47 +0000
Received: from mail-il1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGTAb-00032w-Qr; Mon, 23 Mar 2020 19:55:35 +0000
Received: by mail-il1-f196.google.com with SMTP id g15so5409815ilj.10;
 Mon, 23 Mar 2020 12:55:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kFJFA9AgWvFk/kEnU8vamRR2gWaNyHgegYHT2Tyfw1s=;
 b=PcLwydHDy6GkcE+locWolQn2PtuS+nJsTNIlhfIKVJPH8F1rofQH1xuc5FKKhk45xM
 JogM4s7jE4HLBXvJx6Q/m2+RgA5DAzknZuvou3l4hKmuDb6HEu8j0lftyCbZ051hQtM4
 T43dWHY/ISj2eH+T8o+1ikVfKIsnYtJJgSIdcRh385mAZg74D8pMc8Hl6RYrq2bcxNba
 Z3RGRshClqkY1XRTyQBx3cwDalSoKreOy/UO494FmfkxJotzOyEYbV/RaQF3ZyogL6YX
 IP4eNB1oP19vFNRWW8EwVRy+6zWMsdatqBqAlUK4I0A/dW22McfVzOno752V7PkFIARi
 0Jpg==
X-Gm-Message-State: ANhLgQ1gZ6KEGX/8oCNHbRfVb5nWYjxtIbCBcmOCkpBl9UJdDZvDmpIw
 kr/1DrwXqr+2JozFrf+Lkg==
X-Google-Smtp-Source: ADFU+vvuzRa31naxtDjJTr2hNuD1sIvCIOHJrm60YMlQcXIoc6vaYFq5cIIV9MqEbf92kT5yUeZ1Ng==
X-Received: by 2002:a92:c790:: with SMTP id c16mr393841ilk.206.1584993333182; 
 Mon, 23 Mar 2020 12:55:33 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id l17sm5488218ilc.49.2020.03.23.12.55.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 12:55:32 -0700 (PDT)
Received: (nullmailer pid 6267 invoked by uid 1000);
 Mon, 23 Mar 2020 19:55:31 -0000
Date: Mon, 23 Mar 2020 13:55:31 -0600
From: Rob Herring <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2 2/3] dt-bindings: Add binding for Hardkernel Odroid Go
 Advance
Message-ID: <20200323195531.GA6201@bogus>
References: <20200308223250.353053-1-heiko@sntech.de>
 <20200308223250.353053-2-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200308223250.353053-2-heiko@sntech.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_125533_871282_C715837E 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, heiko@sntech.de,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 kever.yang@rock-chips.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, jbx6244@gmail.com,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun,  8 Mar 2020 23:32:49 +0100, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> Add a compatible for the Odroid Go Advance from Hardkernel.
> The compatible used by the vendor already is odroid-go2, to distinguish
> it from the previous (microcontroller-based) Odroid Go, so we're keeping
> that, also to not cause unnecessary incompatibilites.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
