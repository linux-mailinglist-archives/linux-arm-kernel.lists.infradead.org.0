Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F08F1EC41F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 23:01:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Arof1Fe3MP0WjP4DnwmMzLdW37l5hul5JEy0lM29ovU=; b=VYJqijG+j58RQW
	m5TrMUno3bdqgt4f2MPCKDKL3K6lN+3+vg5vKp3/SNZroRU4uFnMyk61yKsQSRXVXxAV3jabzf4D5
	uWQF+H+5XiPfjqtuKWH+VqXwUK98LRM0gsmxn4Zucsegoz5EQhzneM6twuviVfoBDYFyR2dxUav42
	2k0flq4ULOrTB7x3KyulRyIriqBzhlODHnc5s+SX8LHIBPbcxHe2OQ4I2AEKRjSkuBSTZUOeht0SA
	Gb0sICMxV+rKkB3dMa8RwBvCsEna+X5HMioPELqefJvh3nHk9hFZJQmA45cE6GFWiTN3FOqK2puB0
	oQaOHTsaaihMw5d27+PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgE2P-0004kX-0i; Tue, 02 Jun 2020 21:01:33 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgE2H-0004jo-SR
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 21:01:27 +0000
Received: by mail-io1-f66.google.com with SMTP id d7so12402789ioq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 14:01:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=RdOOI6THo1klBm0yIRedlU8s9OpbTJoviIA/URFciN8=;
 b=FHAZDDTxskhh2A5VEPygfcxYRATvSES4NGEruUz76EpgDcu/QuUyaasheBOo11tvXO
 ad9Be+VhvFPesHFrUfhNjlqausR9lHtT7m0Eld6382L1ErIL6TkOMy68Apwl6P4+hBhz
 fuvEv3vPje8kJLQLqYRUWBfzbPZNtsjdKlCaDUPBrrTWD5bsmnaWETGqqUT1eyesuqx4
 ihyWjzBXX5RvBZzTbPsYmFmZTCrsAGPqdvzWLJ71efJVoYhMn4XaEIcSWL2qR6v0anl2
 /H5FbLvpkqLXlE5s2F9OeXVpS6QBShsHWVHoyHejBtf7jGrLaGzq1C1Rxqr8aQE/AMl3
 zH6A==
X-Gm-Message-State: AOAM531uNG1LCP4torUo1QfyumYn04pIoiPYBHQmiC2Ru619IaBPcq19
 neNtYEx8qtlWWPw5MQP4FjoKGko=
X-Google-Smtp-Source: ABdhPJyED+cNMQ8/u2s36pB/sr1W0BzLhhpcCiviur8uywjjNdNTWlEfvdk/qgx24vUTx4ZeDFdd4A==
X-Received: by 2002:a02:ca18:: with SMTP id i24mr26930962jak.70.1591131684561; 
 Tue, 02 Jun 2020 14:01:24 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id p11sm59004ioo.26.2020.06.02.14.01.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Jun 2020 14:01:23 -0700 (PDT)
Received: (nullmailer pid 3941805 invoked by uid 1000);
 Tue, 02 Jun 2020 21:01:22 -0000
Date: Tue, 2 Jun 2020 15:01:22 -0600
From: Rob Herring <robh@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH v2 13/24] docs: arm64: convert perf.txt to ReST format
Message-ID: <20200602210122.GA3930090@bogus>
References: <cover.1581956285.git.mchehab+huawei@kernel.org>
 <e000ccaf21f899a4c503c0a0e8734a2a3e177ee6.1581956285.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e000ccaf21f899a4c503c0a0e8734a2a3e177ee6.1581956285.git.mchehab+huawei@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_140125_915644_47FF4A15 
X-CRM114-Status: GOOD (  16.03  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.66 listed in wl.mailspike.net]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 05:20:31PM +0100, Mauro Carvalho Chehab wrote:
> This file is almost in ReST. All it needs is a rename and
> adding a :field: for the two fields at the beginning
> (author and date).
> 
> While here, add a proper SPDX header, and use the standard
> markup for document titles, just for consistency.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  Documentation/arm64/index.rst              | 1 +
>  Documentation/arm64/{perf.txt => perf.rst} | 7 +++++--
>  2 files changed, 6 insertions(+), 2 deletions(-)
>  rename Documentation/arm64/{perf.txt => perf.rst} (95%)

Is there some reason this hasn't been merged or commented on?


> diff --git a/Documentation/arm64/index.rst b/Documentation/arm64/index.rst
> index 5c0c69dc58aa..c51d0fa80318 100644
> --- a/Documentation/arm64/index.rst
> +++ b/Documentation/arm64/index.rst
> @@ -13,6 +13,7 @@ ARM64 Architecture
>      hugetlbpage
>      legacy_instructions
>      memory
> +    perf
>      pointer-authentication
>      silicon-errata
>      sve
> diff --git a/Documentation/arm64/perf.txt b/Documentation/arm64/perf.rst
> similarity index 95%
> rename from Documentation/arm64/perf.txt
> rename to Documentation/arm64/perf.rst
> index 0d6a7d87d49e..9c76a97baf28 100644
> --- a/Documentation/arm64/perf.txt
> +++ b/Documentation/arm64/perf.rst
> @@ -1,8 +1,11 @@
> +.. SPDX-License-Identifier: GPL-2.0
> +
> +=====================
>  Perf Event Attributes
>  =====================
>  
> -Author: Andrew Murray <andrew.murray@arm.com>
> -Date: 2019-03-06
> +:Author: Andrew Murray <andrew.murray@arm.com>
> +:Date: 2019-03-06

Andrew is no long with Arm. Both lines look like things that become  
stale, so I'd just remove them.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
