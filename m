Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58518817D3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 13:07:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hrvqhXHIBYoKQ7HEVdAgZz/yGUFPHYPycN5bZaFDBvw=; b=UWPcCVakwlMlx2
	uQkwY4q7vGnXArGpX25+t+SNSIaJm/McyptyukGjVm1+tqz0LAWz4Uqlr3roURRczPy5vohaZGXRk
	h2O+IcKbjJDY9bMWLKiXFHKmAm5GqSxbIxWVQ/0B9lwXg8hsNNyoOnNDxinI+wTjyhrQtVqANnqo2
	dt+8qXxYcgptD92orZVXH0gjKcNYyFotUcvwo8/bd2pcCsQ4fqdJmGopdgJAwEJjAA2sVaOJHaYpp
	DGYRDuM6VM1lkL/zIcrjeTt6+aE8YQPjaHZENzDN4ApaYC8Q3HYsuxJY9eeduL5cZEB2k2lP9hnFh
	VbriMgzv5VpPVnZr1U+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huapr-0002ql-Ra; Mon, 05 Aug 2019 11:07:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1huapd-0002qR-QT
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 11:07:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 45DFA344;
 Mon,  5 Aug 2019 04:07:11 -0700 (PDT)
Received: from iMac.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3474F3F694;
 Mon,  5 Aug 2019 04:07:10 -0700 (PDT)
Date: Mon, 5 Aug 2019 12:07:08 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Steve Capper <steve.capper@arm.com>
Subject: Re: [PATCH V4 01/11] arm64: mm: Remove bit-masking optimisations for
 PAGE_OFFSET and VMEMMAP_START
Message-ID: <20190805110707.GD59981@iMac.local>
References: <20190729162117.832-1-steve.capper@arm.com>
 <20190729162117.832-2-steve.capper@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729162117.832-2-steve.capper@arm.com>
User-Agent: Mutt/1.11.1 (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_040713_909568_C6D6F143 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: crecklin@redhat.com, ard.biesheuvel@linaro.org, maz@kernel.org,
 bhsharma@redhat.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 05:21:07PM +0100, Steve Capper wrote:
> Currently there are assumptions about the alignment of VMEMMAP_START
> and PAGE_OFFSET that won't be valid after this series is applied.
> 
> These assumptions are in the form of bitwise operators being used
> instead of addition and subtraction when calculating addresses.
> 
> This patch replaces these bitwise operators with addition/subtraction.
> 
> Signed-off-by: Steve Capper <steve.capper@arm.com>

Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
