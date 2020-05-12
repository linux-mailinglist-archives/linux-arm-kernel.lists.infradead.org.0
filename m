Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE591CF4AB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 14:47:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:To:From:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=MdI1CKhzJ6cmdBxKLyTtecVRMoTVV5Pz8J/YCnwMZ7Y=; b=fYv
	tTodE6Vy63O+D24d7E4UybkytXwsmxWvu0B+LzRGybZZPBohjFlMIQkmBPQ19/GF0vACWFNiXkke8
	XIdDR7ZSiWMhEJgqlRetk0m3u82Q5GPTa7RFNKAkkgOLYKmRd1rD7frmcoGzbwjgf5NnU9+x61n6H
	Y8bF0AkhRB6i2PmI3hvoJwV2ScHXyGi2GCxgTIB7/S/VaEbGECV+QBl1uYtaIh7yL3XFq1tRHB42v
	Ph594wKPRtuMtQHdnlqgPBTOvXuQVCiyXglRPODFVVoGuDVANLDBJrqSRJLUJStGq7xHQlGeeG04Y
	PEognKGXtifaZjvU2oZv8l4erxC/+6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYUJT-0007CW-OW; Tue, 12 May 2020 12:47:11 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYUJE-0007C1-2F; Tue, 12 May 2020 12:46:56 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 41329301EFB;
 Tue, 12 May 2020 14:46:53 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 0)
 id 22AB720962E53; Tue, 12 May 2020 14:46:53 +0200 (CEST)
Message-ID: <20200512124058.833263033@infradead.org>
User-Agent: quilt/0.66
Date: Tue, 12 May 2020 14:40:58 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Will Deacon <will@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Leo Yan <leo.yan@linaro.org>
Subject: [PATCH 0/5] arm64: perf: Proper cap_user_time* support
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
Cc: alexander.shishkin@linux.intel.com, daniel.lezcano@linaro.org,
 sboyd@codeaurora.org, linux-kernel@vger.kernel.org, acme@kernel.org,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>, mingo@redhat.com,
 john.stultz@linaro.org, tglx@linutronix.de, jolsa@redhat.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Prompted by Leo's patches, here a series that corrects the arm64 perf cap_user_time situation.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
