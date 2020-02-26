Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86CAF170263
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 16:29:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nw+80K2gzgwg02cEIVRMc8oZFHJYsyzLgA10eIZ0eIQ=; b=OcBxkUEjNMsFKg
	nGJc+Xie3bfa+rqNO1nTwIL36OjCrDr5o+XaCgr/Euc77DtqKeWivJAo1tdUYvPjcVzWZPlPvEBh1
	u5jVgMqr+SQeEnICkryqoGHnDTFsrInU7LEC2bTAsjgU1a/DAtvVr11NXbN2bx37lfIU6DRg3HVAo
	Uga9xa9GgCz3CZw6yN7klHD96JosxCeOJ/vswI8wxA8Mt8lWInRmBCJCx9avpGXK+PWgHmB5MCH3g
	QQASuOhi040vSqoOTRilNHdC++TxcXQZm+XCrOJEdaqelOlOmI32r2+VbfOMj8yl1oE9WqZ2ILaeQ
	jRVZBbUNBalA2AjqAT1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ycK-0003yT-MO; Wed, 26 Feb 2020 15:28:56 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6yc7-0003wH-34
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 15:28:44 +0000
Received: by mail-oi1-f194.google.com with SMTP id q81so3443580oig.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 07:28:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tlkjZTSr9fdFqEh+9gk6N9q+6soYx8xTnJAJEU7FsTI=;
 b=inlVntBZFsebppUT450SEflVs55ABqdCI2k2zCgEly/nvEkDFhiBFN67DGZbwkVjOU
 altUwxHpJ7GDvXM//T+idPRNqmLMIZFk1HnbuTUZ6k01LqXmo9ZWyMuFdMdZN3ShwFAj
 cI+4EMqFufKCEN6d9laZm3u1oSlPayta3LGjDE95DhAePHzaSqox/9/xFmFl05FvtNuP
 7LZHXXCdbrbZ1SdURSGJU67daC0gcuOjOY0FSvV497x9ldONGd+ytI2TB+oQBX4CKjif
 zI4qwGR97s8URdlSlXMfHCU511SBkgTPqlADdEDO5KcK3v5GDA+GyBKstkcO8GHWMmx2
 f3fg==
X-Gm-Message-State: APjAAAV27HkaZmi1sG0GkwbJL/f4Wuem8as/BFIRv1QJHTEYo/WWHM7/
 Xg2pgg+un1mbdkKkSTXzNg==
X-Google-Smtp-Source: APXvYqyeVeFdUuQsfcVGuraxTUJZVUbXtdycuNGtDLE13wPX0iiriPR0yM5gO+qQysu9jWjAdh5Y7Q==
X-Received: by 2002:aca:cf12:: with SMTP id f18mr3661259oig.81.1582730919986; 
 Wed, 26 Feb 2020 07:28:39 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id j13sm907194oii.14.2020.02.26.07.28.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 07:28:39 -0800 (PST)
Received: (nullmailer pid 3981 invoked by uid 1000);
 Wed, 26 Feb 2020 15:28:38 -0000
Date: Wed, 26 Feb 2020 09:28:38 -0600
From: Rob Herring <robh@kernel.org>
To: Lubomir Rintel <lkundrak@v3.sk>
Subject: Re: [PATCH 06/10] dt-bindings: clock: Add MMP3 compatible string
Message-ID: <20200226152838.GA3910@bogus>
References: <20200219073353.184336-1-lkundrak@v3.sk>
 <20200219073353.184336-7-lkundrak@v3.sk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219073353.184336-7-lkundrak@v3.sk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_072843_130303_800C315D 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, Lubomir Rintel <lkundrak@v3.sk>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 19 Feb 2020 08:33:49 +0100, Lubomir Rintel wrote:
> 
> This binding describes the PMUs that are found on MMP3 as well. Add the
> compatible strings and adjust the description.
> 
> Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
> ---
>  .../devicetree/bindings/clock/marvell,mmp2-clock.yaml  | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
