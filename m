Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 792B2125FEF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 11:52:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=y7mvUSc5tQcY71lRUfENURtWQpZ91Ix/hjBBKDb6fUk=; b=rygVPFzgl55k9gVRbmN6/yph7
	arXWCiUtyN8idf0uk78juUxQL8Xb2dM+u8qbDZL/6qq7mGT+yfJetpCDCLKodWZ+gVv6uxi3uiQWo
	WrfkyEe/jve4cQ81s2+eCUifnA88yxXQd3XISHRnsTHHIlxSFpKBzY4RDiNjSxSuEzHi0bXfqL7r1
	ItK+sgGP7mGc7rWIQHaJRw0URS9MAYVG/ZLyy16j1Qf4bCma+vCHHyUD4ShIncLjla+zl8T2XA9Xs
	eXbeni5s72P0NtDWl+aIfevPjayXRlqA5SI1j5zAw9TYfi4jAa0AmCYZba/e9POAfDT/fgu7xHG/J
	wefORmnXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihtPy-000590-3Y; Thu, 19 Dec 2019 10:52:30 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihtPj-00058U-7a
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 10:52:16 +0000
Received: by mail-wm1-x344.google.com with SMTP id p9so4951694wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 02:52:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=/1iWCzYi3gScJH+ZKu4IAouDVwkUnYO+J1BdKnXhQTg=;
 b=kRJeBsd8VIqqFAlxQLTEATMz0dlQldjkF/yvYns6xcit9rPY2lQWlTSwcM429xZ7S/
 QF/bR2oRu/Il5W4LQgzDYUyrHowxQfpJElyZgWln1Nq+iLDdr+Snhx8vmI1NnPnmUTjD
 pjBEYm7TZJRTlSP2wjwzu7ViRnKBCNpOolpQ0Yvnz57WHmGmoU3vhZy0R5M6WWp2a+h2
 qeyBcRPPLBxGtiswdAg2Fd6/5ofl1LLWXcaIeIx45q9omIwCsRQlpjA5v9INOy3ShcYY
 YZCxlseRTs3p986ZRv0VSTmLmgLrcSUw3LT1/Kayfzvrn78dNAc+p8BSkcZGPVsTgVQP
 OwXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/1iWCzYi3gScJH+ZKu4IAouDVwkUnYO+J1BdKnXhQTg=;
 b=OmBgO+cxhNLYF8UGuNdED8PIro08CEKfiLJSLYOCqiRCFgagizUz7rIaVKmwyjke58
 Ikr0W+e0CIf0RC9kl4+jLFKe4DDxt9ZrUTArNPHy6M9EkpNRfwp+3tyD51pPZ8FLR9A7
 C7IWb6RUzOTEiIrihHh+SFmyFzAnvEnm4Yjdrhw/f0OcGhT/1tiWIRBum6vheZuipIhP
 3rDsqBl0Gj1PX/BoDl+SHsXwaIz4xTcbrtKPgE25qErxzueFdQ36yXgQJLD8SG+1NpaL
 vsZ4E+xQXK3PsPmDmBN8oRmvUSf0kumk9PW+OcgT9lVb2T1mm6+xcD7J8O8l4dGGcVcm
 BHog==
X-Gm-Message-State: APjAAAWsS/iRwJzjK8YB2Kt+nybQbJ+3fFHbOHaO31iYnkoQpOMfNnfG
 Cwd3s5tQl1fpOHYJ/geKvRIfoA==
X-Google-Smtp-Source: APXvYqzStH+1157P1Cv3/akiouCWbHXle1czPtvxUgDMCyd4SeBRSabTb/W+TZKuJ11C1gGBaJ4A8A==
X-Received: by 2002:a1c:7901:: with SMTP id l1mr9079872wme.67.1576752733307;
 Thu, 19 Dec 2019 02:52:13 -0800 (PST)
Received: from [192.168.86.34]
 (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
 by smtp.googlemail.com with ESMTPSA id u16sm5590079wmj.41.2019.12.19.02.52.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 19 Dec 2019 02:52:12 -0800 (PST)
Subject: Re: [PATCH] nvmem: imx: scu: fix write SIP
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
References: <1575340217-1402-1-git-send-email-peng.fan@nxp.com>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <feeeacd0-3d0e-08b8-2a43-8527e6840b94@linaro.org>
Date: Thu, 19 Dec 2019 10:52:11 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1575340217-1402-1-git-send-email-peng.fan@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_025215_276534_81CAC45E 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Alice Guo <alice.guo@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 03/12/2019 02:32, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> SIP number 0xC200000A is for reading, 0xC200000B is for writing.
> And the following two args for write are word index, data to write.
> 
> Fixes: 885ce72a09d0 ("nvmem: imx: scu: support write")
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Applied Thanks,
srini

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
