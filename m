Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4358952591
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 09:56:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IJ6iXZTgrB85c1WZSjOAW6nZm6DM+83vcLs3RZcf9vc=; b=iF81IOHq1xj6Ky
	KSgOY5wHN6/wqcX3EwL7tPCcFjepItNfFUsMWUSPNU8VpvwdH3lLryUdj7LxHV/gWXkvDuWetwqyB
	d3m0UleRYXqWZ/vabMxKz+nGHpN/csXzsrBullNLgEbUhxpvKNMPXlsEf7GqN4qA9cRMyPR5qzIT3
	Hll6an2JEAw2Jox2RUpBQVTeVTMS+wkirX3qvYdUhz+VsRaR2kkJpX3JvhySRtGOBrD+F2MxmuoVB
	3bOmcgVO4+/Dols5C7JDPNa/cYwbcoA4GPKsq1PeZ4raiAUOlbRa/DYflTxWfd7u1hS6pabCXy+8e
	0N+ABk9rubMRCFySPEVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfgJr-0001yd-DW; Tue, 25 Jun 2019 07:56:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfgIb-0001Ft-2T
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 07:55:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 420962B;
 Tue, 25 Jun 2019 00:55:27 -0700 (PDT)
Received: from iMac.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 885DE3F246;
 Tue, 25 Jun 2019 00:55:24 -0700 (PDT)
Date: Tue, 25 Jun 2019 08:55:22 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v2] arm64: defconfig: enable CONFIG_RANDOMIZE_BASE
Message-ID: <20190625075521.GA1784@iMac.local>
References: <20190624095749.wasjfrgcda7ygdr5@willie-the-truck>
 <20190624175852.46560-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190624175852.46560-1-ndesaulniers@google.com>
User-Agent: Mutt/1.11.1 (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_005529_203355_341261C9 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
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
Cc: mark.rutland@arm.com, Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Kees Cook <keescook@chromium.org>, Will Deacon <will@kernel.org>,
 ard.biesheuvel@linaro.org, Maxime Ripard <maxime.ripard@bootlin.com>,
 jeffv@google.com, Dinh Nguyen <dinguyen@kernel.org>, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andy Gross <andy.gross@linaro.org>, broonie@kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Jagan Teki <jagan@amarulasolutions.com>,
 samitolvanen@google.com, keescook@google.com, Olof Johansson <olof@lixom.net>,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 10:58:50AM -0700, Nick Desaulniers wrote:
> For testing coverage and improved defense in depth, enable KASLR by
> default.
> 
> Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Acked-by: Will Deacon <will@kernel.org>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Suggested-by: Arnd Bergmann <arnd@arndb.de>
> Suggested-by: Olof Johansson <olof@lixom.net>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Thanks. I'll queue this for 5.3.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
