Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E832DE8F71
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 19:41:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xRa7asP4O9lPjzM0RIUxJvY05/dkI7v/2FJbELuz624=; b=mxwKM1mkGjKbEH
	1uKVkNyMnVPAoxApn1X1WRIa7OQJj8HG6EJgVW2WbQSTaeSH1I8eQitx4Z9igV18QlnQGx/afwuxx
	NPe8pjsDO8eqdZEF7aQ7BNrFQVFq1mmUAH42EWxsEksxGjyviLIsyh2UAPnoaXoXNWVjR8sO1grmf
	XPvBVCqBHWE59eJQr12QXYk+ZLpp12J0zN3HgbUKAzpj8RzDLrr9quB6kUgLKWjD0bfAmfhSbnOJA
	o2jo9DEj29RwY6iLRRWT10E7QAigBEmMzGi5M+XCBlU/V6rGSI/LlTLDqShlAk5zeBxvo84GuNS2f
	+qFTRuZXaw7vUGLexfTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPWRB-0004Rx-0E; Tue, 29 Oct 2019 18:41:49 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPWQw-0004Q7-AR; Tue, 29 Oct 2019 18:41:37 +0000
Received: by mail-ot1-f67.google.com with SMTP id u13so10700733ote.0;
 Tue, 29 Oct 2019 11:41:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=lCcDgbdqbuBTEikUEcKsB8OyooPRstoWxTDmJWpZKMA=;
 b=uhSwqq9nxH8Ptn6QoOFTG5NQwS8zGSaoQaWpDo2eUHYOLpd9uoG4xlwM477d6tRhCc
 jV4wjCiyF+5CWHWNpg3sLmEMqNxOsGsbp8CIDkI1XI7AStXnT2R59ubwog98Wb0AS6Za
 ovDiRwX4FbvfyW0osPY/i1yWwe2smU4PkwueS69bJem3N4E6S+6ZBqPgDGKCVkEiG5gv
 lI13+qvbJGhYBaBXojmyGJ916MYXeq15hyIEyg3othA5WdB+MZxLd3IGRNACO5iYxfgU
 H8gm7O9wGtlqEtI8lWN169z1nSDw/pPUxO0JGNYC3BZzdDy8xrmcfT3DU+PjpYjAjNy/
 uRKw==
X-Gm-Message-State: APjAAAX00y+8VkE2ulPsYlTf/EZ1nkr4/HxVoYTU2Iz3e/mqAl05IN5B
 M5Z7FeJK6qRIucPdm+Cbvg==
X-Google-Smtp-Source: APXvYqyVgC8Gsnj0NziyjeH40B60+G7bSv4Br+vl1MPHSuG6P0wTssUrdGYhc3TeATcb8OHCX8obxw==
X-Received: by 2002:a9d:5f89:: with SMTP id g9mr18830085oti.227.1572374493211; 
 Tue, 29 Oct 2019 11:41:33 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id y4sm4155556oie.42.2019.10.29.11.41.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 11:41:32 -0700 (PDT)
Date: Tue, 29 Oct 2019 13:41:31 -0500
From: Rob Herring <robh@kernel.org>
To: Wen Su <Wen.Su@mediatek.com>
Subject: Re: [PATCH 1/4] dt-bindings: regulator: Add document for MT6359
 regulator
Message-ID: <20191029184131.GA3733@bogus>
References: <1571218786-15073-1-git-send-email-Wen.Su@mediatek.com>
 <1571218786-15073-2-git-send-email-Wen.Su@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571218786-15073-2-git-send-email-Wen.Su@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_114134_357567_3F290405 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
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
 wen.su@mediatek.com, wsd_upstream@mediatek.com,
 Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 16 Oct 2019 17:39:43 +0800, Wen Su wrote:
> From: "wen.su" <wen.su@mediatek.com>
> 
> add dt-binding document for MediaTek MT6359 PMIC
> 
> Signed-off-by: wen.su <wen.su@mediatek.com>
> ---
>  .../bindings/regulator/mt6359-regulator.txt        | 59 ++++++++++++++++++++++
>  1 file changed, 59 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/regulator/mt6359-regulator.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
