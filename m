Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C29419E68A
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 19:01:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8R95k1IipqzvdoVqOQBVzeopI+KCrcH0Yk/nsVn5IJQ=; b=YvTVHROKOtn0w9
	oYJNtPkBhVKv+QaMN99S0hyZF738CDEXPPL7F6Pn3RKTW9kZouL7+gOpd187ni5tK+Q5B9gkhsjxY
	8GhQBgxo5EOepX2dLKVsZAwNMqbCCaGIakgZQB7dSTYe+P/Qq08wvwGnHcLZDWehMximVdQB12LFf
	wCwDJtjgeyik3MgynsKh8gwBJl2ueY9laEKHlXClrXgT4hYfyLsCiW4jWU53gU6zFeEVjoeOR+7Ph
	jfnsSwxrc1aK/RgEdwrTNgWnjY5FwHcDwT5E1IBUs49c+dbvXHDBzROPTbbwPcBjSLqrG6II6Tb6p
	6LgZkOF3zGZtfSbE/fLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKm9t-00055H-U6; Sat, 04 Apr 2020 17:00:37 +0000
Received: from mail-il1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKm9o-00054T-3Y; Sat, 04 Apr 2020 17:00:33 +0000
Received: by mail-il1-f194.google.com with SMTP id r5so10567979ilq.6;
 Sat, 04 Apr 2020 10:00:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=b4kl0NLLFcA0pn57UJb7veMZizU71qWwaJMkCLDmT14=;
 b=rQQkbrkpu096oq69afThBFFoVOT6eFUGVbG5WwuIA5cWoLzNTCS7fwWbRdpFEEbXeI
 1QvMrWty+MMVDjUkZrek0p7/wFCj2Okebnv7ra5ImXqvTQPfHp3exqnx76VLYphnXKh3
 HU0TPxwUuA6ttMywU2i+wLDGD8nLU9091ORvvTSU67mVGy20T5Q4NzDP0UOsN/FVJxIX
 3ORvfsYFrmQq1eij1rYpAt7YZ5nh0Er0/Xo9VsNO1Q57Wft6fZrhRA5XHYkQLe8L9FdN
 K0yi/tEZldVpFb8rtrh22VfppyFZ6Ni/DuPqiW4a5C/r3DCGdlQBAyrmqXsjNrIT3Olx
 AYLw==
X-Gm-Message-State: AGi0PuaZ0R4j8UOPRIiyg4Ic7kM82ISBnj3T4taFAmlyE1msZrZgt2ma
 iVt7DIecskUx9KG5gNrmOQ==
X-Google-Smtp-Source: APiQypJ+bshZTlCGhsnPSYdXqvLk4YbF17FiZptNH1O88h8uIgBD2k4BdVMGGzXW6OxeszhF7KqufA==
X-Received: by 2002:a92:8c93:: with SMTP id s19mr12535365ill.222.1586019629542; 
 Sat, 04 Apr 2020 10:00:29 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id t86sm4038008ili.82.2020.04.04.10.00.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Apr 2020 10:00:28 -0700 (PDT)
Received: (nullmailer pid 25017 invoked by uid 1000);
 Sat, 04 Apr 2020 17:00:26 -0000
Date: Sat, 4 Apr 2020 11:00:26 -0600
From: Rob Herring <robh@kernel.org>
To: Maxime Chevallier <maxime.chevallier@bootlin.com>
Subject: Re: [PATCH 1/3] media: dt-bindings: media: Document Rockchip CIF
 bindings
Message-ID: <20200404170026.GA24638@bogus>
References: <20200403142122.297283-1-maxime.chevallier@bootlin.com>
 <20200403142122.297283-2-maxime.chevallier@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403142122.297283-2-maxime.chevallier@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_100032_147400_41BA87EF 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri,  3 Apr 2020 16:21:20 +0200, Maxime Chevallier wrote:
> Add a documentation for the Rockchip Camera Interface controller
> binding.
> 
> This controller can be found on platforms such as the PX30 or the
> RK3288, the PX30 being the only platform supported so far.
> 
> Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
> ---
>  .../bindings/media/rockchip-cif.yaml          | 98 +++++++++++++++++++
>  1 file changed, 98 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/rockchip-cif.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

Documentation/devicetree/bindings/media/rockchip-cif.yaml:  while scanning a simple key
  in "<unicode string>", line 13, column 1
could not find expected ':'
  in "<unicode string>", line 15, column 1
Documentation/devicetree/bindings/Makefile:12: recipe for target 'Documentation/devicetree/bindings/media/rockchip-cif.example.dts' failed
make[1]: *** [Documentation/devicetree/bindings/media/rockchip-cif.example.dts] Error 1
make[1]: *** Waiting for unfinished jobs....
warning: no schema found in file: Documentation/devicetree/bindings/media/rockchip-cif.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/rockchip-cif.yaml: ignoring, error parsing file
Makefile:1262: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1266070

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
