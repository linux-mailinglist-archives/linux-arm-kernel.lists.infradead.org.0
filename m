Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C06514596B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 17:08:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6A7GXlDRNiIu04TbxWUHmIk0JBH+5Pim6hOzvwu6zmg=; b=bHlXJbvCak7/kp
	DzoGebeASJEcqKdEUjtLIs7taLpdQwPsXFWphP3W8BTQ0vtrxqnc+PCBI+ruEiw5zaraUXd0gt0Ty
	iMYO1tp0sQccvgXfWcagSJyr4FOI1QIKs5x60G0bg8eVqMDbiZw/V9LzwTpYxa/Kd38IQbpyWhkJv
	vq5JWCE7jGXeCnS51ufxaSN4Swzle8q0SRU84/pvN29d6c9jm+pn7GPHUPS79E24VoElhNFxBy7ZC
	LkaiOTkdwLN3Xin9rGkqZLlurXGWpbu998t9/lJOo1sPR/reADjjHS+PPSutVmXRjoLlt7e4GhsRm
	lC0AXxbQm7zosZpJcMgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuIYV-0007KI-Ff; Wed, 22 Jan 2020 16:08:35 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuIYM-0007JK-4t; Wed, 22 Jan 2020 16:08:27 +0000
Received: by mail-ot1-f65.google.com with SMTP id 66so6712465otd.9;
 Wed, 22 Jan 2020 08:08:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=fJ6RphyD8sSyPTqyOLqAI/Xz7E4nNP+XR5CyPMuI564=;
 b=qo0KbggGVA7x2brlrorOI691cSQ809/lOdWnhA/WN+XjW2XJkRKaY1LFhsi2WlrcTp
 8LguM4b5nUUdld2mtl2lWkFnKJqAw9C3USpacRy2hlP0Ao+yUOlYIskQpw2FWNWOzsh+
 zMzTxCDkNURIf8spZXlhw37G1RmIwu7GoOAAVj4NZCTcmma38oUmKQe8WPDj93t3RTfj
 GzhbgeLwsRGrsy4F79wUsUGxHxuqJfk9Pa2RBej/kKTbXrxTsAtqMsV7HzNY0YSrAc6N
 pN5aKaRMiSDlNWuyoc9dINgPQEtp/DrWJXkuEQOrVDEgNg1iz9BptOaDtq2F1UjYhTnD
 a4uQ==
X-Gm-Message-State: APjAAAUpa+Lqy+3PlXrxZPvrHQnuDqK62ZVLkptYs5dujjepAnT+cvdg
 4FqXfZ5NyNpccnYpHIXoWA==
X-Google-Smtp-Source: APXvYqxLEOxbsL08vDuEoLiLKQY5f0wqCbNPih8yNmPTCMWHpkhVewkTCUhbZi3T/uga/TLzgU10Zg==
X-Received: by 2002:a05:6830:10c6:: with SMTP id
 z6mr8270289oto.203.1579709304565; 
 Wed, 22 Jan 2020 08:08:24 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id y13sm14708687otk.40.2020.01.22.08.08.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jan 2020 08:08:23 -0800 (PST)
Received: (nullmailer pid 15086 invoked by uid 1000);
 Wed, 22 Jan 2020 16:08:22 -0000
Date: Wed, 22 Jan 2020 10:08:22 -0600
From: Rob Herring <robh@kernel.org>
To: Emmanuel Vadot <manu@freebsd.org>
Subject: Re: [PATCH 1/2] dt-bindings: Add doc for Pine64 Pinebook Pro
Message-ID: <20200122160822.GA15049@bogus>
References: <20200116225617.6318-1-manu@freebsd.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200116225617.6318-1-manu@freebsd.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_080826_189615_FC4F6D6F 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Emmanuel Vadot <manu@freebsd.org>, pbrobinson@gmail.com, heiko@sntech.de,
 linux-kernel@vger.kernel.org, dianders@chromium.org, vicencb@gmail.com,
 kever.yang@rock-chips.com, m.reichl@fivetechno.de,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 jagan@amarulasolutions.com, nick@khadas.com, andy.yan@rock-chips.com,
 robin.murphy@arm.com, mka@chromium.org, linux-arm-kernel@lists.infradead.org,
 aballier@gentoo.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 16 Jan 2020 23:56:16 +0100, Emmanuel Vadot wrote:
> Add a compatible for Pine64 Pinebook Pro
> 
> Signed-off-by: Emmanuel Vadot <manu@freebsd.org>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
