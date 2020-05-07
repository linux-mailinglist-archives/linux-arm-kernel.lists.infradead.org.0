Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C38A21C9DE7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 23:49:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4W8B4N3WZYxVdp/Rev3k4az4rkJqTvVOY/5T45d+6WM=; b=kacNQOEgsaXfFW
	u+LmBLK/mJf3avvdEYK/0orHIgBZNvgF16YoUoSclwW37cc9E9JYRWEBiAbAnkm/cq6m95+qDz0Nd
	4v35evnDj6jpIBxwjmyMpEskGiKwZ8gN3dpOBdh1Va2tt6vHkl0/u1zrDmVNRm+7C0zwpGmh+ws+j
	TPB3jl80GiMPQH1RyFkgp/JuCAgFd/Mu+3Uy+7BDmtkTKwvGT/PKPjwLZZmpx18f+rer8NkEKDiXI
	CkWKk9Sh/oKDacZ0+si1V/+dWhcDuSEy2yMqTEYqFPsBPi1IdxblZxQKuG5fSrfGlSN5J5vtTmYOK
	PAwX1qpQQ0/UWRQoCuNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWoOj-0004KV-N7; Thu, 07 May 2020 21:49:41 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWoOO-0004Dr-DA; Thu, 07 May 2020 21:49:21 +0000
Received: by mail-oi1-f194.google.com with SMTP id r25so6614720oij.4;
 Thu, 07 May 2020 14:49:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+K99SXnOq1F0ZjGFhanj1w7QeN74kq3HeaG8Lj+To9M=;
 b=lK54zGFn84y6nfrWuNj4px08yR8x8kuntHgkkzVgIW/eMU9MI4Cjd467wJmyYvF19R
 Xo4WXlwvmAiVyKjjQCOrDtNzgXaXQZnAQW+vaEvK3kVcBYSSJroz/qeFN3mUNjPHq7f+
 Yg3FNTNpvd2GBizu3KTegQLvdHGD/u/c6pRvEooCSvVcdacL1D173MpltvM5suVJUoNX
 Ulsnp3qffcPvRSkt2wO1EzYjGIZDApnOy8JySvmcaL5hUPADzTZdHYBl1i7v+avhFucc
 qAf/khEX5V955IRz2RAd/kJ/p+k8KBq3qzlO9ZAhSRhQFaXdEf5qLDlFScH6iSFYCJF8
 M1Ug==
X-Gm-Message-State: AGi0PuYG+xzcGt/R7diN75+3LQsvrQBZJ72YVr56n7PTuHuEfYMG8bt+
 etlkiPkYkPLyfLTNyD4qNGKurX8=
X-Google-Smtp-Source: APiQypKdSAfXlYDSJkrzlHUQWVZ3sDz1eGY4XlY4moRp5cxhz0qwaJnHQ2p2QyHEOMcpweAS8N35kw==
X-Received: by 2002:aca:447:: with SMTP id 68mr7898114oie.94.1588888159223;
 Thu, 07 May 2020 14:49:19 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id b25sm1671203otj.7.2020.05.07.14.49.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 May 2020 14:49:18 -0700 (PDT)
Received: (nullmailer pid 1308 invoked by uid 1000);
 Thu, 07 May 2020 21:49:17 -0000
Date: Thu, 7 May 2020 16:49:17 -0500
From: Rob Herring <robh@kernel.org>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v8 3/4] PCI: brcmstb: Wait for Raspberry Pi's firmware
 when  present
Message-ID: <20200507214917.GA876@bogus>
References: <20200505161318.26200-1-nsaenzjulienne@suse.de>
 <20200505161318.26200-4-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505161318.26200-4-nsaenzjulienne@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_144920_463672_BC9A59D2 
X-CRM114-Status: UNSURE (   8.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
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
Cc: linux-arm-kernel@lists.infradead.org, f.fainelli@gmail.com,
 tim.gover@raspberrypi.org, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, helgaas@kernel.org,
 wahrenst@gmx.net, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue,  5 May 2020 18:13:16 +0200, Nicolas Saenz Julienne wrote:
> xHCI's PCI fixup, run at the end of pcie-brcmstb's probe, depends on
> RPi4's VideoCore firmware interface to be up and running. It's possible
> for both initializations to race, so make sure it's available prior to
> starting.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
> 
> ---
> 
> Changes since v6:
> - Add more complete comment
> 
>  drivers/pci/controller/pcie-brcmstb.c | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
