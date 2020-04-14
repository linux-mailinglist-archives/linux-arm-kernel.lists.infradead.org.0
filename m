Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E29EF1A87BE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 19:41:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k8chHBrwW5YfehJgRakaf5Tup3xcqfV2S5JlATs/27w=; b=XoZbBgo+WdEa2I
	y5H+019CgQ40es2gaOiYqzomJJN5i+j9Ky16EVQPoTEjqZFsrKhL7IqGSO7JZB0mr1GT0k8/ZiWEn
	WXcIca3UtawYfAkAgVwaBVLsoQ/12dXHknOYagpmMKiOquIbVT+3shEzXcm5r3IYQZSAv23f8bptk
	1zfD2V5s3X1vf3YbUAUP3G5qLeggDVa5fTOvUpkdO8Y2iYrpbs+1HUd3HLDmRWq2ix5jfnVMBfcbN
	3zaJTh/TdR4K5xeJxZHL7N/AI1fp8KCg+eSN8y6oWWD/diFjFBHB/zWKy2XYqZume7KQ5VU7Pw2DU
	d3xIIQQxlCr7dr1aVt9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOPYm-0003OC-Mi; Tue, 14 Apr 2020 17:41:20 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOPYd-0003Mv-EV; Tue, 14 Apr 2020 17:41:12 +0000
Received: by mail-oi1-f195.google.com with SMTP id q204so11127139oia.13;
 Tue, 14 Apr 2020 10:41:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=oy5Pa2pThiwkYu8G4GkTHJjme1DMBn7sY2MflS7Zuig=;
 b=JjrZYCGeS7eOWasqaV43XStZo93D+Lb3LXcRwVIMylvzg7XoeShQer/DH8Hiotkm5t
 Pu1XbPC1aKhj7+FvZ1YnnBfqWUhyqxhINE9AOO9xE4FztBrSvzj+/6LaE4NjP0DZfmLA
 ujRJLyJVCpyikDfXV72ZE+P5cKl/lNv3dWq6TrKGwU4ngIddpGDpUBchDxHhjnf97pKw
 pEcitCGOkjO9+2+mensORfj0q89DxS1LltFQhpoQ9BT97j5nVQvgcpxlc/Jy272LAWJG
 6DEvegN7GV/vWLA4lB+8oY2jb0URDHNMn3ktk2TY7BkiWBCK9cx+toBFM6TV6znd/MN2
 qUmg==
X-Gm-Message-State: AGi0PuZvXQji1VP0qWi/PE9ZzR5xTTIpHgoCIC2KQ7erEx42vgCfAqUB
 l9+J6d4gml/hkojf29qDBA==
X-Google-Smtp-Source: APiQypKD41PgBlcTSotaK7Yjth1ocx/nKnHfnnEGSNYS9OULrLgLODfCIhLnCRAsdGgLQ4hyeSvY7w==
X-Received: by 2002:aca:ef82:: with SMTP id n124mr15636268oih.73.1586886069014; 
 Tue, 14 Apr 2020 10:41:09 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e22sm3984048otk.59.2020.04.14.10.41.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 10:41:08 -0700 (PDT)
Received: (nullmailer pid 6218 invoked by uid 1000);
 Tue, 14 Apr 2020 17:41:07 -0000
Date: Tue, 14 Apr 2020 12:41:07 -0500
From: Rob Herring <robh@kernel.org>
To: Jitao Shi <jitao.shi@mediatek.com>
Subject: Re: [PATCH v14 1/3] dt-bindings: display: mediatek: control dpi pins
 mode to avoid leakage
Message-ID: <20200414174107.GA6165@bogus>
References: <20200403080350.95826-1-jitao.shi@mediatek.com>
 <20200403080350.95826-2-jitao.shi@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403080350.95826-2-jitao.shi@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_104111_486723_51097357 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
 Jitao Shi <jitao.shi@mediatek.com>, bibby.hsieh@mediatek.com,
 srv_heupstream@mediatek.com, David Airlie <airlied@linux.ie>,
 huijuan.xie@mediatek.com, stonea168@163.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, cawa.cheng@mediatek.com, ck.hu@mediatek.com,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>, yingjoe.chen@mediatek.com,
 eddie.huang@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 3 Apr 2020 16:03:48 +0800, Jitao Shi wrote:
> Add property "pinctrl-names" to swap pin mode between gpio and dpi mode. Set
> the dpi pins to gpio mode and output-low to avoid leakage current when dpi
> disabled.
> 
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> ---
>  .../devicetree/bindings/display/mediatek/mediatek,dpi.txt   | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
