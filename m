Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CFC913F982
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 20:29:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7BrZUhmvRfNqsnMscViHZw6V7oatYqlbVwsiaTrirsA=; b=s/oupcAtAyJbki
	f80BEHyV6B9fNa7rGGTJPqci416a83Ie9gcc8RUv6O8t3d2DwrL31WWv7gw/czrvrFenueQhnzf6U
	q+bKnRU23Jp4wtIzTEO7AxzgqpGGYSyJsPI+egt/czXd8Ns3691YDF5k4EsBT2O6AWCOBmZehOKbZ
	/zH4w0s6m1q+KrEAzPBV5CUCeG8mfLXlabuPlXlZsUC+jFEQeRy9g0N0MCpl7GwaZfSMXhKbkUPoh
	Bqb7i4B8m3f4mP1kwhHK0it2lA8ut50shnaiJEWn8Sih/riWHp7/SFZbDclTpr5NpuA+UOEHq38ls
	0omRYyKE0aaZqvk8Ox2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isApt-0000YR-IO; Thu, 16 Jan 2020 19:29:45 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isApg-0000Wn-0S
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 19:29:35 +0000
Received: by mail-oi1-f196.google.com with SMTP id z64so19946663oia.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 11:29:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=D0JIWPnsYgxjHJnE5BfoF3NZoxlKFK4Y77Nq/8y7ezs=;
 b=RJh8TkAwtR687PIqlpFoAehwvqmYS8brqPEKaPfCKDGIke64vQ22RIJFgorf+H3VtL
 BXUoY9K1Z7i66uA4UQCisEuXPwwbzx4zTpJchbqe9zuZYzzeU+wIrWgFBtx4m50CnOM6
 V4SdW0DJZmMNDQm9CkaGYyoEG6AdrcfEge7CuLyMIOj4jtShGFns2U0QtutYkEHLYZVF
 KWPjBHb8IPys03e/NDoLOCCLR1graLjh/HnuO9gGq+uem9kzNpUwpvifU6mvzv6df2Tm
 iZ3ecCM4Hkeg3ZbvcNHJmUcPzk2W1qQZ52HmIQlpswiF3xBFvWQHqgqT9CE9MkNW5vzi
 udvw==
X-Gm-Message-State: APjAAAWwCvdUHakzVBAGdVxmCh/lUd5ojr0eG0AUZOisK8n5bGW+Tgpo
 p7mNM/GO0gOrj0AFhrF5TA==
X-Google-Smtp-Source: APXvYqxKidt2yeQs5IGuNWSmZp6MzfrFSsaJkFcNm4vVcSUsA9SWbac9tU0UOLuDMJZgPTkC0llSjg==
X-Received: by 2002:aca:b187:: with SMTP id a129mr495210oif.175.1579202969846; 
 Thu, 16 Jan 2020 11:29:29 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m3sm8028076otf.13.2020.01.16.11.29.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jan 2020 11:29:29 -0800 (PST)
Received: (nullmailer pid 2025 invoked by uid 1000);
 Thu, 16 Jan 2020 19:29:28 -0000
Date: Thu, 16 Jan 2020 13:29:28 -0600
From: Rob Herring <robh@kernel.org>
To: Joakim Zhang <qiangqing.zhang@nxp.com>
Subject: Re: [PATCH V5 1/2] dt-bindings/irq: add binding for NXP INTMUX
 interrupt multiplexer
Message-ID: <20200116192928.GA1014@bogus>
References: <1579064664-16452-1-git-send-email-qiangqing.zhang@nxp.com>
 <1579064664-16452-2-git-send-email-qiangqing.zhang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579064664-16452-2-git-send-email-qiangqing.zhang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_112932_053231_D2F66C51 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, festevam@gmail.com,
 fugang.duan@nxp.com, jason@lakedaemon.net, maz@kernel.org,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 Joakim Zhang <qiangqing.zhang@nxp.com>, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, tglx@linutronix.de, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 15 Jan 2020 13:04:23 +0800, Joakim Zhang wrote:
> This patch adds the DT bindings for the NXP INTMUX interrupt multiplexer
> for i.MX8 family SoCs.
> 
> Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
> ---
>  .../interrupt-controller/fsl,intmux.yaml      | 67 +++++++++++++++++++
>  1 file changed, 67 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

Documentation/devicetree/bindings/display/simple-framebuffer.example.dts:21.16-37.11: Warning (chosen_node_is_root): /example-0/chosen: chosen node must be at root node
Error: Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.example.dts:20.27-28 syntax error
FATAL ERROR: Unable to parse input tree
scripts/Makefile.lib:300: recipe for target 'Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.example.dt.yaml' failed
make[1]: *** [Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.example.dt.yaml] Error 1
Makefile:1263: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1223172
Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
