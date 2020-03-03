Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1FF1778F4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 15:31:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vLzQQoApx7ZzglLP6sEL0YMDmzJxdT2oQ5tzMuUNaX4=; b=cPsoIGk6URqlVo
	miI+Iafr+9iazfYL2AwC6Bt1OKnnrDa1M84CRsszXazTjEOACrrN5BjQmwqOInyCTF9HSVBEIetNV
	ceKR80vV85NbCHa08IcJtZB7779tIaeJ918nNZJe5w246NJalhyDM0pdsNes5F9vqhGThw9RanbNv
	ABAiusAzsNBbRD6CbNRl1ra4J16M4W+2HO5E0dAVnywvbWQ5qQgRpwFcrl1wbNy9l5yXuXUKnGiVw
	mtpJ7asOyErL5P9HXFaWB+yLI+eCSn/Y4SQ4KiIUXVbEbQTrdq/lKo6hXBypWIeFx3df4vTyqK3Ej
	FhrCTpBrD981Hwb/MeEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j98Zo-0002RJ-Cs; Tue, 03 Mar 2020 14:31:16 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j98ZY-0002Oi-Qw
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 14:31:02 +0000
Received: by mail-oi1-f193.google.com with SMTP id d62so3150080oia.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 06:31:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gVhMT74m9AGYnPITOzgx6C9VacuCfRWPLl0fMDTgg3w=;
 b=TeM+xC2iST7h/SAxL3wObzWXvSp16i0Av3DuBlJXP4yny3ZWiltlL/zQHUUiD2yZMk
 OJPrmgbYrkP+z6lhJL0IAOCq7g0mK1JkOjmq/1Q53es//TN83966/Fjf6qS5d3BzMzOA
 e+dYv1rP8CDbLPKtarXJ4DM/q8c3+FpNTKuVzBFTvqMzC5efES479UJRr2GRnaGutdK4
 SQD45e/R/uaHnEigEB9sHyd83wGXZ/LJVWwAlJjDg3Yr28yPMjYdWBy/254c9fynaY63
 1es7/aGV/FQLKZmMEuDOjcKUkjHBXrvODVfXJA7m5+XEkPNp1ucIVvasGig3lm3slwuZ
 ND4A==
X-Gm-Message-State: ANhLgQ3oi3b2BjW1YJuTtEsJ+XsWwouFYg3qUo7wqtDt7gX08ZUGGAO9
 /5lt+r5hEUPKaTEuBYmzUA==
X-Google-Smtp-Source: ADFU+vsTa1mr7f4Jb2fuSW5ZCiP5PL/NVMt+eOqKxGoC62WG7mAsN6hzWEWpqexFTc2MpmI1edzopA==
X-Received: by 2002:aca:fc11:: with SMTP id a17mr2472776oii.123.1583245860210; 
 Tue, 03 Mar 2020 06:31:00 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k110sm5979048otc.59.2020.03.03.06.30.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 06:30:59 -0800 (PST)
Received: (nullmailer pid 24642 invoked by uid 1000);
 Tue, 03 Mar 2020 14:30:58 -0000
Date: Tue, 3 Mar 2020 08:30:58 -0600
From: Rob Herring <robh@kernel.org>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: Re: [PATCH 3/3] dt-bindings: arm: stm32: document
 lxa,stm32mp157c-mc1 compatible
Message-ID: <20200303143058.GA24606@bogus>
References: <20200226143826.1146-1-a.fatoum@pengutronix.de>
 <20200226143826.1146-3-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200226143826.1146-3-a.fatoum@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_063100_900898_16D5F2A7 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -1.5 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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

On Wed, 26 Feb 2020 15:38:25 +0100, Ahmad Fatoum wrote:
> Document the STM32MP157 based Linux Automation MC-1 device tree
> compatible.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  Documentation/devicetree/bindings/arm/stm32/stm32.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
