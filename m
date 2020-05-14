Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA631D33AD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 16:55:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+7KsEhuTCS8ugEBne5sVxqc/g62glehIj16gAQLjt/8=; b=QZm6XQl5fYSQV6
	PoKCL3dsazid6OMXZz1RuhXyfvuUFkLd11EOrn0I0+nYDmIbMh+cimmotgrPyC8MiUJ3c/ddDKGlp
	fsxsTi0kP+LGocW+fd8uCpFbfKSWamQlYDtDV+um9KeGOl9hhYJ/pUPKs5Xaz8OYTvxdMceOruQPs
	+j/oEACFtZCBzg8S3XUo9Giqi07BV//px2KNee9C3/lFlCOz2ViHb9D+u9ucah9j2i3tNJyI3jV9D
	c7eh5+XMekXk8qqimEbg3d5ddZXZBGX2D3FFEJ01yiOG/vwWY/uhXi4S/wwvkAqkdS8R9pKE3ixsT
	3OWOGiABkVArW8prwZhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZFGg-0002Sg-RX; Thu, 14 May 2020 14:55:26 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZFGV-0002Rw-SW; Thu, 14 May 2020 14:55:17 +0000
Received: by mail-oi1-f193.google.com with SMTP id v128so7940752oia.7;
 Thu, 14 May 2020 07:55:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6GKTQ1hvayQx5OvCaJHWXeEsZVK5jinIl8AV+xK1lWo=;
 b=M52v+3Y99R2jbKdj44xxOlabMOvKSZto01DXmKKUz1Vk/Ro5ut5RLJxTDD/v01rGX1
 cIb/TAUk/y8Y50Unu7GDIjXev3qAbjHW5k9x7icF5CGXRzER4Cit9WWK81hr3wuTDtH3
 MOfI6NqthNsJ/5tx8cgUlyTuS1qMLPd+GFO52mlwbYB4zSe/zgLPlnMpQ4eS5afLRu4A
 VjegyRHmKq6xviVRprNIzcYBkm4XGCg3Sx+oiul7OnCHHSq6odIU8KYKDrVSc17g58SZ
 oHA347oU1LP81Vp7KJshzY78gkRkcInrWk+bZu7ewN2c6ZQgza9gIwrW4ze0v8tL2PvQ
 Qw/A==
X-Gm-Message-State: AOAM532GbbNmf1ngBR5hR8cVqGx/A84Gino35dL5nDkiUb3p2LkGx5V9
 J6EWrMroTRQne9sn/Md92w==
X-Google-Smtp-Source: ABdhPJzPExS9+yhGzaOvpYeJu0M9Sj6OuOpDB5AsKxDZI3H8LoAnJ+egHuHqWQI81CVMcYTdbNgB0g==
X-Received: by 2002:aca:aa91:: with SMTP id t139mr2198536oie.176.1589468114895; 
 Thu, 14 May 2020 07:55:14 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id u17sm837801ote.63.2020.05.14.07.55.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 07:55:14 -0700 (PDT)
Received: (nullmailer pid 28709 invoked by uid 1000);
 Thu, 14 May 2020 14:55:13 -0000
Date: Thu, 14 May 2020 09:55:13 -0500
From: Rob Herring <robh@kernel.org>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: amlogic: add odroid-c4 bindings
Message-ID: <20200514145513.GA28489@bogus>
References: <20200506080702.6645-1-narmstrong@baylibre.com>
 <20200506080702.6645-2-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506080702.6645-2-narmstrong@baylibre.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_075515_927667_569B28C3 
X-CRM114-Status: UNSURE (   8.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: khilman@baylibre.com, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed,  6 May 2020 10:07:01 +0200, Neil Armstrong wrote:
> Add the board bindings for the Hardkernel Odroid-C4 single board computer.
> 
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  Documentation/devicetree/bindings/arm/amlogic.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
