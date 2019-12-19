Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 143D9125FF5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 11:52:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hETvXFHYe+QK4aw5RZ6VN1iEwa1Ksp+b1ZXu4wSXjek=; b=jNWe61qC19pjvnH3Z2tr1RX+u
	wmtwLKuooak3i6IQvs+TVsR2GkLst6axunQX/f/tokOx5hgQmiiszt5ZgHVgQfHl4datW2dPCmkWa
	iZtuKimLAj0WMzWmOtDvFCkbSHZ98CcNCXEnYwhuVHFYzrIPsYu6blPrvQ9sdwIa2CryyOoVVEJAf
	tADvoMF2mnVXIvFO3HzR12qlLkkxUHPdyYFF43J/YEqpnlER253y7LB60qLxuXYKbZA6lSMO1g22P
	m0525+h/mBp/9Z7ZALvIiIf/H68wzS+MU+2nCsnhcvJ3cK9Q1IBoJfSAboZ/9tPnaaSY67iGCEY0T
	vJPWOm0MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihtQJ-0005P0-99; Thu, 19 Dec 2019 10:52:51 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihtQ3-0005NC-4v
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 10:52:36 +0000
Received: by mail-wr1-x442.google.com with SMTP id w15so5509125wru.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 02:52:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ZXDdUchGqcGrK25/fVfAQ7zC2o3YZYG/aF++t6v9I1o=;
 b=KEeUqQTWTWspOZferDBKxJRiolK3KQa6C3ksapi9JX/FVu21dZ7XD8X5TJVpp/w9A1
 22HyzJLAY49JncZXmY6QMzGvxiyeUsGDrquAiPYLUy2dcLmaI+LbkgG0DmZsQ93c54Oc
 EmRuD9uAXvFn/+wbycCp0IHXKeSVmIh6hstFYADSGlJlyFd0DpXtb7P0IDGFrCZf1HlU
 yMnGbIwB0HND4fdQbeNho6qdPER/kVyFafbemsVb1Rm0w7Mbu9Kud7ZygC9ViclMhpm5
 XCS34S3AR3yjEzp93cSvgQopEKtG78XV9LLTzYA/Kjba3Sd3to47bXP+pZ1ejTPHNa0m
 yaPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ZXDdUchGqcGrK25/fVfAQ7zC2o3YZYG/aF++t6v9I1o=;
 b=Vau1JLq4Z4y6kcVVNZn6sHnnonG0FFJZYe3X5BgkMjhSaEzgRqjIBPoZ3Y7+S7UGQA
 40SgIqEgCJ3RCUi1fTbHSunfhY/9LuCd+F2nbNt9Yfhzm+NrEqzQe59hwKACYopTV5kP
 VUN5WR/NQx66nFl0l67TalR5Qb7AltL0W8/D0cDxnF+jiMjbp3mrOIUM87Fg6+sdPO+f
 ZegqOa8Urg9HseKJ6uwDhp1U/Bz0hW1AO0Gy5r/w/RXqMy5JdD8jE0fyaSfOM65O6zzN
 A8gzhnIN8vE64BBSKWQLcM4xksq4kNoqgKu0FUBhNYF+7qGZdCeBqXJckZQyUDn+YACh
 IDGQ==
X-Gm-Message-State: APjAAAUmtNat/s+o7+gDmcT5BLgSZzbWkIIyJfJiIPOnIsyLLlKEU+oX
 Gv+DQh4yG1YbqqkWZvW2/s4aCA==
X-Google-Smtp-Source: APXvYqx/n2fEHAE3TWeuYbC9ZW46dZ6bG8quYLjNLscGuEq4UrWNQvBDKkDiHTmT+TprLK72WtL+EQ==
X-Received: by 2002:adf:e5ce:: with SMTP id a14mr8514280wrn.214.1576752753718; 
 Thu, 19 Dec 2019 02:52:33 -0800 (PST)
Received: from [192.168.86.34]
 (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
 by smtp.googlemail.com with ESMTPSA id k4sm5889509wmk.26.2019.12.19.02.52.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 19 Dec 2019 02:52:32 -0800 (PST)
Subject: Re: [PATCH] nvmem: imx: scu: correct the fuse word index
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
References: <1575438591-12409-1-git-send-email-peng.fan@nxp.com>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <1815fe19-4d0c-fbcd-7f44-010b010c00f7@linaro.org>
Date: Thu, 19 Dec 2019 10:52:32 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1575438591-12409-1-git-send-email-peng.fan@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_025235_191403_57DA578D 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Andy Duan <fugang.duan@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 04/12/2019 05:52, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> i.MX8 fuse word row index represented as one 4-bytes word.
> Exp:
> - MAC0 address layout in fuse:
> offset 708: MAC[3] MAC[2] MAC[1] MAC[0]
> offset 709: XX     xx     MAC[5] MAC[4]
> 
> The original code takes row index * 4 as the offset, this
> not exactly match i.MX8 fuse map documentation.
> 
> So update code the reflect the truth.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>   drivers/nvmem/imx-ocotp-scu.c | 10 +++++-----
>   1 file changed, 5 insertions(+), 5 deletions(-)
> 
Applied Thanks,
srini

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
