Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36824154E3E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 22:44:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6koLapfPcYP3CnAV53uaxJ5exYZ19VDg+bjyFFvh3Es=; b=oPgm8vURI0NLZ8
	2NV1yTU+zB1IhUlD6Dk4+LFe81xYF6eToeEQJGnugDVitk3NL79+ZdLYoWKAp4mrjA+5RapIjyeJu
	kH/tTfpLdiIcqIyF1iuSWdlvti+9B80HH36PwUBIsZB6wN+0aTAUdjiGD85tD8a6nHW8fg7AwtL+D
	hT7P6+1cphbL8gXodN+mb/82XgP/mMdHulKVo2bu8+L4Z5H4mnrH4B/mn8ScC5vWNfVQ98Y835nQw
	weCGhLc67sP1G4JUxDiTZNs7WmFbPKGLlZQoOP7PYG0pQjROWhiSlbZBcC/eKV0QAdSw2qT1E7b1d
	RHQmhIWV50hzxwH4a1Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izowb-0002xV-Tl; Thu, 06 Feb 2020 21:44:17 +0000
Received: from mail-pj1-f67.google.com ([209.85.216.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izowV-0002x8-U3
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 21:44:13 +0000
Received: by mail-pj1-f67.google.com with SMTP id r67so9033pjb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 13:44:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=nCZ9ayqGFGGOYCf7mf3ecb4tbvZDda1tYkdu0cB2PR4=;
 b=C3oZRpdnPx/wxLjwvk8mkrqOSuTNiRadVKMSwCEzUlnBxhVp3zf0Yx07QCNssuB61V
 iarB7fQlW+/QoUej4aWVaiQb23DBSWmxGDqRmEZuSM6yHozsxtbV0riigmOrJV3G8hDr
 eIkWeKjMo3uq6ivaWSJIDqVCpCCSk5+SNpzX5aC0/xQX3BDOov3bEyZuNHkrk4XZ9uF5
 OROb+2/9cGC3nwdpb6ZQ3wliP0PMt2lAtpGnhWRCSCSwSfufxTSXj7AT8NGpPWENJmWs
 OFGsqRUsFVinQObk99j4VV09lcVWrkMvEZeHx+UbUzpiRUNSbhekLUtqM0C3nBSkDzSW
 yg0A==
X-Gm-Message-State: APjAAAWPiO+9mJFL0TDofTv5s8aKVFzWHsXCNrRHP0demi5TYg7EF1dD
 aChdbEUYLkGjyIG98c0u2w==
X-Google-Smtp-Source: APXvYqzPnEQi9AlKJV7dkCP3bX1PSsZSNp5hyLTeKDDKyOAazqddsO1VbrfRdnm25lzXK+TMcPs0QQ==
X-Received: by 2002:a17:902:8d83:: with SMTP id
 v3mr6259832plo.282.1581025451046; 
 Thu, 06 Feb 2020 13:44:11 -0800 (PST)
Received: from rob-hp-laptop (63-158-47-182.dia.static.qwest.net.
 [63.158.47.182])
 by smtp.gmail.com with ESMTPSA id a18sm340710pfl.138.2020.02.06.13.44.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 13:44:10 -0800 (PST)
Received: (nullmailer pid 30200 invoked by uid 1000);
 Thu, 06 Feb 2020 21:44:08 -0000
Date: Thu, 6 Feb 2020 14:44:08 -0700
From: Rob Herring <robh@kernel.org>
To: Maulik Shah <mkshah@codeaurora.org>
Subject: Re: [PATCH v4 3/6] dt-bindings: soc: qcom: Add RSC power domain
 specifier
Message-ID: <20200206214408.GA30136@bogus>
References: <1580905572-22712-1-git-send-email-mkshah@codeaurora.org>
 <1580905572-22712-4-git-send-email-mkshah@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1580905572-22712-4-git-send-email-mkshah@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_134411_972466_74EAE45C 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.67 listed in wl.mailspike.net]
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
Cc: dianders@chromium.org, Maulik Shah <mkshah@codeaurora.org>,
 lsrao@codeaurora.org, Lorenzo.Pieralisi@arm.com, rnayak@codeaurora.org,
 linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, evgreen@chromium.org, swboyd@chromium.org,
 david.brown@linaro.org, devicetree@vger.kernel.org, agross@kernel.org,
 ilina@codeaurora.org, sudeep.holla@arm.com, ulf.hansson@linaro.org,
 bjorn.andersson@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed,  5 Feb 2020 17:56:09 +0530, Maulik Shah wrote:
> In addition to transmitting resource state requests to the remote
> processor, the RSC is responsible for powering off/lowering the
> requirements from CPUs subsystem for the associated hardware like
> buses, clocks, and regulators when all CPUs and cluster is powered down.
> 
> The power domain is configured to a low power state and when all the
> CPUs are powered down, the RSC can lower resource state requirements
> and power down the rails that power the CPUs.
> 
> Add PM domain specifier property for RSC controller.
> 
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Maulik Shah <mkshah@codeaurora.org>
> Reviewed-by: Stephen Boyd <swboyd@chromium.org>
> ---
>  Documentation/devicetree/bindings/soc/qcom/rpmh-rsc.txt | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
