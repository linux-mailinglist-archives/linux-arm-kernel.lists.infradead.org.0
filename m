Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD8216EE8B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 20:01:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NLhOFz92VVnCExU4doXDh8Ma/PIrp+1p0KPlqbcNG4k=; b=g3U7C9Giv81R/D
	KGiy/vuSaNZAD52OlzvnNGUnKluOCXGXvxsd9cKzUYHDl7QEUL0637n9W36p8vGzuFFLJ3fAEkoPQ
	sZbULtiOWG/Nn2D/mRIm4Cw6GSovRm6b8cn9/BWURa1LhDXw5ufRobcrm+sNOcslRK51nMof7lelB
	krGviOQ7es8G3jURwA9kQYN3YTXOGlJSrhVk/xI2x5TCWJqTyxdC0Q/GNBrjXSLoAAVdOsjTRFaHX
	wO88ynAmgoJmM4frtCLfz9G/zXk9DwwyvVS2OapI1l1wFf8nN3labeWel0fY3zwldQ+S/9WDGYDKz
	gaM1knNI2mRIXrHdejrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6fSE-0003p6-35; Tue, 25 Feb 2020 19:01:14 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6fS0-0003nK-Nh
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 19:01:01 +0000
Received: by mail-ot1-f67.google.com with SMTP id 66so511354otd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 11:01:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=pQ4ak+9Das/e5xwnLggdDsKWl9ti3J3kF3/FbmXUDbc=;
 b=G6eT2j39kiRncfJA7l5mLw7WjJwAoGDWX79YZS6mYeZeXqrNleekOGjiavvd1ItP3u
 GhmEDpfLNi0BzYi1p3Rrc7D42hIOk7Yii5ftLCNJixYsq+ndJLqeNhduCOWun0aQfoSF
 g6/RQHyfD8NHWvC+kIaucpzvGEZBbiVDBc2adbp9Ya/AOdSM4Eww1ew/KzFtDJP+JI9p
 +f7+5ZUVbrThkFvUNNwh23Q2O9ylKBZF5bheILsDBQQmgXg8Unjm1wF56UF0OncjrNDS
 TlK2lNBpRLbP3n/1Q4UeY2XHXNr4KGSIKtkWEjwJCPc9mTHkt13J9cwuDflX9uARhp4+
 MtoQ==
X-Gm-Message-State: APjAAAVCZNUmZnXoIDMAgHVap8XlnVJKZz7k2elbqDlv+ynlRquGGvsN
 2xTy9TAtnOoL8ucoD3K9KQ==
X-Google-Smtp-Source: APXvYqwK8yIGOQp/O4MLZ9poBq5jLmQ+o2FgqS568qnCEoP9kysOvaaeWzXWQz4ksIy/YaczcK2W5g==
X-Received: by 2002:a9d:674f:: with SMTP id w15mr21912otm.243.1582657259747;
 Tue, 25 Feb 2020 11:00:59 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id u18sm6007149otq.26.2020.02.25.11.00.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 11:00:59 -0800 (PST)
Received: (nullmailer pid 2064 invoked by uid 1000);
 Tue, 25 Feb 2020 19:00:58 -0000
Date: Tue, 25 Feb 2020 13:00:58 -0600
From: Rob Herring <robh@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v2 2/5] dt-bindings: ARM: Add recent Cortex/Neoverse PMUs
Message-ID: <20200225190058.GA2011@bogus>
References: <cover.1582312530.git.robin.murphy@arm.com>
 <3954ca0b86641e5e6a1935886df6658b9305ec4a.1582312530.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3954ca0b86641e5e6a1935886df6658b9305ec4a.1582312530.git.robin.murphy@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_110100_771048_1C7DC4D3 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 21 Feb 2020 19:35:29 +0000, Robin Murphy wrote:
> Add new PMU definitions to correspond with the CPU bindings.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
> 
> v2: no change, just resending for completeness
> 
>  Documentation/devicetree/bindings/arm/pmu.yaml | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
