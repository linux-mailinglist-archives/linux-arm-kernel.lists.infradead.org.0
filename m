Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A1193BF09
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 23:59:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6B3W6NZQMH/hk6oMkFe3pnfWHw9TjuNwGo9wes2bO2I=; b=joUwB1r9XwljZ1
	Pm0dMtOevJtOhYfz8GvVZOdhQOhZWP60J7QYdaO7gvyP4okPEXzLwg+cW9L4cG/iq+xYV7Y8txmM2
	fOYwJWFsGEiHx+MxsQbuxXbYn8Bl3yrc8sbu4rkBnVT5urqHzW9EiOITLFp7Qzqy8Zx1YBoIH7u1y
	izvzlXLThRqngP360z/wf9DRmb/UCEbh5d7vYrUZRDI4VZ1CeQKFaVPwyzWChC60rgwLr6pM3wNsx
	bkVuQh5bBXyUtDglTRdx5n0qpQJ/avEyRzBw5XewWytJMQyB68L12B3OPO5yJwCBafMpj8fHbeE1b
	w9juuv4nLeZYyvZ+/8hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haSJn-00027u-2n; Mon, 10 Jun 2019 21:59:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haSJb-00026x-Ai
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 21:58:56 +0000
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
 [209.85.160.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E3B8E2146E
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 21:58:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560203935;
 bh=0PkPVdz5GVGKK3sk7TXqMD/2uCtfIwQXWAIEJPKPXS4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=vEfoYgbBq11nuojqIl5e9i7RXs8dtqVAB0ysyomiAsFQ60a3iO7+gRazCHpKv3+Hj
 d6Jk8KCJYSMSnVxDbznJoY7vuau7PB2vH0B4qYiipoC0DJtvfp0xKOURJglbDN1y8m
 CxMGrgGUwRyGnnzsA56KLz3KKAuNcrJE1e+3LTTY=
Received: by mail-qt1-f176.google.com with SMTP id p15so4780184qtl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 14:58:54 -0700 (PDT)
X-Gm-Message-State: APjAAAU9Xg1k/sJV5ndBHgdmnDyclsBII8793ypa3sbGXn9sxnRvTs7l
 E/u4e6u99RBvz2kdIPMyaFC92dxzH3M8k5YVwQ==
X-Google-Smtp-Source: APXvYqzYmsQ1fTULRa5HAKFvUASBSBcpANP6JQU7H9+hyVCTO/yhwj4BIvezOoVzR8ZhDpYU91B05EHec2kVcFmKG98=
X-Received: by 2002:ac8:36b9:: with SMTP id a54mr61757193qtc.300.1560203934207; 
 Mon, 10 Jun 2019 14:58:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190531063849.26142-1-manivannan.sadhasivam@linaro.org>
 <20190531063849.26142-4-manivannan.sadhasivam@linaro.org>
In-Reply-To: <20190531063849.26142-4-manivannan.sadhasivam@linaro.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 10 Jun 2019 15:58:43 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLjKu_1Gep348-ERQgJrZ6vM2RxB2UW4heqGGg5syEFWw@mail.gmail.com>
Message-ID: <CAL_JsqLjKu_1Gep348-ERQgJrZ6vM2RxB2UW4heqGGg5syEFWw@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] dt-bindings: arm: stm32: Document Avenger96
 devicetree binding
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_145855_388164_1E4B2642 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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

On Fri, May 31, 2019 at 12:39 AM Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:
>
> This commit documents Avenger96 devicetree binding based on
> STM32MP157 SoC.
>
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  Documentation/devicetree/bindings/arm/stm32/stm32.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
