Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71DCEE7DFC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 02:27:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ocml+418NOWnM2RNFt+ZjnUznBqhJHC2xhsjlLWd5Y=; b=q0zOAtIGEz/xSa
	gWv1bkyHECet1TmmlP+1VF5ycqtWneNwEWUUAJAK/KHQS2Lr9meXBL4WZCYvqd7LJwRIFvoZtLetv
	vozXdcbDcKonqfVELG9gWYR6KmZVQU8GMcfc+wDxUKn26J34ddPLJ4CdIc9vQA5JfLoQdxdDSgMFz
	/zmx4DOJD5dmrG2+M9rd1VsG4ctn4APENG4vtLLv/L0uKutPdkXUsJK27QX4uQUV+t+kT/rr+OKN1
	0ggqmv86iZxhWg8IDFCQYbeYnLb7mfTz4Fn8Z6LXlw1C4EIH+oM3T9P5EA+S11k02RXth4sn91ru9
	Tcd4lZuypc7ffkYRRA0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPGHn-0002aS-24; Tue, 29 Oct 2019 01:27:03 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPGHb-0002ZZ-Nb
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 01:26:52 +0000
Received: by mail-ot1-f65.google.com with SMTP id d8so8378643otc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 18:26:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=eCcfvuoPjyHMd42pi6nHfOR0UQumVD6OC7pdJhU7kf0=;
 b=XzNK0J/Sf0BAy961SCtOL9qHwdO7qnl9ci44VrmC+Cw4OD3lQq9Cw+7tYfcXsNrNVP
 t3GzW5P/XhHm2BAZe/XdOq8raO9S7kcZ7TCbhAqqmsCNrMtxO3SJ73cpSyrNsWZVmHKs
 KPxN0PRAqRDnrwillePKcA77gMsLylqZO+2iGVknqkxFHd3R4z634S6KlFWWV+z5xxLH
 ke6iSObhZuomxrH3a71Wf5u0Ah3e4LiK5gxaiIZQBzosnUd5d9iX7bxOsKeAE1YCspbT
 fjZnnzLUS1bo6BiUnNErAHyVXeUw/vY7I2oyaPMWnHMCrWbILMqrzuL+Bo4lWfjFb2gM
 kd4w==
X-Gm-Message-State: APjAAAWCNAnu0zco2WAzOwbhAKytKiueAkAttKT5U7YoqaA+2ZyLEhzS
 oiCOxhccY1oGDYatyP+k1Q==
X-Google-Smtp-Source: APXvYqzullEppKlo2Vs5I8EFaP7D80fR49srcNV1CcFfdV+cfQk+WtNPkgcRwpUjgM2VuMnhCwAMsg==
X-Received: by 2002:a9d:7653:: with SMTP id o19mr15691588otl.4.1572312410530; 
 Mon, 28 Oct 2019 18:26:50 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i7sm2136223otl.25.2019.10.28.18.26.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 18:26:49 -0700 (PDT)
Date: Mon, 28 Oct 2019 20:26:49 -0500
From: Rob Herring <robh@kernel.org>
To: Fabien Dessenne <fabien.dessenne@st.com>
Subject: Re: [PATCH 1/2] dt-bindings: mailbox: stm32-ipcc: Updates for wakeup
 management
Message-ID: <20191029012649.GA21858@bogus>
References: <1571228029-31652-1-git-send-email-fabien.dessenne@st.com>
 <1571228029-31652-2-git-send-email-fabien.dessenne@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571228029-31652-2-git-send-email-fabien.dessenne@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_182651_767606_0BB48F29 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Alexandre Torgue <alexandre.torgue@st.com>,
 Jassi Brar <jassisinghbrar@gmail.com>, linux-kernel@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 02:13:48PM +0200, Fabien Dessenne wrote:
> The wakeup specific IRQ management is no more needed to wake up the stm32
> plaform.

typo

> 
> Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
> Signed-off-by: Fabien Dessenne <fabien.dessenne@st.com>
> ---
>  Documentation/devicetree/bindings/mailbox/stm32-ipcc.txt | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

With that fixed,

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
