Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 220431E6D79
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 23:18:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B7P5pmbIDj9DS3N6g4yYr0j9eKxWYlbmw+eKfFCEafo=; b=CImPt8nxJY+j/R
	162JFQP4mnyq7saq0RZWxdrWrx4SOpqLHojaIfs4ADBsUUbY9mhFiXGA6TEmugLbLestL8SrHl9uG
	JcQCq3EwhAJx7L8yE/mgNQFxlBwIBw9EaehSfEDTxplnhdTZAKcrzGIfB8A742cv/LHvZem6QjFaU
	LaHSLpPoj2o0Gsy/0E/Lzy422CYHAnYgqleCypfX+rrcCyEGji2FLYDU0r3RJX+y2VotqXWaLrczW
	ksXW8GVLx83ShihdnMy22WAuV8QwYJFcXCFdVaAAX9V9JDSM7yTNQawvr8mg6zLQYJBgC9q5O26iG
	Bqc5bhe0cihYLrJEIlKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jePul-0004C6-VA; Thu, 28 May 2020 21:18:11 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jePuX-0004B7-0x; Thu, 28 May 2020 21:17:58 +0000
Received: by mail-io1-f66.google.com with SMTP id j8so3136iog.13;
 Thu, 28 May 2020 14:17:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=v91yPCdHctgz0ohSCsD9yZNDuIS5ieVbnmtfs1+Nr8A=;
 b=Y6+uOgUk33mtB/mPsT5bpgAu1zAX1OzwSIIJGmm6v16h5P0TamJ5P5OYtvbvwYWzXQ
 9kcwWVU7ERCJVh8uyVl3zabdGbakw2n2LlBLo/zZ9mCoXh4NrqjXJv02TIphBxKu+9aw
 qZBJ+9BWrSZ68ZfszDqof98dzwQh4TqPdvhq8CIKuMSXHn3qyb4ALzvk/zFtnz87pr2+
 Ep/w/qzAxx3BpsMPvr6/lzo+dTMC2RqfCescJojGTBIouMf69iKeTJQKDQUzoo7nKt9E
 rd1ukb3DmDzbskUF3jFL57Dj/Z+ovmBFrEgg6DXjBmE8U6iRplS9LD64djmHwD9JPbd4
 nhBQ==
X-Gm-Message-State: AOAM531dS5ugqLsHbeh2LsBr00ATzHbWRAbrXlwYtlNfzAvNPOMVEEfi
 2cmmvI8CMZje50zDBeZNsA==
X-Google-Smtp-Source: ABdhPJxmnYG0SfP1hghvgB6hSIzDb/O4xJbcG4wBUzwbDodnFez4tsFdXWWkYF8bUcZNBk/xN+0pIg==
X-Received: by 2002:a02:c959:: with SMTP id u25mr4276095jao.46.1590700676192; 
 Thu, 28 May 2020 14:17:56 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id r68sm3757333ilb.37.2020.05.28.14.17.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 14:17:55 -0700 (PDT)
Received: (nullmailer pid 702383 invoked by uid 1000);
 Thu, 28 May 2020 21:17:53 -0000
Date: Thu, 28 May 2020 15:17:53 -0600
From: Rob Herring <robh@kernel.org>
To: Amit Singh Tomar <amittomer25@gmail.com>
Subject: Re: [PATCH v2 08/10] dt-bindings: mmc: owl: add compatible string
 actions, s700-mmc
Message-ID: <20200528211753.GA702332@bogus>
References: <1589912368-480-1-git-send-email-amittomer25@gmail.com>
 <1589912368-480-9-git-send-email-amittomer25@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589912368-480-9-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_141757_071828_7240F2D3 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.66 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, andre.przywara@arm.com,
 linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org,
 cristian.ciocaltea@gmail.com, robh+dt@kernel.org,
 manivannan.sadhasivam@linaro.org, afaerber@suse.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 19 May 2020 23:49:26 +0530, Amit Singh Tomar wrote:
> The commit adds a new SoC specific compatible string "actions,s700-mmc"
> in combination with more generic string "actions,owl-mmc".
> 
> Placement order of these strings should abide by the principle of
> "from most specific to most general".
> 
> Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
> ---
> 	* Newly added patch in v2.
> ---
>  Documentation/devicetree/bindings/mmc/owl-mmc.yaml | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
