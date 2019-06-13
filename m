Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D00644A58
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 20:09:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q7raHy7nTrHLFe4dPN0UQ94ctdsSZwjJ6vd+VmbSBIA=; b=qnhAnGE7kBIDFB
	b3s38qzSgGwp9gjc4R9tuibXhQrHxk9Vc8bZJy5QgBfSI3TRx5ekGhm58ZdAq1KpAEd1ha09exuX6
	IhN+uyfh7DTe+C3L4+sr/U0TOB3lEpg3vbaXurHnAVA+rtBF59ufmwOWLV/337Kph4BR6CTfac1d5
	u0hPjdsWnJ8UPUJyOPGL+72TvG4/M/J6XSU7tmcMQRpyAn6PdtiZ1Ci1bjErWGCzQ4ShXv/ujyDPq
	uDZvcVBIinc4qkCkrcscbeOhJ42oAf7AIqcPG24mocHAUYn1J28h65OwHA5V7bp+KM6sna2bhgPbo
	yYXVEtLFP5pDoEdXpMLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbUAa-0004in-BU; Thu, 13 Jun 2019 18:09:52 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbUAQ-0004i5-JZ
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 18:09:43 +0000
Received: by mail-qt1-f195.google.com with SMTP id d23so23651223qto.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 11:09:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=byG1DV+SoKVQRZ27UyZDVXVCyKyLBhM0+1OWg3TXATI=;
 b=pSgLWJsRx+G/H3kzistWDF6UNFFYGlW8TakvVN2+ELap/Gu4Mbvwb8fZxzImaXInFa
 0f7vUSah+D9DtUr4Rcd9sfLyEZBldkO0CMgFfkL8nEPfW4j1WOYhdjLu1cagIdLt5g5j
 P4Hl48XmHfXPPKA33mHnCj7FNYQjyfVzRjJKinr/5WbyQq2m+eavUJX2V5ZeEo9pUJ8o
 PXPbiU1Og2q28u0/bNGJ+qQW66bXNE6746bZN45jBJTLQdCxL/FfIHWXAixAxgnCS7Hc
 fsEmhynTfXnxgFKuTSpTA0NZIIDW8BOFvTc/uRVQBtA6BZGmXVq4/lLvp4cEppT9s6dA
 k7QA==
X-Gm-Message-State: APjAAAWEEu3HcMtD02lMb69cBhTZdWiyT53e9www3QTSeiQ70HtfeI/k
 swwIHvrnu1CWrR3UWNwceg==
X-Google-Smtp-Source: APXvYqyEaSvDNTf8H7iXKdq/akmJoa4ONV459oM3gCr7ZXgwysR2Do7HLe/sAVmwb/5+dG6pTTj5OA==
X-Received: by 2002:a0c:9214:: with SMTP id a20mr4763658qva.195.1560449381341; 
 Thu, 13 Jun 2019 11:09:41 -0700 (PDT)
Received: from localhost ([64.188.179.243])
 by smtp.gmail.com with ESMTPSA id w30sm230529qtb.28.2019.06.13.11.09.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 13 Jun 2019 11:09:40 -0700 (PDT)
Date: Thu, 13 Jun 2019 12:09:39 -0600
From: Rob Herring <robh@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH 02/16] bindings: soc: ti: add documentation for k3 ringacc
Message-ID: <20190613180939.GA6840@bogus>
References: <20190506123456.6777-1-peter.ujfalusi@ti.com>
 <20190506123456.6777-3-peter.ujfalusi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190506123456.6777-3-peter.ujfalusi@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_110942_642245_1F5AFEA1 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: nm@ti.com, devicetree@vger.kernel.org, grygorii.strashko@ti.com,
 lokeshvutla@ti.com, linux-kernel@vger.kernel.org, t-kristo@ti.com,
 tony@atomide.com, vkoul@kernel.org, robh+dt@kernel.org, ssantosh@kernel.org,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 6 May 2019 15:34:42 +0300, Peter Ujfalusi wrote:
> From: Grygorii Strashko <grygorii.strashko@ti.com>
> 
> The Ring Accelerator (RINGACC or RA) provides hardware acceleration to
> enable straightforward passing of work between a producer and a consumer.
> There is one RINGACC module per NAVSS on TI AM65x SoCs.
> 
> This patch introduces RINGACC device tree bindings.
> 
> Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
> ---
>  .../devicetree/bindings/soc/ti/k3-ringacc.txt | 59 +++++++++++++++++++
>  1 file changed, 59 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/ti/k3-ringacc.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
