Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F4EC5CCB2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 11:34:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rv1OiY7XbjCHaoMb28mnsVPABVlhWR7mSXdDt0s5bwY=; b=qugrqQjVr8QAmV
	QtIL8E84et+tWVw7A1G9MxrBqBHcJH78vmZc0Ol6BcpK+0kD+2rhbM/QU+QU86L9LiXWkRJd49DMV
	27IYnZw5ifrRI9JKNSrqABp4E78aZL/S77tG6FUYoIe8uShS6i6YUi+hyIwhRZLfozyY3TeHSwRRG
	cQBvizXzaNnnt3xMtFaOrkHdmbU5Idage1rUekxDzQtZyM3MNnm5E85tvGzHLkJYQsH+X8sR5vZ4W
	ladEp5SQs7szRPDzpUQjDYUNEqFLtlBnbe/kLtS7pJtlBA2uPxmUCDYdVmO2CfMF3eFQWhgLNu9uL
	CqS0BU1eWZCjNGiRqu1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiFBZ-0005VV-OC; Tue, 02 Jul 2019 09:34:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hiFAm-0005Lr-4d
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 09:34:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 475B0CFC;
 Tue,  2 Jul 2019 02:33:59 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3D0FA3F718;
 Tue,  2 Jul 2019 02:33:58 -0700 (PDT)
Subject: Re: [PATCHv2 2/3] arm64: stacktrace: Factor out backtrace
 initialisation
To: Mark Rutland <mark.rutland@arm.com>
References: <20190628154639.5308-1-mark.rutland@arm.com>
 <20190628154639.5308-3-mark.rutland@arm.com>
From: James Morse <james.morse@arm.com>
Message-ID: <24fa5905-cdd4-ee66-94da-50f606bf7426@arm.com>
Date: Tue, 2 Jul 2019 10:33:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190628154639.5308-3-mark.rutland@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_023400_221190_F141E7F1 
X-CRM114-Status: UNSURE (   9.21  )
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
Cc: catalin.marinas@arm.com, tengfeif@codeaurora.org, will.deacon@arm.com,
 dave.martin@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark, Dave,

On 28/06/2019 16:46, Mark Rutland wrote:
> From: Dave Martin <Dave.Martin@arm.com>
> 
> Some common code is required by each stacktrace user to initialise
> struct stackframe before the first call to unwind_frame().
> 
> In preparation for adding to the common code, this patch factors it
> out into a separate function start_backtrace(), and modifies the
> stacktrace callers appropriately.
> 
> No functional change.

Reviewed-by: James Morse <james.morse@arm.com>


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
