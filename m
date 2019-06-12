Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C759D41E33
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 09:47:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X9RzBDz9iyDGltZtMi3BCDDH1bn0JIJkzjwZssL4vzY=; b=Vx462rK8Z1vsME
	tJp/81dCMF8hkTX0bXnOqDdO5EWok+ERAmJzZtz985DOdRaKwwDuaYb/pcGGO2BQUl0x0wDeEgECu
	KHhLOllZTO8cOrOy6dvF1EoSf+IrUnzjGti8v8sC9RAKnnt/Ob0Ky1q3r9qt8kMjdS7XAhw4ykR+L
	c3eJcYUMwfJ9lTp6P9527A21gZ96aqYI90T8iUewYHGUmtkpd0EdlRWJsH6wONPSlId9uTBqwT12y
	QEkAooTCS2wdjjHE+DwKeSSbj11uO36pSGCawlcVaZpyIJhTL2RMJyfPzg7ZBhTe20TjFtPIxZBrC
	T7VaU+sUI7oBY1rj1qig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haxyz-0002Uj-15; Wed, 12 Jun 2019 07:47:45 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haxyl-0002Tp-DS
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 07:47:33 +0000
Received: by mail-pl1-x643.google.com with SMTP id i2so6284235plt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 00:47:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=RTEvowjVOZ1tt6yW3tt8znN/f0k1q7mGY13SshYdHu0=;
 b=ev+kVdsEuZay+u/9fs+NWPIBWNJyQcyQ6Ur5EFF5tKrCyVYcgNizj2gLPu5bxid0Hz
 tPLF7jTePnup5KqcxVjCHful3j9gTdvqX+Qriam8LVoek6qX29ezGElZwt6zYBEcb2SN
 Q37YLJtAP03GlRDoXXFwr55GafpU0rlhDZGhQcl3SWX6gJA9KQpqiKwUOmlIGxRiYosn
 dr9HK/RZVUvizdrr5OpBpHn4ChblEUXYJHENQsSph+PYnec44Z2CFtv0zFRptfx7TiLd
 S7/PaXMj+7j/nP3bEQCPT+x48srxZ2LXHIsDlMch7Ni6dFdgIfKRdUiOcsa/OwOyp9cP
 OrJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=RTEvowjVOZ1tt6yW3tt8znN/f0k1q7mGY13SshYdHu0=;
 b=X8gBa2PYuTsS1+KDbjbC05JRW6MEpwQN+cms7xxfYGc+uKHmW7I1rNEV5OMD/n+ATe
 AkgHn4iS4SWNsL2ya/jiwq33BhqsxeQxsQq5RzOmkYJZMgo7v9dFSB6qmDKwbjuA8/P1
 KGc1TjT4gzEx6ubNIrFOsQZgs+ja8pgupoLWaeHgT8GqWlogxni/K9V8U80m61AqO7l+
 9Pa6I+qA6TeHnGQXTZe+VDXbKBD3V6Tn8hChtpkClC6sGgPwJZPhtc66phfhSsFqnWWL
 dSC/fSZEwNLT11t7avefG7TmyJgZOOiG5S4rdCKn7iF7wMlA2D6Uvwla7PDM5fxa5MzB
 bbJQ==
X-Gm-Message-State: APjAAAXqPIQVwIrg/UjuJ0A8vT5TusswFEUFctf3iBgSTExVf8NMc1ub
 FVB/d69O6LotbFZ+kq+SUkC9
X-Google-Smtp-Source: APXvYqxdFNwHHUupAjw3XvuIJ/ZVdpM65R2uvHP1jCdfRej7cyXAdncrWoLq1ppn8UtyJYh5XGiOKw==
X-Received: by 2002:a17:902:968b:: with SMTP id
 n11mr43028455plp.120.1560325649660; 
 Wed, 12 Jun 2019 00:47:29 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:894:d456:15b5:9ca9:e3ec:c06a])
 by smtp.gmail.com with ESMTPSA id v5sm16896474pfm.22.2019.06.12.00.47.23
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 12 Jun 2019 00:47:28 -0700 (PDT)
Date: Wed, 12 Jun 2019 13:17:20 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v3 2/4] dt-bindings: arm: stm32: Convert STM32 SoC
 bindings to DT schema
Message-ID: <20190612074720.GA5513@Mani-XPS-13-9360>
References: <20190531063849.26142-1-manivannan.sadhasivam@linaro.org>
 <20190531063849.26142-3-manivannan.sadhasivam@linaro.org>
 <CAL_Jsq+N7NA7m+dp+zpwFeZLM6B+OwRrqZdzKkJp2TRWi_e3Mw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_Jsq+N7NA7m+dp+zpwFeZLM6B+OwRrqZdzKkJp2TRWi_e3Mw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_004731_464155_BE7CA56E 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Hi Rob,

On Mon, Jun 10, 2019 at 03:57:43PM -0600, Rob Herring wrote:
> On Fri, May 31, 2019 at 12:39 AM Manivannan Sadhasivam
> <manivannan.sadhasivam@linaro.org> wrote:
> >
> > This commit converts STM32 SoC bindings to DT schema using jsonschema.
> >
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> >  .../devicetree/bindings/arm/stm32/stm32.yaml  | 29 +++++++++++++++++++
> >  1 file changed, 29 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/arm/stm32/stm32.yaml
> 
> Converting implies removal of something. The schema looks fine though.
> 

Ah, sorry. I forgot to delete the .txt file. Will do it in next revision.

Thanks,
Mani

> >
> > diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
> > new file mode 100644
> > index 000000000000..f53dc0f2d7b3
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
> > @@ -0,0 +1,29 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/arm/stm32/stm32.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: STMicroelectronics STM32 Platforms Device Tree Bindings
> > +
> > +maintainers:
> > +  - Alexandre Torgue <alexandre.torgue@st.com>
> > +
> > +properties:
> > +  compatible:
> > +    oneOf:
> > +      - items:
> > +          - const: st,stm32f429
> > +
> > +      - items:
> > +          - const: st,stm32f469
> > +
> > +      - items:
> > +          - const: st,stm32f746
> > +
> > +      - items:
> > +          - const: st,stm32h743
> > +
> > +      - items:
> > +          - const: st,stm32mp157
> > +...
> > --
> > 2.17.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
