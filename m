Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4232F1256BB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 23:30:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oIgvaw42rjuYCMwHVR7GJ+bxHS144mO68Aa/h/ZzG/4=; b=lr3irpFSNhYS5r
	ieZ4T6zX0yWzZDH05QDwx6A6+NsxTSRGi6BV/WdPF3aFHmoE8MHSyNVigrfnEogg50Lb5VK3GUtHO
	pIujSJ/9TR49kom8zSzbRE7Bhy+xbTQYLvczwbpu/cbJfIDHeD4e3zLe2JK7py5SD1aDLlaTJPWGp
	bgrUtUL337dN/fScV0WBBDeO2uVe//Blnf1dTqr0BDidV2cJmo77koL7YxXFt5Jlo+yfJ23XxYKeu
	DztbwxgSEsW3+oDOEDPeftti1A1F1BJURhWidzrOHUl5pUsmrVjlO7Bc+AG9d80d+C2oI/eME9FR9
	XNYYxzg3QdO33ZE5D93A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihhq9-0004uP-Vj; Wed, 18 Dec 2019 22:30:45 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihhq0-0004tf-EO
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 22:30:38 +0000
Received: by mail-oi1-f194.google.com with SMTP id b8so2059197oiy.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 14:30:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=henTx4kMwKnslxCfjb7Jc5XD6OiwjKcuIcYzzOgVmwA=;
 b=JDKJCs//wl6IHdBpiQXw3aHVFBBq8dJkXv0RVAHJXiuPBw9Dgdey8Hlk753I0QoF4K
 dVgDfEJmf5FjDydBk9jKsvTMG1qXul+sxYhKg9znccHtSKaEVEfZ+EZniRE0UPHHkoJ0
 FGNm/ZxcPgXS35oEqjmFDNkpqeeZRQQ5+UA5AJgE614F2p60Ngqplp+F/OI8TtQqWO4H
 Ro87qOgEQne1JXBtz29zWeF6RNwIpVI88ilhpBlLWr9yrWxJXDmbs8cliYeIGpC2L+x6
 02HfNJM7DqsgzR9iQWE0XDnx3c9rIYj1/h/tnhpxLzcNt/YMcjXBSMczd/NTXvvcEcKy
 hiqA==
X-Gm-Message-State: APjAAAXHwbQMTC4/ucDwfDkNFxgsD+sdsrMtOb//4xexZWjACZnbKNt4
 myJiQocWPNsvZiyruBTWug==
X-Google-Smtp-Source: APXvYqxlZwKyGVa1CGInnldPg2b0i+rjBq9zRrTXBBvNP2kjFzBkxQnXqGG30D+T5zzlRjhreEKJ1g==
X-Received: by 2002:aca:72cd:: with SMTP id p196mr1498724oic.99.1576708235818; 
 Wed, 18 Dec 2019 14:30:35 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id q5sm1290507oia.21.2019.12.18.14.30.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 14:30:34 -0800 (PST)
Date: Wed, 18 Dec 2019 16:30:32 -0600
From: Rob Herring <robh@kernel.org>
To: Olivier Moysan <olivier.moysan@st.com>
Subject: Re: [PATCH v2] dt-bindings: iio: adc: convert sd modulator to
 json-schema
Message-ID: <20191218223032.GA8641@bogus>
References: <20191206100058.26767-1-olivier.moysan@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191206100058.26767-1-olivier.moysan@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_143036_533834_278B8B96 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lars@metafoo.de,
 olivier.moysan@st.com, pmeerw@pmeerw.net, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, mcoquelin.stm32@gmail.com,
 knaack.h@gmx.de, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 6 Dec 2019 11:00:58 +0100, Olivier Moysan wrote:
> Convert the sigma delta modulator bindings
> to DT schema format using json-schema.
> 
> Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
> ---
> Changes since v1:
> - add additionalProperties
> - remove unit-address in example
> ---
>  .../iio/adc/sigma-delta-modulator.txt         | 13 -------
>  .../iio/adc/sigma-delta-modulator.yaml        | 37 +++++++++++++++++++
>  2 files changed, 37 insertions(+), 13 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/iio/adc/sigma-delta-modulator.txt
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/sigma-delta-modulator.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
