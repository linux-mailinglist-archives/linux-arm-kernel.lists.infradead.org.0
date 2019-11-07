Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15502F2A49
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 10:10:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ati3c99u8ZEWlaujzGRKQeueKfnkA5nKZfzH6CJC5Vw=; b=WenmaUFlfllJTFFCLphopzogT
	lAwKQR9acce1vPuVorwIqwn9F4HOwoXysBhLDZcAY75IW3o0B1LbVCmQYdRUDdfD4SHH9WtYCAzqa
	mke5UiI3lDNaftTwC04bVrt4aezyC2pYpz4AFDlQiJVAjh4Dhu2VZYT8jJLYT8OFM+Ko/nD/ova6q
	/d7UOf9jThz3lSRJPhS5gqioPEZjNN5Vw90J/y68m5Y2AMnXQ5aIO5jObIo28wMfkCbAHVoiap0yk
	KKVjiTI5BnFThMnFQfH+ak5x8erk04IvYKi5grbgRlw+pctPNKFJAb5rey+svACtv9D8kHemqjw1C
	pXHPRLAQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSdoa-0007oF-Uq; Thu, 07 Nov 2019 09:10:52 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSdoO-0007ma-SW
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 09:10:42 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iSdoJ-0002WC-Ai; Thu, 07 Nov 2019 10:10:35 +0100
To: Michael Kelley <mikelley@microsoft.com>
Subject: RE: [PATCH v5 2/8] arm64: hyperv: Add hypercall and register access
 functions
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Thu, 07 Nov 2019 10:19:56 +0109
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <DM5PR21MB013730D09CB8BA7658DE57F7D7790@DM5PR21MB0137.namprd21.prod.outlook.com>
References: <1570129355-16005-1-git-send-email-mikelley@microsoft.com>
 <1570129355-16005-3-git-send-email-mikelley@microsoft.com>
 <8cdc86e5bcf861c74069e0d349910c94@www.loen.fr>
 <DM5PR21MB013730D09CB8BA7658DE57F7D7790@DM5PR21MB0137.namprd21.prod.outlook.com>
Message-ID: <c8403255bf874856c10f07189e27080a@www.loen.fr>
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
X-CRM114-CacheID: sfid-20191107_011041_064978_58E75DA7 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 BUG6152_INVALID_DATE_TZ_ABSURD No description available.
 0.6 INVALID_DATE_TZ_ABSURD Invalid Date: header (timezone does not
 exist)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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

On 2019-11-06 19:08, Michael Kelley wrote:
> From: Marc Zyngier <maz@kernel.org>  Sent: Wednesday, November 6,
> 2019 2:20 AM
>>
>> On 2019-10-03 20:12, Michael Kelley wrote:
>> > Add ARM64-specific code to make Hyper-V hypercalls and to
>> > access virtual processor synthetic registers via hypercalls.
>> > Hypercalls use a Hyper-V specific calling sequence with a non-zero
>> > immediate value per Section 2.9 of the SMC Calling Convention
>> > spec.
>>
>> I find this "following the spec by actively sidestepping it" counter
>> productive. You (or rather the Hyper-V people) are reinventing the
>> wheel (of the slightly square variety) instead of using the standard
>> that the whole of the ARM ecosystem seems happy to take advantage
>> of.
>>
>> I wonder what is the rational for this. If something doesn't quite
>> work for Hyper-V, I think we'd all like to know.
>>
>
> I'll go another round internally with the Hyper-V people on this
> topic and impress upon them the desire of the Linux community to
> have Hyper-V adopt the true spirit of the spec.  But I know they are
> fairly set in their approach at this point, regardless of the 
> technical
> merits or lack thereof.  Hyper-V is shipping and in use as a 
> commercial
> product on ARM64 hardware, which makes it harder to change.  I
> hope we can find a way to avoid a complete impasse ....

Hyper-V shipping with their own calling convention is fine by me. Linux
having to implement multiple calling conventions because the Hyper-V
folks refuse (for undisclosed reason) to adopt the standard isn't fine 
at
all.

HV can perfectly retain its interface for Windows or other things, but
please *at least* implement the standard interface on which all 
existing
operating systems rely.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
