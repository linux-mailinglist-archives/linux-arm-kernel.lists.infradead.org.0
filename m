Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B7991E3363
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 01:06:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q/9xvSVYAxpARpKjH/s4UWmubZnXa3/c2L4cR4oY9cQ=; b=RP3zbc0Mjqq55m
	HGRAEzytJc404DI9RnncyKc2Xwciwd0HKEana1/jhpUVdJN9df/bEO5OfMpfJHNfWw/+WLjajqCUV
	gLP8Py4ltvGh78SNwH5M0pGrsw/mS3X6FSMeDIeGZd5nNrp8e2HrQHOCOS3auDoBDn2uH+ngyKhl8
	DmI/gNJennK4db55n72IuhZMSiMcqu9YlvAOOAw5Hfj+LBMw+QxVh/NQBVX9YbqGjwUXHTGZ+G1Qj
	UqOIoGte0lU2q2vNbYaPzsO15quXR5KNoqDnEM0NpEZEMCCS2dZwU7oqujyF8efb26JdOTXFobBML
	zKsgtTpMDJQhMBfzl9Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdieC-0006gX-It; Tue, 26 May 2020 23:06:12 +0000
Received: from mail-il1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdidi-0006Rm-Gg
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 23:05:43 +0000
Received: by mail-il1-f196.google.com with SMTP id 17so22234190ilj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 16:05:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=2oYPgM1BtR439Mfpid4h6QvwH7miODS6soRM9HPdtmM=;
 b=HXlrUL53KCI8hDU2Ns+nhnqjpLbTLJvWlm4bCR+w3D4hSU/VarTVy4N6BfOgT/L2UD
 lYRr0yxjuNZwtzWDWuEoQv8BFSNoQ1cAO0x5td+4s2p5ZaLGfnmSDOFAA7V5TjRm3JAz
 BvJLRyZWXGO7aiIPdW/JTbem+nCzLflC0VZ6SJKexD2qQskcQBlZDu5hoVhjKr+SEmQk
 1qxVSGuZqO1SJxKxxRNemv6Ai6NKusUqU3i0v2OMYmeRnxQNCByJ/5wziPOqrZLeKvIJ
 Mjmegta9Sm8Ce/WRbTPH2c/f29A/mXG49GOZaofJP/0Po27u6sPK35D49xQ9zlOuYPB/
 mpKw==
X-Gm-Message-State: AOAM531pPZQdLjqZ5ywWNcPde243CHsVL5HxhrlY2e/01FlLphHngMG8
 yuYUqR+fjzL7729+kqnDAw==
X-Google-Smtp-Source: ABdhPJyBcSvWgTEJyZu7WnBFc0wCdUtMbWcguCU5wrtNSwGUZAEBzYVIN4zA/3rvIXr6KxxEurglbw==
X-Received: by 2002:a92:c742:: with SMTP id y2mr3207192ilp.126.1590534341592; 
 Tue, 26 May 2020 16:05:41 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id 4sm722115ilc.34.2020.05.26.16.05.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 16:05:41 -0700 (PDT)
Received: (nullmailer pid 558228 invoked by uid 1000);
 Tue, 26 May 2020 23:05:40 -0000
Date: Tue, 26 May 2020 17:05:40 -0600
From: Rob Herring <robh@kernel.org>
To: Lubomir Rintel <lkundrak@v3.sk>
Subject: Re: [PATCH v3 09/13] dt-bindings: clock: Make marvell,mmp2-clock a
 power controller
Message-ID: <20200526230540.GA557537@bogus>
References: <20200519224151.2074597-1-lkundrak@v3.sk>
 <20200519224151.2074597-10-lkundrak@v3.sk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519224151.2074597-10-lkundrak@v3.sk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_160542_549108_14794FD6 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 12:41:47AM +0200, Lubomir Rintel wrote:
> This is a binding for the MMP2 power management units. As such apart from
> providing the clocks, they also manage the power islands.
> 
> Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
> 
> ---
> Changes since v2:
> - Added this patch
> 
>  .../devicetree/bindings/clock/marvell,mmp2-clock.yaml        | 5 +++++
>  1 file changed, 5 insertions(+)

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
