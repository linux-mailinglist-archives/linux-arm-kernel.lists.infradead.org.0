Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C93515370A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 18:49:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p0WLIKf4iiNqVmrepbTp7i0X3ima11Oy01woh7tLIq8=; b=eEHxaYHiFvlr47
	p4wAluKVcS3rv9IAT1TePQbKSX9SA9QVxhl2r5egNdKNf7J1U9EE48EdLea5I+1uVKcA4q02BGhVQ
	DbeC8dl5hgGpeKAnK0GyZwklY18wqZqxukolInw8yEoBwmzf0tk6+rkM4v01/zXeqASwxx2gC106b
	hSozGth9VAJM939A+LGnYgB4Kev9F4MrmLC4zj+uPSGznowlMWZViH4Av2ClK/I05tVxMOOnqQk+8
	N6qVayqasWI1Lk/vO1wWTU1OSxLjxW42KCbRkUwnrjVSUWfKB7FzQzJ6wzbkyzawE7WUtBMBbk9ED
	EWSPjWlDBjNoXHiT74Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izOo1-00038D-Pd; Wed, 05 Feb 2020 17:49:41 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izOnv-00037H-53
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 17:49:36 +0000
Received: by mail-wr1-f68.google.com with SMTP id m16so3798956wrx.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Feb 2020 09:49:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Lsfbnz3H38vTOletZ4EmB6C9KpZCxglql+qL3XIYGjo=;
 b=Kvdxa7lvpI3Ye197Do/UzWH9Pmu6c3AkiY1faVJ6tkxJ1Jg2o5YecNjpN+tZFhZWa+
 M4RDx3Mdfq7mbhqEqZCXjnLr+ADVBFYc0ihC0wxx8f0wanCJgRZc6I/0kirmt9lR+2h2
 IbTa9107co/VCQnaIDoKht3svO13HyT/frrEYQTcHEOkLlGpEINQLojAAtG6i4i5jfrt
 RAwgDiPn8MneWtfsm6LT5F+TNe/mYG/gN56Gq6L7aV4kaRyL6Aq2mkg8nl1pcleLhxHr
 04vEOci/EiN+uSi/s6DUZQucrXsEfAm4BTRbat9JhpKcWh9FCXkFqKG04XM7ab/+DDR6
 PT1A==
X-Gm-Message-State: APjAAAWLaddVCPOlM8//4ZWBP9uSyhUTAPt7k6ZS+p8Ch/Jwk+tgVZqd
 wQMxBfkh32VmgdKYxJO2JQ==
X-Google-Smtp-Source: APXvYqybHL6/b3Oz5I7G0CLuDoP0nfLxsBDQ3ivJbNaQ7/MXHy/EygjBmjdA1/E6DvSGs4NYiVTZrg==
X-Received: by 2002:adf:ea8a:: with SMTP id s10mr28065695wrm.278.1580924973513; 
 Wed, 05 Feb 2020 09:49:33 -0800 (PST)
Received: from rob-hp-laptop ([212.187.182.166])
 by smtp.gmail.com with ESMTPSA id t1sm335850wma.43.2020.02.05.09.49.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Feb 2020 09:49:32 -0800 (PST)
Received: (nullmailer pid 29957 invoked by uid 1000);
 Wed, 05 Feb 2020 17:49:31 -0000
Date: Wed, 5 Feb 2020 17:49:31 +0000
From: Rob Herring <robh@kernel.org>
To: Ludovic Barre <ludovic.barre@st.com>
Subject: Re: [PATCH V2 5/9] dt-bindings: mmc: mmci: add delay block base
 register for sdmmc
Message-ID: <20200205174931.GA29922@bogus>
References: <20200128090636.13689-1-ludovic.barre@st.com>
 <20200128090636.13689-6-ludovic.barre@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200128090636.13689-6-ludovic.barre@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_094935_194007_E78ABDC1 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, srinivas.kandagatla@linaro.org,
 Ludovic Barre <ludovic.barre@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 28 Jan 2020 10:06:32 +0100, Ludovic Barre wrote:
> To support the sdr104 mode, the sdmmc variant has a
> hardware delay block to manage the clock phase when sampling
> data received by the card.
> 
> This patch adds a second base register (optional) for
> sdmmc delay block.
> 
> Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
> ---
>  Documentation/devicetree/bindings/mmc/mmci.txt | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
