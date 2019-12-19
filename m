Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5419A1271E1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 00:56:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r9AVgozQBoXQohnwqVpmYOVffmumY4+mxnBrCKyNWnk=; b=WPxz3WSfb/2um2
	VSmNBdb7XtaAGJUtJFErQhZXbAoK+Z550guNqQJf94jcHrrrosFb6Cg0KsgFP+qmxMumgSrZeTFxw
	AmgkaexjjCrRCqSP/A08BJchCNMplxmqoUedEWt/VcJMkNp9uhPMtc9E9o9j0e+Qk/oDPIUtUkU8c
	u4pguUcosrk8HGbuF1wNQC0DCuQYO1Fo1kZR7yBwxvt2yFU9Cq474QrNr2hg7gfNkWF4uEStj4jk5
	FhsI5Zgv5QbLoJXPq++n14wzucLvyejCq0Z9uY8+lKtBmg3/x4/r9Grn9zneOIJooGYBpHLJz2OC9
	P4OIwDY5VPMrErHB2vSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii5ee-0007Oy-Lf; Thu, 19 Dec 2019 23:56:28 +0000
Received: from mail-yb1-f194.google.com ([209.85.219.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii5eU-0007Nl-Cy
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 23:56:20 +0000
Received: by mail-yb1-f194.google.com with SMTP id i3so2904573ybe.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 15:56:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ARCZQqxf+0FzEB5iVazPT6aK74bYUEn3HXg9HU6qLcQ=;
 b=JznnDBhp3+rxQMPBxz7bzqtxYHihm5qn7gliK4yHmYoNAyNpJw4r3Dv6CYyTWNbb8+
 JVkrdlJpYtI+rNCBqu0+MiQ70karl5aHuvAOvVsQ1dorIo/dPOhRvg9GD+XzCPtdJ9ut
 jtYRi91RmZxxs4B49grhtBi4a2FzhlkEj2ZLeyKlioGV/i7FHm3Kxh53QsLS0Bzokzgu
 8Exw1ZUbSX9iP/1GYrmMrGof7nOsmwoSNoA0LlIU30PPZ598hSOy3l1oK6VbLV1NT8c9
 wXWMvULQEEWnBR68v/LBx5n8J0HHvBr6Qa4MMc3BnjvZ5BeWWi0cgR9osAcLefJzUqWe
 S71g==
X-Gm-Message-State: APjAAAUx0TAIIBlaHh67Ycz3RESCTQ1ufhDElGy4LGyq6vZtfgYYpKqe
 wbQ1+xhWcFwwOWZ/dnQYOf9Yfa0=
X-Google-Smtp-Source: APXvYqywBAQDOyS21IT+zvRVl4XolNmnzFYexAWz8fo5ibiktWXARwDGoYAPr7Xhqa1RU911jzX1Pg==
X-Received: by 2002:a9d:5885:: with SMTP id x5mr11347193otg.132.1576799776295; 
 Thu, 19 Dec 2019 15:56:16 -0800 (PST)
Received: from localhost (ip-184-205-174-147.ftwttx.spcsdns.net.
 [184.205.174.147])
 by smtp.gmail.com with ESMTPSA id z12sm2730992oti.22.2019.12.19.15.56.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 15:56:15 -0800 (PST)
Date: Thu, 19 Dec 2019 17:56:13 -0600
From: Rob Herring <robh@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH 01/14] dt-bindings: media: sun4i-csi: Add compatible for
 CSI1 on A10/A20
Message-ID: <20191219235613.GA9523@bogus>
References: <20191215165924.28314-1-wens@kernel.org>
 <20191215165924.28314-2-wens@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191215165924.28314-2-wens@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_155618_438511_ADEE7E20 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.194 listed in wl.mailspike.net]
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
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Chen-Yu Tsai <wens@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 16 Dec 2019 00:59:11 +0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
> 
> The CSI1 block has the same structure and layout as the CSI0 block.
> Differences include:
> 
>   - Only one channel in BT.656 instead of four in CSI0
>   - 10-bit raw data input vs 8-bit in CSI0
>   - 24-bit RGB888/YUV444 input vs 16-bit RGB565/YUV422 in CSI0
>   - No ISP hardware
> 
> The hardware found in the A20 is the same as in the A10.
> 
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> ---
>  .../bindings/media/allwinner,sun4i-a10-csi.yaml       | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
