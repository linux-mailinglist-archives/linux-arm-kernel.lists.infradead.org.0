Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44617E8B38
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 15:52:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ax6Iq+DXpuA80dA1hFaWyzzzM5aCkUAG+31rKXKJbgM=; b=gR0xco3zlrNoih
	yZ61Ohu+WwJhe5W6I+e766Z+hBAiTJc+s1R5LYmUQbnYkYY14Bp9hTm27DkW3nwO08yJg3oGrZ+B8
	aOsvTYyY+Ta2FiMjXc1H6jLNk1ZCMqLltZU4Kbl3hQfYmtDFTwiGoQtxiOBTAKKYeW+sYSp4cdN1s
	yvoB1HE2AjdG/3ewG0fiSMD85gWs9Taq4Mre+9dbaFF6i/aIR+l9oLlSKzlD0FfGjJbbM6KazX/Wo
	g1XCOxRoemWPpRYQxMfnRoiRb95ZVwuclkxwCNcLdBFflHaeGNdXrroassupkifblQzxdvoYzpL+A
	8+t0AX50pbLXi0Eqs62w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPSqx-0003ii-3C; Tue, 29 Oct 2019 14:52:11 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPSql-0003i6-VU
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 14:52:01 +0000
Received: by mail-vs1-xe44.google.com with SMTP id b123so8911306vsb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 07:51:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AghPO3C3rEgGBPotZ+vICco1DWQsd2uHdndQrS4Mhmg=;
 b=Hwng/1iREMu58SnENh22U3wjGobxllv5Tqdl4SLxKt2rJHJMiSBnFDHk0tk8PRXMfc
 Mlmj3c4mAJ+7d58g5EbhSontzBbJAUktNUENdEfVlLgpoFhjxBt+oRDVCNMZLh78ImpF
 5/1Mu84pLONjy3utBV6gpZ1tNFmoUgr4QV6/NshuMd+VqPjHdERr52EmJwCzO9lVP9DD
 XV7l8eSunjesHvuWBwX9Xyk00bdIjSaD1mP7kdDLOqE/0Ffk01zex7aFEn8amOJZTYD3
 Pl85KuEPuIhkiasQ1yQuSw8WFIVc8uI3/QnKLBZk/hZRhXOrRGAnwcJfaBTrb+3IDB07
 JWUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AghPO3C3rEgGBPotZ+vICco1DWQsd2uHdndQrS4Mhmg=;
 b=fP6+64uK9WACwmXPjbCaSuGwJLz/FLgkXiSLvTkW3nwDw6VbfnmbrfKftn8qzk71pr
 asa67FCUXWDng7LF8LeOlpNZsNeJPk5tHJQ+QC5Tv1j3/x66XgD7MI2UzVQre+JrDt8Y
 xcf8I92LBw5eNLDxAoPQirAjIJQDWAD7MtBlBE+nspYKbsssaO/3Pr9YgJDIMbfXco1O
 EMd1t6FcC5J38lZaoRSo+jcCf654RwOXTuUCIEm2rXOdkEK86OiHIZLOApUJajQ7uah+
 OkDW6grbUjc2dul8+FQytFqVcMCCt+esazF8H9fH1r3GppLB3WqYau7jyotjKv/+psNA
 TP4w==
X-Gm-Message-State: APjAAAULv4T9U1eh81wTORwzuG1Uc3l7VWH6IywVtF010TpJpoE6kd9Q
 ASEME9BISi+/C8Uhd9ua9Oo5Ur4Un1o32obgAvpmWg==
X-Google-Smtp-Source: APXvYqxy+qA6VE5Nq1a9sMm7sQY0Vmiq6oTH38qQ4sCv5Md8fk8HW1K0XuZUl3bbruZa1JoQJbbOkNNLqDYASp6pmRE=
X-Received: by 2002:a05:6102:2436:: with SMTP id
 l22mr1897257vsi.93.1572360718925; 
 Tue, 29 Oct 2019 07:51:58 -0700 (PDT)
MIME-Version: 1.0
References: <20191028200555.27524-1-chris.packham@alliedtelesis.co.nz>
In-Reply-To: <20191028200555.27524-1-chris.packham@alliedtelesis.co.nz>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 29 Oct 2019 15:51:47 +0100
Message-ID: <CACRpkdbJhXxAXTBnTUxj7AkOBv1wBphCD6bJ5Vta4FT78x=--w@mail.gmail.com>
Subject: Re: [PATCH v5] dt-bindings: gpio: brcm: Add bindings for xgs-iproc
To: Chris Packham <chris.packham@alliedtelesis.co.nz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_075200_017382_43349F9D 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 <devicetree@vger.kernel.org>, Scott Branden <sbranden@broadcom.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Ray Jui <rjui@broadcom.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Rob Herring <robh@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 28, 2019 at 9:06 PM Chris Packham
<chris.packham@alliedtelesis.co.nz> wrote:

> This GPIO controller is present on a number of Broadcom switch ASICs
> with integrated SoCs. It is similar to the nsp-gpio and iproc-gpio
> blocks but different enough to require a separate driver.
>
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>
> Notes:
>     Changes in v5:
>     - correct $id line following rename
>     - add reviewed-by from Rob

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
