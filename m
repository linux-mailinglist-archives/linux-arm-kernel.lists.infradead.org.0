Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94F4B131343
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 14:56:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oszB+D6eoyj6efIHp5qSgFJyM7daKQ2s4G4bSz2ExAE=; b=Lxe9qMoJN7M9/RDdtud9PrOcb
	oP1/zdnVgci4g+iVz75roWBR6Rtqg4gNWGrNDIMxC2D9p+Jo3m18e3kEGl+EcyEGU+BJlGbAC39+9
	X811rrR8BSMbDzP4Ywv87LnufLYgTRBN4x+6UhOrISiwopTTjiQpDJJvwiaDRpmmTuwsYzptpoRvi
	AO69x4jD9canRXBd9Sp9yKU+gHQlkoG25lk9TTCQDKbByRAIUcNaeUO1N57vYqgpGS9clZbbZrhn6
	h0Jgqcj1trOeqitu9lU+0+m98C4ovLX776Y627Ktm5Pl0HJQWmsre4i/gGjKr0X7rLGUJSgXAy9pd
	TFFB+r4OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioSrN-0007Ts-Q9; Mon, 06 Jan 2020 13:55:57 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioSrG-0007TQ-HZ
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 13:55:52 +0000
Received: by mail-wm1-x343.google.com with SMTP id t14so15340010wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 05:55:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=GOvgs8hj7dePLPcNePLrt69XdZXpuWMsK+N/ZHyA1es=;
 b=m07u5nGnCZpJUI8A1ZnfY9d4w82zqcxobiRXp776JbxpKTIQIEsJHPGkBHNS4W6WL3
 5Kx/Zzo57gpeETH9v6lmhEqf68ArMe4CCddVfKc344tGJpOamH7emZUBUa4eRKfntile
 gjsaMgMfCj52sK0/e5dbPTEup6sOFkQNQPHKdIn0S2C1c3hcAtVLFcj8MUvSMNZi5FKR
 ITJtf9U7J6AWqGG2YK030C4OSyMJk9nX97rtgnbq6bUhOXPSC8pzyCt89JomXp2Nc8ZF
 UCTjtcKd9CqZ99r8TSZBINo7CQcE506lfzfjmuoU4w5IjrEwkCBd1YTJw+3p2/I20AFu
 yZXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=GOvgs8hj7dePLPcNePLrt69XdZXpuWMsK+N/ZHyA1es=;
 b=kK4FJkivbavUQjZcGIfv6kHQC7b7fzAZhrnDNoxoDgqgXVGokfV2oMFaeP5XvD7BAF
 PVnB0fcIUG3Xmdmnu5C3M0IP6vq34JZvPCwle3bY/lMp/YoWZGXIHQ9hM82Ty9ty8k9M
 uoBo92I24NOiK7MZU8tKzfARRCPxHUEFpGGsXhMRo7m/lYamdug5hSwnDlVfff9/Jjbt
 62KFHs2dxX/3icFZyEQRAgDhuen4SOvfg6Or+5YDkqOIVLz5oXzojo3v+iK4ClgN2kws
 WcQSZnF9xA67wsXeL+1UHoke5gWFbHbQxeivne6v4zdINTjkK9Q0KlHjBsVkdvRNHmn5
 YXHA==
X-Gm-Message-State: APjAAAWt+vAB8qsu9wn/05mqcS46aZlVnR85cdqELlk9KOaevl/mucWE
 BA66WMLqRh5luxwOLSJGivvYXA==
X-Google-Smtp-Source: APXvYqw890CrpRTdI5nRuZqhpN0XGRsEVvYreHKiTznR18ImmnALK7ahdFzMlIcQknZUfcelJWjSmw==
X-Received: by 2002:a05:600c:290f:: with SMTP id
 i15mr35413242wmd.115.1578318949072; 
 Mon, 06 Jan 2020 05:55:49 -0800 (PST)
Received: from [192.168.86.34]
 (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
 by smtp.googlemail.com with ESMTPSA id y7sm22744018wmd.1.2020.01.06.05.55.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 Jan 2020 05:55:48 -0800 (PST)
Subject: Re: [PATCH] nvmem: imx: ocotp: introduce ocotp_ctrl_reg
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
References: <1577355442-2140-1-git-send-email-peng.fan@nxp.com>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <34e0a567-04ee-4ff3-38da-cd4e3d8b4b3f@linaro.org>
Date: Mon, 6 Jan 2020 13:55:47 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1577355442-2140-1-git-send-email-peng.fan@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_055550_776889_D93D5BE7 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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



On 26/12/2019 10:20, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Introduce ocotp_ctrl_reg to include the low 16bits mask of CTRL
> register.
> 
> i.MX chips will have different layout of the low 16bits of CTRL
> register, so use ocotp_ctrl_reg will make it clean to add new
> chip support.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>   drivers/nvmem/imx-ocotp.c | 79 ++++++++++++++++++++++++++++++++++-------------
>   1 file changed, 57 insertions(+), 22 deletions(-)

Applied thanks,

--srini

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
