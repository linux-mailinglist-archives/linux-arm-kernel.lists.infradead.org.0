Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EBB1123B3E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 01:01:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vEzZTOui49UIJVyIyPI0dAzFrEor6d0TpwtIsWY0jyw=; b=gGLWrDYMaDhlUg
	KulZKBKsvK/wofJXzZvADPA72xBUAXKlCCoNo5OHkzKcnkDTb6sykbVmbfngkrzA7fKpHw2IRNExH
	/Ek+Tw7JIgtcXGUtrxQuG5dxVC6mZ72IWbQ2ssYADa8FARecfQGCw5HHBnhhWZL11zUC9xOiBmpKB
	URi1PCa0WPf0Ux3FsMnP2RZ/fB2ftq8gOTi40LrVTjFCASXt/1bRy/cPOBeHSttOdLh/Xz4yqY6m8
	d6FWsE5r+n5oeD+abqDlDYVaGYesKDkvnePlATfdWmacpuFsTO6W0pKBbF+rN1RNgG0te5zEIO8sh
	m5ubDwGOFRojyfE/vs/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihMmX-0000K4-WA; Wed, 18 Dec 2019 00:01:38 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihMmM-0000Jd-8E
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 00:01:27 +0000
Received: by mail-ot1-f68.google.com with SMTP id r27so89964otc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 16:01:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8DxfJPe+fLp7sS5LGmoHqh2JVFDd9HUExmcrr2ei05U=;
 b=anpgbZKdkx1sfG0kM3Z+U8KaKAvSCI8v/N5IpRID7TMfms+k2I/FhEAuQEgZZp7Br1
 Gl74r+qaYWiiixCAeW83r0VPeSg8RkFpRTaVb0LyaE/Xc3QcrA0EWXnTbS2TOJJ8X6BW
 4f7n3D3UzJWFOdh2I5k6lbmOTDkiSdX+dIJqFzyY2L3oUP7wtnRKmue+8aGVRQYMMt2n
 ecbSKVSvTKeH6TnaVCBxfZlDTvrNaJ5hD9YWPwW/nuS8+g5xZmNJyMppeu3JiF87aT61
 I/608rwtx0MuttD9nrz+AKttdVAsnIwzUi462fRWqGUe7oHCF+pAan3coWkauie/d6cg
 OD+w==
X-Gm-Message-State: APjAAAWSmWgdHjl0QepiNuC0I8DXVNdIG6nV+480VUbK6CKlvYxxC04f
 9lYd5MmiYV60Hq6/UVacBw==
X-Google-Smtp-Source: APXvYqw+qBUt2vWsfODrii4GKSLi4xoYT8NdjBgJ2LVmEiUcC9EsU5LCVPA5a9FubOjJkoUUwOOnnQ==
X-Received: by 2002:a05:6830:16c6:: with SMTP id
 l6mr182117otr.186.1576627285170; 
 Tue, 17 Dec 2019 16:01:25 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 97sm126795otx.29.2019.12.17.16.01.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 16:01:24 -0800 (PST)
Date: Tue, 17 Dec 2019 18:01:23 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH 1/6] dt-bindings: dma: Convert stm32 DMA bindings to
 json-schema
Message-ID: <20191218000123.GA23208@bogus>
References: <20191217092201.20022-1-benjamin.gaignard@st.com>
 <20191217092201.20022-2-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191217092201.20022-2-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_160126_293790_E34AB89E 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, vkoul@kernel.org, robh+dt@kernel.org,
 mcoquelin.stm32@gmail.com, dmaengine@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 17 Dec 2019 10:21:56 +0100, Benjamin Gaignard wrote:
> Convert the STM32 DMA binding to DT schema format using json-schema
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>  .../devicetree/bindings/dma/st,stm32-dma.yaml      | 102 +++++++++++++++++++++
>  .../devicetree/bindings/dma/stm32-dma.txt          |  83 -----------------
>  2 files changed, 102 insertions(+), 83 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/dma/st,stm32-dma.yaml
>  delete mode 100644 Documentation/devicetree/bindings/dma/stm32-dma.txt
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
