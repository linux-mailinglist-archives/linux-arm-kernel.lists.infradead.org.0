Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB2084B6F0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 13:21:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zyXiFTblY0vYPJGZBI+hv+4uFP4U5GexKQ9ZdoA7j/M=; b=fqvye+PAA4d+Pl
	TJ88vIqs5AFVV2XLORWvlbPOCTD2CrC1ZwewN3xhtJH7XIr/aNemT9XRd0eiT94PK0Y5t8nco9fzh
	WDSerJtqjrGos6+2uqT6Y28sdOd7jSv2egMdxZF2fo0oRVjc4Xrk02Nt45YQG7kkBwd8Kkh9icMQB
	3RgBxy7DmpGW0hltRQwp9raXwVYIZV9OBIiWhqmwIzevvW9XHIjQBTGLWeeQoPmdOnR/MDIB8h8fb
	b0iXimQiktxiVRqoqhMDV8k3ZcME5yIo9Tzyt/ZK6JVjNVTsHhTZVWpXWnUSxnmauwkPqDw3XDSyz
	2xkiAsFcM53A5+JkSx6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdYeT-0005Q5-G5; Wed, 19 Jun 2019 11:21:17 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdYeI-0005PY-7j
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 11:21:07 +0000
Received: by mail-pg1-x544.google.com with SMTP id 145so575673pgh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 04:21:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=JdKqAYv2tlg441mmk5Yg5PgqcK1xocn/JRSFbmxrc10=;
 b=u9kXZrJd86bjJOlHKkwdwnDp4wFgvkMvklJ6jOln9aZOpLWWGLVYU/g5gqnRExMjtU
 hU5JArSwIK/goj0o5l9NwBgqOsXzNydlp+8sm+4CYu5jqGnPMVglhuwu2G3CiPj3LufK
 shzrU/YwBQxraRusFeYWSLoTibtcqf4XP1KZLi3p2bUJZhxJWaO9o6cZ1LP1xhJsNreo
 GlUsdY/rWMuZgG8YXwpUbfYjvRMV1p/4Xw7FnVBt+gnYRSA8EErXHTYoL1AvPYnnfR1y
 seOUa+kyPogcdfqzVct8Bo6cObZCI+S/lgWmkqWQ7XsNuLAs/7I5ki+2p37RMvnY8mGh
 BK+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JdKqAYv2tlg441mmk5Yg5PgqcK1xocn/JRSFbmxrc10=;
 b=bV6bVVYk5Ip1otl8Z8yaI2vE5GRbsVqJgOvQC418loPzbKYaqFXF8JHj+oDMfwH9lq
 v5Fb+VD2CSRcJ0fm5ypQfLY+miaEib18O5MXqzmUo9nORDZW716Y8fE6YYCu5Pbbcxc2
 2RHgplyk+9//dLTVr6m8kRZFs1DhuQgEMEiSwWJPpqRZ72v2MBNSthiR/kBUGgC+rAz7
 alxXedgzKbjPtH/ZDEgz3rvQe5capJC38Vqx0WL5Yq5ezYY4qOFeH7C08W4IvfybIZwd
 Ta7icFXLSPghL+VotIC6YyBc5znwYQ284AXDYb390pDHDhP65P9z4d70ABqBGVV1hwJt
 tZaA==
X-Gm-Message-State: APjAAAUQdgQtpsHboSuO+FqX8md3CakmdqbZHkGeQWdT3mwBh3UE3sCl
 U/qfmSPc7Chha2niBKg1J6oVtg==
X-Google-Smtp-Source: APXvYqy838wv3KP2iTGxzWl8Ukjs9WArMvCugLfEYD7RcNav5FtRQSfOse41XJyP3r0R0WVVy+TSrQ==
X-Received: by 2002:a62:2e46:: with SMTP id u67mr9849479pfu.206.1560943265279; 
 Wed, 19 Jun 2019 04:21:05 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id k13sm17350006pgq.45.2019.06.19.04.21.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 04:21:04 -0700 (PDT)
Date: Wed, 19 Jun 2019 16:50:59 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Julien Thierry <julien.thierry@arm.com>
Subject: Re: [PATCH v4.4 00/45] V4.4 backport of arm64 Spectre patches
Message-ID: <20190619112059.ovdwxazcchf7wagz@vireshk-i7>
References: <cover.1560480942.git.viresh.kumar@linaro.org>
 <7329e6d9-140d-59bc-c835-5f6300cf60e0@arm.com>
 <20190618102122.z52oi37pp3wigqxx@vireshk-i7>
 <ed7d6125-e8ec-c3a1-06c7-2a2fa2c92d32@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ed7d6125-e8ec-c3a1-06c7-2a2fa2c92d32@arm.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_042106_292355_5103B7CB 
X-CRM114-Status: GOOD (  14.25  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 stable@vger.kernel.org, mark.brown@arm.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-06-19, 12:03, Julien Thierry wrote:
> I've given a run for your new version and it looks like the BP hardening
> is not taking place.
> 
> I believe the culprit is update_cpu_capabilities(), which in 4.4 tests
> for capability.desc to know where to stop (and requires all valid
> capabilities to have a description).
> 
> Since commit 644c2ae19 "arm64: cpufeature: Test 'matches' pointer to
> find the end of the list", the restriction was lifted.
> Unfortunately for you, the errata workarounds using BP hardening were
> introduced after that commit and were not given a description. So they
> do not get applied and also, in the current state, would prevent
> following entries in the errata table from getting applied.
> 
> So either 644c2ae19 needs to be backported, or the workarounds need to
> be given descriptions.

Okay, I have backported it and pushed it to my branch now. Thanks.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
