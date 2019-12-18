Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD821254D3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 22:37:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5dFqnpJYAqdTyYGmG38kksGmP4meh348zChXx8DIOmI=; b=euiMmX0EfpzKLx
	uD+14R6bwqZEmiuzgrIRcCYxEw3KJtyu5+1Oi2oKX4z+4XjtI9ALASmolGj6uLRSbJADSftS/YUx4
	jZMzo6EEYezEjinc4OxGnYSSq/eI7H7vS0sHMi5aU1zEwVn4oFWRAL6JLe2ADImITfTGLHm2DVka8
	1C7czcAna6eduYuyYlrXNy6Ts4uK7WKV3oPEVwLdtCQ3w1iUrgD44sja0Zb4nkZ8UDJ+WRE37T2VU
	x0w5Dz9GOOb21W1sbWD641EmEU9ZTcpODosQzMO5NPiiAKqXbHRZP2z6mZ4Kd9WHGn/P+vgBdMHTW
	8JX3JasRNxSkvDiakp4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihh0d-0005tf-TV; Wed, 18 Dec 2019 21:37:31 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihh0Q-0005t2-KZ
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 21:37:19 +0000
Received: by mail-ot1-f67.google.com with SMTP id f71so4259573otf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 13:37:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:content-language
 :user-agent;
 bh=ifuKCDLglV3cQ2NjiVrZMr22gRDHsz+j+tKyqQeTxHQ=;
 b=Nbd3qeJ4tV9960r9IAYmMdynBaAt1p1jva0R7DEeWmdk4z80qRF7BHGO6WhPYKvday
 s0b1utoJtbnZbOvlEj+Nv92AJpNeG6f4Zyf/HXz0H2vaeRX3KyY1rWA96+bpVQ7dVluM
 i9obQa5B5tasjfvknO7s2JO22qjKAGtHzaQCIQa3BVUE4v0JxQ89SrjRNXgd6L4uXUu3
 7V4E51XJmmS2NyzdpDC+1h74PlKM4ASsIccyOtgVKg1MXmzSEfdFJlUIEoeGqbTrWaJw
 /QZO+OVXUIA8t2Z6qLyN4K4m3LVls7u35F85P+mSG1t8CRFLH1G5Nf+kWY+kaxYDpFIw
 +bhw==
X-Gm-Message-State: APjAAAUjDfrfegTb0eWYn8KsNGFC/PiYNDGYVWY0ZRSj51QDsEFVf8Ct
 piTmdj9RjWBrQ8UhzgW1Ow==
X-Google-Smtp-Source: APXvYqyb5pOkEkq05UBSd4+BP9Qw43aHqaQLKGXY2sc4jHQcsLcCb95uhzFgK9KV8LGcg5xUOxHBnA==
X-Received: by 2002:a05:6830:1bf1:: with SMTP id
 k17mr4833956otb.101.1576705037550; 
 Wed, 18 Dec 2019 13:37:17 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id g25sm1263886otr.8.2019.12.18.13.37.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 13:37:17 -0800 (PST)
Date: Wed, 18 Dec 2019 15:37:16 -0600
From: Rob Herring <robh@kernel.org>
To: Eugen.Hristev@microchip.com
Subject: Re: [PATCH v3 1/4] dt-bindings: i2c: at91: cosmetic formatting of
 compatible list
Message-ID: <20191218213716.GA30887@bogus>
References: <1575886763-19089-1-git-send-email-eugen.hristev@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1575886763-19089-1-git-send-email-eugen.hristev@microchip.com>
Content-Language: en-US
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_133718_673932_6EA9228C 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: robh@kernel.org, devicetree@vger.kernel.org, wsa@the-dreams.de,
 linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 linux-i2c@vger.kernel.org, Eugen.Hristev@microchip.com,
 Codrin.Ciubotariu@microchip.com, peda@axentia.se,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 9 Dec 2019 10:19:59 +0000, <Eugen.Hristev@microchip.com> wrote:
> 
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> Format the list of compatibles with one compatible per line.
> 
> Suggested-by: Peter Rosin <peda@axentia.se>
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>
> ---
>  Documentation/devicetree/bindings/i2c/i2c-at91.txt | 14 ++++++++++----
>  1 file changed, 10 insertions(+), 4 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
