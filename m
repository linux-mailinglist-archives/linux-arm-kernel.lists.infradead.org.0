Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D204EA9C91
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 10:05:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5xtMTzSDswO4Wz879Hze/c2+AJjfr4CJJkyl91GO7fA=; b=YgEgF2QHwrtGEy
	5QWT3j915FW+x201anW7jCD2G8ZVTL5QhNCtA8M4jb+q+VVXz5iLJmEPD2Jt65bnEbB+QwqDBOXku
	VhwdHQWKDvHMFEjrrJt+BOXpy7HUY09eXucowuGZVjoIXwjjdrf9oLdm5Nq9HVC8CJdYh2l5gy+xI
	a+gMsGYO9X3/e7B0VL7tTiXdzUFNjjUucCtQ2AFpGaagjxNYybKVq7mquEC30QV0dUq9aa4m7Wz5M
	Xb4j8MdK+jHGe3UJN3potgpQ6LhD8dDcqnAJN/Xz4HplKfkbP11N81Yag1vZALMpM7Oaj9elQWyIu
	z6xSeXInEeXz7mWmn33A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5mlL-0002al-Ez; Thu, 05 Sep 2019 08:05:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5ml6-0002aI-5i
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 08:04:49 +0000
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
 [209.85.160.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4D5312184B
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  5 Sep 2019 08:04:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567670687;
 bh=UUzJc/ue/a93m0taKXh9s1z/mAnBDooHV9BAX4YRpa0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=xdyxIzcFkmCittJxVLCAnOnnNhEdIUpg/9yWl0O8cay9hW9RCuNO+ISs7scEl9jVk
 ru+HwIovSaqbuZk3eEXbNoszctpB8zApTb0PQjkd2C96SHmLTTekEzAXWVju7W+1ce
 NjGmlHRyndymkkjkSrGLKn1qNFr0yjql+TV/MZOY=
Received: by mail-qt1-f169.google.com with SMTP id g4so1734891qtq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 01:04:47 -0700 (PDT)
X-Gm-Message-State: APjAAAUXLDbNtWszBOGIWNg2+lyiBMg+3ItHv67HQtjFDxbE1n9h0HMq
 AEZeYpqDPfLl1Bw5HF18NGVszMlqdZleAPV3CA==
X-Google-Smtp-Source: APXvYqwRGN/t8Ztwm+Pr581GXO5zsaWfW8VanIvwMI00vkFHJS2e6Kk1OJsW7UmmPizjTTPidsBQ1AWG7fsG3JHH9Ls=
X-Received: by 2002:ac8:31b3:: with SMTP id h48mr2280163qte.300.1567670686489; 
 Thu, 05 Sep 2019 01:04:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190905075213.13260-1-lee.jones@linaro.org>
In-Reply-To: <20190905075213.13260-1-lee.jones@linaro.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 5 Sep 2019 09:04:34 +0100
X-Gmail-Original-Message-ID: <CAL_JsqKB1hyJKM6S9cbNptq9kysa4_mgxaby7WmQHMW6d8KX3w@mail.gmail.com>
Message-ID: <CAL_JsqKB1hyJKM6S9cbNptq9kysa4_mgxaby7WmQHMW6d8KX3w@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: soc: qcom: Provide option to disable DMA
To: Lee Jones <lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_010448_234861_9787E517 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Wolfram Sang <wsa@the-dreams.de>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Vinod <vkoul@kernel.org>,
 Alok Chauhan <alokc@codeaurora.org>, Linux I2C <linux-i2c@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 5, 2019 at 8:52 AM Lee Jones <lee.jones@linaro.org> wrote:
>
> Used when DMA is not available or the best option.
>
> Signed-off-by: Lee Jones <lee.jones@linaro.org>
> Reviewed-by: Vinod Koul <vkoul@kernel.org>
> ---
>  Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.txt | 1 +
>  1 file changed, 1 insertion(+)

If it was me, I'd just turn off DMA. DMA for typical I2C usage seems
kind of pointless. However:

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
