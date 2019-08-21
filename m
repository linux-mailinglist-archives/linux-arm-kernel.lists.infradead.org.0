Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF78F983BF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 20:55:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=os3U7MQTUt58/iWYOvFNpfLkKfj60+Qh9Yux4TkDais=; b=uSj4yKuKV6uNFm
	AzinvKxc5D77PCPlrm2lpmad8hfNqLfjbeEs5RmYOuZ4AZjnuM9xAMIOoGrZqTeBWOn35tnlg7Lhc
	zqnr6HaAGjXJHVkixLWyxQvQLVuGCdAJFxwui3BYHR0WkhKaFY9Y6b0+5P/b9xKjjPNk33v8qs4LM
	RwXMj8n6QD9hMC1mfVEUixWZeIAy42PD5I9OXoxNWyMecNTVP1PGVS5W/w5zyTKBY/XfOvJolai1M
	srk5YF8lV4oHwyGR3ozsqxw1MUTCD7PcV9HIGhpYFtUG8MCrb4EVkbWK2n2MzcWYopdsuLXfaqL43
	gkko3WNQ69mYPZncZMlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0VlX-0002un-KP; Wed, 21 Aug 2019 18:55:27 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0VlP-0002uQ-U9; Wed, 21 Aug 2019 18:55:21 +0000
Received: by mail-oi1-f193.google.com with SMTP id l2so2439739oil.0;
 Wed, 21 Aug 2019 11:55:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rERMOO22DxL02BmdSf/5QgCf7VKhnIC3ZuuGwFUZfRU=;
 b=GY4auHkAYrRALLebavxE0q/Ss0I2fJCMte+jwlVu/cybac8Ljy/17/qx+qil8gUAdq
 9gkGfQQ14k3I1RBPZjUJ9FBY8ytfXM5oba3RP2WOQcXyjd1u/VD5IJwfC/w1Myil1TTV
 mnvtpJ9q2GAG8xg3hW9u6Whtekx3acbfck3lez0GUY61OgaY//HsGWUl1OJwvDvoUNZW
 QoYQIzyJZl2Q2StR5PJSh7lRbZlkjop1dWLCMo/Ae0IWXe4MvtJFBRlaDrGkDt66UxKf
 L+dmsoU8NWVysldEVgh8fobR/HiMnMeCl+Abho5ogsTtv5jBTJSXeuC4a/6gnC8dJMYc
 kIRQ==
X-Gm-Message-State: APjAAAXyrK3wKC5WObW6L/7fVDcn5YV9nOOT48FbTq9hCvrHX2C8gHZl
 k3i7OHTnEpK6vO4dtpQUyg==
X-Google-Smtp-Source: APXvYqz3JEcVbf68CAFziNoluNLQIdlZjFRfx0/mCbuwzLOzZfuB14oQi8LCeZrqjqzIB3eeM0xdWQ==
X-Received: by 2002:aca:dbc3:: with SMTP id s186mr1125505oig.179.1566413719162; 
 Wed, 21 Aug 2019 11:55:19 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id h33sm8044610otb.55.2019.08.21.11.55.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 11:55:18 -0700 (PDT)
Date: Wed, 21 Aug 2019 13:55:18 -0500
From: Rob Herring <robh@kernel.org>
To: Fabien Parent <fparent@baylibre.com>
Subject: Re: [PATCH] dt-bindings: rng: mtk-rng: Add documentation for MT8516
Message-ID: <20190821185518.GA32228@bogus>
References: <20190805130215.20499-1-fparent@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190805130215.20499-1-fparent@baylibre.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_115519_974731_D858BA92 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Fabien Parent <fparent@baylibre.com>, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, linux-crypto@vger.kernel.org,
 matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon,  5 Aug 2019 15:02:15 +0200, Fabien Parent wrote:
> This commit adds the device-tree documentation for the RNG IP on the
> MediaTek MT8516 SoC.
> 
> Signed-off-by: Fabien Parent <fparent@baylibre.com>
> ---
>  Documentation/devicetree/bindings/rng/mtk-rng.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
