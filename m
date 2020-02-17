Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BBF3161046
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 11:42:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3u0M+5gh10bHM6kNYecCsb+NDYpYhNebK6hhP5EdtD0=; b=G/feohgM50T8OvqwuIywJ2V6R
	fTbXEhJudz/Dh4qa1bMGw4iVEY4zfH0fvtC06aPOD35150YcD3wfv9K1gnUUC7ZQNV5eR1tr8E7pZ
	uw9tFP6PAHIO2ZTtzaovloUhs6vVAE7chNV93O50ZZNm7mzd0Eh8bCDgwKltJg2zVegsR7qwo/kED
	kn9r8dE8ukeo84Hy9hb5FVZUl5NR4mR5mBD798RM8K6qf+NpoKE8sm3cs9VGdI7nLk3WnFFLPA2yW
	yUyRkTFfaVg5mm65bWYTQlHa4om1VDTXeQwT14UhPGXrQ5vrpvMbxhxQAuGqYLskz1VFx2lxVnOsg
	Izr59V0gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3dqw-0000J7-8S; Mon, 17 Feb 2020 10:42:14 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3dqn-0000IX-QD
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 10:42:07 +0000
Received: by mail-wr1-x444.google.com with SMTP id m16so19034046wrx.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 02:42:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=xK9gSeKjuTrA7UchFgBVdfbmk8btUEWvMGPvHLQD5JM=;
 b=QAYDuPa2ckyNKNs+uc/7kOYnDiCDyG5wPtjvhR59Myh+YznC8GYiN2AG06cTLVRObo
 ROlADqWcNe98jyG2/zOJx0GmEUb7kEPIEArlZgxJWwNRv6pJs1YlzY3L+ke9BHkM2j7B
 aeGz8B3EMSISeSPkbZNLZUTPgNCoEY5OjtpOX9CuwfzGD6qJdvOaxPi5UPWqYvGqaNar
 O4UT3VEF0GINCmmv6ibsepv9zdV9oM0/spTfYAhPLEwt03h0sQN//Tqp5MDrjEBICiV2
 dsGRIvt/baD8UMoaXtSA+m1K4rbKEYJv3mL7g6+jkeeZXV876uqoD2GDYmEfhrkqwPqN
 Vvrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=xK9gSeKjuTrA7UchFgBVdfbmk8btUEWvMGPvHLQD5JM=;
 b=SvEMYs7antKH3IQKItRlZOCNmSUT6Bdz3l5Ic8MoFmahyBI1+Bd9uvdxHKyITBx427
 /KuppvgGQh55DdzJdciEFkbSfMKmLPZZDKF1+nr4IYVYRnBuKdjjrR5SgUXfdM4l8yZp
 kPb8kibqeq/Wtz0/2GvYkgEdeAZG+ivQrYeNwLP06REZ98EgzPVh133w0Waih/LFcFQt
 1wCzoSuQmSok30/HzmNYgIC2+xRHwQ2fQ/f//blXL8eaNZZM6fdIJ3BC1eh3cecVcDog
 DkN8O/5xRNghgpeofv6t0VIZe5yazi67NU2ezhqFL+qlAByOo6bjxkIj8d42hdOg0+NL
 qE0w==
X-Gm-Message-State: APjAAAWbiIiuwbV0HAqYPdUoXxkckfsAwWCbBuib8McQQF57qcOuduDp
 sQa74R4on2ZNXdwGupZ9MSyAxthGpUo=
X-Google-Smtp-Source: APXvYqwWfS50fnch4zgS7Kfh2jKt9qZFo/AadUs19hGjKsVCFf3nDddgafWbzS4NxIxJ7cdTWz6aCw==
X-Received: by 2002:adf:ea85:: with SMTP id s5mr21086636wrm.75.1581936123145; 
 Mon, 17 Feb 2020 02:42:03 -0800 (PST)
Received: from [192.168.86.34]
 (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
 by smtp.googlemail.com with ESMTPSA id m3sm332833wrs.53.2020.02.17.02.42.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Feb 2020 02:42:02 -0800 (PST)
Subject: Re: [PATCH] nvmem: imx: ocotp: add i.MX8MP support
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
References: <1579231433-14201-1-git-send-email-peng.fan@nxp.com>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <05b29ecf-3873-067c-c480-ed32c388333b@linaro.org>
Date: Mon, 17 Feb 2020 10:42:01 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1579231433-14201-1-git-send-email-peng.fan@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_024205_855239_D555F22C 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "festevam@gmail.com" <festevam@gmail.com>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 17/01/2020 03:28, Peng Fan wrote:
> From: Peng Fan<peng.fan@nxp.com>
> 
> i.MX8MP has 96 banks with each bank 4 words. And it has different
> ctrl register layout, so add new macros for that.
> 
> Signed-off-by: Peng Fan<peng.fan@nxp.com>
> ---
> 
> dt-bindings doc has been posted by Anson Huang
> 
>   drivers/nvmem/imx-ocotp.c | 21 +++++++++++++++++++++
>   1 file changed, 21 insertions(+)

Applied Thanks,

--srini

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
