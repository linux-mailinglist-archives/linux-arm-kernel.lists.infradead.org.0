Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8EBB1B13C3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 19:59:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LpLXKh2om1eNA9WLW7qq9U9VMtMgQeLZWwqq4LxyL8s=; b=GNell9EaI5Fy5l
	/mk5m84w4uivPoqlxUP8KvW97qqmkjxKlZchAX1HImkqwRWt6CiFFvB5y2JUzZUA6/Hr3lu7MGLvB
	8PwBwXW54u1a7vSETi+XRYvxafRIZB3zh8b9L1itBlbtRnbRHnMDa6nfksHcwBSQFkBKrYTJ1qqhP
	sny2iPmEmrwf1OEnhDByKcwxUXQK6SK6D+BkAsmkdltHIIrhSWVeSPDczF1e2Pfdi//3bkHK826JT
	4Kvi96YGMXDvcsVGlZl2YnMX9Lhbc2Su8rG1NLMfl6q2igdfHByB3gKJP1BAa1UQgEdioxEZiziOy
	iU0VR9oylH5SHam0UnaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQahK-0001oX-GK; Mon, 20 Apr 2020 17:59:10 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQahA-0001nH-17
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 17:59:01 +0000
Received: by mail-oi1-f194.google.com with SMTP id m14so9635079oic.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 10:58:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/5W/lQ34ReMbXEDzAwXh6BEJq3UIgkv6eyC5gc3Bzrc=;
 b=mEgXsCLgbd19TKYBQZAFA9U2htMfFuA7TWk6P6COIiRRo3PYpP2mlkWxBKtfE52Lvb
 zq2u4vN2c65CNEY2AEqdmIS6RcEbGgS2AeDcF9U3VA86UWaKIaSWGzwvc64+NyNIO4C9
 Ijh8aoe3lLqf/NnM98BEBsAvIg6l8V5GzU6s3wfgpf93TLVz/MTxzQR4dPAjVf8ZVeTI
 D1rWMuJBHLyXv190iA8zSUOQ2Rh2xPc3F4sfAttbc9kTjrgDsDxr6Lg0vZStwnroZ0ES
 IFOgMHvYiyTnCUee6mk44fvFbScDhps+6lzj3UWY90nMmFYS/mpT7tR9XufJQhDes/He
 H7Cg==
X-Gm-Message-State: AGi0PubzVJBGHChFW4SVaStasMFlMOQXTBCoHVP7GJc7m5qNSHhRMPEI
 ++oXgAAv5ivUkC7XY1IZ5Q==
X-Google-Smtp-Source: APiQypJG2laHDj1gFHJr/T8u1/7WLO1L1HK3oDn1rmL0PRluF7lKVfIH0ZzkLa/bWiGt+rj/5P4Hsg==
X-Received: by 2002:aca:c68b:: with SMTP id w133mr422169oif.175.1587405534277; 
 Mon, 20 Apr 2020 10:58:54 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w18sm33636oos.13.2020.04.20.10.58.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 10:58:53 -0700 (PDT)
Received: (nullmailer pid 5416 invoked by uid 1000);
 Mon, 20 Apr 2020 17:58:52 -0000
Date: Mon, 20 Apr 2020 12:58:52 -0500
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH 3/5] dt-bindings: bus: Add STM32 ETZPC firewall controller
Message-ID: <20200420175852.GA5063@bogus>
References: <20200420134800.31604-1-benjamin.gaignard@st.com>
 <20200420134800.31604-4-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200420134800.31604-4-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_105900_073197_BD24708D 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, alexandre.torgue@st.com, loic.pallardy@st.com,
 gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 20 Apr 2020 15:47:58 +0200, Benjamin Gaignard wrote:
> Document STM32 ETZPC firewall controller bindings
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>  .../bindings/bus/stm32/st,stm32-etzpc.yaml         | 46 ++++++++++++++++++++++
>  1 file changed, 46 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/bus/stm32/st,stm32-etzpc.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

Documentation/devicetree/bindings/bus/stm32/st,stm32-etzpc.example.dts:17.5-24.11: Warning (unit_address_vs_reg): /example-0/soc: node has a reg or ranges property, but no unit name

See https://patchwork.ozlabs.org/patch/1273431

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
