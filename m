Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B22A316EE8D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 20:01:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1LCuLPSUKom9zhkawuu+kv55rhauJkX8CPTtvLxIAqY=; b=Oqqdwb73H4Q2t6
	13HZhxD3Xqnux8fJolqm8ju7ELf6sp91HOIrWpbNO4UwnbKA17Ux1ZDF6HGQlPVQu0J1uJdvtVmwm
	SoUKJW0BS2WL397ycYm6YVMdcfOUI2J217k8l9vCudsGGlKvt5I7HUuGbS17gMu/acrtS3OzC666Q
	1bG5dReWEUnu9ZLhRWHjWGrY78Yt3cobLS24CSWDOCKr0PD6Kp+9AyND+oZwqVti+bLFPw+6ZXAkk
	O2sS0XVBGff5w8CkiqAWFWtVkxezNFnq+26Xqsl/ZBZekhUAj46nn0mQc+JRBRINAf6cVkvq1vtby
	zRu0xvnLBOathWZ7KVXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6fSc-0004PT-Rn; Tue, 25 Feb 2020 19:01:38 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6fSR-0004Nz-FD
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 19:01:28 +0000
Received: by mail-ot1-f65.google.com with SMTP id 77so534093oty.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 11:01:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3UiS1eUUWIICn86GMqTy+EhI/ZWZsM+DWNR/fIsV8EM=;
 b=gqdlo5SHUD2O9vHvtMgkDmdrsNlTlSgaR/u9RQgVDXARtY+4bvYvDu+aTXvgtiCXyE
 JwlpxqSQg3xhGuq1/K9rl+bZgnUzQCDvg/2VuxvMSnvyNjQPwh6YbuTUZtiydOfRpxYN
 INZZLUFnPy159tj08W8UPa8Lx/+U6yIWeCxkNkD7dz9aoDMZwUssZZFFei8uDC8P9Fon
 4m8lbW6h9i0+Vlx67cFdpb4ifuSWh082WKf46t3rdfkFmIQm6XF7R1i0tz3gYxJX/Qkf
 fiudNl9QB6xyd7lDbwr2gFGC+nCvUwMAJA4vzbyOpwz0RKjGJ7u5JHHL6BsHAGeDGCn3
 r90g==
X-Gm-Message-State: APjAAAWYjx5c9SBwddGvCOLDkWa/wgRL5cTrSL6IchH5KqioPVAjLiG7
 yXu+oDBMCTx/nvHOX+jOnw==
X-Google-Smtp-Source: APXvYqx3rSJj3H24sw8zWjqiNGNCYIj+PtxaDWiZxloyPoQxNyHzLOtm+Ns4hS+Otkz2sAr1VYSvaA==
X-Received: by 2002:a9d:638d:: with SMTP id w13mr49992otk.220.1582657286713;
 Tue, 25 Feb 2020 11:01:26 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n16sm5923338otk.25.2020.02.25.11.01.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 11:01:26 -0800 (PST)
Received: (nullmailer pid 2873 invoked by uid 1000);
 Tue, 25 Feb 2020 19:01:25 -0000
Date: Tue, 25 Feb 2020 13:01:25 -0600
From: Rob Herring <robh@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v2 3/5] dt-bindings: ARM: Clean up PMU compatible list
Message-ID: <20200225190125.GA2781@bogus>
References: <cover.1582312530.git.robin.murphy@arm.com>
 <397df7accd295d2f743830591facbd2fb99208af.1582312530.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <397df7accd295d2f743830591facbd2fb99208af.1582312530.git.robin.murphy@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_110127_509067_9D10222B 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
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

On Fri, 21 Feb 2020 19:35:30 +0000, Robin Murphy wrote:
> The "alpha by vendor, reverse-alpha by model" sorting of compatibles
> that we seem to have ended up with is decidedly odd. Make it less so.
> 
> Also copy the comment from the generic "arm,armv8" CPU binding to help
> clarify that the "arm,armv8-pmuv3" binding is rather intended to be a
> counterpart to that, for describing implementations without a specific
> microarchitecture like the AEMv8 software model.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
> 
> v3: new - can be squashed or reordered with #2/5 if desired
> 
>  .../devicetree/bindings/arm/pmu.yaml          | 50 +++++++++----------
>  1 file changed, 25 insertions(+), 25 deletions(-)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
