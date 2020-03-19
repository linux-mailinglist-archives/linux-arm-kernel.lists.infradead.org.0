Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DEC818BDB0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 18:12:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V3FZachqvP94mTqNwjHmd2y6+K6kWHTkVRNqlKVaZ+4=; b=jC+6Ei2kk9VnFW
	x69u+Y5ZLpUo+tsj9emkoP9uAL/fIryv3CuMxCooijRCaSlgEYjTA9PTmsBeVGPI4htQcVwiaOQ/p
	NA/V//DgubOfnUBAh0zKG6zpWA2DWyTwiHNd3s8K0uSB5twz8WVexufHQNSFogCDrdRUvKEJxSzRw
	ctpUcP5XFjDZWhN3W33w+3du2jScB7hFUe2qUsnqMLZSsI6AhBSQy1KEnn7Ceq7/6QtIj+EOHCoYH
	AFm+VcPwv86c3RIgShRGbMuMUT9Bw/SCX9UrxOsaT4jxaz5a0DQx3dk1/0dINbEiB4VR+ATk87O19
	/yYUCVJ+p7/6CQQD8W5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEyiW-0004X5-9X; Thu, 19 Mar 2020 17:12:24 +0000
Received: from mail-il1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEyiN-0004WS-37
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 17:12:16 +0000
Received: by mail-il1-f194.google.com with SMTP id w15so2958324ilq.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 10:12:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=FuFy53dKsb2fck0JMwy1FXmxdDEmegXgO4r2caNX4Qo=;
 b=o4N4KB5MUzTcoOiws4HyjsNakal4Dh8LCi+EowabBkFiyF/N2KHVVsJE7K+Prsfcl/
 LEJdU17xxG5ZiQFTDji3cvpUjoMccMRZP5XabAPrWXzg0vtv6cTZ6gzfhddDBxgxkNBC
 mzofZRx60t+800gVZFmFhW7glgBS5TwVTgvhlOQRG2JXNCtUPW6X10IIPWAGFwQUeLzj
 dFYN14zJdFIQgZej4gZUsFSF5fOqFOqmZVDMz7LpUlk6if7BLtia8qy1K4dc/htsWp4a
 r/t9i0zAxUEZWUwkwiYgryjCy4n2veejJByqOR+U9T4o8vMKc5xWug9nHC4ndNqFxILW
 vwXw==
X-Gm-Message-State: ANhLgQ2OUlurZ5detEOc6LxQI6HaP1qhWQqeNB6Nnt6J2SBCtDhP7Upy
 aPb0MAMbpsienHlwLQMnqX+CarI=
X-Google-Smtp-Source: ADFU+vs/qjBgZCguu4PgrA7kda0SwMTPsdT6I/2Mcj/b7bYNjpINO1LuIXtpzuRHB/7LUhmdIByVUQ==
X-Received: by 2002:a92:35db:: with SMTP id c88mr4010676ilf.187.1584637934049; 
 Thu, 19 Mar 2020 10:12:14 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id y8sm937166iot.14.2020.03.19.10.12.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Mar 2020 10:12:13 -0700 (PDT)
Received: (nullmailer pid 16694 invoked by uid 1000);
 Thu, 19 Mar 2020 17:12:10 -0000
Date: Thu, 19 Mar 2020 11:12:10 -0600
From: Rob Herring <robh@kernel.org>
To: Alim Akhtar <alim.akhtar@samsung.com>
Subject: Re: [PATCH v2 1/5] dt-bindings: phy: Document Samsung UFS PHY bindings
Message-ID: <20200319171210.GA14990@bogus>
References: <20200318111144.39525-1-alim.akhtar@samsung.com>
 <CGME20200318111805epcas5p3e68724d923a07ddd80a45e3316292940@epcas5p3.samsung.com>
 <20200318111144.39525-2-alim.akhtar@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200318111144.39525-2-alim.akhtar@samsung.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_101215_135206_F106D862 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.194 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
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

On Wed, 18 Mar 2020 16:41:40 +0530, Alim Akhtar wrote:
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

See https://patchwork.ozlabs.org/patch/1257427
Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
