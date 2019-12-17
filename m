Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8918B123B21
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 00:49:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sxLey6/eAwPedcCDdqcbt/SnjRdZSedw5sWVE4oT30w=; b=dSoyWHGXDqjFrY
	Pdi70W52DRwWdzVrLCd3tjohZmFUo1BnLDTkGocnRKUx8+JhPbSAOrN+IP8mVuO6cbWoA6DkKKLeQ
	i1ekgEZEf3BK8xUzuF7irLCC/qeJf+bl4l6E+9qoif50/qkHq0qu5cr+Luh812RK66t93Wqe2saj4
	oqWYWc/gDgGabFWRV6dssvwstiT82e5Ap5/Rlzsheculp+reeAdHW/ghjIDeqKJ6l+tYI8LAt5d3C
	DzbWSW8+AAbUvvP2GvJnqDABTonLQhN7QeZM1962WVPnebARCHe72lK7Wc7PNbYmVjSdNliyiKFOV
	JV3lkxfFMN8a8JI40GAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihMaV-0003lm-Vb; Tue, 17 Dec 2019 23:49:11 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihMaM-0003l9-75
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 23:49:03 +0000
Received: by mail-ot1-f66.google.com with SMTP id x3so44519oto.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 15:49:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Jlg2ki2yobPLE5+Iz6CrZ9HDHot4jm6bFyP7eLrU3qQ=;
 b=uWdxY/rM3ylHv29uS1OMAgv8H9uzfQkPTvjajDb69eE7MDabF72UIWKldnUkTKDyaM
 kg3bv/nR3WICDW1awJ5jP1ze2yRUMVy3+p7UImUoRD3aswMWtKNqULVsul8QtDOofkqu
 /na169zET90gLlZK+aIWB+aWqdo7rSrKRYGZGusFpfI8KR6N2VYpwG9RNNHXrkWGawnf
 haXMwcSe0z2yXabr48F/M+ByvGcRdD5c9YOlpqmR1+UT1MxUr2aVqUjC27bTcMIHdpGO
 zK2NPhWGg5+Y4x2/sIx48uQaf1rJxEHuTj0zaNCEguS1CEBf/XtyTOXNHKDgIkrtVIDA
 M4cg==
X-Gm-Message-State: APjAAAUus5iHobXFs9795Ccv10IQ3NGeI1hj8MHAoFj1M/+nzUmuJAqi
 gfCz5MaBh/7yG7Re3yPArA==
X-Google-Smtp-Source: APXvYqw+ktR6zmWC15DCzXWZThyq8OS0sep09XrYuNDJkj8QrlsDYGIEMrNnc9m27AMPyfWoF5gKSw==
X-Received: by 2002:a05:6830:22e2:: with SMTP id
 t2mr81055otc.129.1576626541083; 
 Tue, 17 Dec 2019 15:49:01 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id g8sm116989otq.19.2019.12.17.15.49.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 15:49:00 -0800 (PST)
Date: Tue, 17 Dec 2019 17:49:00 -0600
From: Rob Herring <robh@kernel.org>
To: Arnaud Pouliquen <arnaud.pouliquen@st.com>
Subject: Re: [PATCH v2] dt-bindings: stm32: convert mlahb to json-schema
Message-ID: <20191217234900.GA429@bogus>
References: <20191217082415.14844-1-arnaud.pouliquen@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191217082415.14844-1-arnaud.pouliquen@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_154902_259754_CD4DD52C 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>, linux-kernel@vger.kernel.org,
 Fabien Dessenne <fabien.dessenne@st.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 17 Dec 2019 09:24:15 +0100, Arnaud Pouliquen wrote:
> Convert the ML-AHB bus bindings to DT schema format using json-schema
> 
> Signed-off-by: Arnaud Pouliquen <arnaud.pouliquen@st.com>
> ---
> V2: Add "ranges" property as mandatory
> ---
>  .../devicetree/bindings/arm/stm32/mlahb.txt   | 37 ----------
>  .../bindings/arm/stm32/st,mlahb.yaml          | 70 +++++++++++++++++++
>  2 files changed, 70 insertions(+), 37 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/stm32/mlahb.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/stm32/st,mlahb.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
