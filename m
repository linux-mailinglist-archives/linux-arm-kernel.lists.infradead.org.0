Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D755042BB0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 18:02:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CGXVcs2Serb6hrlKaKy2M6WXT451br9jzcBO4ZPKQDU=; b=aei5UBGrjW84aU
	MZJgGpyMwCYtmaeWov+GCyEHkqLVVFU/HJ2tBTggFxLMXfpRJzgNntVkww1a5G/DOM0a8Pslm2StG
	quNi5NuGclzWslppiCdJgI1pXTTh2M/x6UCNVEBp8yv1N8QcmyJLADcisf7x8I2CrbPtjVKTxHqTg
	nXaxLZWGOiOmwlUUIfalc6qaz9pVmOnlzCXTRpi1HQNeFBiS1FbrIAVCIq/zn+LU/J1YRDcRyfuRN
	Si3ckRyZIO8NJJs10D+D/G9cot7N4CabfU/i01/dogkD0N+JtNH82HNxsGmkM0Arbpadj90ryMJ14
	b8sYpYJBz5n5IHVJ3k7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb5i0-00005b-OD; Wed, 12 Jun 2019 16:02:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb5hX-0008Or-6Y
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 16:02:16 +0000
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
 [209.85.222.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 92B7321743
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 16:02:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560355334;
 bh=metd6bfdlEBpzQ+ceKHY3yudA9GwzpuxQi/0AJYZuR8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=BpnF2iOKSK+jY7unE/MwXLWK43vtt7PP1oCjwKuMsh3zl6D7wCyQlPqrZO/0Mgduw
 Wg6lTA9cesMM+9j7w0HylZOSDLOSDPD/e+9TIdNMRx2gxfJ6Qfucesc/xdJU/Nkdlp
 s67QT25gBaeazOJ2u8fFb1DKOa2K0tuBp3ih/S50=
Received: by mail-qk1-f169.google.com with SMTP id c11so10642600qkk.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 09:02:14 -0700 (PDT)
X-Gm-Message-State: APjAAAU1iLbeInoMvuPs/NnXCMzA8V40EYvvAJ2haUl7qAssBwkK9c0o
 0DG7avgotLfJgX2lsWbrL+YZdDLBy7h6azMuMA==
X-Google-Smtp-Source: APXvYqybvPsqmqFny7a/JtFlhcTlJvlaZutyfLURiANi3yYx5Ws3TiRMG/YwRYEOIfUSRlyBWiQ9Ld6YtcnmxxUqqK4=
X-Received: by 2002:a37:a6c9:: with SMTP id
 p192mr68957195qke.184.1560355333838; 
 Wed, 12 Jun 2019 09:02:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190612075451.8643-1-manivannan.sadhasivam@linaro.org>
 <20190612075451.8643-3-manivannan.sadhasivam@linaro.org>
In-Reply-To: <20190612075451.8643-3-manivannan.sadhasivam@linaro.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 12 Jun 2019 10:02:01 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLRTK=7Ch7V-WA07_zxWMNGXmRH7=1TRR9m-zY7h_-YYQ@mail.gmail.com>
Message-ID: <CAL_JsqLRTK=7Ch7V-WA07_zxWMNGXmRH7=1TRR9m-zY7h_-YYQ@mail.gmail.com>
Subject: Re: [PATCH v4 2/4] dt-bindings: arm: stm32: Convert STM32 SoC
 bindings to DT schema
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_090215_265723_E7967640 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 loic pallardy <loic.pallardy@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 12, 2019 at 1:55 AM Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:
>
> This commit converts STM32 SoC bindings to DT schema using jsonschema.
>
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  .../devicetree/bindings/arm/stm32/stm32.txt   | 10 -------
>  .../devicetree/bindings/arm/stm32/stm32.yaml  | 29 +++++++++++++++++++
>  2 files changed, 29 insertions(+), 10 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/stm32/stm32.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/stm32/stm32.yaml

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
