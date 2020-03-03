Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 508A817695F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 01:39:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hn1uTRGB02gXFJMcGKXQIwSyF6Gtek4ghlvdalUBwZw=; b=AWMBmnGngYVMX3
	aLgdaPMohpubou+ZnopvHNyQbYuQ+BAy2UlKtf4rnsj3nKH4M6WuPV95sIPDGkRXPSJLUVNcJBTev
	MOll9uIB9417AOXmwG3AFyH0o5zAKkVyosw7OraMFAOZjle0OZtG1aBEbn8NAi+5Q50XVKf4PFD4O
	O/PqYZvGGUnlf5JfZSdpthTF90KTUNlA8de7c7jqX/wu/dEtJCKrBYGui/eXcIk9jBeG0a/DXRYPW
	Lp8ZcsHAsttCiVw+1BBKqrKfooJIMssPsWroEmjH5X2WymABc5fA4kNgizIIvNUKXNqp/cS+S4GCx
	gDRZI9LhfYs8P0Ob3JKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8vaj-0007iL-8A; Tue, 03 Mar 2020 00:39:21 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8vad-0007hp-9Y
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 00:39:16 +0000
Received: by mail-qt1-x842.google.com with SMTP id 59so387466qtb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 16:39:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=massaru-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=vmXMiyHRd+s4le5oCNXMH07H08dpqiYbcUYjQsqlz/Q=;
 b=W0p5qP9qAFgt34ZcsbZ6TF4Q1bne3M/D8Aa83WUxZ+2iFLPjefkCe+q+rwtj+f66EB
 UdPGtukSArhxSzcg5/GdzWSnKUgShDTIuDCXBb1Z9wB15HTeAweazI8ABIxV1fYbeGOP
 P1qs//RLwLc6zcxngxgDQhng/SnoOcDZzZDQsbd6pQDhA87YI7AQ4pyrqAYj9iWIdgbl
 Djkq0k9+uDMPvWB2vMnuvZfrNR/2Py/hARBArvmo8ezqQTFMRyVm0wV5voCgiwZ7D8Lb
 FWL4AJRTnUBEEQRD0+GT523b6M9PUlxQx2d8FdJYJbIuNETyQ6JEbludCFfIxuEzql9F
 jphg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=vmXMiyHRd+s4le5oCNXMH07H08dpqiYbcUYjQsqlz/Q=;
 b=hoAGHMYcajWrX73PA/EoO9a7i2IHK14dCqYHtreaLr+Td44vMRazJ6zEe1/6GYnmVA
 CNDEZ/EG6sPRj3zJuDLNmaH/afW+oiazSF9r46Ia1nneq5a/JYnWMr3vVsvg/w/Fxn1t
 D0RPHtqu5X8hjCmL61Jgzs+zQVMvfILoDrMeMtvVWaMutk6lANZklQkBlVOfoLdUqqUK
 +7siwUPI/9zmvhs6JG4x6si2lvcudpQyc0rABjuuw4zs8KirQ+hgNd3eNodQWyuEwCsx
 7sK8yGl6HxEqiT21p6UKgtXKIBNLqvZvklypdAgB8+NTi4wqbSglNxEGCXC3LOopZHkd
 r0ow==
X-Gm-Message-State: ANhLgQ0GFiIDEanYLqAySmaXzCE0c2H+gq3GsG3iieMZ9s29MrjM4dY3
 DdGaoyeh1h/7letHRpyKF3CAxw==
X-Google-Smtp-Source: ADFU+vvkNzyybiWgvsCcNIeVyNrG//8gjsWTZ5452Pk1YJwHUxv+KGOZmjX25lOGoraowFO3ewRcUw==
X-Received: by 2002:ac8:7511:: with SMTP id u17mr2119926qtq.316.1583195952253; 
 Mon, 02 Mar 2020 16:39:12 -0800 (PST)
Received: from bbking.lan ([2804:14c:4a5:36c::cd2])
 by smtp.gmail.com with ESMTPSA id r20sm149057qtk.58.2020.03.02.16.39.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 16:39:11 -0800 (PST)
Message-ID: <bf48bd19e7687fb0f0a4784c0d4941810190f3c4.camel@massaru.org>
Subject: Re: [PATCH v3] arm64: dts: imx8mq-phanbell: Add gpio-fan/thermal
 support
From: Vitor Massaru Iha <vitor@massaru.org>
To: Fabio Estevam <festevam@gmail.com>
Date: Mon, 02 Mar 2020 21:39:05 -0300
In-Reply-To: <CAOMZO5BqvmRpTbq-gGgnKC2gFTRxS0mK0=W3tBSfZKQ-MUXMzA@mail.gmail.com>
References: <20200302213557.11128-1-vitor@massaru.org>
 <CAOMZO5BqvmRpTbq-gGgnKC2gFTRxS0mK0=W3tBSfZKQ-MUXMzA@mail.gmail.com>
User-Agent: Evolution 3.32.5 (3.32.5-1.fc30) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_163915_493098_2608BC8D 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, lkcamp@lists.libreplanetbr.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Marco Franchi <marco.franchi@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, "moderated list:ARM/FREESCALE IMX / MXC ARM
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Fabio,

On Mon, 2020-03-02 at 19:46 -0300, Fabio Estevam wrote:
> Hi Vitor,
> 
> On Mon, Mar 2, 2020 at 6:36 PM Vitor Massaru Iha <vitor@massaru.org>
> wrote:
> 
> > +&cpu_thermal {
> 
> You missed to place cpu_thermal prior to i2c1 to keep the nodes
> sorted.

Sorry my bad, I'll fix it.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
