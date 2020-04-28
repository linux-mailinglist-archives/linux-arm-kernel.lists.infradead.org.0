Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00BDF1BBF9E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 15:33:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e5tJ+dNzzDGm++Ykp5R0M12lXIE901ICmmWHmY9v8yA=; b=Q/73yTyIDZiyVC
	bi31C/E6YDLbLIwv+BuO1V6ME3KGc5QZrfjZ37kptZLnKwKB/be6IvLGJH1KnaMiNSgN9VK+LT/0y
	TjOaaBHPu7jivDaet7l4xq3zzCW9uZUJtfctsBghGTAuq/8GB2/yqBwKFrYy4e+JSurFA+bCm2/tc
	8+HQVlWUgMUEfic2hT0bX8ycPzU5+ia4BAKhH5/PX3sx2Q0FfH4B9u//clS0GUvbSJGo7TsOD83fz
	5cAvZ7VUOSbKlcQXQ+TCC/lwBR+Ol/H01ATUxhiPp1t6Oqglj0hPygi4HfXRwJsBeJkx61G4uVLwR
	t8jowyaAfO/83n8uQIfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTQMi-0000Va-0t; Tue, 28 Apr 2020 13:33:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTQMW-0000Us-1d
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 13:33:25 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A0A56206D6;
 Tue, 28 Apr 2020 13:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588080803;
 bh=nFJRU5OEWSiAQ4Q9k4LEUQLiG7tjQtjzOxXRZzu/Pww=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=x6GTKodN5o7FQM8UV6klZ4W7r3stqkmrQveQ52Z2SjUOS+4dHtcTKpCHQmY8akcs1
 WrnR1hQNcmLLDX1Ltvfx274Wx5WxcUVnS+UX59h0IMAzJYX2FljpsM4VRxEkBcTHY2
 OFEULwHPFvERIIPg+JGVaznXva/c1Z0/bPNugdr8=
Date: Tue, 28 Apr 2020 14:33:19 +0100
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 2/3] arm64: insn: Add constants for PAC and BTI
 instruction decode
Message-ID: <20200428133318.GH6791@willie-the-truck>
References: <20200324194822.15682-1-broonie@kernel.org>
 <20200324194822.15682-3-broonie@kernel.org>
 <20200428114353.GG5677@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428114353.GG5677@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_063324_107786_40728657 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 12:43:53PM +0100, Mark Brown wrote:
> On Tue, Mar 24, 2020 at 07:48:21PM +0000, Mark Brown wrote:
> 
> > +	AARCH64_INSN_HINT_BTI   = 0x40 << 5,
> > +	AARCH64_INSN_HINT_BTIC  = 0x42 << 5,
> > +	AARCH64_INSN_HINT_BTIJ  = 0x44 << 5,
> > +	AARCH64_INSN_HINT_BTIJC = 0x4C << 5,
> 
> These constants are wrong (I checked the others, they're fine) - I'll
> send out a fixed version as part of the next version of the BTI kernel
> patches since they will depend on these.

Ok, I'll ignore this series then.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
