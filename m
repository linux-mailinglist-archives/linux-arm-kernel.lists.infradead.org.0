Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C61A61C1F44
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 23:10:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kY3vxYtQgnzapIwWgPDwX5wp66FMHG3xhIVGL5DEmEY=; b=cdI7jG/yVXOmcr
	3GIaZHX7vv2hTGBR/iFqkNhU5JJSuVix6IOxWRv58I5vnLSgVgiXoNV0orCW8QpQ9uFkC3tooEeV0
	AMvqOQK9psC7oLQJq3u/X/skGPXbjOouAL9PI0U8KC27FAFtwg/+CHVvBxU3KeQCMXxDKe7RmpNOF
	9ktCdu0pF2GgPSpu/ipGx8+8G7jlR/yG+45pIt4NKBw43YWz1gXevfUXNbt6ti9peFjXM9guQtd/g
	2iy20oPfzVVHucmm5iFFcwooR4PAbgcoCAv/tbIWxdhBT1ppPM3MZJ6n0mQm95Cujz8sbg/4YMOE6
	JAghrjCZ6mlPUVsKgDxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUcv1-0006tt-IX; Fri, 01 May 2020 21:09:59 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUcun-0006rV-KB; Fri, 01 May 2020 21:09:49 +0000
Received: by mail-ot1-f65.google.com with SMTP id z25so3571591otq.13;
 Fri, 01 May 2020 14:09:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=azaNq8gnek7T+A7rdK17PV/xQfKmjBVg34Ma1l/t8qw=;
 b=I9MHl3/PqK1G7wIzCtedAKRtVrHR3HnhPyWvBe9HQ1UCr8ioyr3VTuE00mXs8nLKor
 VQfZJHc5VUFnDeyc61hVYm6rMOzpjT3IAfAp6k/3hR4Ge4QAsaM0u1As1g/1e0S7/n0i
 ERMEoYGaALk+q0VouFZs893V/SLsxqWFzSQVbmBAl4u+yw13z0iJlZs6jG+Uvdm4E9C6
 k3WZeX2A+UzR5kTFHl8EaOmUrHS9il+ZcSREwtWe5J86cfccGjCTiBojZkkK8NgBtvuO
 v7z8V7sbF/Eex63yRyQbcl95MRBxXkS/Uq9HCE3Gi6Hb+icHGPgy8gCd6Jx8OZCQh1/F
 +rgQ==
X-Gm-Message-State: AGi0PuY9mshzXTTR6OlhyMf3ZBjr8arZ2c0FVC1KIvFSCNVg0YbBL5W2
 1icBVXeyrJGmEzF9yC7AXg==
X-Google-Smtp-Source: APiQypLECOBaRa68pLT9OXVtC6bUt86y91nQBnNKSvn0KMAG/61MoBxyIwqFEkO/eNcHjZD1+jP0MQ==
X-Received: by 2002:a05:6830:20d8:: with SMTP id
 z24mr5338741otq.74.1588367384402; 
 Fri, 01 May 2020 14:09:44 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id h24sm1105171otj.25.2020.05.01.14.09.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 May 2020 14:09:43 -0700 (PDT)
Received: (nullmailer pid 30822 invoked by uid 1000);
 Fri, 01 May 2020 21:09:42 -0000
Date: Fri, 1 May 2020 16:09:42 -0500
From: Rob Herring <robh@kernel.org>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH RFC v2 02/11] dt-bindings: net: dwmac-meson: Document the
 "timing-adjustment" clock
Message-ID: <20200501210942.GA27082@bogus>
References: <20200429201644.1144546-1-martin.blumenstingl@googlemail.com>
 <20200429201644.1144546-3-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429201644.1144546-3-martin.blumenstingl@googlemail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_140945_660938_79C35620 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
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
Cc: andrew@lunn.ch, f.fainelli@gmail.com, jianxin.pan@amlogic.com,
 devicetree@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-amlogic@lists.infradead.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 29 Apr 2020 22:16:35 +0200, Martin Blumenstingl wrote:
> The PRG_ETHERNET registers can add an RX delay in RGMII mode. This
> requires an internal re-timing circuit whose input clock is called
> "timing adjustment clock". Document this clock input so the clock can be
> enabled as needed.
> 
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>  .../devicetree/bindings/net/amlogic,meson-dwmac.yaml   | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.example.dt.yaml: ethernet@c9410000: clocks: Additional items are not allowed ([4294967295] was unexpected)
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.example.dt.yaml: ethernet@c9410000: clocks: [[4294967295], [4294967295], [4294967295], [4294967295]] is too long
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.example.dt.yaml: ethernet@c9410000: clocks: Additional items are not allowed ([4294967295] was unexpected)
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.example.dt.yaml: ethernet@c9410000: clocks: [[4294967295], [4294967295], [4294967295], [4294967295]] is too long

See https://patchwork.ozlabs.org/patch/1279646

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
