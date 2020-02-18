Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58985163084
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 20:46:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1tZnKdpe8oTehxdEsunC/YbOfHSjTJIRFIefHFjwGKQ=; b=WHxUz4PrevkPIo
	eZitn8N5J+RFdW/osZr9CJh2DI+lZEmIZIkGreMhR6PebVNEyyGD4FVk7vVz/Wk3Kiz4MK1+SUGcW
	h2uvDNfAPvC5AEESPCwu0pUGLkkHqR0FpajeLYSVkVlllN/7lUkca6KqPf1AdbJ/TkYI8Kqdwieaq
	wnz5Z6uKwm9GuLwPcemKyqKiAIO5oTzeTXUVrIwxFQe0x98z5NloDoNap122Tdxf9mEZ89D7uP0Sr
	YWiTSPLpbyGqpc6AorXQDJigIWV/B9ngeYAidpFoXgTi6MAAfJ730o3Wj41boutHWPWpPejpUgXVS
	RDeJQE1mDRPUuLyR8Etg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j48pN-0001T2-68; Tue, 18 Feb 2020 19:46:41 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j48pA-0001QH-Lk
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 19:46:30 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 11:46:27 -0800
X-IronPort-AV: E=Sophos;i="5.70,457,1574150400"; d="scan'208";a="315164534"
Received: from agluck-desk2.sc.intel.com (HELO
 agluck-desk2.amr.corp.intel.com) ([10.3.52.68])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 11:46:26 -0800
Date: Tue, 18 Feb 2020 11:46:25 -0800
From: "Luck, Tony" <tony.luck@intel.com>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH 00/18] efi: clean up contents of struct efi
Message-ID: <20200218194625.GA25459@agluck-desk2.amr.corp.intel.com>
References: <20200216182334.8121-1-ardb@kernel.org>
 <CAKv+Gu-4N6B0LPL1fn5C2EAh9y3ECZ=mSi92p0AyJf67mJoWmw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu-4N6B0LPL1fn5C2EAh9y3ECZ=mSi92p0AyJf67mJoWmw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_114628_764075_7D038184 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "Yu, Fenghua" <fenghua.yu@intel.com>, linux-efi <linux-efi@vger.kernel.org>,
 the arch/x86 maintainers <x86@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Arvind Sankar <nivedita@alum.mit.edu>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Feb 16, 2020 at 07:31:58PM +0100, Ard Biesheuvel wrote:
> (+ Tony and Fenghua)
> 
> Apologies to the IA64 maintainers for forgetting to cc you.

No worries.
> 
> The whole series can be found at
> https://lore.kernel.org/linux-efi/20200216182334.8121-1-ardb@kernel.org/
> 
> Please let me know if you need me to resend with the missing cc's added.

Thanks to get-lore-mbox.py I don't. It picked up all the pieces.

It all builds and boots with no issues.

Looks like a nice cleanup.

Tested-by: Tony Luck <tony.luck@intel.com> # arch/ia64

-Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
