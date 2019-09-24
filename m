Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6F4BC093
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 05:01:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5OcP4zcznlRxgb7yGMxq7anf61AFD4iJ/vEKaJuEjNo=; b=S1EW6GbO/21APQ
	vQ30zxGWKJ/+Snykheva+4M+Yppw9W7+MHFZ4VXOoBszsJnUv8+28yhGbkToYRrNQ28XU4gBH/Xce
	3phTwe14emVf7ajvMWmIdgG40J4CogNBb1L20UYX3dSwAe5ru1esV2DfZ9qLIFQ0E2pk/InqsmHbG
	KBVZKrBsYZ1sIlR8lTpXkOFNcQYAE9b4BO+GvyGvCC0YSOAgfy56DqYyu/L93Se7J+qhJ5rU8gm3z
	ecNh2dhKqiH7ALBiU4R56XNFz7yoYG6hxJGOGPsAr2ruwkJO7gJa5Fd/csCY2BORQSxwxlycYPLSA
	4AE7eOYPS2hD8RqLjzdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCb4c-0000nT-Gx; Tue, 24 Sep 2019 03:01:06 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCb4T-0000n1-3P
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 03:00:58 +0000
Received: by mail-pg1-x544.google.com with SMTP id i30so395922pgl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 20:00:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=AtJnbuFrZdKCTa7sV9OydssbY5572kq5IYSekbX0Xfc=;
 b=I4v6ZISlXRPLSZgT9fWsxqPFNLvqZYpleOquG0qgAB3ZuRHLY+dgbMhjVA6cvoOSv6
 7GGT0OzgJPuBZ8eDhMlu/agYbmbb/Hcu8YITVVKwL0R4l6BggAj6fZuI3qv/CxIIw1qZ
 PZG6vgwNhMKqQ7xSVgpCUcIwvtPSIKGR6mTBYWtpqvUpoy1svpe0tdD+z9cHAzdc0Yvq
 koPKtitA+ME16oe1K5HH7tISyDyQPflbpP/JMCYkvDPPKvq2NnAyR/8V6zb+6GLqVX/p
 Pxhc6zYoUuP8QK612uh6//DB6ESOKFiWqT3w+Yk8JLYQXFvjIA3bmMEFDovx3quR/XF3
 I1lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=AtJnbuFrZdKCTa7sV9OydssbY5572kq5IYSekbX0Xfc=;
 b=svs2LpgVs46x3iVOHALPSYQxFXK4l1n1u2WWZ1dTgCgADvY+ff9RKehhppf9bjPdWD
 fOmdNrDKu/Y0PvNaT9GvhezV2fC55CIaBNkCmEn67PTW3KeK3glWfbd2v4f1jlUyoijY
 JmVqe1yGFi1BrdZWmF5/Zb+T0ZZX0ymJWxxlBs2yd3qHJ36/6NKr1VQiGFEmGnY4DpJM
 oMQhX3Hj54ofWBQN0pYzhAgpo/dMvbmH+EJh1lFgmoxnutr17nXyBoR5QtC9wbFhL0Qg
 iAQA9d65n+r8avTX2Gi3pnXx+fPJdZjWHs0XH69I+NzNJC40n2VLpNWicJsUxBJAJmcG
 gk+w==
X-Gm-Message-State: APjAAAVUDhBlr2vFEwWIBCZGoVSl8jO5kWMYjokoTeVjapNnOC8UWm9S
 nXl/wIZpbbRB6UfCe5wWjNs=
X-Google-Smtp-Source: APXvYqxNalgSR3KkEGARfbIZcvkiFJ4bHGPb2YOf/wAGQDtuY6RkWFwFChj7dflch/1BBwFKIK7mOw==
X-Received: by 2002:a63:5356:: with SMTP id t22mr773585pgl.400.1569294055891; 
 Mon, 23 Sep 2019 20:00:55 -0700 (PDT)
Received: from [10.230.28.130] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id e14sm197603pjt.8.2019.09.23.20.00.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 23 Sep 2019 20:00:55 -0700 (PDT)
Subject: Re: [PATCH V8 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
To: Peng Fan <peng.fan@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>
References: <1569287538-10854-1-git-send-email-peng.fan@nxp.com>
 <1569287538-10854-2-git-send-email-peng.fan@nxp.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <d3a99c0c-dd5f-50e0-ae9f-21ffa1d116d9@gmail.com>
Date: Mon, 23 Sep 2019 20:00:53 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <1569287538-10854-2-git-send-email-peng.fan@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_200057_167926_C47407BE 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 9/23/2019 6:14 PM, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> The ARM SMC/HVC mailbox binding describes a firmware interface to trigger
> actions in software layers running in the EL2 or EL3 exception levels.
> The term "ARM" here relates to the SMC instruction as part of the ARM
> instruction set, not as a standard endorsed by ARM Ltd.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>

Thanks!
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
