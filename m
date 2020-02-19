Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB661164668
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 15:09:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZTDw9MiIM45uR3tJHGn+1XTkoQar86C5ujCP8bi0RDA=; b=ALRLHOrpQFYkL8
	W2xiIiKbmeQ5/VMU6/jwJpYHEy144rwGvImIoSCnaEEp7q97tv9nCprxALFOa+hpO7DXsn1lqwGh/
	EcHpENqbeiR8h5ZXp/4YMNAI2msvn1iC/hJLsYYoErRN6sAuJKorCh/9xYDY4/N8BOdMHie6SD5QS
	q/TGBUcOYXemKcoP3IStbb5c6jnjo/io8JgSe81ZsH5DtKv0itm4yvXGyn6yVy7PXa4zYs3IswX2l
	s8sSv9woVjyoNrdAKFfOfx2S2EK6KNyjAIXGAnftt8MgOyFtfegsxm5hg0GKN6Fb+rhXzjxTHBhE2
	iYLxhI+R74G4wiKndDVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Q2e-0003uZ-Sq; Wed, 19 Feb 2020 14:09:32 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Q2W-0003tk-E9
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 14:09:25 +0000
Received: by mail-oi1-f193.google.com with SMTP id p125so23874812oif.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 06:09:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=w0+iwQxqNl/u797DK+0XyoBMJz+IIdj3rSrLkc2+kbs=;
 b=nbjh67xWKwAyR2BhWc41jQV/hDTQTKvPbNtofZzq4wVlgxVseh8ySr96kg85NxBQqB
 Z+nTGqOAh1p0RWJmWmevqjV5iS9VMpJwFLVkxSZ0wiwTyfBOfcfUWfd2aIfYbgRFl/Cu
 ebdlHgZOopEy1OeQuqvhRFtjBmdEi0Hp9uQ2vPOIa5LKpKSfZQQ6kldmxGWE/QjA0uLs
 s72zzfFJezOGq9C5+dN7o045bF5RQTs63I7yMCTb15clQ4RfEwqjYWympjUlkOPI4SEz
 wkGG4QhBV9Zq3HsL83q0Im/jI5ZT1PEJZErraf7dKgRZ2ne7wR6iOB2+EavA9n+hVosT
 wUkQ==
X-Gm-Message-State: APjAAAWQwYQdh19sBXooMhSfUNca9F4YI6IVFDQMIBpSRCOzrK0sWLpY
 k2kchZa5StUXA6zgcnYe8Q==
X-Google-Smtp-Source: APXvYqyBzFjf4VEjf1EoLRQ0uCruPnwDHxFaEDDuZ7gw9XftwRfkd4+9xnhC8HJN5lU4jCtbEAB0lw==
X-Received: by 2002:aca:3f8b:: with SMTP id m133mr4540584oia.51.1582121363283; 
 Wed, 19 Feb 2020 06:09:23 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id c10sm647696otl.77.2020.02.19.06.09.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 06:09:22 -0800 (PST)
Received: (nullmailer pid 8118 invoked by uid 1000);
 Wed, 19 Feb 2020 14:09:21 -0000
Date: Wed, 19 Feb 2020 08:09:21 -0600
From: Rob Herring <robh@kernel.org>
To: peng.fan@nxp.com
Subject: Re: [PATCH 1/9] dt-bindings: remoteproc: Convert imx-rproc to
 json-schema
Message-ID: <20200219140921.GA7031@bogus>
References: <1582097265-20170-1-git-send-email-peng.fan@nxp.com>
 <1582097265-20170-2-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582097265-20170-2-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_060924_477247_2FE943AC 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
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
Cc: ohad@wizery.com, devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 festevam@gmail.com, s.hauer@pengutronix.de, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 19 Feb 2020 15:27:37 +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Convert the i.MX remoteproc binding to DT schema format
> using json-schema
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  .../devicetree/bindings/remoteproc/imx-rproc.txt   | 33 ------------
>  .../devicetree/bindings/remoteproc/imx-rproc.yaml  | 61 ++++++++++++++++++++++
>  2 files changed, 61 insertions(+), 33 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/remoteproc/imx-rproc.txt
>  create mode 100644 Documentation/devicetree/bindings/remoteproc/imx-rproc.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

warning: no schema found in file: Documentation/devicetree/bindings/remoteproc/imx-rproc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/remoteproc/imx-rproc.yaml: ignoring, error in schema: properties: clocks: items
Documentation/devicetree/bindings/display/simple-framebuffer.example.dts:21.16-37.11: Warning (chosen_node_is_root): /example-0/chosen: chosen node must be at root node
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/remoteproc/imx-rproc.yaml: properties:clocks:items: {'Clock for co-processor (See': '../clock/clock-bindings.txt)'} is not valid under any of the given schemas (Possible causes of the failure):
	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/remoteproc/imx-rproc.yaml: properties:clocks:items: Additional properties are not allowed ('Clock for co-processor (See' was unexpected)

/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/remoteproc/imx-rproc.yaml: properties:clocks: {'items': {'Clock for co-processor (See': '../clock/clock-bindings.txt)'}} is not valid under any of the given schemas (Possible causes of the failure):
	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/remoteproc/imx-rproc.yaml: properties:clocks: 'maxItems' is a required property
	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/remoteproc/imx-rproc.yaml: properties:clocks:items: {'Clock for co-processor (See': '../clock/clock-bindings.txt)'} is not valid under any of the given schemas (Possible causes of the failure):
		/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/remoteproc/imx-rproc.yaml: properties:clocks:items: {'Clock for co-processor (See': '../clock/clock-bindings.txt)'} is not of type 'array'


Documentation/devicetree/bindings/Makefile:12: recipe for target 'Documentation/devicetree/bindings/remoteproc/imx-rproc.example.dts' failed
make[1]: *** [Documentation/devicetree/bindings/remoteproc/imx-rproc.example.dts] Error 1
Makefile:1263: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1240544
Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
