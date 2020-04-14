Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0138A1A7DE1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 15:27:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=shl85zFU0cIHEO9MBvmsFhLU2bVp8qy8FO389wpUgzA=; b=C0W7now2B7+IPM
	JBm6xl7pqpxgpo2KH2Q6a6IQdA3Z9dNi97YKgwqwxgk5d86rqZpfGk8qlejH2g8qBCBUde3VwASt2
	2w5QEeftO/NQcdkyg4Cr9fpQXEDg2PFbyD8gs6WmYyROguTZK09bgtezI858wqH7PliYZdcNgZhiy
	B8/WjBubQd41seCQZ3IP8Gr3YvDJyLVDl3viUpRsWTQY+ULjG05jDg1sRZxSZz6nPeoyU4Ak3Nnbe
	5FOvex0+hFnAeoKpvi1SlFmDigNTiU8bVX434eh08oEkOUTd9kx1k9zdTMVGBOVaSio2STyqJvM8M
	ApOgpWZ7AXkS/DEbpDpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOLaa-0001Pb-Bn; Tue, 14 Apr 2020 13:26:56 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLaR-0001Ok-Lv
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 13:26:49 +0000
Received: by mail-ot1-f65.google.com with SMTP id k21so1221950otl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 06:26:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uBhOSKycNvwYl7l6E83n7sL5ut/2EC0wcW7rRu2+vgQ=;
 b=o7COyf8pj4WukrXqd5O+jdLZemstWB2wtJi9i9IjuZntC8a9Sv7aZC8xysZWRE/dK0
 aNFsgtm5CDQFNi7edZjQ9+1FtsPKjWOk1dx8KgVzbLRg7n2n49TUAGdjFqk7EgIMH492
 Lsfj1Vs6a418Cz5GEmVAcoQWYQLf4xkt59qGvzs9uw5wH3sn5YtCLiCChHGfSd9Jwfbl
 httyUPsNXBNLUv0fZi/s6O8d/usccSWLRtMSMzAmABseo4b84TGri1x/T3q82Y7VQlb+
 xXciaUH/SW0bXZ7RDGXtbmwPEKjVbWSSeKZK7S05Tt5B4I8B84+fOHUJldiAoBTRNxGi
 2Iqg==
X-Gm-Message-State: AGi0Puby2V0ukAim09q1LXsdtN6TzJgBPnWamwpHSU4Ix0J+LeALa7Cp
 jG72fitfxwnuPF1GEU0Lqg==
X-Google-Smtp-Source: APiQypKulh49diU5WYrDhPSyt9XOk4wDWnAaaQ7DGWExGEYwcWK2zN/uZk6o5BO0wBK0tmXEJhy44A==
X-Received: by 2002:a9d:32a4:: with SMTP id u33mr19357758otb.23.1586870804064; 
 Tue, 14 Apr 2020 06:26:44 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t23sm5711880ooq.20.2020.04.14.06.26.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 06:26:43 -0700 (PDT)
Received: (nullmailer pid 15088 invoked by uid 1000);
 Tue, 14 Apr 2020 13:26:42 -0000
Date: Tue, 14 Apr 2020 08:26:42 -0500
From: Rob Herring <robh@kernel.org>
To: Alistair Francis <alistair@alistair23.me>
Subject: Re: [PATCH v3 1/3] dt-bindings: net: bluetooth: Add
 rtl8723bs-bluetooth
Message-ID: <20200414132642.GA13898@bogus>
References: <20200412020644.355142-1-alistair@alistair23.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200412020644.355142-1-alistair@alistair23.me>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_062647_719918_74EDEEF8 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, johan.hedberg@gmail.com, netdev@vger.kernel.org,
 marcel@holtmann.org, Alistair Francis <alistair@alistair23.me>,
 linux-kernel@vger.kernel.org, mripard@kernel.org,
 linux-bluetooth@vger.kernel.org, wens@csie.org, alistair23@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 11 Apr 2020 19:06:42 -0700, Alistair Francis wrote:
> From: Vasily Khoruzhick <anarsoul@gmail.com>
> 
> Add binding document for bluetooth part of RTL8723BS/RTL8723CS
> 
> Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> Signed-off-by: Alistair Francis <alistair@alistair23.me>
> ---
>  .../bindings/net/realtek,rtl8723bs-bt.yaml    | 52 +++++++++++++++++++
>  1 file changed, 52 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/realtek,rtl8723bs-bt.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

Error: Documentation/devicetree/bindings/net/realtek,rtl8723bs-bt.example.dts:17.1-7 syntax error
FATAL ERROR: Unable to parse input tree
scripts/Makefile.lib:311: recipe for target 'Documentation/devicetree/bindings/net/realtek,rtl8723bs-bt.example.dt.yaml' failed
make[1]: *** [Documentation/devicetree/bindings/net/realtek,rtl8723bs-bt.example.dt.yaml] Error 1
Makefile:1262: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1269392

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
