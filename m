Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8684E1E64B5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 16:53:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TGwU9Ijctb+CwXcGmgIyx1bdgNFB1p+7PMdjgs44fqw=; b=lO0ngiDs6Bx+sN
	FOdTD3An1qQYj+AHi72Yk9XQu8vHB/4VzoUm6B9xKC1bFqENcYoJJlt+ZXmgaQi3Q2f5Xv3rNas/C
	a7XpGouXBiE1Nn3ZNj/AgL+g3+J3Y6UIYpHyXNP4wEtRZoLj4KBiszmKZ85wiEp5wLZnPyCtj1BvM
	7B/INJXZ2/v0+wUfw1MgROQ9l3XOjnk0HtDXn6GjbrepLUSxtqzyJBebBhnIK6S7mfl4SBWUIrfN5
	5xFd1PY199r25lpdq2ldQr7WWQHx88kPS3DN3KylwROlGJsnnYdFMuGdT0WnnQPBKe3NzuwZEX/I6
	fbXfKIhHlCxSaPHRJ6pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeJu9-0006bb-Qx; Thu, 28 May 2020 14:53:09 +0000
Received: from mail-il1-f176.google.com ([209.85.166.176])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeJtW-0006Ee-A0
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 14:52:31 +0000
Received: by mail-il1-f176.google.com with SMTP id h3so342666ilh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 07:52:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ovujcsIda1tQu8DKvfSwPVMWXijBMsT5Rkxd+Yb9Dnk=;
 b=MvYTW2Tmww3M0W/eT+9SEsHvuRF2eof5/CgBll9yBpM1RSQ00vLS6zIPKQ4SUroxdq
 z5tovCP24j4A62ysBB0Q8/oZXbalp5uyriBio9xFk6y8uE6G9wCDQHBRL8YWWHHIapLT
 f7za8me8krJmfHBdzucDK7/jCtD6DPT5R+mgCu7mtBc4JdJylEmCbfUbrMKMGIoxndGI
 JZNOoynOUI+E8UYP43axFjqZaOqOrgfny0h2o1nrNe0WHJWqqWqJUE8CfV+z0XKJ9imn
 RbvsfoFIjMgHdW3Dn6Pf4vz8qXf4DuYTl++n5FF4hbIjRaGEfzjJWiZiflR9yUr1z5gj
 9Pbg==
X-Gm-Message-State: AOAM532vbpUF/HpCDgy2rK0oOGwV9GS3i6vHHFWL9FPJ90f96RHDt9PU
 cMCCpcsRU8On9sccCxHOTA==
X-Google-Smtp-Source: ABdhPJwJaHWbYr6tMVxKGIV9kSLXoW5j2Prp5ZBTkEyhui05nVoF73ZZHNCf37YB32pRpWomLQkBEw==
X-Received: by 2002:a92:b10c:: with SMTP id t12mr2979301ilh.158.1590677549086; 
 Thu, 28 May 2020 07:52:29 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id v76sm3387048ill.73.2020.05.28.07.52.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 07:52:27 -0700 (PDT)
Received: (nullmailer pid 44393 invoked by uid 1000);
 Thu, 28 May 2020 14:52:26 -0000
Date: Thu, 28 May 2020 08:52:26 -0600
From: Rob Herring <robh@kernel.org>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCHv3 2/2] dt-bindings: arm: coresight: Add support to skip
 trace unit power up
Message-ID: <20200528145226.GA44346@bogus>
References: <cover.1589558615.git.saiprakash.ranjan@codeaurora.org>
 <7b69c9752713ce22f04688e83ec78f8aa67c63dc.1589558615.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7b69c9752713ce22f04688e83ec78f8aa67c63dc.1589558615.git.saiprakash.ranjan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_075230_370435_2CEC105D 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.176 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.176 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 coresight@lists.linaro.org, linux-kernel@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Tingwei Zhang <tingwei@codeaurora.org>, Leo Yan <leo.yan@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 15 May 2020 21:52:33 +0530, Sai Prakash Ranjan wrote:
> From: Tingwei Zhang <tingwei@codeaurora.org>
> 
> Add "qcom,skip-power-up" property to identify systems which can
> skip powering up of trace unit since they share the same power
> domain as their CPU core. This is required to identify such
> systems with hardware errata which stops the CPU watchdog counter
> when the power up bit is set (TRCPDCR.PU).
> 
> Signed-off-by: Tingwei Zhang <tingwei@codeaurora.org>
> Co-developed-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---
>  Documentation/devicetree/bindings/arm/coresight.txt | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
