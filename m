Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 980EF1C7AEE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 22:08:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kN6bWLlZj2fT8QFojcD1VMOiRfU5fBAkD1k3gQbSBbc=; b=Mbf4K17TbYcTo1
	zIjkYJ/DxEJ0LkB0cRbGiIwJX58m9Fs9yCOymZ0tSI4GtwfbDimfqFF7r5+duaRXZOzEAgL1cIU30
	I58ULHY6eRy1u/TWd2R5VGuSKJbvqXedD5907o1hzd0PB0JDu0xiZ4FXU1ULC747WFCcmoC3yiNXZ
	kPWnnCBv+dbv/JSLVZq4uiCg9zkpgVtvqnW9CkaONerEH5FsTPhuQ6JHn1QyxVj3BtkVZd+RKEgQd
	yviKNiAeqoZRlq207NOaC6id6vUAmbUOw7j9zEVuk8aBLBo8eNTgwaknbOYS+zKeWjMeWs0jVD72T
	hH6cC3zrolGGWoev2ccA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWQKq-0000Sd-Dq; Wed, 06 May 2020 20:08:04 +0000
Received: from mail-oo1-f66.google.com ([209.85.161.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWQKd-0000R0-Q8; Wed, 06 May 2020 20:07:53 +0000
Received: by mail-oo1-f66.google.com with SMTP id x17so785855ooa.3;
 Wed, 06 May 2020 13:07:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=m//K22Duhst7MLLBowkL8H7YWW4DvGlsi4f3I8y8i0A=;
 b=ei5iG9UiIvxyTJPzJQOIcLyhkGLVpvDcPcn8xp+Jr4FLwG/mzCWhneoK1HjGbpjZNe
 rPH5r0fN67FS2nr7Giv8Dusm+8+CPovQUngBCeH3xN85TCebb2fbQAEm5WoTyRqoaM+e
 vZNGotdZhINhr/ZgSQIHWstyHZnI2e/4+D9hoJa1GVNYGS6z4LIZ3LqlZfkTky3Ec//u
 f2RidXQ2a0VbJbgn5dpmo8rPwIHMcQSBXuT088+Iu+vmewZHCbZBAXSrgpF09Iu326fd
 LzH/+IgZBphNBalrBnehVKH02Go82HWzAXxQmyZ6pu9m9n2Lupxa0RNR7GHqoNt9nLcQ
 mA9g==
X-Gm-Message-State: AGi0PubXBUwt6UeXbMzA+if/tyIpejSNtS46aJtxEN6g3FQkcnP+vm/j
 feOZUJJvQSojqSMQbdFNAA==
X-Google-Smtp-Source: APiQypJG0GZkVXMMvIH0qOJ1vVRwc8oBzdFTSXt7YgCtCveVNkr6Z5mZ06vR2w6MBzufhOQoVl9k6g==
X-Received: by 2002:a4a:1445:: with SMTP id 66mr8623663ood.87.1588795670622;
 Wed, 06 May 2020 13:07:50 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m11sm747801otr.79.2020.05.06.13.07.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2020 13:07:50 -0700 (PDT)
Received: (nullmailer pid 1918 invoked by uid 1000);
 Wed, 06 May 2020 20:07:49 -0000
Date: Wed, 6 May 2020 15:07:49 -0500
From: Rob Herring <robh@kernel.org>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH v3 2/4] dt-bindings: power: meson-ee-pwrc: add support
 for the  Meson GX SoCs
Message-ID: <20200506200749.GA1868@bogus>
References: <20200420202612.369370-1-martin.blumenstingl@googlemail.com>
 <20200420202612.369370-3-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200420202612.369370-3-martin.blumenstingl@googlemail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_130751_852021_016D1C94 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, narmstrong@baylibre.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, khilman@baylibre.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 20 Apr 2020 22:26:10 +0200, Martin Blumenstingl wrote:
> The power domains on the GX SoCs are very similar to G12A. The only
> known differences so far are:
> - The GX SoCs do not have the HHI_VPU_MEM_PD_REG2 register (for the
>   VPU power-domain)
> - The GX SoCs have an additional reset line called "dvin"
> 
> Add a new compatible string and adjust the reset line expectations for
> these SoCs.
> 
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>  .../bindings/power/amlogic,meson-ee-pwrc.yaml | 28 +++++++++++++++++++
>  include/dt-bindings/power/meson-gxbb-power.h  | 13 +++++++++
>  2 files changed, 41 insertions(+)
>  create mode 100644 include/dt-bindings/power/meson-gxbb-power.h
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
