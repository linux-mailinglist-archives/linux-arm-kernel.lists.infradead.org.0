Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E05909AA4B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 10:27:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=goDHKNPUtKelhzeamqI2q7sAF62I1KFC3iNcnRplxm8=; b=rSrrAZxIsglgJU5fKdCavsThM
	/TCm/BBaQBVefzaW4cNJ36MscYXJ/eWXCI6M7EnHi+ev7kE0G6Vc565ya6UbRGoqiVptbKwF2bSk4
	0ptb68LaUiM0z7Q80p9Gw5RQKOdtUgrhV+vC+pR1d7DBLh2b7W5xjpbkkKw87b7NmIZgcOdOzpoCn
	q18YLQB8P4r0R0jlkTA0RyViw7r/olFYWAFZ+zONm3GLii3GTnhg8dimpt14D12L37hBifhpgon9P
	8MTDSFuloCwN0zqdpoIdYtDFEBFntqMjwBT0oy4in8ciNOj/SMMDxXl0SSjLvFVkjzP4f4ulZbdjv
	/OmFcUhjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i14ui-0000Hy-6V; Fri, 23 Aug 2019 08:27:16 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i14uV-0000H2-CO; Fri, 23 Aug 2019 08:27:04 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Aug 2019 01:27:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,420,1559545200"; d="scan'208";a="203702966"
Received: from mattu-haswell.fi.intel.com (HELO [10.237.72.164])
 ([10.237.72.164])
 by fmsmga004.fm.intel.com with ESMTP; 23 Aug 2019 01:26:58 -0700
Subject: Re: [RESEND PATCH v2 2/2] usb: xhci-mtk: add an optional xhci_ck clock
To: Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Mathias Nyman <mathias.nyman@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh+dt@kernel.org>
References: <1566542425-20082-1-git-send-email-chunfeng.yun@mediatek.com>
 <1566542425-20082-2-git-send-email-chunfeng.yun@mediatek.com>
From: Mathias Nyman <mathias.nyman@linux.intel.com>
Message-ID: <e1e4d220-9540-2001-13aa-89ff8ce829f5@linux.intel.com>
Date: Fri, 23 Aug 2019 11:28:50 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1566542425-20082-2-git-send-email-chunfeng.yun@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_012703_459782_E5C37833 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ian Campbell <ijc+devicetree@hellion.org.uk>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23.8.2019 9.40, Chunfeng Yun wrote:
> Some SoCs may have an optional clock xhci_ck (125M or 200M), it
> usually uses the same PLL as sys_ck, so support it.
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>

Acked-by: Mathias Nyman <mathias.nyman@linux.intel.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
