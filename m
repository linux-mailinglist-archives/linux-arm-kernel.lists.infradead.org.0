Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A66576F5F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 18:50:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zoRYkXdWBtB/hdNECgHY/sn3DEjyGvSkNvSe6iZX6iA=; b=Jt+5ztPS7FFuKJ
	YfTBkq+PNTVUJe6pBwTPAdsQI0YjznC3nO7kmHT7q9PoThMqqYpB4PvhPjfzFaoYiSmBArvTVRx7z
	L/qVtthtki35C7G7Bt1+eI6r5qibHaczfWDhT7PkKyec+Eyr+F0ghqoBCI9ui3TWdbVHeCIlPShtX
	WPSdzyZhVswQC52ycc2oHyGThF5eqVBiHK/GaCgl3QbGkPWk563lPuHXT3XbyJ3kQI82Yeri7QBnv
	YiSggtOD0QCADSf8n0SWB9+WRo9H8+lskbXTYIBidNZe054zaPlbHIWaKLOtUJGosxe9DX/OV0LpX
	cxVb5OGcNE2KM/s0/tKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr3Pt-0000AX-PD; Fri, 26 Jul 2019 16:50:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hr3Pc-00009T-AO
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 16:49:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E0946337;
 Fri, 26 Jul 2019 09:49:43 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1ABA33F71F;
 Fri, 26 Jul 2019 09:49:42 -0700 (PDT)
Subject: Re: [PATCH] arm64/kexec: Use consistent convention of initializing
 'kxec_buf.mem' with KEXEC_BUF_MEM_UNKNOWN
To: Bhupesh Sharma <bhsharma@redhat.com>
References: <1562846252-7441-1-git-send-email-bhsharma@redhat.com>
From: James Morse <james.morse@arm.com>
Message-ID: <839b08dc-36ae-fb94-0c0a-00e6ee8a5790@arm.com>
Date: Fri, 26 Jul 2019 17:49:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <1562846252-7441-1-git-send-email-bhsharma@redhat.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_094944_404064_4556864B 
X-CRM114-Status: UNSURE (   9.55  )
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
Cc: takahiro.akashi@linaro.org, bhupesh.linux@gmail.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bhupesh,

On 11/07/2019 12:57, Bhupesh Sharma wrote:
> With commit b6664ba42f14 ("s390, kexec_file: drop arch_kexec_mem_walk()"),
> we introduced the KEXEC_BUF_MEM_UNKNOWN macro. If kexec_buf.mem is set
> to this value, kexec_locate_mem_hole() will try to allocate free memory.
> 
> While other arch(s) like s390 and x86_64 already use this macro to
> initialize kexec_buf.mem with, arm64 uses an equivalent value of 0.
> Replace it with KEXEC_BUF_MEM_UNKNOWN, to keep the convention of
> initializing 'kxec_buf.mem' consistent across various archs.

Reviewed-by: James Morse <james.morse@arm.com>


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
