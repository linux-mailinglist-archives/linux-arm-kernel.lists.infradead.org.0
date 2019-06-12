Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C234D428C9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 16:25:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bjsP7K8ycIyBLpPqURBlsuVsuM7+jrsY/hg9pSMMSxc=; b=mtKIo/7FpT/vW1
	YS9Bi+h2E2niwdjUz0sA7rRBk0+2WfIlxRfyZVG+v/3uKrikxgEfPdn7RFYgkUHvA6IhpVfiiQyTA
	gA4V3qIxLScwFAMg/LM1Az5/T2PPcjrIEXqRCedMlMyG3XfZho2wnidc0o0oXIrOi6Mmbipwjqv5l
	SIURnErqlhNsbqAwZKYi+DazTtHigj7/LeWyCKqTmRGJCKEKTyelc75kFmgG9p8zNIU6P4PN9Y5lN
	l8+A/cyt3K1Mb+03C13zbVO8rKwRq/kIfTnYHB9FgAjPDXVg/F1iZI8MNQ1wPnw3adTLjoemnNw1l
	wkBU51e9W1PSYnpP3D+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb4C3-0004rV-Gs; Wed, 12 Jun 2019 14:25:39 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb4Bu-0004qv-Jr
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 14:25:32 +0000
Received: by mail-pg1-x544.google.com with SMTP id k187so8521986pga.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 07:25:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=CG5iVPWcjFplF7lR6y3XE62eHLD9eYji1o8inBAtJJY=;
 b=DkNlW945kuLZQ3RMFEaZhtAt/vvk0BfAkLbeAKizzc+dO/m7G5UF9lRQm6NNq+DUQh
 OLjx98iEFsYqoENabN8XQzrRfB0Q9IoWk/uhCskW75d1RLTar/8kKDcJRAxWV50LaX24
 m1lvDmGvJ92HaqHz9OUmZKcjabh54tm4K4IahU9DPDC0JuzJUCJNlET6Y8v5CG9MuDNs
 7inxq7/Pu7rKUo9WkPtzByceY8kkmQdTna1PRVg//7iHjmNAlshnrhZtb5VaiPBqNjFT
 WdX2mmSdhZMr5Iybo/COmIzTsuYbvIaFlP3cddhl+HBvAIaRf7CN1gYZkVTahmdsPgeM
 vHvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=CG5iVPWcjFplF7lR6y3XE62eHLD9eYji1o8inBAtJJY=;
 b=kjnzuJOT2EeDc43f4r+4ZKoRBgOV4oHvpOWFr+VJWVcS1HuHzdW+/YPqKCFsJvfROq
 0yhBYN95vt7GuwJvPeE7TiYYxkuvG/a/MCmooPDCvgI2ITC7+Z5UmcvRM5d5Bk1fqihm
 zkrsXQsJWeQEEDcheK7nnapqmvXmUlwA46ybykRyTCBMtK/5Kb16YjZWyepgn6yjMncE
 SmM9mcRRRjTiqV4sOZrsls/E4D+I0pcCOubXhy0E9EbFvBkNycg2Ev/jlbwS4UTlpwr7
 37N6s+o+A6vWRto+8mw0u1wMwPpQxdAMV9CIm8z4EZqABftnm4TT+5PJ/vT33Ka7BS9N
 5hLA==
X-Gm-Message-State: APjAAAX3nwL+tcmbUCnGbQJAoCzzgDyXRQIwStGm5OakpUrYJAiavQPt
 VpswlRGY3e+anKS20yrcxusSqA==
X-Google-Smtp-Source: APXvYqzFJUGgeRa9mS5//wWFpkOuEjJAUvNZgOI1pyCzeAI1Y14G2xwuNekpf+1k+vZZVrtDqAnWDA==
X-Received: by 2002:a63:af44:: with SMTP id s4mr25363352pgo.411.1560349529636; 
 Wed, 12 Jun 2019 07:25:29 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.googlemail.com with ESMTPSA id y14sm121972pjr.13.2019.06.12.07.25.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 12 Jun 2019 07:25:27 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v5 0/3] arm64: Add initial support for Odroid-N2
In-Reply-To: <20190603091008.2382-1-narmstrong@baylibre.com>
References: <20190603091008.2382-1-narmstrong@baylibre.com>
Date: Wed, 12 Jun 2019 07:25:27 -0700
Message-ID: <7hr27y3mp4.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_072530_682313_85095977 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> This patchset adds basic support for :
> - Amlogic G12B, which is very similar to G12A
> - The HardKernel Odroid-N2 based on the S922X SoC
>
> The Amlogic G12B SoC is very similar with the G12A SoC, sharing
> most of the features and architecture, but with these differences :
> - The first CPU cluster only has 2xCortex-A53 instead of 4
> - G12B has a second cluster of 4xCortex-A73
> - Both cluster can achieve 2GHz instead of 1,8GHz for G12A
> - CPU Clock architecture is difference, thus needing a different
>   compatible to handle this slight difference
> - Supports a MIPI CSI input
> - Embeds a Mali-G52 instead of a Mali-G31, but integration is the same
>
> Actual support is done in the same way as for the GXM support, including
> the G12A dtsi and redefining the CPU clusters.
> Unlike GXM, the first cluster is different, thus needing to remove
> the last 2 cpu nodes of the first cluster.

Tested-by: Kevin Hilman <khilman@baylibre.com>

Queued for v5.3,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
