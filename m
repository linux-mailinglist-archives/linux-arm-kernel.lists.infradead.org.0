Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6899863C60
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 22:03:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZZFpjZNP9wPe8WWu4ep2CimYaUA//uxofspJ4DUH4PE=; b=l5hT4eE++dqB/K
	E2be0Ev2UGT2/F16ZWyIBe9bewTAUxZQfAlTouFzBUGl7fECYch63cPKgM5IsJk/jsiLtcBYrleK2
	zgdURdneQrmWEjotyddp+Z3csOE7YcTGjohym709Ow2TAMCsuZJhCs7UMVRlEMaDr7PrsLVSUkep3
	ArfGnvjUj3ITWv7o66o/H0EOe1seqn0ADBzfdAcn/lWj0zQRitqbc6z8ZKOIR4BywThe8fAvq9BxE
	k4aYbvdmuzheTS4+eXz3IeQpnAmnE6S7ds9kqvrkM0p/5lNGxSVQQsh12+DxtViLOKS0caORmDowo
	8KzAL5PHqD5fWOpjoKUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkwKa-0003oD-MM; Tue, 09 Jul 2019 20:03:16 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkwKO-0003nJ-7S
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 20:03:05 +0000
Received: by mail-io1-f67.google.com with SMTP id o9so30290789iom.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 13:03:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=jPHz4QqBHrS2BSvDTJuFgnwoOlpNBE2VL44Wy2Ih4lw=;
 b=mOhTaaxpl9jseNVcER66IMt5ewFB9BWQHqv071k4sBK7nK3B0z/cyGrw85/xLMUjUA
 KcWPJvmo5fLKFQpYLx8V1BaEXAskA+L8FE6QrHNwicDAe9oIjd5m37cgTe7j72OoLVs6
 7d9NSdWyA0K5MM5saCSrhTLMSQdGY/unVO0NKcgtlXEHar3SVgBadD5S6e9pg0biG/tE
 EyrDckN0WVvoeethqm59kBZZky4wjVBB9FfP7WQnCtZghI6szykknlTxeyFT92g158fV
 zwJXP7RPFWu4cUpUfqAWkTdd90uZ6zLnl2bRopHP9U0DhTF+vqBwF6Gt8vq8n/jh4yyM
 8Sog==
X-Gm-Message-State: APjAAAUY8R4x8MPjmX0eMph4O3dlI2v5GeBSTZ5lPDMpkVGhMPlYMnL1
 uQD8ps7Y2tD8Be3+W7TBoA==
X-Google-Smtp-Source: APXvYqzgKQYb+XwMYBnbnTz3zd1GW8VmKjDMY4YwHWg7LZq268OY5HvYntEAtB7x7FtESHjvuZbESA==
X-Received: by 2002:a02:a1c7:: with SMTP id o7mr31287059jah.26.1562702582293; 
 Tue, 09 Jul 2019 13:03:02 -0700 (PDT)
Received: from localhost ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id d25sm20972419iom.52.2019.07.09.13.03.01
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 13:03:01 -0700 (PDT)
Date: Tue, 9 Jul 2019 14:03:00 -0600
From: Rob Herring <robh@kernel.org>
To: Oliver Graute <oliver.graute@gmail.com>
Subject: Re: [PATCHv2] clk: add imx8 clk defines
Message-ID: <20190709200300.GA29006@bogus>
References: <20190619074000.30852-1-oliver.graute@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190619074000.30852-1-oliver.graute@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_130304_268367_3E928A61 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 devicetree@vger.kernel.org, sboyd@kernel.org,
 Fabio Estevam <festevam@gmail.com>, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 Oliver Graute <oliver.graute@kococonnector.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 19 Jun 2019 09:39:52 +0200, Oliver Graute wrote:
> From: Oliver Graute <oliver.graute@kococonnector.com>
> 
> added header defines for imx8qm clock
> 
> Signed-off-by: Oliver Graute <oliver.graute@kococonnector.com>
> ---
>  include/dt-bindings/clock/imx8qm-clock.h | 851 +++++++++++++++++++++++
>  1 file changed, 851 insertions(+)
>  create mode 100644 include/dt-bindings/clock/imx8qm-clock.h
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
