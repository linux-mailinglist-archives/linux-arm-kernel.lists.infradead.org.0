Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F528E77AC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 18:35:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hlJTXdfMgKuYmW0f7pTEby4Q58E4TWmVJ1D11qMQBNk=; b=fSRL7zndxUU/jX
	i6v2HStDjhCsCwrnYq5gI2RjjofM11LgErFgZqYgK9KaHvK/cLJllTSLws5rFm2E5uQzE8nTKw5hb
	sWy1W0xjHfR/reYKT2bwnCM5IVPtZiVUv3wojLGBORPGJ/hhEmTglsTS5/A6B1bqSmTcOaxsD/UTd
	q0mvhHjz8a2cWc9qqilJoA36fmxJYHjRX87xM9x20CPA0QWf8nTZZrZ5TDpElNhf6/jl4drbUjfSD
	DQfourZgAJPzVwZUrd5XkM4In0kMq0tDSSvP1nsBloRqH42Nw+0pDu+WMOzQvzX39BVhhegbZdbgs
	E9h0J/Qps/wSZUnFNgtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP8vr-0000Nc-Dt; Mon, 28 Oct 2019 17:35:55 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP8vf-0000N4-8H
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 17:35:44 +0000
Received: by mail-ed1-f65.google.com with SMTP id c4so8568979edl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 10:35:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9dlbkLkbjNwkW8dWaTCD1qZUiGkWumkyUbrY4hy+PP0=;
 b=r4Tw4osysRy7pN4AS3QzCtpZxUm5Z3D1B1ClWHeGlp9N45UqAlgDzyfaPrd62xTJIf
 b1TeiyFH2ZFYcRaaUGiz7W+IKmlgLUvWdxZ/jDhnH6csR0bBON93WgOwXVAywvaBF4vS
 7fpbgXvyG+f1kmhxfsWpcZK0Ts3YKdTL76cNCYnGvqDPQq5PK+DgSHK7yoigFyeZ5Z05
 Brcf80c4PdL2sMkbLXyThzZqpUcf5JBkos5FxLABZH8NmckdZFmkazI/v5qeujno5qDc
 wfmtRPj0UgjEANojqd/Cm+UBnPzG3ZeUwXHANJfD8+0JPu1589MLZkUDJpCars7i9amG
 BCIA==
X-Gm-Message-State: APjAAAWetjbdLcFmM0iFI5EWTJJtfz6rzcVk8wOXEQpDXJrvz2N5Wo8v
 NlDl8TsEVzZDaT0U8xUWt0k=
X-Google-Smtp-Source: APXvYqy34BMLtkw8CEAwuKj/UeFjOMF1P1pIJI/GgyugK8iJZkPbVsQ8W9s1ePT5wtn+zaKQGhDcow==
X-Received: by 2002:a17:906:1c97:: with SMTP id
 g23mr17892494ejh.66.1572284141338; 
 Mon, 28 Oct 2019 10:35:41 -0700 (PDT)
Received: from kozik-lap ([194.230.155.180])
 by smtp.googlemail.com with ESMTPSA id x6sm601095edc.50.2019.10.28.10.35.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 28 Oct 2019 10:35:40 -0700 (PDT)
Date: Mon, 28 Oct 2019 18:35:38 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH 1/3] soc: samsung: Drop "syscon" compatible requirement
 from the chipid driver
Message-ID: <20191028173538.GA14395@kozik-lap>
References: <CGME20191028152057eucas1p1d6b4252e9ce3f15c0d81e6941a62d2be@eucas1p1.samsung.com>
 <20191028152050.10220-1-s.nawrocki@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191028152050.10220-1-s.nawrocki@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_103543_293677_7A6393BF 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: 3.8 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [194.230.155.180 listed in zen.spamhaus.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, vireshk@kernel.org, b.zolnierkie@samsung.com,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 28, 2019 at 04:20:48PM +0100, Sylwester Nawrocki wrote:
> As we dropped the requirement of "syscon" compatible in the chipid
> nodes rework code acquiring the regmap to use device_node_to_regmap()
> rather than syscon_node_to_regmap().
> 
> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> ---
>  drivers/soc/samsung/exynos-chipid.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)

Thanks, applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
