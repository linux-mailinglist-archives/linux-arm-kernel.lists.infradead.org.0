Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32A431F4230
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 19:27:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h0EOH9EGmRzkkZae2fMXcaefPodEQa/sBoIGqu30O5E=; b=SS0xb57UUI9o9T
	P3hkTDxMJ3r7y6YEkn1XQeB8UyTFGB7mkjTIRMrluo96IE44Br8uNzzne9S/EbWgtSyCtv8au6VKX
	f9wNtE8h4JqzOMXU++Z/PxUcXkPmbSc+zaZyXUpjfjt4sPea9xug6seyoj2RFZ/13gZLyR/RYmHfG
	0xX6ZZVsguQKMv4iQ1mhn+V4baCCw9ALjf7sm2+NprBEQuNDvMN3wrRa1iZjIybcx9dkU6qxkMBdm
	cluvOhJbC6kNoY5FabWMIkntGn2W8CTOCCwCHEZJnB3uTq8DwnW1qcN/rzpek49974K37b4AmY7Ko
	NbOyu1zEElXZjj0d7uPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jii23-0000UP-FP; Tue, 09 Jun 2020 17:27:27 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jii1p-0000TI-6H; Tue, 09 Jun 2020 17:27:14 +0000
Received: by mail-io1-f67.google.com with SMTP id u13so17473052iol.10;
 Tue, 09 Jun 2020 10:27:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=YzMT5lPVyIWtT5NNG9r0IznpD+jop0KaSD17rOh2S9c=;
 b=BELAyC3JnxmVuvjZjFFXq+2lkzGZcysmAKnB2rmr5aizZpbo9/ltkPG1HPmPsGmExZ
 ANJ39b3UWP5DeRPwczWA1Ii38AjPDoRgLv2qywx+Bvr8RnM2vA6TWXmMpcuFZhi5PPNR
 lemm2JPSeM+2V7wRMm7scH3tKJPS3QzYMHzBzX0H9Ng6r9SK2aw6qlzicYfJNQrgMW4T
 6dsIblV+efiOzP0lXw7FYheXez6c/xyMYmQJcdalitYs0cJGm4neDs41SOex0dSCJKe4
 VugKSJpyUIXAC78zO+eh0QEbbpVcwr2WYynCMqsKIUQEk7GlwACYTaoKNdmV4KW5VcNh
 WN5g==
X-Gm-Message-State: AOAM533z75xEMZF9LP/pkWakxuSakaDbc8SwtU9mkBWP1yCmB4VGoIG2
 ZLEiHpRb8mjakhYCd7TBBQ==
X-Google-Smtp-Source: ABdhPJxCWEnQhYmYJHctyaQwbFMOsDA2DwTPjTRs2cYEIoIfm3wINvGJ7r8/9C4ky1Jmlj2/LagJOA==
X-Received: by 2002:a6b:dc12:: with SMTP id s18mr27314270ioc.56.1591723632320; 
 Tue, 09 Jun 2020 10:27:12 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id i10sm9595983ilp.28.2020.06.09.10.27.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 10:27:11 -0700 (PDT)
Received: (nullmailer pid 1111820 invoked by uid 1000);
 Tue, 09 Jun 2020 17:27:10 -0000
Date: Tue, 9 Jun 2020 11:27:10 -0600
From: Rob Herring <robh@kernel.org>
To: Neal Liu <neal.liu@mediatek.com>
Subject: Re: [PATCH 1/2] dt-bindings: devapc: add bindings for devapc-mt6873
Message-ID: <20200609172710.GA1107294@bogus>
References: <1591698261-22639-1-git-send-email-neal.liu@mediatek.com>
 <1591698261-22639-2-git-send-email-neal.liu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1591698261-22639-2-git-send-email-neal.liu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_102713_235821_8A06A873 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 09 Jun 2020 18:24:20 +0800, Neal Liu wrote:
> Add bindings for MT6873 devapc.
> 
> Signed-off-by: Neal Liu <neal.liu@mediatek.com>
> ---
>  .../soc/mediatek/devapc/devapc-mt6873.yaml         |   61 ++++++++++++++++++++
>  1 file changed, 61 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/mediatek/devapc/devapc-mt6873.yaml
> 


My bot found errors running 'make dt_binding_check' on your patch:

/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/mediatek/devapc/devapc-mt6873.yaml: Additional properties are not allowed ('maintainer' was unexpected)
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/mediatek/devapc/devapc-mt6873.yaml: 'maintainers' is a required property
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/mediatek/devapc/devapc-mt6873.yaml: Additional properties are not allowed ('maintainer' was unexpected)
Documentation/devicetree/bindings/Makefile:12: recipe for target 'Documentation/devicetree/bindings/soc/mediatek/devapc/devapc-mt6873.example.dts' failed
make[1]: *** [Documentation/devicetree/bindings/soc/mediatek/devapc/devapc-mt6873.example.dts] Error 1
make[1]: *** Waiting for unfinished jobs....
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/mediatek/devapc/devapc-mt6873.yaml: ignoring, error in schema: 
warning: no schema found in file: ./Documentation/devicetree/bindings/soc/mediatek/devapc/devapc-mt6873.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/mediatek/devapc/devapc-mt6873.yaml: ignoring, error in schema: 
warning: no schema found in file: ./Documentation/devicetree/bindings/soc/mediatek/devapc/devapc-mt6873.yaml
Makefile:1300: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1305778

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
