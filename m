Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA041E6D4B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 23:10:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YTnXkAmyI+ZAGuM7lsQjC2ebHuWSGtKBJqHOsMLqZW8=; b=W/RxIExcQ9embC
	G572P89x/O/a78o0SxOmIWX3TiVMyvWoIZ5RjTQhuMhCq37rJhMBILkOLeT2HeUUhdwmmhSrVKOiY
	Z301aBlReuSm6Y5vtuZ3pwj0NFdpyLgVsLr6x38jEfWoaNfChPj+pIDpxT9x8uNXUaPV49DOiPSMw
	Hk2ZxZWOGFmYRMO6duwVeI7zDfZWCoyz4HLf1Y/PkiTXT2crh3Mkp8pS9czXOXRJzDR1/BuBrBRDI
	B+ZBfq5pYXBJ6UbCYuW7olH9F3ljPCDUF7aipyxMBqDUnQl8sZfDqd4DOrxZuxm3dk3cAMzN4kZuy
	1xV4xp4wSqC+BbWPnppQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jePnK-0000Pi-6S; Thu, 28 May 2020 21:10:30 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jePnB-0000PD-3p
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 21:10:22 +0000
Received: by mail-io1-f68.google.com with SMTP id c8so31652iob.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 14:10:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=6AESZjKsRo2fnaeCFt3ie8q62yK2oF6atXYzGHTWfx4=;
 b=IuFYj7IZYRczCpqAZorxFpzFMajCXP6b7POR+1AOR/lSrR4PpvYVblEtX3kd0003ar
 99KX/bOYLGPvvKFROZrCWHjKS4faG9yik4Y/ix7xd0zcxYcjhM1/j7QQLxUsOgF626Dj
 N2Yu75gHvmMDtVuczNxVgvjck4KaioAkk9kG/u5npBZygXCwM228fVHbCVVvzjgu3RRC
 TV03U6lRcNEwU4lxlLIKMgF43jvgRC4FsyglrgUDwozUWQT2yotxQ2HFClYtzYdAx/tz
 fdMoS/iGDclk4jeQSxxHBJJG/sf3cEAx1S2hujsIGHAYiJ4vcp9E7+BYmuyi+SrVF4NO
 353g==
X-Gm-Message-State: AOAM533PqUv9XIEEi7/hqR3Cvt5eWdHIV2r1FNwXCsMHMqjW4G4DZ/jk
 zonquqGWaKkoK7hiKA+z8Q==
X-Google-Smtp-Source: ABdhPJwIExRXhFstYmHtSSBnlb7OJBayFPc2AtryCPNDffN7eq2c/9FR1XoR8JDaDfTcKokoMBt/1A==
X-Received: by 2002:a5e:a61a:: with SMTP id q26mr3896898ioi.207.1590700220245; 
 Thu, 28 May 2020 14:10:20 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id f15sm3775266ill.58.2020.05.28.14.10.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 14:10:19 -0700 (PDT)
Received: (nullmailer pid 689735 invoked by uid 1000);
 Thu, 28 May 2020 21:10:18 -0000
Date: Thu, 28 May 2020 15:10:18 -0600
From: Rob Herring <robh@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH] dt-bindings: interrupt-controller: arm, gic: Document
 resets property
Message-ID: <20200528211018.GA689668@bogus>
References: <20200519080519.28324-1-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519080519.28324-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_141021_154182_19A536F4 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Jason Cooper <jason@lakedaemon.net>,
 Andre Przywara <andre.przywara@arm.com>, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 19 May 2020 10:05:19 +0200, Geert Uytterhoeven wrote:
> A generic GIC block embedded in an SoC may be connected to an on-SoC
> reset controller.  Hence allow the DTS writer to describe this relation,
> by documenting the optional presence of a "reset" property.
> 
> This gets rid of "make dtbs_check" warnings like:
> 
>     arch/arm/boot/dts/r8a7791-porter.dt.yaml: interrupt-controller@f1001000: 'resets' does not match any of the regexes: '^v2m@[0-9a-f]+$', 'pinctrl-[0-9]+'
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>  .../devicetree/bindings/interrupt-controller/arm,gic.yaml      | 3 +++
>  1 file changed, 3 insertions(+)
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
