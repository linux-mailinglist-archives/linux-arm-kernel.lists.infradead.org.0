Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 767331C60EA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 21:15:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rVBoGs2llf/NTlDqWs8vWO5yp3+M8t5HmpTQ1QHWjJc=; b=rJ2oBSaP8EC0io
	8oZsYWa3J131hgKXHxmN7iLemPUXqMTOLDTTu0opqmO06n4DYokhczIrXwrROYor8zg+j/tHtuPA+
	B22FYjj/YkXDPF1KTmZJNm33iS5rFiYr68T4XyMNBOAfC2dmgO/H6WeKG3uhXuEL3mmbyDbMn5Bhk
	VXwMRHmU1OKlGIxUqqNddhl9rHY+UQAOkscRy/IHgqTgFiM8ZrySDwIduGlzjXfsbSUCqZBIWsG0V
	nIsXdEn01oZku94rMagX997Od+nfcMeZYNAq/P3cLqlz5np7j4iib/UN3/1Y+xzbxagvENyPGGpMh
	hE57UERVzPDBnnEJYqBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW32c-0003FS-AM; Tue, 05 May 2020 19:15:42 +0000
Received: from mail-ot1-f51.google.com ([209.85.210.51])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW32S-0003DQ-JF; Tue, 05 May 2020 19:15:33 +0000
Received: by mail-ot1-f51.google.com with SMTP id j26so8357ots.0;
 Tue, 05 May 2020 12:15:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XoHZt1v+HXOCwO7SD36qP6zAfCtrd8CNqlmb++NU8YY=;
 b=U0lX3/sjcn9yPjbZtSzcjl/FgQDenpqS5K6lYEAP7KhslQdbaBNafiRb+6lwXXtCPI
 /dplWDhl0lA0UMFMxDO/YuCWaNTyeVl881Y6SukkiBeGo3m3eTXOSCt+FtHr+OGSyp3s
 rzE6bsbZRWq4OcnbhBFZsZGxfzOSVkx1gGAjdqRIOi/d8C44D/QBGz6+GgXhbUFovPaA
 Qtk9H5SJ3UQTDcvRXD43ilFozrH89kqRBv06UPup0wI7vdwrZkEFoCBe13KK+mgksQmE
 8FRAYXQRtWYNhehHmGncbWsqfcvyLoTFc4PF0uH3p4eDzg2+ywSZFUhUACq6HyO/YomA
 MovA==
X-Gm-Message-State: AGi0PuYYtWNG4I74Gzntkp0si/r/S1SEhDVIKrGE3rLMbOgvQSJGbJLo
 d74bv8+nxqgEpJaol/t2Pg==
X-Google-Smtp-Source: APiQypJ0OwtXiTN14pTnb4JSYnEKPWlE8p/Y3d5aQVPv5XX3SPxmyciZRldsnF55K55eHRzZK/W7Zw==
X-Received: by 2002:a05:6830:2158:: with SMTP id
 r24mr3829724otd.65.1588706131344; 
 Tue, 05 May 2020 12:15:31 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id j70sm785945oib.53.2020.05.05.12.15.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 12:15:30 -0700 (PDT)
Received: (nullmailer pid 765 invoked by uid 1000);
 Tue, 05 May 2020 19:15:29 -0000
Date: Tue, 5 May 2020 14:15:29 -0500
From: Rob Herring <robh@kernel.org>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
Subject: Re: [V5, 1/2] media: dt-bindings: media: i2c: Document DW9768 bindings
Message-ID: <20200505191529.GA701@bogus>
References: <20200502161727.30463-1-dongchun.zhu@mediatek.com>
 <20200502161727.30463-2-dongchun.zhu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200502161727.30463-2-dongchun.zhu@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_121532_632172_20DEC6C3 
X-CRM114-Status: UNSURE (   7.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.51 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.51 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, drinkcat@chromium.org,
 andriy.shevchenko@linux.intel.com, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, linus.walleij@linaro.org,
 shengnan.wang@mediatek.com, linux-media@vger.kernel.org, tfiga@chromium.org,
 bgolaszewski@baylibre.com, sj.huang@mediatek.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, dongchun.zhu@mediatek.com,
 sakari.ailus@linux.intel.com, matthias.bgg@gmail.com, bingbu.cao@intel.com,
 mchehab@kernel.org, louis.kuo@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 3 May 2020 00:17:26 +0800, Dongchun Zhu wrote:
> Add DeviceTree binding documentation for Dongwoon Anatech DW9768 voice
> coil actuator.
> 
> Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> ---
>  .../bindings/media/i2c/dongwoon,dw9768.yaml        | 60 ++++++++++++++++++++++
>  MAINTAINERS                                        |  7 +++
>  2 files changed, 67 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
