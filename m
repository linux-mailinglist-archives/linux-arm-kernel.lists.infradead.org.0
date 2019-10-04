Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E31ECC0AB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 18:29:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jBxl1l9DktOuBU/XOIqdGdakdc6fCYpKtd1yhum5/vs=; b=TH1KdbiqjREtfH
	0+pvI6R93rex7ZCMPqCsFpzCbF+/LyCWDrz84waJr07MeXLo0RujtzlEz6z4MFVNgUGfeoKAiyn+v
	paEiItV+PINGMjjmqQJs0XybpVHKx1dOTa/PCW5xZ4/pI9ETGSoFx6telI+8jbYAOw5+UAk4NQ3Jg
	nls+sbQMr4UATPQ7V0V/OYhQEwJMEFb4+6G4Z+bovJW7eeX1FjjKrKn47VUD4wuTO8UBEy0ljSw8K
	ZRqkIhKUtO9vhGMFo9tQ5uTdoHnfFRgZGdTyjbeeMkpW2fzXDpwwodvVZKprGmkpybx9xeZfcZB2l
	x0f5s/FBSEjCoU+R/saQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGQSc-0007OJ-Fo; Fri, 04 Oct 2019 16:29:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGQSU-0007Nl-DV
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 16:29:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8D5B81597;
 Fri,  4 Oct 2019 09:29:31 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 8A3F63F68E; Fri,  4 Oct 2019 09:29:30 -0700 (PDT)
Date: Fri, 4 Oct 2019 17:29:28 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 0/4] arm64/cpufeature: Fix + doc update
Message-ID: <20191004162928.GK638@arrakis.emea.arm.com>
References: <20191003111211.483-1-julien.grall@arm.com>
 <20191004103721.tnjii772ts72pnm5@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191004103721.tnjii772ts72pnm5@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_092934_499545_5FA7D2E9 
X-CRM114-Status: UNSURE (   9.45  )
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
Cc: Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Julien Grall <julien.grall@arm.com>,
 suzuki.poulose@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 04, 2019 at 11:37:22AM +0100, Will Deacon wrote:
> On Thu, Oct 03, 2019 at 12:12:07PM +0100, Julien Grall wrote:
> > This patch fix an issue related to exposing the FRINT capability to
> > userspace (see patch #1). The rest is documentation update.
> >
> For patches 2-4:
> 
> Acked-by: Will Deacon <will@kernel.org>
> 
> Catalin can take them for 5.5, since I don't think they're urgent.

Queued. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
