Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 731F01042DA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 19:06:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/vxleIfhLtprfk0S27CdefkMYyjc3617sX2QsMAR428=; b=kfQvHSiejnjybQ
	2Gbp6q4SgORt4VJS+85+d0e+3n4SS2Y7a+Bya+mrwsLp6Rj/hw9y/ete9GvrciCdWqtJZxhuhTQHe
	HK+oJOosVO8mJxspjHgo1ZQ/EucTBv5vOcrRV6I24LyGn3qdTC3eEPYWvmx9K9A3fdaOhPSUc86yq
	ZOHwTLUKBgHtGy0RU2CrBnmd0GbX9B6N19g47NadK9RTbOmtUSEEzxRb3X7c33b/IhAUJtbrpftx0
	z2WjlWM5999jBvX0XYrpbvgtXAuNpyUaCGq519Me8O62BARn+mkFhCuFlOn4UuzUZMbM3esq1Ak7v
	TqqHLMF0mkCBUevfBbPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXUMt-0000yX-DO; Wed, 20 Nov 2019 18:06:19 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXUMk-0000xi-NO
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 18:06:11 +0000
Received: by mail-ot1-f68.google.com with SMTP id n23so353714otr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 10:06:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7pC2i2tAxNfTAMOIZsJuvMlE/NJ0sUDUFXuzIAgYHxg=;
 b=KKMM8jPKKugOiN0KyzIPjF4UImedMuauokaTutltpzijpZRYU9CP8fUuel7uDjjYj7
 sYUQop9iIMNroXo+Q0bTheq0V2dangxbJdKNKp8VETgWw6RRHalfWhPHBahhG/RqWNuu
 1qZJNycjmK3F9BTQhzZw7varmg2ZFvhK/keVgpB1n97iHU0tR7j06ij8b8XqwhDXZq+2
 pIq2N5FnXDV3ZkDp6Xt4i9mlzg7U2tz3sP7/DRVBUOUCpiruN/6i2m0S4ASlbhZhYDTZ
 qcUx8ZY/Xn9k7hMibsqwhxi8P6a6KNmUgXXFZYt8hLsf4PlndtKrav5Rly5rdHk41X0E
 egpQ==
X-Gm-Message-State: APjAAAWxR6MCqPAKRQNta/tNG7DdP2KAqWhWLhdwE4SKSUhui4Sjqtml
 9fVHfTAzaErXpiNb1aWilAQ1g0o=
X-Google-Smtp-Source: APXvYqwHgLayY+pckxZcjVrsUp91/dg86G7xrybugemvko/49GqQTNwFbiMki3EAXUomYvb0uqxa+w==
X-Received: by 2002:a05:6830:1f51:: with SMTP id
 u17mr3184832oth.318.1574273167847; 
 Wed, 20 Nov 2019 10:06:07 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 41sm8654664otd.67.2019.11.20.10.06.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Nov 2019 10:06:07 -0800 (PST)
Date: Wed, 20 Nov 2019 12:06:06 -0600
From: Rob Herring <robh@kernel.org>
To: Alexandre Torgue <alexandre.torgue@st.com>
Subject: Re: [PATCH v2] dt-bindings: interrupt-controller: Convert stm32-exti
 to json-schema
Message-ID: <20191120180606.GA18754@bogus>
References: <20191115181239.549-1-alexandre.torgue@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191115181239.549-1-alexandre.torgue@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_100610_763732_EF892FAC 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 15 Nov 2019 19:12:39 +0100, Alexandre Torgue wrote:
> Convert the STM32 external interrupt controller (EXTI) binding to DT
> schema format using json-schema.
> 
> Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
> 
> ---
> 
> Changes since v1:
> 
> According to Rob's review:
> 
> -fix license
> -fix interrupts conditional declaration
> 
> regards
> Alex
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
