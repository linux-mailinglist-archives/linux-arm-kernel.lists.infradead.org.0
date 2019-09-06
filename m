Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D5EABC0B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 17:17:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/UBTPXf/DGb1vJQRQYUaTpc1Bz0yASNw8iQlTBqs6R4=; b=j+5fl7+g8RMqPg
	0zbAVkybCX1MKyye2WvPAS5w+LvqK9/i+25xAC3u7X2ZUEuY7sngldGoa2UL6ca7cUkmDzwBcdnng
	Kv39qzgVsDKkwaCYbjXHFpma4AejW4RtVarnhQXlLFOY/zGBOqPtL3cGvCe+PBlMK3+FLhGqLcMpr
	jZt04Yg7dwT4Oh61b88ImAz5Rg/+k3zP+TtltU0wC2ePmx5hUu2xZZ40MUtwHoJGnepCL5To+wgUg
	81m/zoDc/sJd4DDgHVYy35ZDDHdy5CD/QH9XQYqkpDanLcmU9sXJZq3mlIth5J271ZpK46JBMHOfI
	//jH4sUdXjzwySgbOaoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Fzb-0002Sc-6l; Fri, 06 Sep 2019 15:17:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i6FzJ-0002R6-Mf; Fri, 06 Sep 2019 15:17:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1486828;
 Fri,  6 Sep 2019 08:17:23 -0700 (PDT)
Received: from [10.1.196.105] (unknown [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 11E133F59C;
 Fri,  6 Sep 2019 08:17:20 -0700 (PDT)
From: James Morse <james.morse@arm.com>
Subject: Re: [PATCH v3 01/17] kexec: quiet down kexec reboot
To: Pavel Tatashin <pasha.tatashin@soleen.com>
References: <20190821183204.23576-1-pasha.tatashin@soleen.com>
 <20190821183204.23576-2-pasha.tatashin@soleen.com>
Message-ID: <0f83b70e-2f8f-aa05-84d8-41290679003b@arm.com>
Date: Fri, 6 Sep 2019 16:17:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190821183204.23576-2-pasha.tatashin@soleen.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_081725_789140_E9D472E7 
X-CRM114-Status: GOOD (  10.44  )
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
Cc: sashal@kernel.org, mark.rutland@arm.com, vladimir.murzin@arm.com,
 corbet@lwn.net, marc.zyngier@arm.com, catalin.marinas@arm.com,
 bhsharma@redhat.com, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 jmorris@namei.org, linux-mm@kvack.org, ebiederm@xmission.com,
 matthias.bgg@gmail.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pavel,

On 21/08/2019 19:31, Pavel Tatashin wrote:
> Here is a regular kexec command sequence and output:
> =====
> $ kexec --reuse-cmdline -i --load Image
> $ kexec -e
> [  161.342002] kexec_core: Starting new kernel
> 
> Welcome to Buildroot
> buildroot login:
> =====
> 
> Even when "quiet" kernel parameter is specified, "kexec_core: Starting
> new kernel" is printed.
> 
> This message has  KERN_EMERG level, but there is no emergency, it is a
> normal kexec operation, so quiet it down to appropriate KERN_NOTICE.

As this doesn't have a dependency with the rest of the series, you may want to post it
independently so it can be picked up independently.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
