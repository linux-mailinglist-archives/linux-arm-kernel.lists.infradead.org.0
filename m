Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E4019881B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 01:21:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/TYWQFWT5MJXq8q5CvGd1tP8DqjGb5xU3wNoh7lVjWw=; b=pCa7+jE0XWrEZP
	Q+jBSZFyZKaWN8XCRbCzf0PbOa1T6NEePyBUY3cyLMc/fL/CiUsO1b8BNzmecJlYqACSTR8L/2bDa
	DlKtci+tL6uqmJjTd2QOLe3IFbJYGmYJiKqA3XURLCYAtomP9fuxoDqK22BbD5TOnqEZPw7ESjABJ
	LdQWXp1dW+sWPTSACsA8RijwetF8qSbPhP9f2scqQ2nRpIZBxAeY/B6DKSrF1xzxS7AJ6t2qzcVMt
	jJ+jqE68/YUnIICdMpZCppX96xJjJ9L9v5U2AMcMgWSo0ooVk3zuVtVDCRQUH2GaYYr3PLRbmoTdJ
	rrecYqv/9u5drXJGJF8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ3ij-0003Os-Hk; Mon, 30 Mar 2020 23:21:29 +0000
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ3iY-0003OF-Ei
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 23:21:19 +0000
Received: by mail-il1-f195.google.com with SMTP id i75so10343736ild.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 16:21:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=J6CtYXa3sClSqnbvBiuHvvlUuxEGfNZdWolqywsT7lk=;
 b=heM2/2bqqe+qlrgB8+x8alRJYUdAvtKrTTDzqwR4QN49YSLlSjV+gjIeSkgEXLfqI0
 W9JHWZuLqTubRt6eLxKjmqMLKxj1cFQTCjnfl+EyUwO3lP0uEMKLNp3v1y459JDj+X0T
 ltF1DTXRge/f+tX6tA+RHaK1d+6LENrIiPk/rR+wOaunF+ahKyaTCNSSLSOjUTvVoNJm
 Rql3qRUDclqN4gkZ/goBtc0/hML/zk+eVswoHnmIGKE4cIivX91STgmvehRP94QhD2QG
 YgjiVvzKxtI3XvE1qPBl10BQuFXhArV/xwXn/EtR7xPeGVjSYe/Uptiuzk3yVBTWn527
 XLoQ==
X-Gm-Message-State: ANhLgQ1Msb4GRu8z4pt1YW0KQCnMfxDoEjLV6xqPURNvXg6lEMqQ1ZS5
 sYQw3+L/ueENErDGoamLsBXlDH8=
X-Google-Smtp-Source: ADFU+vuaKs6BtYALVaqgUXUnIFTShETJESYag2YrRrycS+2I8mzQdSm2bGh9kir55sPT0pkBtVUhBA==
X-Received: by 2002:a05:6e02:be7:: with SMTP id
 d7mr14208948ilu.238.1585610477255; 
 Mon, 30 Mar 2020 16:21:17 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id t5sm3578511iom.3.2020.03.30.16.21.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 16:21:16 -0700 (PDT)
Received: (nullmailer pid 17537 invoked by uid 1000);
 Mon, 30 Mar 2020 23:21:15 -0000
Date: Mon, 30 Mar 2020 17:21:15 -0600
From: Rob Herring <robh@kernel.org>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH] dt-bindings: iio: adc: stm32-adc: fix id relative path
Message-ID: <20200330232115.GA17380@bogus>
References: <1584641907-8228-1-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1584641907-8228-1-git-send-email-fabrice.gasnier@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_162118_490923_7B553945 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
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
 olivier.moysan@st.com, alexandre.torgue@st.com, linux-iio@vger.kernel.org,
 pmeerw@pmeerw.net, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, mcoquelin.stm32@gmail.com,
 knaack.h@gmx.de, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 19 Mar 2020 19:18:27 +0100, Fabrice Gasnier wrote:
> Fix id relative path that shouldn't contain 'bindings', as pointed out
> when submitting st,stm32-dac bindings conversion to json-schema [1].
> [1] https://patchwork.ozlabs.org/patch/1257568/
> 
> Fixes: a8cf1723c4b7 ("dt-bindings: iio: adc: stm32-adc: convert bindings to json-schema")
> 
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
> ---
>  Documentation/devicetree/bindings/iio/adc/st,stm32-adc.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
