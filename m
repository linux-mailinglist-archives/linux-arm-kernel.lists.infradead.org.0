Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1428518C438
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 01:22:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RqzEwvKMeid+MmrKA0zu57Gwf1bSE2fjimG0QM+YgLw=; b=qhicMVo2FpUdYh
	KiX9Iv0G1svS5sxzqS53omvtXnlry7IcRF+9y8dzZAUkbElJAQQNfyytYvQA3GomN1bKGeqNrA8ca
	P49NX6xH6JnJbOMbFcuwFJwnMzYvEItmsjWCTJI/uIT/+CpOKXzDshsnfNJR2Jjj+VEchrLycL75Z
	hbIdNOZEBesMlOwMvHrckrVM4R3E3AMUlR8SY9pC7huh93mhvBRsGH0Vt/jSzQ5Fj0S44w3UjWAWX
	gvlPcDlzGoATZtSjuovhPCsIfblWBSkJwJtz46D3lkuPdvnd/9ixefwIEmBoGNotwZV4e76ZYxKyn
	I7r+9KlVwYjNKF/Kf+JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF5QG-0007J8-Dt; Fri, 20 Mar 2020 00:22:00 +0000
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF5Q8-0007IS-K0
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 00:21:54 +0000
Received: by mail-il1-f195.google.com with SMTP id j69so4026927ila.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 17:21:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=FNX6oJTq7J+/RlIA0O/fMH+A64Z+Gex/rEUfT2IWpQ4=;
 b=oSZBAV1jbXgr/aW/E9tUyJVt6fZZ/RNqVYr+O+9NQIPVOkBnLUsgch5eD/G4LSPyxt
 NE5ilTawBQDfN0imy9CanbQeKWFsdD1mPNoWZFxlzek6sBOBo7YefU43GRxu4m67S6KE
 SV7tGIHY9XZO/qUfxaEJhNBD21wJOd2JUq7rLttR1LbkzoRdAFM180Ofndjh8oFVu2/R
 F6yfUQBIbNSxU1L5088RKmQuBlfEy+QW72jZZuqPa6eGGLfdYeSE69epOt0AWdS1FdI6
 lpdz1z2eRhEGhdIvIIL/bLi+KSqJDkabEVdYgTgsIdYxbECOqjpHurR6EBXFJDjrBBkc
 Hgeg==
X-Gm-Message-State: ANhLgQ2a1TA+U6jAUdXok7SmpjmDthey1iQd255iGp7Y9Y2MzJUyiCdT
 ywD0pHFY3bO4g7ptGcOiLg==
X-Google-Smtp-Source: ADFU+vuWqcE4xeIgd8bciqMNI9OIj6xfhQTbXQpazdl4HeI9o71TkgH6pZjD9kWRH/39xisTogRLwg==
X-Received: by 2002:a05:6e02:e81:: with SMTP id
 t1mr5969536ilj.226.1584663710753; 
 Thu, 19 Mar 2020 17:21:50 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id r9sm1280333ioa.44.2020.03.19.17.21.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Mar 2020 17:21:50 -0700 (PDT)
Received: (nullmailer pid 12090 invoked by uid 1000);
 Fri, 20 Mar 2020 00:21:47 -0000
Date: Thu, 19 Mar 2020 18:21:47 -0600
From: Rob Herring <robh@kernel.org>
To: Alim Akhtar <alim.akhtar@samsung.com>
Subject: Re: [PATCH v3 1/5] dt-bindings: phy: Document Samsung UFS PHY bindings
Message-ID: <20200320002147.GA11283@bogus>
References: <20200319150031.11024-1-alim.akhtar@samsung.com>
 <CGME20200319150703epcas5p2d917898f6f1e0554cb978a70a34ee507@epcas5p2.samsung.com>
 <20200319150031.11024-2-alim.akhtar@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200319150031.11024-2-alim.akhtar@samsung.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_172152_655841_9C80C208 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, kwmad.kim@samsung.com,
 avri.altman@wdc.com, robh+dt@kernel.org, cang@codeaurora.org,
 Alim Akhtar <alim.akhtar@samsung.com>, stanley.chu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 19 Mar 2020 20:30:27 +0530, Alim Akhtar wrote:
> This patch documents Samsung UFS PHY device tree bindings
> 
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> ---
>  .../bindings/phy/samsung,ufs-phy.yaml         | 62 +++++++++++++++++++
>  1 file changed, 62 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/samsung,ufs-phy.example.dt.yaml: example-0: 'ufs-phy@0x15571800' does not match any of the regexes: '.*-names$', '.*-supply$', '^#.*-cells$', '^#[a-zA-Z0-9,+\\-._]{0,63}$', '^[a-zA-Z][a-zA-Z0-9,+\\-._]{0,63}$', '^[a-zA-Z][a-zA-Z0-9,+\\-._]{0,63}@[0-9a-fA-F]+(,[0-9a-fA-F]+)*$', '^__.*__$', 'pinctrl-[0-9]+'

See https://patchwork.ozlabs.org/patch/1258280

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
