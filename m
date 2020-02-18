Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B11E81636D7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 00:06:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vJjvcoEPYJUZa1du39q66TiATQlGoufV0BpSxkkokOg=; b=LO3zzZhc3UFjS6
	P6vpmaCPmUzV7AspDcF3SBUNe+5pemvshiCpDUBZ3f8ebMpOp8kRSeQAE4VFgQiFYwxhcBePmeT2e
	ja/JNRmW0yiwzINl2vIKq0BO3pySiYB9Rn7u1go7uygS7jMnj1cYaPDSs5pOVr6M6hJbIfEjzpOd9
	5oQuIES2mdGbNUbMyRiaK8nuVFiex9KpodMDKdYGl55Ib8vLtD88ejNzKG+xTFM34x1YR3hl8+mDj
	QyJockTtdbdANVPGbkkElBj0LVqA+mYNWbezkKgMu7OpD11wy+CJte8VXeQHsI9PZVeoHH+jVo6bh
	3rg3ElXiEYPr8PN88oUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4BwL-0001W8-5x; Tue, 18 Feb 2020 23:06:05 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4BwB-0001VF-ON
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 23:05:56 +0000
Received: by mail-oi1-f193.google.com with SMTP id r137so2340537oie.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 15:05:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YBc22ibS/f5NdUYtHpt1goigjX9wJQGgMTv7A78YKKU=;
 b=RIbadafMIMwlStJs4CZsF33QRStRUmkhlbvkxI1WIzBHFaCyMfDcHluZstIT+C6Up6
 toJJxzKs+MUM/L2LI4/oO6BWoy8IZm9ob1G33eqQe43W/2I0ynjrY9RCHEsPVBtdKiHW
 a4aFRTqZTNHtq++rrCXGQnq/pij+KHVmEtuU+AXp0VinNR47AF2M9BEPrYfqVLDx+23l
 z04gaF5NMCH0f4hrVWWjpu3P+yYcHgPpDi338k8Tynj2DEmuxbVpKE+a14aBlz/gW4zp
 1j9ZjeT6pQby6csBUOisRVr+WLVYGp1Ni9AzQ80BkM3dYVX8CbOxH99BSQEyKuRpU+7j
 uevQ==
X-Gm-Message-State: APjAAAXoFvEDC4pITQS7S6bfuFu8qPi3SWKbhyOckMlaczSdVDJ1/H0o
 LUWrzKrXG4RXjWsI3szmzQ==
X-Google-Smtp-Source: APXvYqwBbePK/9QhmCJoARaCJy0zyodtUKCm3LyZdC3LEyvEHvQgMMFxQgZCyg7mrLWqrGDWTEPv5Q==
X-Received: by 2002:aca:e084:: with SMTP id x126mr2735185oig.97.1582067154017; 
 Tue, 18 Feb 2020 15:05:54 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id j5sm1836683otl.71.2020.02.18.15.05.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 15:05:53 -0800 (PST)
Received: (nullmailer pid 14924 invoked by uid 1000);
 Tue, 18 Feb 2020 23:05:52 -0000
Date: Tue, 18 Feb 2020 17:05:52 -0600
From: Rob Herring <robh@kernel.org>
To: Nikolay Borisov <nborisov@suse.com>
Subject: Re: [PATCH v3] dt-bindings: hwlock: Document A64 hwspinlock bindings
Message-ID: <20200218230552.GA14873@bogus>
References: <20200211122624.16484-4-nborisov@suse.com>
 <20200212115419.29038-1-nborisov@suse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200212115419.29038-1-nborisov@suse.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_150555_792663_C23CA909 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Nikolay Borisov <nborisov@suse.com>,
 mripard@kernel.org, bjorn.andersson@linaro.org, wens@csie.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 12 Feb 2020 13:54:19 +0200, Nikolay Borisov wrote:
> Add binding for the hwspinlock found on Allwinner A64 SoC.
> 
> Signed-off-by: Nikolay Borisov <nborisov@suse.com>
> ---
> 
> V3: Added #include directive. This makes the patch pass schema validation.
> 
>  .../allwinner,sun50i-a64-hwspinlock.yaml      | 49 +++++++++++++++++++
>  1 file changed, 49 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/hwlock/allwinner,sun50i-a64-hwspinlock.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
