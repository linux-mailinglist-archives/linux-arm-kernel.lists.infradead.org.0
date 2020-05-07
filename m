Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B5D1C9DE1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 23:49:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wcm0PpRwJ8S7IQBYWot8GD9juNCM9mVOPoj8SBcjmfs=; b=TYSAj5qItscoQw
	e1uY/RXtgb78y3fYox8UONFkftw0qOkHixaK3XxY29H1v91u9Z9paiYbwZooCK2GocBoejTN7qofp
	EuSy8VXf286qiGP6RGgE8OesOiw/6hbQ49Waa/SYH2zmuyp1qWuIYXgiPBab67QU+2yBoBucpZPv0
	UokXAYVwjcrIbd2wwK68KAerpCLt8o4c6zziBB6lZ98kaeCcWnMukg9tkkT9cJYosPPJtmTQlUBkR
	f0bDj/5EbJ4BuSVF6l+rNpQl2XB3CvdlMvHBXyk3SOlzanKzvsb7jyuVJ9sSzhIOIZjJJ1r/h54KO
	cuU1rPMpkjBlcIYCp3Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWoO8-0003im-O7; Thu, 07 May 2020 21:49:04 +0000
Received: from mail-oo1-f66.google.com ([209.85.161.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWoNx-0003fR-FS; Thu, 07 May 2020 21:48:54 +0000
Received: by mail-oo1-f66.google.com with SMTP id q204so1710935ooq.1;
 Thu, 07 May 2020 14:48:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=jyOvNQA3NJg04Vl3qR1GzrBNciXfg5ndlqMgNxLCmlc=;
 b=DqIPVVle9eDBdG8wta5Czx+cREradsksvjZ6jgndxyCSLCoq8TcT91GRXk1JDJ3+10
 2wsIaVNCX/M6YPVQG84LdhilGKeppUdwQRmdTt/WbynJNjOMQWAoz2dhLhMi9L8PHh4Y
 WNJcfy/fyQB4LX/nLsya221ZjfxnSyjR4Y5s3Bl1zEFu740UVp+oc+QzO4NMObmQaXfS
 dJ74+eUxCT/bK+vBjX38sHZpNGktr7eyL1l084tivVbPYseXfor8Yg8bcBx380L207FY
 mTShH1EaBGgKGAZ5T71hKltch8UdPtTZN24avEfTRYViD7hoWaI6hLSztGKou57VM+2R
 W+Rg==
X-Gm-Message-State: AGi0PuZLGA3XQFhdtNzGnn48NrEQmodk92R+NIIwiRxGsx8Pw5YUH4fn
 KjnMCai1VCwZGsUM4ul5vg==
X-Google-Smtp-Source: APiQypLUtvbcTjpx1yfWVlo65zNy+xaZJq/gtce6iSrajljmwU9lTh5B9bBFI0KXlmfUjhwEd5baxg==
X-Received: by 2002:a4a:d8d7:: with SMTP id c23mr13689851oov.8.1588888132533; 
 Thu, 07 May 2020 14:48:52 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w205sm1725186oif.26.2020.05.07.14.48.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 May 2020 14:48:51 -0700 (PDT)
Received: (nullmailer pid 32707 invoked by uid 1000);
 Thu, 07 May 2020 21:48:51 -0000
Date: Thu, 7 May 2020 16:48:51 -0500
From: Rob Herring <robh@kernel.org>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v8 1/4] soc: bcm2835: Add notify xHCI reset property
Message-ID: <20200507214850.GA32592@bogus>
References: <20200505161318.26200-1-nsaenzjulienne@suse.de>
 <20200505161318.26200-2-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505161318.26200-2-nsaenzjulienne@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_144853_513305_A8655745 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arm-kernel@lists.infradead.org, f.fainelli@gmail.com,
 Scott Branden <sbranden@broadcom.com>, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, tim.gover@raspberrypi.org, helgaas@kernel.org,
 wahrenst@gmx.net, Ray Jui <rjui@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue,  5 May 2020 18:13:14 +0200, Nicolas Saenz Julienne wrote:
> The property is needed in order to trigger VL805's firmware load. Note
> that gap between the property introduced and the previous one is due to
> the properties not being defined.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  include/soc/bcm2835/raspberrypi-firmware.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
