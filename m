Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C423C1778E7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 15:31:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z4YYteDSjee6V4SLt2g6zyV/e8NBQC+vAuHoEWrRS6Q=; b=ClBg/2XnIWK7ai
	Of6TJgpqWOdJfljod/stHg5xoSnMbu9RXPkwjpzFEMiZZIDeQf+9YZQl5YILl2olRP9bsEkKe735M
	q0YvVK6IiZ67vnoFYXMkrL+un4yJr5UIX9tOVVp9uB3mswLKlCa1LiHJ0kUBfQbc/qeQ4gUYZnrES
	HQkJ9dHF8FNLXmUwg6gD18Dz5gHavkzJ2AWr5RQUFldPvjo1pDOUZZDuhO5KD3ODftqk0Mp3LIi7h
	KZx4tWvzzlPFZzIRQ5VW+yePDVheGNfoLqdOLteZRjaGJ1uopAjfykHRNp6qj2xiz3H4w55R7eKk+
	M5lT+0ThGGhxm5IRMbNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j98ZR-0002BJ-Rf; Tue, 03 Mar 2020 14:30:53 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j98ZL-0002AQ-07
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 14:30:48 +0000
Received: by mail-oi1-f193.google.com with SMTP id 2so3201138oiz.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 06:30:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3giDTcmis7xuoYSVjRPJHKbcsBkDsi3FIKg6I//oj2U=;
 b=b82+5XP8p9OH/RyN9rsbYo/PPV/jnHmMQOm4FXQfWm+vJVH1KP5FCwCJ85eaw+eiCy
 2mBBIEtDbf2VEnOQqvBYKcDYJmny4bWawwR7KOXg8uuwwOvp8H8lC5srGqRQfO7go8LL
 tBzzROlxbCxg74V9DR3O+gtC90WSWXU/EMx5T3VS8pB01GoMRzQ5yHO7/Svx1YmZ2USO
 ypJgTpoZZ70fb9unY/P6OuSd6XWU6DeK1/VNdT7Y4YltxIrbPjf9VYisGvzPNAsy8EXu
 s0lIE3hiKPPxktSw/37J8LcGyIfqkSU67DN152Rv6jSsXFJyIwz4CIu+RJQNr58ojUSw
 B/8g==
X-Gm-Message-State: ANhLgQ3RjIxUzJ1NGglHuhwIz3EDu3ghQAcYpKHtXvQQgdiRnjwXwdB8
 JCuaNg76TfpjOrTPrmxbN6b23g0=
X-Google-Smtp-Source: ADFU+vvfMW/0Fosxapnoh/aFQ3fRu6XOd3zB5JsdxNtRlGdL+ltkBAIjvhbLwLVfbP36SKvU92NEtw==
X-Received: by 2002:aca:4c91:: with SMTP id z139mr2568648oia.150.1583245845284; 
 Tue, 03 Mar 2020 06:30:45 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id y193sm6613292oia.38.2020.03.03.06.30.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 06:30:44 -0800 (PST)
Received: (nullmailer pid 24203 invoked by uid 1000);
 Tue, 03 Mar 2020 14:30:43 -0000
Date: Tue, 3 Mar 2020 08:30:43 -0600
From: Rob Herring <robh@kernel.org>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: Re: [PATCH 1/3] dt-bindings: add vendor prefix for Linux Automation
 GmbH
Message-ID: <20200303143043.GA24147@bogus>
References: <20200226143826.1146-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200226143826.1146-1-a.fatoum@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_063047_043361_5F830951 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -1.5 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
 Ahmad Fatoum <a.fatoum@pengutronix.de>, mcoquelin.stm32@gmail.com,
 linux-kernel@vger.kernel.org, kernel@pengutronix.de,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 alexandre.torgue@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 26 Feb 2020 15:38:23 +0100, Ahmad Fatoum wrote:
> Linux Automation GmbH[0] was founded in 2019 in order to develop
> electronics for embedded Linux. Add its vendor prefix so it may be used
> in future board and device compatibles.
> 
> [0]: https://www.linux-automation.com
> 
> Signed-off-by: Robert Schwebel <rsc@linux-automation.com>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
