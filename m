Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE181AAD3E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 18:19:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=73gTdRplpJd5xELZltXqPOLkrOSYLh9QVZhVKs+xuWA=; b=H+LLs1UdPRtK4b
	QzpxVoIqfp5hDBKc87kKywLCCnG2JzjQCnd8uVj/qH9GzHfdpLm9buQngz/FnoWhjmvIQj5adAHMz
	Qoaddq5wwXXyr3WbqHKx17LZS3VtT3L7Rlf+jH1HinEFXdoe8xFytOJjgvOV0no9EnMNVnFNfNauy
	8dB3p72cwR6NbFSYr3qGuMl/PkDWWJCDMBXHOLca1ebC6W+BVw5NVJgy2Qhl4FOoGmurKz9IP6Yym
	JAG0ilUDuZTuTonNhrycUgujj10yoQg+hzyEygGmx6U4u7uKM8xjs/aa9JLPCMCg6O7utyGuElP4V
	TZD7KbQz5S+7khygBVdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOkkX-0004g0-FV; Wed, 15 Apr 2020 16:18:53 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOkkN-0004eJ-J9
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 16:18:44 +0000
Received: by mail-oi1-f196.google.com with SMTP id 8so3718226oiy.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 09:18:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=y6mEF3x+XYhXpSM89WxwJmLStGtmC7gvxiAfRjFJhog=;
 b=V6M0v5uttCmeioUHLxolHtzR4pCCX9wMsiP0srsRK5w3Mu94/DHcAG+BdXYig1M+0f
 s71Y+efJ6l7/NPtGfu6dInvKoEF3ble4swmL9WVpEq+u/1nGfi67aT0jEjFdBOIdcgU9
 Gen4+i9UKhemWpTH5JlzvJBsbHraP5jZNh31aN5QqCPBLwfJE1HjA6ntYguoOwBn+fd9
 x3KcPkwIKxDj3HyJKCL1EH+3bQU8G123WTwMw2Dts1Tvwx203ze5Vku5n2Ypx1C55yOR
 hNSwGaRPtFzzGw0w67svTUH46UEtosVNm6pbivrDlF11U9jDBrzdtMpbIYnbRzYP2NVj
 8PeA==
X-Gm-Message-State: AGi0Puai/X9Ve6fKx2s1NVB+RSsG5bI7NLRaguX7AFpQeLcYb/59/3FC
 3SF+QuWFFmrxV6XdK4ITkA==
X-Google-Smtp-Source: APiQypIBe/N4FYeGBZid7490V9jbXplYDI3CpXW1MwryQ9Vj0f3c8l1tvBVcbq/Vuo/BErnQtibVSg==
X-Received: by 2002:aca:e08a:: with SMTP id x132mr19364361oig.93.1586967522289; 
 Wed, 15 Apr 2020 09:18:42 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 85sm1487345oie.17.2020.04.15.09.18.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 09:18:41 -0700 (PDT)
Received: (nullmailer pid 25712 invoked by uid 1000);
 Wed, 15 Apr 2020 16:18:40 -0000
Date: Wed, 15 Apr 2020 11:18:40 -0500
From: Rob Herring <robh@kernel.org>
To: Pawel Dembicki <paweldembicki@gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: vendor-prefixes: Add Check Point
Message-ID: <20200415161759.GA24696@bogus>
References: <20200409070448.3209-1-paweldembicki@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200409070448.3209-1-paweldembicki@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_091843_626951_6558FCDC 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Pawel Dembicki <paweldembicki@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu,  9 Apr 2020 09:04:43 +0200, Pawel Dembicki wrote:
> Check Point Software Technologies Ltd. is a company based in Israel and
> USA. They manufacture network devices and provide software
> products for IT security.
> 
> Signed-off-by: Pawel Dembicki <paweldembicki@gmail.com>
> ---
> Changes in v2:
> - corrected line order
> 
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
