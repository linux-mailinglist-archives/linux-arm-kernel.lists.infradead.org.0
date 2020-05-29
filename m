Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E9F1E7A36
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 12:13:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ehk0MZQ1wHAwjXTGYw+/3vd22m32W3hdh7CjY9KwOkA=; b=ue/NuJvE5akAul
	L4N8HsiJcsPruuBx5A0AA+dkW3agb3ER+88CCZkzBp8SCTSEnRbciDzF/HsWVVXWW/D384LtVYn2l
	ycabaFM5okshXlKFp6mR0vld3Idp+j2SJDJZJPxFH03+hTpeQtg4EwY680nimiwO84g+UOZ6NddVH
	ltGIJEHtVhwLxaB6EuDRJSvu0Utv8wVKwrgwoWitKZJQhUq5+PbATXAlM0Dmd9kyLgv2B00muJEog
	mJxM6qfforLm5mz/uFoEDPA4WOsx2XFeygHXciui/4fgB+Z7vUrn0uoKLx2HcN2hJ7WZvXNmgjRkt
	OFCQH0MulkDCRuBVKMFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jec1C-00062O-5U; Fri, 29 May 2020 10:13:38 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jec0y-000606-MY
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 10:13:26 +0000
Received: from bigeasy by Galois.linutronix.de with local (Exim 4.80)
 (envelope-from <bigeasy@linutronix.de>)
 id 1jec0o-0001Lq-Rp; Fri, 29 May 2020 12:13:14 +0200
Date: Fri, 29 May 2020 12:13:14 +0200
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 1/9] dt-bindings: atmel-tcb: convert bindings to
 json-schema
Message-ID: <20200529101314.2ueuhgnrqq3a764f@linutronix.de>
References: <20200506080554.283177-1-alexandre.belloni@bootlin.com>
 <20200506080554.283177-2-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506080554.283177-2-alexandre.belloni@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_031324_901384_AEAD48E6 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: kamel.bouhara@bootlin.com,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rob, could you please bless the DT parts of this series? Daniel Lezcano
asked for the blessing in:
  https://lkml.kernel.org/r/f0feb409-11fb-08de-cc06-216a16de994a@linaro.org

On 2020-05-06 10:05:46 [+0200], Alexandre Belloni wrote:
> Convert Atmel Timer Counter Blocks bindings to DT schema format using
> json-schema.
> 
> Also move it out of mfd as it is not and has never been related to mfd.
> 
> Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> ---
> Cc: Rob Herring <robh+dt@kernel.org>
> 
> Changes in v3:
>  - Moved the child node documentation to the parent documentation
> 
> Changes in v2:
>  - Rebased on v5.7-rc1
>  - Moved the binding documentation to its proper place
>  - Added back the atmel,tcb-timer child node documentation
> 
> 
>  .../devicetree/bindings/mfd/atmel-tcb.txt     |  56 --------
>  .../soc/microchip/atmel,at91rm9200-tcb.yaml   | 126 ++++++++++++++++++

Sebastian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
