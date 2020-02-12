Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCDC515A4B4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 10:27:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M6ZDgz2yM3M/4amMLjIkPR2y0cTBJTAARWnSSdN6F1Y=; b=agI0k7Ib1e7W9D
	XyWd08K93ZoHsRE2+5zyGYTrwpCc0+m6LEwU6M92JlLb9e0k7IdQXvvxAtcIkZs+O7oZ+wnIwzLAL
	7WhNRzdYVo0nWuKyA7yxP6HfrMWxq9CEacm5w+jzlX+G0pBIhBWEvkB/vekiJqJFLELc1lPAQMIiO
	je53gvUHalYblaD2ZBKAv+k2L5fd275cf1XzrpDaEBwZhGd69wFjjoW3brgmiFbb2XEwjMEKhTiuG
	JBvTNEvQttkg3Q+VWpQlPOa8dYwtlwZ5zkurx1sbI2vONfaTYhF/ghvBDQR1NEAwD2rvXDQgD5qCa
	lLvMXHkGYZ/9mKKKI71Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1oJ3-0000jC-4E; Wed, 12 Feb 2020 09:27:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1oIt-0000iQ-Dk
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 09:27:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 14C8330E;
 Wed, 12 Feb 2020 01:27:27 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 82DFD3F6CF; Wed, 12 Feb 2020 01:27:25 -0800 (PST)
Date: Wed, 12 Feb 2020 09:27:23 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH v3 4/7] arm32/64, elf: Add tables to document
 READ_IMPLIES_EXEC
Message-ID: <20200212092723.GB488264@arrakis.emea.arm.com>
References: <20200210193049.64362-1-keescook@chromium.org>
 <20200210193049.64362-5-keescook@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200210193049.64362-5-keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_012731_507058_BEC02C8E 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Jann Horn <jannh@google.com>, Hector Marco-Gisbert <hecmargi@upv.es>,
 x86@kernel.org, Will Deacon <will.deacon@arm.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Jason Gunthorpe <jgg@mellanox.com>, linux-kselftest@vger.kernel.org,
 kernel-hardening@lists.openwall.com, Ingo Molnar <mingo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 10, 2020 at 11:30:46AM -0800, Kees Cook wrote:
> Add tables to document the current behavior of READ_IMPLIES_EXEC in
> preparation for changing the behavior for both arm64 and arm.
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>

Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
