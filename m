Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94406126E05
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 20:33:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v5+EAGaW5qL7eIlr6N8V8OpU+E0gwMsSVdXZWZuawho=; b=MHhSSRu8ymILP8
	dkkzMlmYimS3otqVbVcb8hGO8Ls8NVP4x626Na8uzrNjCoanZtfmZGxIjOG5BWmBoQ8ayiQFiivCg
	F4mLF/aqxNTScOQxj7h3u6djyntLlbHrXBEOc1AfS9SWplwX813nF0a7GW1NeUynZ1L9ahucPCT2v
	m0Jgtqhji4MqWS+EaKuBhZhlYCfSSBdOi2zVzCTTwrQJecujPI3FAAkqBa270th46UziXs+YDgR64
	TU14B0RWYvHDpkNvSFJiB2DeSmIzneqFsx5zn7AFfvvEZngbAbgIs9fJyxdOId5fO9buBTLMQvLU0
	zfrazR38j/2ZHKYjyI2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii1Xm-00066l-3Z; Thu, 19 Dec 2019 19:33:06 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii1Xc-00065o-U0
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 19:32:58 +0000
Received: by mail-oi1-f194.google.com with SMTP id d62so3526233oia.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 11:32:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/3+u5nfmJRUSjWuCZi9Cc2P4QvLSHbddWtWRoN34F7M=;
 b=O5VUMWPZe8VJXdkUJa2tyX/e2JoXGAXyMGig8NTa2K8vjHZOrsT7u1aTOYXgpsZGvr
 89K/raJ6aGd9dHXhGhEaarx/HF/zd31P/cf0O8zPIL5zTJktQL0p5jHeQcBSMmWYemTM
 R1ntXyLtrW+NRZnVHpy2XWatnmUxy6LwgB+11t2KG/xzsxjUVvHUTtAlvXOqgkyLsZ8s
 cIt/ksTVNBv7odP7z93bk9K7n3BKAddtPDTgE1HuvKHereUBX5xiFk9V0Oh9cci2YwBN
 kpXXa3TYR2VyR0lEMX+0vcHfHNeOl2ioo+yXaW20AbecLzaDUogc1bbkIHLxnCpXAGiE
 7YEA==
X-Gm-Message-State: APjAAAX8hkCEbXL8I1eVASaVwCGeTb7bvXUkaMag9aIA3T3mRfb0n5EX
 zQ7Pyv6o554X8qavBTXKS7YqbWI4mg==
X-Google-Smtp-Source: APXvYqw7KNOeV0JRcaYUuus1QiPtpU8AaUClW7xSRdDup6Vt0VeF3TS39xCOwBXU2dOiF4ei5XvVeg==
X-Received: by 2002:a05:6808:c:: with SMTP id
 u12mr1281368oic.107.1576783974229; 
 Thu, 19 Dec 2019 11:32:54 -0800 (PST)
Received: from localhost ([2607:fb90:20de:fb54:3549:d84c:9720:edb4])
 by smtp.gmail.com with ESMTPSA id e65sm2448415otb.62.2019.12.19.11.32.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 11:32:53 -0800 (PST)
Date: Thu, 19 Dec 2019 13:32:46 -0600
From: Rob Herring <robh@kernel.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v2 3/5] dt-bindings: arm: fsl: add LS1028A based boards
Message-ID: <20191219193245.GA20831@bogus>
References: <20191209234350.18994-1-michael@walle.cc>
 <20191209234350.18994-4-michael@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209234350.18994-4-michael@walle.cc>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_113256_967227_10A1706E 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
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
Cc: devicetree@vger.kernel.org, Yuantian Tang <andy.tang@nxp.com>,
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 Michael Walle <michael@walle.cc>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 10 Dec 2019 00:43:48 +0100, Michael Walle wrote:
> Add the Freescale LS1028A evaluation boards.
> 
> Signed-off-by: Michael Walle <michael@walle.cc>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
