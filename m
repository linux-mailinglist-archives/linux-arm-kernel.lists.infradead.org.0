Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B85123B1D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 00:48:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yXd4I6CNwjA9Iauv8GF938Zr34tzrJCKIeHLWNv5i+s=; b=WOfT+/gj0V4Q5i
	aGkCmPdNk1VPiOZPF0T29hj5+FKyjAbtslV1rzwgGSp3evRcZ5G71f8dwcIFNmLgXV/JDS/V/zUR8
	oE+H5kqc4y7HSNhLZuWPYnypAXz7oKxtCsuAzYQVS9DzXyCQU2w12h3/qwgK4VDOJC4mfCUUpq4Ow
	s2/yaXmIEA4gwaAj6r5slEL4ePtvxbQsz6LS1UkAO8ru49UWfhpdw1jM1r1H1+fbnT4osWF2tbMGR
	Wf7cAoiRIYU8EaFM8CsAnBuhZmYuz/U2Mfi8ZJPfWOOlt9vk8WH1ZACSdNT821RgLziEbR+zbaRHx
	0zAsMXL0X5MKvVxDgAtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihMZa-0003Ur-K8; Tue, 17 Dec 2019 23:48:14 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihMZS-0003UI-2C
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 23:48:07 +0000
Received: by mail-oi1-f196.google.com with SMTP id j22so104424oij.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 15:48:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Tutk/Fdb9yvvc0d6ClJQt0rt94NZhM3GPxr38qCafUE=;
 b=VI0htN1SiKudlS/q4raan2y/3DWexAiiq2YLyz5FTu3DV0+I5lF6vxVE37/M46J0xg
 Pl7JXMtcGDfkXrt5AI9r0gEhr7oMEJaxrQxMLv9vMNv13YOPrIg7s7aRgJg9iBdGHrbY
 8ECay67RWBL7tOA3wQcdUDZ8H3DixCY6k7rNN7K19d9FDy2tjPlMak7IdcuUeKF5ohx5
 ADvCSJjsF7eNwiZLMSCCF2RcrsvKEo5SsDRj6OafVayhRIJEgw+l62HEAot3rgmIh9e9
 F+inSVrjjUgSE2eeSZEGnEt9Bpr8InXIyrRdxwAMVdSKFd2iBnKEI0Day4va6jw/Q7fH
 P7mQ==
X-Gm-Message-State: APjAAAV3ImjJLNn+Rnm8JLW0zpBTlTZYGJyxj0XxOOQsNkvdy/kwsSVM
 QHgtacdXGV1FBq1RUS1pc7HYxTA=
X-Google-Smtp-Source: APXvYqyP2Fiocy07OTYHl4c41Qrueem8kz4bjMPaTYDoamQglq516HtSZQh0evY8NWPhggZ/yc0W4w==
X-Received: by 2002:aca:b48a:: with SMTP id d132mr3061698oif.111.1576626483838; 
 Tue, 17 Dec 2019 15:48:03 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e9sm165102oia.10.2019.12.17.15.48.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 15:48:03 -0800 (PST)
Date: Tue, 17 Dec 2019 17:48:02 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH v2] dt-bindings: rtc: Convert stm32 rtc bindings to
 json-schema
Message-ID: <20191217234802.GA21307@bogus>
References: <20191214090025.10648-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191214090025.10648-1-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_154806_105557_7EC4574E 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, a.zummo@towertech.it, alexandre.belloni@bootlin.com,
 alexandre.torgue@st.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 14 Dec 2019 10:00:25 +0100, Benjamin Gaignard wrote:
> Convert the STM32 RTC binding to DT schema format using json-schema
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
> changes in version 2:
> - remove useless type definitions
> - move properties definitions in the core of the yaml
> 
>  .../devicetree/bindings/rtc/st,stm32-rtc.txt       |  61 ---------
>  .../devicetree/bindings/rtc/st,stm32-rtc.yaml      | 139 +++++++++++++++++++++
>  2 files changed, 139 insertions(+), 61 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/rtc/st,stm32-rtc.txt
>  create mode 100644 Documentation/devicetree/bindings/rtc/st,stm32-rtc.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
