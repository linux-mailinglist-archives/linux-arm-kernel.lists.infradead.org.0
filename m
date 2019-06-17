Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1414488FC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 18:31:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7/f1bWGjGNSmSt7U+bWBBfoUK4qcxWAnrFUlUJI0XHk=; b=O+qMr2q2vX/Z6M
	DTYsweTVo9gmSqiVTSuwIMzcqgf741RFOYFwZZvcRDO4HHH8uXafhzOpyMC9Z59nAu0XDV8KTfH9W
	E3HHB5RREjZ1PLkVDhdGDZweHfPArP3cB0Sne36RodPV83lkxT9VJrWfqfHOIQd3/Kv0eGO930qUg
	DnroKg5yLdpe0GWC6JnDzc8DAd4Za4kV8Un1dga6g7Ic8L9oxF4JIQwc1ALbdaK4tG8u84Gl4a/eG
	vlGUB+BIhlYlPG1DPCvD00IyD+d1GRJDquxalNw6r9SsOSXKp+iiJviL6qTkfXjdTOUblXm1fX4SK
	9sw5Cz4yL//ilsXnEYMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcuXZ-0004rj-I8; Mon, 17 Jun 2019 16:31:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hcuWv-0004Pf-Tu
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 16:30:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8DC2B28;
 Mon, 17 Jun 2019 09:30:48 -0700 (PDT)
Received: from [10.1.197.45] (e112298-lin.cambridge.arm.com [10.1.197.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3B6313F718;
 Mon, 17 Jun 2019 09:30:45 -0700 (PDT)
Subject: Re: [PATCH v4.4 00/45] V4.4 backport of arm64 Spectre patches
To: Viresh Kumar <viresh.kumar@linaro.org>,
 linux-arm-kernel@lists.infradead.org
References: <cover.1560480942.git.viresh.kumar@linaro.org>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <c1589c0b-ce49-742e-f722-4e2dd11a40d7@arm.com>
Date: Mon, 17 Jun 2019 17:30:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <cover.1560480942.git.viresh.kumar@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_093050_093379_CC53451C 
X-CRM114-Status: GOOD (  11.75  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 stable@vger.kernel.org, mark.brown@arm.com,
 Russell King <rmk+kernel@arm.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Viresh,

After discussing it internally, we think it would be better to drop the
patches related to KVM for now. In 4.4 KVM Arm not very mature and has
changed a lot since then.

If someone wants to backport the mitigations for KVM in 4.4, it should
be done as a separate series. The series is big enough as it is. For
now, the main point is to focus on the kernel itself.

Sorry you already went through some trouble to backport those. But
dropping will simply review and testing, and as mentioned, 4.4 KVM on
Arm is probably not worth the hassle.

Cheers,

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
