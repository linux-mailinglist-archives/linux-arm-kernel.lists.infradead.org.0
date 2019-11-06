Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18513F13BC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 11:19:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YhRldontKgg93/nTrGIi7xSYpk9YFyIKGa61YJ3bZ/4=; b=VumhQ9FGu9ns6lbGGHE4unKIA
	3Wix0owrsN5SK3bGI56NuFNJX8aoTcT/M100ppAYtTmIHauqahMuI0Fue+GWlhuxHa9dy4vTJfZGr
	NIeLnrEN+zKRKaOv6jg9OX9TAc20WfqqChLARoh1QS4yB0x4+2flmD9Jv+mgzh7/EIYK2WTlvR0sh
	kbdnj9ab9/HEiz4+z6MEkgO5tjaTo3fmYgcfaPU8H+oCe0Nf2RELGTKBC2Toxe431JjrhZaHLeVIS
	RGKbiW16iQdmJ91SQegYR54DJ3QnOJPOJqkRrA64y8t3GNy1IPdkF68xckbxAfGFkapJENyq3Umyj
	gyJAQO/Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSIPL-0006yX-If; Wed, 06 Nov 2019 10:19:23 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSIPC-0006xy-AR
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 10:19:17 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iSIP7-0007q5-Ff; Wed, 06 Nov 2019 11:19:09 +0100
To: Michael Kelley <mikelley@microsoft.com>
Subject: Re: [PATCH v5 2/8] arm64: hyperv: Add hypercall and register access
 functions
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Wed, 06 Nov 2019 11:28:30 +0109
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <1570129355-16005-3-git-send-email-mikelley@microsoft.com>
References: <1570129355-16005-1-git-send-email-mikelley@microsoft.com>
 <1570129355-16005-3-git-send-email-mikelley@microsoft.com>
Message-ID: <8cdc86e5bcf861c74069e0d349910c94@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: mikelley@microsoft.com, will@kernel.org,
 catalin.marinas@arm.com, mark.rutland@arm.com,
 linux-arm-kernel@lists.infradead.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, linux-hyperv@vger.kernel.org,
 devel@linuxdriverproject.org, olaf@aepfle.de, apw@canonical.com,
 vkuznets@redhat.com, jasowang@redhat.com, marcelo.cerri@canonical.com,
 kys@microsoft.com, sunilmut@microsoft.com, boqun.feng@gmail.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_021916_070655_F49C1145 
X-CRM114-Status: UNSURE (   7.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 BUG6152_INVALID_DATE_TZ_ABSURD No description available.
 0.6 INVALID_DATE_TZ_ABSURD Invalid Date: header (timezone does not
 exist)
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: mark.rutland@arm.com, linux-hyperv@vger.kernel.org,
 "boqun.feng" <boqun.feng@gmail.com>, catalin.marinas@arm.com,
 jasowang@redhat.com, linux-kernel@vger.kernel.org, marcelo.cerri@canonical.com,
 olaf@aepfle.de, gregkh@linuxfoundation.org, apw@canonical.com,
 devel@linuxdriverproject.org, vkuznets <vkuznets@redhat.com>,
 KY Srinivasan <kys@microsoft.com>, will@kernel.org,
 Sunil Muthuswamy <sunilmut@microsoft.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-03 20:12, Michael Kelley wrote:
> Add ARM64-specific code to make Hyper-V hypercalls and to
> access virtual processor synthetic registers via hypercalls.
> Hypercalls use a Hyper-V specific calling sequence with a non-zero
> immediate value per Section 2.9 of the SMC Calling Convention
> spec.

I find this "following the spec by actively sidestepping it" counter
productive. You (or rather the Hyper-V people) are reinventing the
wheel (of the slightly square variety) instead of using the standard
that the whole of the ARM ecosystem seems happy to take advantage
of.

I wonder what is the rational for this. If something doesn't quite
work for Hyper-V, I think we'd all like to know.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
