Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84339D8041
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 21:27:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ltjS2PtDJT3ur8YGQpSFkATVtwCPyNG517fxYgKSlpI=; b=ppRXhjDyQnSSw0
	lnShOzXjPjcw6rxS4TEu7wt9hltz7cB+2Yfr0pgJjAXpd3VnocPRSFreG+EtMFhqrsHki23+Ulkr8
	cpA72IFCgUMHyOhbHfOZ6YeZr02nElTGUcdEfQHhPCZftZIYKiWZ344UUwSi4l1qwJLx4/UL2IHKI
	njbuwyqj1ZWMZouvZGoQk/jkRRdI5opG7m+bEXNPIryKGPA7Oi+LG9NQPNGRhN1dP/nR1OJedyerj
	ikhT3AHKf14ZkM3UcJRbs1VuH7tFBgxh93jKLSGLcbuHZvTRdm5jTsVDlVjmZUf7tWyx7mPNaTjcq
	X1SII3/caJ4+DOhcWDlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKSTA-0006Hu-Bt; Tue, 15 Oct 2019 19:26:56 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKSSl-00069W-Qn
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 19:26:37 +0000
Received: by mail-oi1-f196.google.com with SMTP id w6so17800958oie.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 12:26:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5iiAtGxSrTdQp0QGKq/f7302iXtdKwjl0hjxQ3NkrD4=;
 b=WBnaA/6ZxrwkGRW5M2+EN0bDF/ZF44///df9MoYXMfkbQj729LnDbjZ1IKW77U4aqW
 1xShmHrV+7CBrFP76pDbTP+0KknKSPE6stZzSYTTtjda62S00Qcry9aWdyqwB79p9UbU
 Wr/MEsjIH7Z3dhfh1m8GyHVoPIKuDI+qBF/z7sTg1iYspRLrxj3k6KjRuPY+DSeB4P8x
 CpxJeN6U11swUr3RKltKk6YaloBFp8be0VA9XceRXF2OCJa4mbpX6eBoNRl/cbvK4SRZ
 CvE/zGNLZhx46s3n2GEu1AL7HSslgXu9Mw/VEci6AFAe1mYz7UwHvrpaQX9/4ynk5Gtc
 36OA==
X-Gm-Message-State: APjAAAU71T1vGu0IBGWn96hbBKPEVgTSnNNWs+3v0xEDAi8fOGF8gNwI
 p5DlmY4zTNVvSVRj98QaFA==
X-Google-Smtp-Source: APXvYqw58v3zVqOimrVk1o2jEAKMnN+uiNnsHPtWXeHnlXi8YNPQ9rDOhWl9vJKQ34wRh1IL0tYZ8A==
X-Received: by 2002:a05:6808:1:: with SMTP id u1mr132396oic.137.1571167590519; 
 Tue, 15 Oct 2019 12:26:30 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 109sm6977628otc.52.2019.10.15.12.26.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 12:26:29 -0700 (PDT)
Date: Tue, 15 Oct 2019 14:26:29 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 2/3] dt-bindings: gpu: samsung-rotator: Fix indentation
Message-ID: <20191015192629.GA3241@bogus>
References: <20191004151414.8458-1-krzk@kernel.org>
 <20191004151414.8458-2-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191004151414.8458-2-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_122631_903662_CCFC8179 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, Maciej Falkowski <m.falkowski@samsung.com>,
 linux-serial@vger.kernel.org, David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri,  4 Oct 2019 17:14:13 +0200, Krzysztof Kozlowski wrote:
> Array elements under 'items' should be indented.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  Documentation/devicetree/bindings/gpu/samsung-rotator.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
