Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B84D1D8237
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 23:30:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5TcEIfD6igUJjc3WKivsBx221wC5vxXsDD9uEt8SiUc=; b=YyaBAjGUuajye1
	zJHJNbJv6OBJNsjxNzF5IikEYQJyz+fS617fZzM4eMv0gw/BzV7BoLT/A4FblI0GpXY47ElAqbry5
	+XO+fKb0LzVOvYkbyi2qV69UeJB+EuPdT1uR6AAruTLKSmVC1qeoGkYmckiXnqnIp2LmTsUHX28pW
	3i4oFUGL+BRme2vsbFnVw3JURAkyoY2ZxGe1fC2BY3MCtUKk+XO/D3tXilXf+pZuMbEdM4bJ1+lHD
	1C/IlY1ayb8zr7ZmbUYPrh4NyibmWdDgJKXwIH/DcOjKFSwSs/EwnlcWDoZd1LH1I7R0VC6N4oaso
	veyAZPVCvQsOVQECreeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKUOy-0000oU-Cx; Tue, 15 Oct 2019 21:30:44 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKUOo-0000nt-Jq
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 21:30:38 +0000
Received: by mail-oi1-f194.google.com with SMTP id k9so18190244oib.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 14:30:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/WZeZHbYGdIdhIMSUCHtarWfmc88u8CPnSo2gj3DcOo=;
 b=D4mvmcnLOM18vFPx9NJgcNV0QBo5Y6jf8spfOfToansqFscXfCvI2eLPMYC7dxKioD
 ZmLJngaGybdJKgzB1OAZRFaYcTfyi7Fu3Ue4Opj3HZR6gV7DLk47DBOp5ORy+bfMMw87
 EsbOgAL0akE4/G0VWO9r+ov6VAaceaaMRIMQm+wTN31mLJIz8CT3Phs75ugHeywbx3+O
 Tb2UZJ9yOJV7N4F1gY28QTU2Y6wGMk3UaHWcyOo9xjKO1zr3Jks9DmS3JM/KWpy3fOdt
 sFT/3c/tTw/vaIM2LTjSbg4UofEJ9NR+KBGAw8cwPES5l4SUA7VwObf4SuZis3TeIbw5
 i/1Q==
X-Gm-Message-State: APjAAAUvxYXCGlG+B/WriMFhIOuAlpapiwGYR/GkKfOVOS149YZZQorh
 5zMjxK31RyHzQ57Xo/ESBw==
X-Google-Smtp-Source: APXvYqx//9H5T9AKQxXWRQ49ZNS/Ze3o/3T+jiCwN8JD13P81R7YoI0yg831kg6ViZbUL2MAwrq+pw==
X-Received: by 2002:aca:882:: with SMTP id 124mr593346oii.54.1571175033491;
 Tue, 15 Oct 2019 14:30:33 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id h32sm6895824otb.46.2019.10.15.14.30.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 14:30:32 -0700 (PDT)
Date: Tue, 15 Oct 2019 16:30:31 -0500
From: Rob Herring <robh@kernel.org>
To: marek.bykowski@gmail.com
Subject: Re: [PATCH 2/2] Documentation: Add documentation for CCN-512 DTS
 binding
Message-ID: <20191015213031.GA25236@bogus>
References: <1570454475-2848-1-git-send-email-marek.bykowski@gmail.com>
 <1570454475-2848-2-git-send-email-marek.bykowski@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570454475-2848-2-git-send-email-marek.bykowski@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_143036_878303_507C5E86 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, pawel.moll@arm.com,
 robh+dt@kernel.org, Marek Bykowski <marek.bykowski@gmail.com>, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon,  7 Oct 2019 15:21:15 +0200, marek.bykowski@gmail.com wrote:
> From: Marek Bykowski <marek.bykowski@gmail.com>
> 
> Indicate the arm-ccn perf back-end supports now ccn-512.
> 
> Signed-off-by: Marek Bykowski <marek.bykowski@gmail.com>
> ---
>  Documentation/devicetree/bindings/perf/arm-ccn.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
