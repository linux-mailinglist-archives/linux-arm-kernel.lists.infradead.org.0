Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38105138C87
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 08:52:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qc/Egdg2An8+MjFOj8eyi3FT2ZHL4fUre3Gbk43aUlk=; b=JMGNQyCSWR+paK
	37/4pPpYNzjCvjnSmvepYyM0Ax/7jpc/NrEDnEkpa765vhtTzgMeZAcHgmKCW5KfWiQ2QQA2Rzg9p
	ZtNKe2hV6FxVKm5TaCONwOfIn42tT4m0uze+ztGTtAIIkK4jVIv7paoI45c/i3TYxcxXcgem0Uwjs
	kEbu5fDJRiT5Z8ZZ6DKAMel54gM754FRioA6p4aPgiJs1HrPxpRT0MMZxlkLilzaRvPTta13IH1qb
	2xJ4k/Pm8djgiu5xWvnt474fifqqliCb92W6ruksv1NHuoJjKM26Sgpo0FW9uOukXQg+qXd+UWxVr
	wh2gqhqhNixC0jt/wduw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iquWR-0006yW-7U; Mon, 13 Jan 2020 07:52:27 +0000
Received: from mail-ed1-f54.google.com ([209.85.208.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iquWH-0006xo-Uu
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 07:52:19 +0000
Received: by mail-ed1-f54.google.com with SMTP id r21so7630345edq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 Jan 2020 23:52:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=soxPPP1ZI0ONRGIE6bmBJhnEMY0uT/RfAdWeC6j5b0E=;
 b=IZ2ZDgKXpwZQzwB6WTMgfhU8l++jW//utN+BnBQKAsrTwjbYo1j8EC7jzFLD3XYjXw
 df9TfLAUyZXvyVkAWl8LZJuzWMnvvaY48iHoKiPouX95+Hjb+cZmdm5i/ay07W2IH6rZ
 yjqLcMErD0HMvAqWf8ZUCiOPaBRrnIbkaZmsztKtjgWOWexADdqmN6QsunEXJbhRMvPE
 2NxIz8WZMlt7jTTt/Pu5U/1cTPTVuKgOUtU5hQXFoVVfAA/ilNteLkdSsRLsi+oJxODS
 UdnOP34MqQyvJq0T46gYuyYpoyjLjCqdfhAMU/zxDSHgJTwMYgCrDKTPoD9ySSbsaZdf
 0tRQ==
X-Gm-Message-State: APjAAAVJWFtNTnTreuq55OtqeLdh/K/DFZkN4H22sE/IlYlRmH4gWfAz
 AVODgfej2T9J19LQkoUOc5g=
X-Google-Smtp-Source: APXvYqygRlTjwBeD/K++XU6RwcobqP3LASm8y+JWasFBexgo6vO46tqs9Hx9bUNGjyxeTXmev9FWyQ==
X-Received: by 2002:a17:906:2892:: with SMTP id
 o18mr15492554ejd.312.1578901935058; 
 Sun, 12 Jan 2020 23:52:15 -0800 (PST)
Received: from pi3 ([194.230.155.229])
 by smtp.googlemail.com with ESMTPSA id qc1sm388327ejb.49.2020.01.12.23.52.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 12 Jan 2020 23:52:14 -0800 (PST)
Date: Mon, 13 Jan 2020 08:52:12 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH v2 RFT] media: exynos4-is: add missed
 clk_disable_unprepare in remove
Message-ID: <20200113075212.GA1218@pi3>
References: <20191219074824.15047-1-hslester96@gmail.com>
 <f253eb6e-5e21-fd9b-8c2f-371beea66afa@xs4all.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f253eb6e-5e21-fd9b-8c2f-371beea66afa@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_235217_996042_7600BAFF 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.54 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.54 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-samsung-soc@vger.kernel.org, Chuhong Yuan <hslester96@gmail.com>,
 linux-kernel@vger.kernel.org, Kyungmin Park <kyungmin.park@samsung.com>,
 Kukjin Kim <kgene@kernel.org>, Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 02:40:21PM +0100, Hans Verkuil wrote:
> Anyone able/willing to test this patch?

I do not have the hardware with FIMC/camera so I cannot provide testing.
However it looks good, so I propose to just take it:
Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
