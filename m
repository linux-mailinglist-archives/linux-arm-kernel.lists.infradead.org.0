Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC62132B44
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 17:44:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fRJuI46vokRJV8hlEK/Z/tMNVPZ7pYlQyrJoyhWyMbI=; b=agHGB9nXeQ3shfem9O8XwQ9XR
	o83/4Kt2QlTvJo3MyTl1+xL4R/ltGdQWqNb8ZECh8OqkQqWHGgq39tzECDnTEC1DnuNsoiQd2DwZn
	u6MmlD/otBIjb8y0ER7QAAhV8ZhrguQCZx048pr6Cfpp3hSTjXjO8qEBOY1tINZFcLwm6PFDsd0TC
	dKxvIQZFxCvfZHr8YovDCv50FdFBeL7h9xs49BdObtGeb7IwdsfUO7ArDKOHQZ/ySEUAh4fnh9tB8
	rgYkYeRjP2iiCYItuTGFX/NTtDS4Nt4PyrYhJtEO513JIjCzDVGDQ/SL8jbO7DgUmExbhN6razUjC
	RTmpsI5OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioryE-0006SO-QH; Tue, 07 Jan 2020 16:44:42 +0000
Received: from avon.wwwdotorg.org ([104.237.132.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iory8-0006S3-6t
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 16:44:37 +0000
Received: from [10.20.204.51] (unknown [216.228.112.24])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by avon.wwwdotorg.org (Postfix) with ESMTPSA id 1DE3A1C009A;
 Tue,  7 Jan 2020 09:44:34 -0700 (MST)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.101.4 at avon.wwwdotorg.org
Subject: Re: [PATCH V3 1/4] clk: tegra: mark fuse clock as critical
From: Stephen Warren <swarren@wwwdotorg.org>
To: Thierry Reding <thierry.reding@gmail.com>
References: <20191003205033.98381-1-swarren@wwwdotorg.org>
Message-ID: <0902e0c7-5d71-e7aa-ee5d-21933e1b47fe@wwwdotorg.org>
Date: Tue, 7 Jan 2020 09:44:33 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191003205033.98381-1-swarren@wwwdotorg.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_084436_286078_F73926B1 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Prashant Gaikwad <pgaikwad@nvidia.com>, Stephen Boyd <sboyd@kernel.org>,
 Peter De Schrijver <pdeschrijver@nvidia.com>, linux-clk@vger.kernel.org,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/3/19 2:50 PM, Stephen Warren wrote:
> From: Stephen Warren <swarren@nvidia.com>
> 
> For a little over a year, U-Boot on Tegra124 has configured the flow
> controller to perform automatic RAM re-repair on off->on power transitions
> of the CPU rail1]. This is mandatory for correct operation of Tegra124.
> However, RAM re-repair relies on certain clocks, which the kernel must
> enable and leave running. The fuse clock is one of those clocks. Mark this
> clock as critical so that LP1 power mode (system suspend) operates
> correctly.
> 
> [1] 3cc7942a4ae5 ARM: tegra: implement RAM repair

Thierry, this series doesn't seem to be applied yet; could you please 
take a look? Thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
