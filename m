Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 468E949885
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 07:00:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v1xHrhvYB59oQRLGciZrlk5F2w7/dgXgdHzhxfE5HKk=; b=MsQn1M8ksNm5ft
	W+O2RlX2tfN/hsyKmCNj1PcMSPhBcO3sBQNZiqcMz1CxLWKz/NAtYTG0iLJDw0m7irLC16Hbc9N0S
	2uCCQ6xpoehb0OT4BHmnY2dVmdOVcu347vSsBnWUlKOQ7BVOus4Rj8ny5hDpwSY7Fyq/an02nwoPS
	oqlspTesDZcgIYTYgAuVVpGYCJBgQhtgcnPhRLD62kfv0xY3F0TZoTFQJiGMfCdjz8IYRKGSOm466
	5NwxKh4K14VHnS08t+ElFPwTJiLLRocaPtuHXtxwTNMlgMB/ktcKwSD6UqECAC7E1uXDz/lSaLOwk
	yUNOj8Zha1Wj3SOihIMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd6EN-0006NX-0j; Tue, 18 Jun 2019 05:00:27 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd6EB-0006Mm-FE
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 05:00:16 +0000
Received: by mail-pf1-x442.google.com with SMTP id x15so6924729pfq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 22:00:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=5eCFriLQWvF8FYEcvkBi/ZRaZyQ349tVPS3X6QmmHHY=;
 b=rklaTf761xf9MlDfHeHI9rXXxEKi/Yf3nBgqqf89Mb1zKGOaHXXjqat94kI2Zpds+y
 1EzLL6YU+rfMQApjIYKpKJpBCvKYPWoO0LqOVgEn0fxc1rcRoEiNl4b1va+TD4RGMUTX
 X7G4cNF2Nn+1Nl2/c6oS6btS5Mh76y7dDogfgA+14HGimDrCpANLmzzFom30AWPNTzpX
 eHY3+V5sJdHYI5G4WGKfnLQfwLgZdXU/VdgCOY9k4s4GznlwgH67hs71v0aB11O1krl4
 jVp0JRKVstpFbfGwPMNeQxzGKbsQeVeTWUFEZzVp/D/wMq4jH82oxqj1fIpW+lurauoQ
 +EWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5eCFriLQWvF8FYEcvkBi/ZRaZyQ349tVPS3X6QmmHHY=;
 b=OTBHx3l/wNxcULyzjGV2LJkBeKuNsJ/4FatyWuVMhOp7gIOpxrCQpdbvx8bBiMThda
 KUOe1XmE9rsiI220zGfs4OUM+38/1oDC6pajMHeKuE2L7K+gZSZpgb9XeUFORd9ZCZ7Y
 xdtEHzydaWlpyaTW2gxgxX5i8MZwe/B3SzxnUW7jEs/qTIRRiCJEdrl+7TCFZ7Xhjgdz
 RUNwAmSQh8QYidaztR8qsCbXHqkNc46qEwmRhmlE5ga/jr0hUqtE/dxIK3ubrP6ko316
 d0W6ZDQFUNIqmhz8cWBbad7KyzuMCkAgql4a/x8ORymWlFjsx3pT5rahtx3dKVYMq+aU
 l9Hw==
X-Gm-Message-State: APjAAAWeJASx7bRxdwQ4ZWDVsHvIX57CdHdxZgcKIszkMbl63vclnFPb
 T7E7afvd7261b/riO69Z2i/tLQ==
X-Google-Smtp-Source: APXvYqzcyaURim/qBrCjV64dB97VjsfXq2VZ/NdHcE7NDZTgG122hxMj1P2s7XZ2CLozqAmziS6xKg==
X-Received: by 2002:a63:5d54:: with SMTP id o20mr825397pgm.97.1560834014099;
 Mon, 17 Jun 2019 22:00:14 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id 85sm14627694pgb.52.2019.06.17.22.00.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 22:00:12 -0700 (PDT)
Date: Tue, 18 Jun 2019 10:30:10 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Julien Thierry <julien.thierry@arm.com>
Subject: Re: [PATCH v4.4 20/45] mm: Introduce lm_alias
Message-ID: <20190618050010.5bp3jfowrzz25w6y@vireshk-i7>
References: <cover.1560480942.git.viresh.kumar@linaro.org>
 <8500aeb27596eef7bd952f988c8db0a4b2f655c6.1560480942.git.viresh.kumar@linaro.org>
 <7b682848-d47d-94cc-6eae-7e97a0ca821a@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7b682848-d47d-94cc-6eae-7e97a0ca821a@arm.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_220015_508698_5A2EC7D8 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On 17-06-19, 13:33, Julien Thierry wrote:
> I think this commit was backported in 4.9 because one of the commits you
> dropped (6840bdd73d07 arm64: KVM: Use per-CPU vector when BP hardening
> is enabled) depended on it.

Looks like that. I dropped 6840bdd73d07 patch at a later point of time when the
conflicts couldn't get resolved properly any further. I should have dropped
$subject one as well :(

> I have yet to check whether that other
> commit can be just dropped, however on your branch 4.4 branch, lm_alias
> isn't used anywhere, so we probably don't want to backport this
> particular patch (unless we need to actually backport the other patch in
> some way).

Right, dropping this doesn't generate any compilation warnings so we should be
good without it.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
