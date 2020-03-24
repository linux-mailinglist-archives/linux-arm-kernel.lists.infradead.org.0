Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F47D19182D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 18:52:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I/1U6I5OsGHoKuGUrMaggv8dkufCJZj5hv0a6is7fLQ=; b=gmDb2s2n6bkWRM
	PY698U2K+/DdGt3WQxNviIzC7ESTqGHf99Ld1IHN3K5l/W9UCb3J6K7E53cMTPdvEWvi9aV44J1O7
	HSz+mtmS3j6DXKMtFruy8S1ct6MrbnlN8jrEVW360oXAKsAQJQUN5lGFfyXzzrKeIvsbxi6uabi3O
	lRrHbb8NpKZwxPAsfhqLYaNyTr3bBHS0jsxsmTX7ILScwf5x6lyghz3zDYKXzNjcDV3qkA+sPetzx
	nJCxP9GOMoTOsyZhHrDa8p5rDw/Op3YCPTheju2WS+8m1J1drPX19hlm9OYO+Q+QOBU93P1JAQ4um
	unJIpTE/VEeD1F52PNFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGnj7-0005Xe-M6; Tue, 24 Mar 2020 17:52:33 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGniy-0005XM-DU
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 17:52:25 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 90F9381CA;
 Tue, 24 Mar 2020 17:53:10 +0000 (UTC)
Date: Tue, 24 Mar 2020 10:52:20 -0700
From: Tony Lindgren <tony@atomide.com>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH] serial: 8250_omap: Fix sleeping function called from
 invalid context during probe
Message-ID: <20200324175220.GD37466@atomide.com>
References: <20200320125200.6772-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200320125200.6772-1-peter.ujfalusi@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_105224_494463_B8C5A12F 
X-CRM114-Status: UNSURE (   5.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: vigneshr@ti.com, gregkh@linuxfoundation.org, nsekhar@ti.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, tomi.valkeinen@ti.com,
 linux-serial@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Peter Ujfalusi <peter.ujfalusi@ti.com> [200320 12:52]:
> To fix the bug we need to first call pm_runtime_enable() prior to any
> pm_runtime calls.

Acked-by: Tony Lindgren <tony@atomide.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
