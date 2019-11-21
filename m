Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C61F41054B0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 15:40:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GeWt6es6mb1YDOZFegeyeDXcuulO1g7H9NftqP4cYOo=; b=lDsnveLxljk9kI
	R9V+5iATtEgm7A+pVpfIOYeTX78/70m5TuYwvsPYqfXu48xnJwwC5tPjufSo9sBMmofSCeReBJ0tR
	AGHQgwSXtDoPcIv9PavYzuifEkQlCsH93u2nb8bYKywp7dBO9z4aZ5FIWz4PS82Trf0xWxEctFvAN
	/nM+xthn4XjyCUyMeKcMEw9IeKwCpiTjFMh6D/mXh0xReyMLSYaqnAh67moYMUBeMSAFoBiy8/L+L
	BoI3Ipqoi83ikVBN7CegliB76cPvovsvuyr/cOuUXt+SFy0pWzyyztlduz7toU6ogBzhn+FPSrE+2
	CInbh8Jr/4tAnnoJxZgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXncs-00042r-It; Thu, 21 Nov 2019 14:40:06 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXncc-000420-Se
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 14:39:52 +0000
Received: by mail-ot1-f68.google.com with SMTP id c19so3069306otr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 06:39:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=SYYqbOVycEdgZHO+SXnt+K02+QDnVzkJ47TaoH1kdjg=;
 b=ue1ONi/nmjxb8zPVVzn1lO+3PyjIA1F7cihrn+w2qlraOvOd+p3QSkVudtZIGaDKC9
 goFINmbjXAjLsBZt/J53Md6pv4yGeuj0MtVZTfMnGtMfA7UMjX/0/EYVz1GOrP0MCBxU
 xiu7+kl1z5Ze1FaS5b8Ox24gchtD2ANW3hP/vMk6KPcEr1SE1gAD1fSeiD6RKUmgZCg+
 2jpAQN2jMCr9rZT8BE7sfcCc3LM7QHVFM1Sm/nMJ2E8QScwuo/JCb8Exk+yj4IQIEvCL
 ZJHkuoYNZ2B2zXm1RsT4OVO1HS4VBACM12V2MdsofW0xOcVDosvaoY7mGqu+J8Rke/qc
 J9tA==
X-Gm-Message-State: APjAAAUBHvS2oaSJ1sy/Fnjh/GPsodOxLyTQnSp1aHzqtFrvpDmvjsg/
 UaW495NkbGyjYtRSSaDFMg==
X-Google-Smtp-Source: APXvYqwUu/biujtjVLDWyb16pwLG4pruuYMM8CW4+uuGpATDphuBWh04Vk6lWGDYxf1mYwHiGV55vA==
X-Received: by 2002:a9d:b83:: with SMTP id 3mr6529158oth.56.1574347188483;
 Thu, 21 Nov 2019 06:39:48 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id y145sm955719oia.21.2019.11.21.06.39.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Nov 2019 06:39:47 -0800 (PST)
Date: Thu, 21 Nov 2019 08:39:47 -0600
From: Rob Herring <robh@kernel.org>
To: Arnaud Pouliquen <arnaud.pouliquen@st.com>
Subject: Re: [PATCH v3] dt-bindings: mailbox: convert stm32-ipcc to json-schema
Message-ID: <20191121143947.GA25003@bogus>
References: <20191121095102.26693-1-arnaud.pouliquen@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191121095102.26693-1-arnaud.pouliquen@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_063950_924899_24031631 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>, linux-kernel@vger.kernel.org,
 Fabien Dessenne <fabien.dessenne@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 21 Nov 2019 10:51:02 +0100, Arnaud Pouliquen wrote:
> Convert the STM32 IPCC bindings to DT schema format using
> json-schema
> 
> Signed-off-by: Arnaud Pouliquen <arnaud.pouliquen@st.com>
> ---
>  .../bindings/mailbox/st,stm32-ipcc.yaml       | 84 +++++++++++++++++++
>  .../bindings/mailbox/stm32-ipcc.txt           | 47 -----------
>  2 files changed, 84 insertions(+), 47 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/mailbox/st,stm32-ipcc.yaml
>  delete mode 100644 Documentation/devicetree/bindings/mailbox/stm32-ipcc.txt
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
