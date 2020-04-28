Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E4EF1BBC57
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 13:24:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kJAaQ5rXpi2TA76LKt+AAkHj+EH292iwaiO1BefmVbE=; b=rr8KfrCHDKjT5b
	YHkRbHspwCsnLdzGPaFXz8AbcdAzZ0s3MyDicSU8z1fpXAN7xrBpm6cJlGi8ML6FiucwGQmdTvEqV
	bJjghvHBIMCBkCyWyQ0LCrM/I5C37KMt2z1UxJ1lra7D4l3e0pypltSI1PW7o6EVRrgTivJ+IBmlS
	th/Tbd45f82zhPWWZALtz9ey9EzSeqpsYw4hYc12UbNPXhmZuiuiG4QP7A5fPYBtZDo4rweQ0orya
	yDkgCuEQEIH9atjbKCloZ1pCm1hF11p73UPJQjV9TtnDDC//GQLtc5bWV1Ud3rvxnqVBooA2zQyAC
	CR7bqx57GLV8VuNQV3ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTOLm-00083G-8r; Tue, 28 Apr 2020 11:24:30 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTOLX-00082E-Q2
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 11:24:18 +0000
Received: by mail-lj1-x243.google.com with SMTP id a21so21051630ljb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 04:24:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dtSCC/6Zk0CAn9Haq8H1TnXYmgXgUR49no/7MjmVHFQ=;
 b=wbyZMmT9xNXh+i0FXuT8+Zx0WQdZUgyX61MnLeN982X/SWM7j8uLKdx4JNX0goNrlW
 XNleJW0Aumfkz+/nYc6WoQ8Mbrxe3w1WLfSNynijdPAXIoQCU3Axz5WeoIANm/zvra2V
 ijUUTgiTMZ8y0QAkIuJ2Bp78VCRcPB15ZdTKvt9ubTDohSlkhyXFMXv4xeDA7kXorXIc
 jgucg0wgYdFFOPB7eDr41HD8vwo4BbHTO7E1pPV6RY/Q68xD3pDZwrTL4LOvetZ3bQ51
 zH9VJUmgfofrM3p7AOv5Jsy5qEsxI1mNerRs3/gEPO5WEqb6omAGtU1ZPiO6iCLwZeNd
 V+ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dtSCC/6Zk0CAn9Haq8H1TnXYmgXgUR49no/7MjmVHFQ=;
 b=gU9dHE3UDAKWzcGkYDBux6rrYwfh1QK6nNyCGanMX3E98vVrxSrFUpjTqN31VIDFGS
 fvfeiENF2o8/+M5RbKOYXWCbAZYGpPuL3yyQlVnCx+EqquY4gzMB9hcVaiKTEcx58oZI
 tWrfJ85IlCA+t9pc3aP4pfCEEsmJGpYhapWLb37CUAcMOVu3kmJDPmixAlxsuS+bWXg4
 nGceBIWX39K8WMfDuuw/O9Ll3L66x07kjImQrFMDe/nvUcyblaOlg2B5FSS0n2Ykk/DC
 102kX4egpjHQBdyASEkLovsBaHugN0d/k9YixJ4qdPcb3A65v4ilO7/hMHJTLCFttQM1
 OGhg==
X-Gm-Message-State: AGi0Pua9RpOfObZtcbZWdUFGcn9yVM6midQqH3Z2Bn9Ujp7qH/8iNU0D
 xI91l4bZ9d/8TaeEbO9Gl9oBtyquxZArakiywfBl/g==
X-Google-Smtp-Source: APiQypIAZegG6Qn5JvZ0uvEzFCZSmajX66iK5f+sKRerbAwYFi9OxxOsRKHMp8MI1JCk0ToY+5PLv4Mls7VQnu506Fk=
X-Received: by 2002:a2e:8805:: with SMTP id x5mr18067893ljh.223.1588073053796; 
 Tue, 28 Apr 2020 04:24:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200420134800.31604-1-benjamin.gaignard@st.com>
 <20200420134800.31604-2-benjamin.gaignard@st.com>
In-Reply-To: <20200420134800.31604-2-benjamin.gaignard@st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 28 Apr 2020 13:24:01 +0200
Message-ID: <CACRpkdatGwWyruTLC=+BUtnunvqyxnXAYDhcHqy26oeud8Bs1w@mail.gmail.com>
Subject: Re: [PATCH 1/5] dt-bindings: bus: Add firewall bindings
To: Benjamin Gaignard <benjamin.gaignard@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_042416_369059_F82766F4 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Alexandre TORGUE <alexandre.torgue@st.com>,
 Loic PALLARDY <loic.pallardy@st.com>, Greg KH <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Benjamin,

On Mon, Apr 20, 2020 at 3:48 PM Benjamin Gaignard
<benjamin.gaignard@st.com> wrote:
>
> Add schemas for firewall consumer and provider.
>
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>

> +$id: http://devicetree.org/schemas/bus/stm32/firewall-consumer.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Common Bus Firewall consumer binding
> +
> +maintainers:
> +  - Benjamin Gaignard <benjamin.gaignard@st.com>

This really needs a description: to tell what is going on and what
these firewalls
are for and how they are supposed to work.

I suppose just a bit of cut'n'paste from the cover letter :D

Otherwise it looks good to me.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
