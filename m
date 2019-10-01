Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7985C362C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 15:47:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dn8y0gP/CGh8Mniy2UX/AM8T8fQzvFoDNPyixvh43oI=; b=deCyUwicbiMk2x
	0aZQV3iaU14Q2mNnaUjT8eNFKvQSry8+n82okjP4Lyo2Ea3d/RZMnHQ0JKrX79sLqwM33v9FECtja
	TnFo/uNWMBePFDJXWF0DH+Z7BZfWz7/ylDJGiK9JlLtHWV+qUe7+gE+Cuyh2iFXUfS7yBlp2Ea8IF
	huyBvuLm9iWGLKG1U/YZl3PspNvIwGRx6sAJqF5uZIYZ1JHWiQTYjzbFyP+AwcR99ekMptzavd5AT
	c6ba3V5liAnnTTPDNRrsYOXEsuR52QD63blNpEQ4zyxjPAChyIl8T2GiN1dLL04vajrFoadruf4+l
	4VEvQir4Yrps52RsbgFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFIUZ-0007so-Ex; Tue, 01 Oct 2019 13:47:03 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFIUP-0007hU-Ig
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 13:46:54 +0000
Received: by mail-oi1-f193.google.com with SMTP id m16so14448413oic.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 06:46:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rM9CoJF9b5xP6Lw/RZ4XVfAgAaexqa9BDS8t6YL3L08=;
 b=G8QS6XBxxObGJ4bbusPOe4R8s02mD9sy76Hliob2JUozQXGlAj8FLC8sakIGbGzFnK
 H5wuXsdl7FHWe9pgre+sjS30if9xhHQilQkV2vLcKRtnFyE7IT/WcHQ96SU+U0ECCoeU
 tjr/lf1+JoRH6YAHl4oG2sVnHwDTORVobJyBNoRtY3ix3DCwOy3K4lTMPpz12JhX35XC
 smnl9yI0ZSEANV/dnBgd0u4Xof/d15O3nM3cMap4tJE/rsGeVni0BHlebwoZajxDoNyD
 SGCU8yTEVpFGM0xpGK2cDXoEt6OsuUUdJRBYHQYJsYGXbJea62Mu6L3mYlQCpszi8Eox
 vxJQ==
X-Gm-Message-State: APjAAAXyUSnmCD50EYgGNSklh9clfcSmzCfY00ZC7jpGxDcbPTB1Q/Dh
 FfkwiXiO26BbMZtXW/KWkQ==
X-Google-Smtp-Source: APXvYqwq5Bm1wdyLEVxUHZ7M6qpGJMgY2kkQew71shfhTe1OFaFYo0bDqnGEJXDqEvQm6oYovanXlg==
X-Received: by 2002:aca:e085:: with SMTP id x127mr3858766oig.32.1569937611286; 
 Tue, 01 Oct 2019 06:46:51 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id v6sm5291661oie.4.2019.10.01.06.46.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 06:46:50 -0700 (PDT)
Date: Tue, 1 Oct 2019 08:46:49 -0500
From: Rob Herring <robh@kernel.org>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH V3 5/8] dt-bindings: arm: bcm2835: Add Raspberry Pi 4 to
 DT schema
Message-ID: <20191001134649.GA27323@bogus>
References: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
 <1569672435-19823-6-git-send-email-wahrenst@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1569672435-19823-6-git-send-email-wahrenst@gmx.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_064653_628689_8B32C447 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
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
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 Ray Jui <rjui@broadcom.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 28 Sep 2019 14:07:11 +0200, Stefan Wahren wrote:
> Add new Raspberry Pi 4 to DT schema.
>
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> Acked-by: Eric Anholt <eric@anholt.net>
> ---
>  Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
>

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
