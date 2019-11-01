Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C82EEC278
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 13:07:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O42vR5oHB++Stzo2b/4aPHnLUtUAjnbtBRjVhGK8leE=; b=YC5Le3GwzDFx6Z
	t64VB0qwepSvZv6HEX+wOR77y1MTBXdPWYyF1XRD3lAiVYOlTsEdDnKWq04VMQMQlUN04U4gxY79K
	6CD9YzgCTsDdKg2dmD6WUfMiHr5/wnEvWsO1bSM7BNnhCIfx7TSbD/jnsddK1hfcx2JQN+VisMYky
	Wlka2XJvDJamuMDOwHMBnrGlyoMTUV0j59+InGDbpgTH1guVcIsdOLTZtmHPe/FSxyvcwu5jyvgxU
	G9YnUsQxqGSZ+jqTlR0aeTW78n5kLDgJ3h7SVSe+uuspU9bRl+OsXtMEp8oGrS8Q4YIQhoavYaxAC
	ExUN+TTVqPWGcZwSmi8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQVhl-0003LF-EA; Fri, 01 Nov 2019 12:07:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQVce-00041A-9y
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 12:01:45 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 924D3208E3;
 Fri,  1 Nov 2019 12:01:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572609702;
 bh=Y02s4XBi0lk6A1N7UzScz+CDAlHKVvSHuhj747yV4mA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=slvWenIJYVud+fH6YRVyYiYnkiE7BPYHHrjMGI51mvENCJMj221NBEPX5kJY8jbiP
 ElhqKjYDxw19TvJieryADUxCftnq1PCRX1yLhvFY5CzBOJQL/tz153gOrjtZKDkIck
 Fwhy0nOlN96gGFKD3eRfAecMz1allcMvQm2Qm1w0=
Date: Fri, 1 Nov 2019 12:01:36 +0000
From: Will Deacon <will@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v2 0/3] arm64: Brahma-B53 erratum updates
Message-ID: <20191101120135.GF2392@willie-the-truck>
References: <20191031214725.1491-1-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031214725.1491-1-f.fainelli@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_050144_373422_C2C8816F 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>,
 Vladimir Murzin <vladimir.murzin@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 Jeremy Linton <jeremy.linton@arm.com>, Zhang Lei <zhang.lei@jp.fujitsu.com>,
 Andre Przywara <andre.przywara@arm.com>, Doug Berger <opendmb@gmail.com>,
 Qian Cai <cai@lca.pw>, Hanjun Guo <guohanjun@huawei.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 02:47:22PM -0700, Florian Fainelli wrote:
> This patch series enable the Brahma-B53 CPU to be matched for the
> ARM64_ERRATUM_845719 and ARM64_ERRATUM_843419 and while we are it, also
> whitelists it for SSB and spectre v2.

Cheers, queued as fixes.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
