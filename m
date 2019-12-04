Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2714D113764
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 23:01:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JmlpL1TRFyU0ACl3mGHWesxiZo1HP4x0Tn7GNOr3T3A=; b=MzETFYh6nTpGPn
	hxrekmvVm3qHtso2Rei4s60hyOW/pk3oQ4uITQ7sSZyzy+gYbNSxRalfjR9+ek2+3hHA7euaUI44Q
	9wuS4Wvt4Noeady7MGU7F3kocZVD2clVuRg1CegaqMDHrKq+w0e3sSuxhi71VgHQ9CpTiz8oluRE3
	KzOBSoL7SgnTrazVaWDP2jU08tORwvl9kaoM1sTVidcCpfljSblqmoVT88NdaZrJz8+ERWPL1M3x+
	1iIEomGu1Q7vPGpZhZB0QeiBS/UnYG58KVXimC0miOxAhr/VdaIUYOnH6SorYSQahlFH+NTK+smeu
	g30Az3r75S/295uNY8rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icchu-0003M1-CF; Wed, 04 Dec 2019 22:01:14 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iccho-0003Lj-5b
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 22:01:09 +0000
Received: by mail-oi1-f194.google.com with SMTP id 6so750119oix.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 14:01:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=oVB+SJrxK3RMm51aDtljP2ankvSuypjIzEocNKn6UpM=;
 b=VADrLUgXLvwiMHZQmyA2b6p4OLoTVTLs7xvl4Vpn2sYe2MPPm2IISl+lLJOzwRbos5
 jwTZIEGrspAkbSEgF4CoXzwqE9paXx3MUE1wDSYDtHd5Nbr+OvLaPFOvsIpnR/gR4mP6
 rrYj4LdiRF7z2C6nmHQxMOq4FNVCoTOHfi/0ANrKojx609f+ajeLz7o+pFecvO32BMoJ
 YwnEDfvo8Nnstp/OE6zecwsly8BF+6pmo3dBsPlHqY6ij+cU1RHOG23sUEZy92wj14/s
 1LND3biQ9x5PVCKQ1e7nb9/WVrhZPL03ZHeRawc7r4Qri4Z5pZiBlQjL2hk5l1Wy5/MC
 GF6A==
X-Gm-Message-State: APjAAAU75I/6WGARNDjbAf30yFi21r7FzckNF6hbamCWkBJqcvdo4oF1
 Od2Ldt9dViH5Zj0iiTHQsg==
X-Google-Smtp-Source: APXvYqy5PaRTvaNg7atPKSB0FWnrDYidmZNc445kfj9NxtzhCF6A5nZanw5rMCLux8b7qY6RI8v+sw==
X-Received: by 2002:a05:6808:8e:: with SMTP id
 s14mr4219438oic.160.1575496867234; 
 Wed, 04 Dec 2019 14:01:07 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r24sm2644286ota.61.2019.12.04.14.01.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 14:01:06 -0800 (PST)
Date: Wed, 4 Dec 2019 16:01:05 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH] dt-bindings: regulator: Convert stm32 booster bindings
 to json-schema
Message-ID: <20191204220105.GA25020@bogus>
References: <20191122104536.20283-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191122104536.20283-1-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_140108_210269_F2A1606A 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, lgirdwood@gmail.com,
 broonie@kernel.org, Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 22 Nov 2019 11:45:35 +0100, Benjamin Gaignard wrote:
> Convert the STM32 regulator booster binding to DT schema format using json-schema
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> CC: Fabrice Gasnier <fabrice.gasnier@st.com>
> ---
>  .../bindings/regulator/st,stm32-booster.txt        | 18 ---------
>  .../bindings/regulator/st,stm32-booster.yaml       | 46 ++++++++++++++++++++++
>  2 files changed, 46 insertions(+), 18 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/regulator/st,stm32-booster.txt
>  create mode 100644 Documentation/devicetree/bindings/regulator/st,stm32-booster.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
