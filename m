Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0212096294
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 16:40:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HDKgEj1oJJmC1mXs4yDRoRnpYZB9T8JR5lD7PaaAuvQ=; b=QM7SAC6fz9bf6V
	lhkglkUe7loceWSLScHHPd1WEVon/aAJXMr+f07Pkdi0Nb0SLBV7oqatmm++4iPXj+WZw0A3Fy3/Y
	WXtMS+izMA/OwbQ0toZYihcii+I1+n21HpYdqaHmFfKVB9Q9Xavyddjx8Vd4QJPV/foLSGEpwmj5f
	Ha6hG4ny9fjGdhb3By0/NHFPTqRlevUScSBVeDLq0X1OctoDxWinuJ3DPsOI+BSPQjuPxMAF2KHNw
	3I6bDJ0rc3CpRtc9s5G3UwxOQLpiiIMClU2zszoVBRGFJDlFYJthCjL2sN9rEfaIbGW+M3N8kEAYi
	N8UYffJQjISqwUUqUxFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i05Ih-00022N-LQ; Tue, 20 Aug 2019 14:39:55 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i05IV-00021i-QJ
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 14:39:45 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 6BA88205F8;
 Tue, 20 Aug 2019 16:39:42 +0200 (CEST)
Received: from [192.168.108.37] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 528BC20554;
 Tue, 20 Aug 2019 16:39:42 +0200 (CEST)
Subject: Re: [PATCH] ARM: dts: vf610-zii-cfu1: Slow I2C0 down to 100kHz
To: Andrey Smirnov <andrew.smirnov@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
References: <20190820030804.8892-1-andrew.smirnov@gmail.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <d735e851-cddf-f069-37f1-d27b013f3213@free.fr>
Date: Tue, 20 Aug 2019 16:39:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190820030804.8892-1-andrew.smirnov@gmail.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Tue Aug 20 16:39:42 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_073944_000127_7C5D0AED 
X-CRM114-Status: UNSURE (   6.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20/08/2019 05:08, Andrey Smirnov wrote:

> Fiber-optic module attached to the bus is only rated to work at
> 100kHz, so drop the bus frequncy to accomodate that.

s/100kHz/100 kHz
s/frequncy/frequency
s/accomodate/accommodate

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
