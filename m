Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 201FFE5020
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 17:28:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vYdEDeID+ziV3OwOL0Tfz47htCCY1247UPTAZMP3pNo=; b=JRlw3WQxl0KhrM
	r1ZRDBlejR6AWHkaoypKBsubNr4XWUkQkjhLFEoex3I9+pfCa+FDBc5fdaHJAj1iLHgGxx5AHZobs
	6RivuUIxi/9tq8AJn4c4ob/XZVY+ZTvcmVCwEpjVTpvZCJuBqoNDxNEQCjGzIUZk0evIDuxcfFL8z
	zY6m4RSLI3D6V83PAAFXxsRI5sVoHBjS6+KmdWo0SaoSxRWbxBw7JYx2W3GidEzL+27wcGcc6dOFP
	e2e+8K5CApOxKcYXLmL5tcVLUJHvUl4GBs1pMmoElDROlKHf/tWN38h8wxJQbplPyPMtE8b7EEUGf
	PqjpQqiswKBy54oAnLhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO1VM-0001WN-L8; Fri, 25 Oct 2019 15:27:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO1V8-0001Vy-8M
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 15:27:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2665C328;
 Fri, 25 Oct 2019 08:27:41 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 596103F71A; Fri, 25 Oct 2019 08:27:39 -0700 (PDT)
Date: Fri, 25 Oct 2019 16:27:37 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Yunfeng Ye <yeyunfeng@huawei.com>
Subject: Re: [PATCH v6] arm64: psci: Reduce the waiting time for
 cpu_psci_cpu_kill()
Message-ID: <20191025152737.GN3328@arrakis.emea.arm.com>
References: <0842431c-fa15-2ba1-ae6d-c1fea157941f@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0842431c-fa15-2ba1-ae6d-c1fea157941f@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_082742_340370_382FB4F4 
X-CRM114-Status: GOOD (  13.26  )
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
Cc: kstewart@linuxfoundation.org, mark.rutland@arm.com,
 lorenzo.pieralisi@arm.com, hushiyuan@huawei.com, gregkh@linuxfoundation.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linfeilong@huawei.com, David.Laight@ACULAB.COM, sudeep.holla@arm.com,
 tglx@linutronix.de, wuyun.wu@huawei.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 21, 2019 at 07:31:21PM +0800, Yunfeng Ye wrote:
> In cases like suspend-to-disk and suspend-to-ram, a large number of CPU
> cores need to be shut down. At present, the CPU hotplug operation is
> serialised, and the CPU cores can only be shut down one by one. In this
> process, if PSCI affinity_info() does not return LEVEL_OFF quickly,
> cpu_psci_cpu_kill() needs to wait for 10ms. If hundreds of CPU cores
> need to be shut down, it will take a long time.
> 
> Normally, there is no need to wait 10ms in cpu_psci_cpu_kill(). So
> change the wait interval from 10 ms to max 1 ms and use usleep_range()
> instead of msleep() for more accurate timer.
> 
> In addition, reducing the time interval will increase the messages
> output, so remove the "Retry ..." message, instead, track time and
> output to the the sucessful message.
> 
> Signed-off-by: Yunfeng Ye <yeyunfeng@huawei.com>
> Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>

Queued for 5.5. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
