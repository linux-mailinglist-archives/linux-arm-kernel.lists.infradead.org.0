Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4420A19A197
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 00:05:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YYu3t1JwVDpTNI2qJ6vPJeEU9k5ShPiMqkzgfFajLW0=; b=bjZ/zq+qjP4UiP
	gfdKUrW149Jklbzaj6henYaVzWob7PIm2nklB+vEeJn56p/9yZXi18U8Ng00wiOgwzGqfQUDxC3YZ
	wP8/4HMYhuVfMtq4L//BuNs0HYHPfa2ra7j+gPv6hD9ebubhNqGSsIhsoIhGK7QtxJQdu4BIOshLw
	HFyVXmnQ4uUkqIbEUrOnUQIIsyv5rlZ2At51RvbdOUPj8mZwZmJdEK20xJp2eo8mAd+FaxIq27px4
	dtToQrcCj2S2CZxrd2vawSBfj1B7hJuXh+JrEYSKiguyr7HfcNUvgsvDrCGrf0hXYf2JjzZnMR6W7
	iPLrUjRstapDlBHJFwHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJP0q-0007vP-1B; Tue, 31 Mar 2020 22:05:36 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJP0g-0007ur-B3
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 22:05:28 +0000
Received: by mail-io1-f65.google.com with SMTP id q9so23494675iod.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 15:05:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7gyHDuCCObLbwOhDgDLIB3IBv9q5ANpOPQTizzDSzp0=;
 b=czKKAbv3YviLBr+G0slx4ABwXhFvJnhasQIvsCSBZ9xbcQmUA2Zd8XOPLBOLFf5y3U
 WYwVGW137R0H8ZjWOVVMNrzaBrO9XO2sa4371qdp/ptx8K3Us9htET61uYMO74GeCV0/
 meWqq8VUOquZJ7QfeOArxFIai0COPecCtWBFxN6pORqi3deAKePnOEPFB6AbnTndoV8Q
 w+G5pd5ocLl8jGTJZzx4wyGsFANahKV4cvM0cHmCwMEN0yYtLvGzDuCX0Dq+c/y848e6
 OLDkMbcff3XBjehCeZ7ZPUKRZiWlKMu2GMGuihErCu9Fb9sp1t3q8a6ukG4WuxT+VL9w
 RCiA==
X-Gm-Message-State: ANhLgQ3OtB9GMht1PM3NwPp1GOBnq0mlP/CLg+JNl8XdhNIJiiQ308oN
 3Vytcb56Jdq1E8qIo/WooA==
X-Google-Smtp-Source: ADFU+vsSpOsZ8Wc5swgJ7BDjH/PlcggrqpxIHsrUj7g2brTbnTX5zZ608Wo6F6HlLOic/Op0/GNsQQ==
X-Received: by 2002:a02:dc6:: with SMTP id 189mr17932359jax.100.1585692325439; 
 Tue, 31 Mar 2020 15:05:25 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id r5sm48089ioc.6.2020.03.31.15.05.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 15:05:24 -0700 (PDT)
Received: (nullmailer pid 28953 invoked by uid 1000);
 Tue, 31 Mar 2020 22:05:23 -0000
Date: Tue, 31 Mar 2020 16:05:23 -0600
From: Rob Herring <robh@kernel.org>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 1/2] dt-bindings: arm: Add some constraints for PSCI nodes
Message-ID: <20200331220523.GA28810@bogus>
References: <20200326105626.6369-1-ulf.hansson@linaro.org>
 <20200326105626.6369-2-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200326105626.6369-2-ulf.hansson@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_150526_384501_A7B876E1 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>, linux-pm@vger.kernel.org,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 26 Mar 2020 11:56:25 +0100, Ulf Hansson wrote:
> There's no point allowing anything else but "psci" for the corresponding
> nodename of the PSCI node, so let's make this an explicit requirement.
> 
> Moreover, let's also prevent additional properties, which also allows a
> better verification of the "patternProperties" bindings for subnodes.
> 
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> ---
>  Documentation/devicetree/bindings/arm/psci.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
