Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D72D99E8A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 20:18:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t0ZxaopJqeiGYUIcuN0TmQI7tRDGsLCYTPN7owagUcY=; b=PKqnZAsrlnSX4Z
	n+VYNB37RLFEXsifUnJdFE9Cnq3q2KnthWYNplFJkHlGvKZnAearJXCkDTw7R10qM9RvL8sHAlAiD
	NrDeWRmx4udeX9qKXZ7x3LnSueRyvNaMX8DwSGvuVQm83mhbrUrW7Q6nvAWWzQbULmER+jMtPZreM
	D+SMtL9vxXMEan6QjykMiuOpdV7xAmV6dFghunq6kwvVwh6fpfd7r6GaXYrirPlBmrPQm7LF4QRpj
	2XFASbWGx9HUaX5ftQQyL1eTo2MJTrIRd9R8BN9FrIHLQH2gg7oqrkJSH6Q0eUDnoQd5/ibSMQfEh
	VifftbMiRIu01GBDFoxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0rew-0004dV-Uj; Thu, 22 Aug 2019 18:18:06 +0000
Received: from mail-wr1-f52.google.com ([209.85.221.52])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0reg-0004a2-4a
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 18:17:51 +0000
Received: by mail-wr1-f52.google.com with SMTP id b16so6283947wrq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 11:17:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1zPMvLZjjeedqtoVLYcJ8H3LXTpubsb7g+u61JjqB5E=;
 b=Y3mDUFL00qnemmS7BGKPF7GgMRoRRbUc6nRXbkyt8atvl2kJE1pTVId2OGYhDqbhAm
 hQt2X0mgGcunTdJ8UF5tYU/TOmEtyPkXirc4VSWb9LHk5jCEMJJpLoxfln59W9TAekzr
 42Eb/xeG7MrOE+NECApLAYQ1eeEfOvT8J7uonFbrRVBpe6HFmpmyydOEuVH6djoxXkee
 qyhNz6u/Vn9uSaujC2PmxVqF5PrMiXLu7CgtgRW9B7lBYSxPZA4vFRzqq8ZI3uOkiSrk
 5NzGa5tJT+zObVbcrIJgvrO+nb4DB7/wKvRCYd0g18+tuKK/Qt1E7o9sYsSAKqju8JEL
 +fig==
X-Gm-Message-State: APjAAAWmTlbsUTtENnvLpY5R3hs4yP5TpC27Uo2kkQVIcJyW3iUz6IdU
 L6+L0XMbcvDLudA/g4Xq2Jo=
X-Google-Smtp-Source: APXvYqyDp8hB/RD73MCtKTelz5jl4AljBemJrdNs+yI1wwKK9WF0zm7Pb8XQvFkNHkgVIkqFJ6b+sQ==
X-Received: by 2002:adf:ea51:: with SMTP id j17mr339649wrn.184.1566497868440; 
 Thu, 22 Aug 2019 11:17:48 -0700 (PDT)
Received: from kozik-lap ([194.230.147.11])
 by smtp.googlemail.com with ESMTPSA id a141sm13083871wmd.0.2019.08.22.11.17.47
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 22 Aug 2019 11:17:47 -0700 (PDT)
Date: Thu, 22 Aug 2019 20:17:45 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH] soc: samsung: chipid: Remove the regmap lookup error log
Message-ID: <20190822181745.GB10900@kozik-lap>
References: <CGME20190821150548eucas1p15139f733b00e3a1a107efe39f6712fe9@eucas1p1.samsung.com>
 <20190821150539.31207-1-s.nawrocki@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821150539.31207-1-s.nawrocki@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_111750_223950_937AEC54 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.52 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-samsung-soc@vger.kernel.org, b.zolnierkie@samsung.com,
 pankaj.dubey@samsung.com, linux-kernel@vger.kernel.org, jonathanh@nvidia.com,
 kgene@kernel.org, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 05:05:39PM +0200, Sylwester Nawrocki wrote:
> In commit 40d8aff614f7 ("soc: samsung: chipid: Convert exynos-chipid
> driver to use the regmap API") of_find_compatible_node() call was
> substituted with syscon_regmap_lookup_by_compatible() but also an error
> log was added for case where lookup fails. On multiplatform the lookup
> will always fail on any non-samsung device so the log is incorrect.
> Remove the error log and just return an error code from
> syscon_regmap_lookup_by_compatible() which internally calls
> of_find_compatible_node().
> 
> Reported-by: Jon Hunter <jonathanh@nvidia.com>

Thanks, applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
