Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0B01CEF5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 20:21:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r6HJ5qdFCu9dHoHLKDBcVjL2iFI739nL4BxmLzUi4EM=; b=PlYntv3UI4cAvf
	X/OgA5ek4vBc0hlnNSb5MBaICGrdc5pgS2sLgtHUO4+Yo+zuLlIQggStmBNGixgkBzpHjdi9wz+Kz
	lTdOsInUCdBCIHC6Usw3wR/4a5s2hIsy/Ak9zmit83tGOTV+MT8mt3Jf8IdnIPHq+yyAAlpSh/g0h
	qIYwHI+eSJ/35x/QQLZZkjg137oPCTSSnR5BpBk+8tfz6sPrIUBlBXQ1F4hp57vFXaxYuFcRypk0o
	DRxscZ5XuzDn5hrZpbCvILN8r0sBkmBq5RYf9LAYqipZ74OzQZSuT6JBsgGy5o2G0BOgoZmcOxCFz
	AqepcH0p6jV1CpKu0N7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQc2n-000122-SX; Tue, 14 May 2019 18:20:53 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQc2f-000102-EN
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 18:20:46 +0000
Received: by mail-ot1-f67.google.com with SMTP id n14so9239162otk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 11:20:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=OKJTOSFDQe74oP+wcypIqwl6MFEVGiVBSsqYDDAQDPc=;
 b=W+7MRqziMh/gb5YN5QZZ3bvHe8r52bOi/2hqieP3jSGDGiZZjHMWq/2AL6PrLbDmCA
 No5Uhqy5TSU5AiYNB17ksr+6lGU3a/YYTDYQq59jADMeZ85VVBsWwqnubKrK8kJ2VM2f
 MnnSqFGVWsBhZiZl53HWbejJb6jDX+0/4WjTZYlmEzGpEgL03YspRYVYAqW7xoFhNLSG
 0njpMF75sybFfeyfSzGZ9SFGANKV4mY6xCYk5i7pnb+fPN+TtK29bIsz8MxIvtWcZUQg
 nPWV596u2fO1fbxZskZ+BMDswMx8Z7h/mCPnuyUIJ02XvQVdGO64i5b2i8/wtZJp12lO
 nDyw==
X-Gm-Message-State: APjAAAXlnIofx72iSRx/iZjmJQ6HbIyKkk3mXYJRFQssQz2vBMSOHrhw
 cbX0fvyuPIHJmxJvuqj6qA==
X-Google-Smtp-Source: APXvYqwo5lRcs0PbbSdUqX0bwV+G31tQy4bJg/f5bK9hHGr5zRLHyV6p4NyvX9B3ICaQkkJ2BwjMkQ==
X-Received: by 2002:a9d:66c3:: with SMTP id t3mr22211827otm.80.1557858044189; 
 Tue, 14 May 2019 11:20:44 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id x64sm6771926oia.32.2019.05.14.11.20.43
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 14 May 2019 11:20:43 -0700 (PDT)
Date: Tue, 14 May 2019 13:20:42 -0500
From: Rob Herring <robh@kernel.org>
To: Fabien Dessenne <fabien.dessenne@st.com>
Subject: Re: [PATCH v4 1/8] dt-bindings: stm32: add bindings for ML-AHB
 interconnect
Message-ID: <20190514182042.GA26928@bogus>
References: <1557822423-22658-1-git-send-email-fabien.dessenne@st.com>
 <1557822423-22658-2-git-send-email-fabien.dessenne@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557822423-22658-2-git-send-email-fabien.dessenne@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_112045_614443_1DD052F5 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Loic Pallardy <loic.pallardy@st.com>, devicetree@vger.kernel.org,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Fabien Dessenne <fabien.dessenne@st.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Ludovic Barre <ludovic.barre@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 14 May 2019 10:26:56 +0200, Fabien Dessenne wrote:
> Document the ML-AHB interconnect for stm32 SoCs.
> 
> Signed-off-by: Fabien Dessenne <fabien.dessenne@st.com>
> ---
>  .../devicetree/bindings/arm/stm32/mlahb.txt        | 37 ++++++++++++++++++++++
>  1 file changed, 37 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/stm32/mlahb.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
