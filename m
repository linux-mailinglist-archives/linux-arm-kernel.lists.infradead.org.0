Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F8DA1A8555
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 18:42:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5xDwvVo2MpBuskjuoIG95Pokj8UcLBZeqQlErua9Bfo=; b=hkLhwUY+ATaYHr
	q5NkFErDrothkZem3Bi36j3oD7x7WtqGCzRH67w9QNOok+UIEhiBt6pOUSqCinXZcM4aJS4zXOWbf
	hUT7J86jHwOwg1jKxu2DvOP/2000F3vhVRwykyBum+I7nzVEHHedIeK+cuw1AscL5htiWa/TBCD5E
	1IoKlnT/i94eRu796oeGTsRJOVB7zjY6bzGgJJlKhZJHDJPlci9RKuIMIwDcpH2lq42NAGiIJpvmW
	t+vTZ5Akp62KJ3eb9mQFtHQnu6f6w21AhlFvEabkjtakeAZ1eHvK8oNsCbHZQRgddkJiVrD+2WCbX
	sof7St0kYxj1MqUpnotw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOOdz-0002Dj-Md; Tue, 14 Apr 2020 16:42:39 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOObq-00028K-Vt
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 16:40:33 +0000
Received: by mail-oi1-f196.google.com with SMTP id o25so10925881oic.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 09:40:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3x35azgG+lJCU/gZaEiAMxuZVIwGctATbm5bUTVlau4=;
 b=aVGiOjx2NnzF7eiuIkedB34eqDKSgY+hBTUhvNi+0Ud+Fd7ofnojMn9roRI0+O4J9j
 OqPV+CogYYyecteroLzNzohgb+Q5aYYulixnLumUKPtMraQd03ikd0+rYuRmit05KN5T
 fZDN4zM568zi7WGe1Iws9MkRgGHYutM8MtiTeWomrRFOS3n+C0ioxH0LaRLfE7f9Kzag
 96Qk9M7O8nJcDL34IAv071JmqHrGuXj4F1pXcHPcS0IymLKdi6sKkQIWlWbvMrWJYlWC
 IWnQcIXb8WAUDaP//bp/XRhK8wItUG9WHmrhKhF4BCaEEHVqt+CQ4vwsQm0T3ET/Nrnn
 ZlYA==
X-Gm-Message-State: AGi0PuZIVcWj6WOYzRA0MDgxSmQt9L+3T7DM5/jTdTDfeBu7YTzKiz10
 ue/+AnEUheQBAXfrN5e3Bg==
X-Google-Smtp-Source: APiQypL0oSub6bEtdmYrLp1hotMjYYelqHyjSliWQQvH3rQAEdz2dRbHzqQ3NfLOhbbfyOvDATjPug==
X-Received: by 2002:aca:fdd5:: with SMTP id b204mr8487693oii.167.1586882424671; 
 Tue, 14 Apr 2020 09:40:24 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id f26sm4225778otp.28.2020.04.14.09.40.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 09:40:24 -0700 (PDT)
Received: (nullmailer pid 6287 invoked by uid 1000);
 Tue, 14 Apr 2020 16:40:23 -0000
Date: Tue, 14 Apr 2020 11:40:23 -0500
From: Rob Herring <robh@kernel.org>
To: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Subject: Re: [PATCH] dt-bindings: timer: cadence_ttc: Migrate
 timer-cadence-ttc documentation to YAML
Message-ID: <20200414164023.GA6221@bogus>
References: <20200401141449.66905-1-iwamatsu@nigauri.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401141449.66905-1-iwamatsu@nigauri.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_094029_879079_6643BB57 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
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
Cc: devicetree@vger.kernel.org, Nobuhiro Iwamatsu <iwamatsu@nigauri.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Michal Simek <michal.simek@xilinx.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed,  1 Apr 2020 23:14:49 +0900, Nobuhiro Iwamatsu wrote:
> The document was migrated to YAML format and renamed cdns,ttc.yaml.
> And updated the example to the latest format.
> 
> Signed-off-by: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
> ---
>  .../bindings/timer/cadence,ttc-timer.txt      | 21 --------
>  .../devicetree/bindings/timer/cdns,ttc.yaml   | 48 +++++++++++++++++++
>  2 files changed, 48 insertions(+), 21 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/timer/cadence,ttc-timer.txt
>  create mode 100644 Documentation/devicetree/bindings/timer/cdns,ttc.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
