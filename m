Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1D196BD7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 23:59:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qxryli6N1FCa97mkUfxtuka8fScZtmasjOc7XQHyL+o=; b=urBcWU7Xkb+Zp3
	w1bhJW3zq3v9R4fZSLCZIPe+8ozG46mDetwIxfcwUcQtYpKrf7tfzhPSxq8UM5HeeXT+nO1JVFobu
	VMrzPiPfEXJmoXvsy70qGot6C164+jdoYfsu7+o/HpYwuc1o6a2h/LCx/xPMPpF7INfxfXsTHkESE
	FuK0hQFoWNXD0hpfj5TRgFxpaKmlnQEHol1yQkjSl0p8XgygijKL3gW2SGfoMB234mWPP+pQSBdvx
	PSTnobGrSGts6pklCXZDT7xm7lTWOXKP8hCd43s0QmufcimWzSQMHw9XK+Ywt72wW9IAEnVHVzpau
	CxNPdcDYuoB5jJp95Xtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0CAH-00008n-Ue; Tue, 20 Aug 2019 21:59:42 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0CAA-00008S-D2
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 21:59:35 +0000
Received: by mail-pf1-x443.google.com with SMTP id q139so4174783pfc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 14:59:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=o9bo6I5wW3MN8yD7tCQLmNsLZC6/ntjYnqt2sWQ/tkA=;
 b=veA8vo1SoXo2hyLd0XYvCsp+hY6GRdmwBFQ0iUaxhgTFJKaUT2y2LzWl2u98+Bus2e
 /czY/S9g7yqPzMH54K881+w6IWc21mUqOceB8aRl1+5dKuJsWFoW7rNwDAOFPAxVv8J5
 d9dVs2iGBd+rR1bu+4H5JILrBNhWERNXUcW9HSOdd5mQp7h+vMoK13J1hTFos2gYn1LA
 4Hl8nvVCzCQlkEEX+FWeiLaHZzVj9OCQ6iaQT7JzjdL+8WJwCNsyC3kK47E9tYHjiM8m
 sM72MnwlzNwXVou6SRwpCyemAqWD+JfEqLJWxgLZcvqQYC7Z4gioCbj9hJFsAP4AQVSs
 jJUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=o9bo6I5wW3MN8yD7tCQLmNsLZC6/ntjYnqt2sWQ/tkA=;
 b=XhnwC10T1RbAt5hIX9IeRmFCxWTKQtTos7xgFE/j+axC44opOlYE2HHUNigTkx6OrM
 942PMlewN1J1bo20fBFWmVYx8JMlReQtQ3/EOA7xJoGAIy8sjrSatImMcjMegaTHTfXr
 q1XNlGZT6X9+g3svIR32eT5vUS1sew70d8UXXfy7/VMWatUwEJWKW4waIP7VYTQHtzfb
 6RJEfs+ZYZ60JfVbJ0aLpPcAnZu6UINt8fjXDVTbzhbpDDUFhcH8Q4M9BFT6bj82exSH
 62rslGmRjr6KqS1G5B5h5KpgCNhLyWo1RtQyEu7xOKF/gmkR8HIjcO+LXuf024i75DNK
 NF6w==
X-Gm-Message-State: APjAAAVSMmt/tuwNx2jxoHgaB4+QNQQwBluC23G6ODSHkg7LNi95Aec5
 abHGYpz6tYnMLPiUcETYOJqw+A==
X-Google-Smtp-Source: APXvYqwDetxKy88G5IhMQtpNOGQIMK4D2AnhuFRhDcrsHb2SXVPMlC6/+zjP8QAwEuewg3Ti5nvwPg==
X-Received: by 2002:a17:90a:9903:: with SMTP id
 b3mr2120928pjp.80.1566338373392; 
 Tue, 20 Aug 2019 14:59:33 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id v27sm32080454pgn.76.2019.08.20.14.59.32
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 20 Aug 2019 14:59:32 -0700 (PDT)
Date: Tue, 20 Aug 2019 15:59:30 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v5 2/3] dt-bindings: arm: coresight: Add support for
 coresight-loses-context-with-cpu
Message-ID: <20190820215930.GB12159@xps15>
References: <20190816154615.39854-1-andrew.murray@arm.com>
 <20190816154615.39854-3-andrew.murray@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190816154615.39854-3-andrew.murray@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_145934_457467_C6EE6012 
X-CRM114-Status: GOOD (  19.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Al.Grant@arm.com, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 coresight@lists.linaro.org, Sudeep Holla <sudeep.holla@arm.com>,
 Leo Yan <leo.yan@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 16, 2019 at 04:46:14PM +0100, Andrew Murray wrote:
> Some coresight components, because of choices made during hardware
> integration, require their state to be saved and restored across CPU low
> power states.
> 
> The software has no reliable method of detecting when save/restore is
> required thus let's add a binding to inform the kernel.
> 
> Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> ---
>  Documentation/devicetree/bindings/arm/coresight.txt | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/coresight.txt b/Documentation/devicetree/bindings/arm/coresight.txt
> index fcc3bacfd8bc..d02c42d21f2f 100644
> --- a/Documentation/devicetree/bindings/arm/coresight.txt
> +++ b/Documentation/devicetree/bindings/arm/coresight.txt
> @@ -87,6 +87,15 @@ its hardware characteristcs.
>  
>  	* port or ports: see "Graph bindings for Coresight" below.
>  
> +* Optional properties for all components:
> +
> +	* arm,coresight-loses-context-with-cpu : boolean. Indicates that the
> +	  hardware will lose register context on CPU power down (e.g. CPUIdle).
> +	  An example of where this may be needed are systems which contain a
> +	  coresight component and CPU in the same power domain. When the CPU
> +	  powers down the coresight component also powers down and loses its
> +	  context. This property is currently only used for the ETM 4.x driver.
> +

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

When you resend this set make sure to include the device tree mailing list as
instructed by get_maintainer.pl.  Since this set did not CC the DT list, none of
the maintainers over there will look at your patches. 


>  * Optional properties for ETM/PTMs:
>  
>  	* arm,cp14: must be present if the system accesses ETM/PTM management
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
