Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A7846631
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 19:52:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z6NxypcOa3s2lswmzurdZmPCsBnnWKjanQW2kFm89PY=; b=DYYUfMDcECEA0/
	XdXGy3hSQbS70Mqma7rhb/GIriS0/vO8dno4KwyD7FfCGVx8F01MgwsnxccP4FHLiy8iZsnUA5GXs
	h8PL5z5lMIm9Am0tsyyiBkblJUK9EFL3zZJawY2QzrTxWHj6S20jWLDwVaolRHFzhg7wKhdESUjY+
	ctnCU6FMWjW7yRyTqJIvFrG0eLeYiKiJzX0XJayYDfnJk3XvPVgsirmb+g8WEAsg0h4fVA6m9S4zO
	ewZDyD92WZExB39NtBpoxyzEDGH6Y64wybkMzvm+4gbxk/QaJxejxJmEtO/0kufGftvJCtWdgIjti
	YmjwbWltReel0OBATPdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbqMw-0008V9-Q4; Fri, 14 Jun 2019 17:52:06 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbqMl-0008R1-IX
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 17:51:56 +0000
Received: by mail-qt1-f193.google.com with SMTP id i34so3448171qta.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 10:51:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PST035fihKP7qa7V2kxzXv7aujCa26RgBIP4O3/ziZQ=;
 b=tARYdTbu4L8z0xbpUo3TG9oDwSHaqDuVYb+AaPEUU/abXXjizD2wD2wzAKWk96Iwaw
 a8Diutr6RnbXq/0Bdnw//meoowy3W4AMyoDNa6n4EY1q1aJEMHTjsGg/0uHMRinUyYzX
 Q4qoAXcEzRyDW0oKz0cXdy6lRS/rVzUbkba9IWw/UKolgyKbqjI7XmAM2bE2XvAYf2p1
 2IwFm8EJvSbhse94HG5mhMu1Mlx4gOXi27/5TUbnLZkI+WgNMQKkUHLwd7DaQ1KU2/iC
 xnlsWhxKcxQp1rimL86wcjseci4srgDx1tDPp7v/thHkqLPwEZDkQimAcKGFv6GOuhxp
 EbQQ==
X-Gm-Message-State: APjAAAVC0CUt60Dat9Z2dzR2VRCy9mHz++A5zWRj2OfyqzlKtCP9q8Jr
 OX3YQAbi4zylsP1a45EPIiYckHjdzQ==
X-Google-Smtp-Source: APXvYqwUnd8FPADe8nH6dseR+TRRkfxHm0kmkb3uxoiwjmhMZifbdpbshCoLVh3igT7lLIlcMAitWA==
X-Received: by 2002:a0c:86e8:: with SMTP id 37mr9667182qvg.77.1560534714279;
 Fri, 14 Jun 2019 10:51:54 -0700 (PDT)
Received: from localhost ([64.188.179.243])
 by smtp.gmail.com with ESMTPSA id n5sm2197915qta.29.2019.06.14.10.51.53
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 10:51:53 -0700 (PDT)
Date: Fri, 14 Jun 2019 11:51:52 -0600
From: Rob Herring <robh@kernel.org>
To: Erwan Le Ray <erwan.leray@st.com>
Subject: Re: [PATCH 1/1] dt-bindings: stm32: serial: Add optional reset
Message-ID: <20190614175152.GA18378@bogus>
References: <1558711838-21174-1-git-send-email-erwan.leray@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558711838-21174-1-git-send-email-erwan.leray@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_105155_644009_811A7640 
X-CRM114-Status: UNSURE (   6.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Erwan Le Ray <erwan.leray@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, linux-serial@vger.kernel.org,
 Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 24 May 2019 17:30:38 +0200, Erwan Le Ray wrote:
> STM32 serial can be reset via reset controller.
> Add an optional reset property to stm32 usart bindings.
> 
> Signed-off-by: Erwan Le Ray <erwan.leray@st.com>
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
