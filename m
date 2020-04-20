Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA611B122B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 18:47:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jLcT2EU/yIKlMphUBi2lv3Ao3qVCIf98N1nZRErEhi0=; b=KgUkk0lbZKc67aJOglNfxsiNSs
	UaNlLO4fuF/gZ45kyRcUG5kCeEQ0t3FwsS5xyXTus47SMgO6OOIkUSVhYx/ROoamcKfp/CFtmYws6
	zNuUaZzrbw/AJ8cRmKn3U5Dwu5qpECg9wTCPwMM+F/eGs/ZhctJekxVu3iLybD990VEZPsVfBRmNQ
	0H3xV1dRSM7PzR5lObmFNVUSBJrm44X8DluX5MaMBuLCJ0/XQwq+s+NHhw5bqpp1RvoZ00O36wdR4
	vfQX37Sj7Qwkyn9BqpbVcVUOFPOp1PHdL1AKBkg6T1jXnKLox7UiRJhDtPIJnil2INMmrqHYXsJSs
	EH3h1AvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQZZK-0000Bz-Ea; Mon, 20 Apr 2020 16:46:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQZZB-0000B7-DA
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 16:46:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AB80F31B;
 Mon, 20 Apr 2020 09:46:39 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E7C2C3F73D;
 Mon, 20 Apr 2020 09:46:38 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH 0/4] SCMI various fixes to Response handling code
Date: Mon, 20 Apr 2020 17:46:32 +0100
Message-Id: <158740098699.27780.4591369317008505933.b4-ty@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200420152315.21008-1-cristian.marussi@arm.com>
References: <20200420152315.21008-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_094641_487038_7D841F09 
X-CRM114-Status: UNSURE (   7.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Sudeep Holla <sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 20 Apr 2020 16:23:11 +0100, Cristian Marussi wrote:
> Hi
>
> This serie bring a few fixes related to handling of responses in some
> corner cases; renaming also .clear_notification() into clear_channel(),
> being indeed a method of general utility not strictly related to
> notifications. (and needed by these same fixes)
>
> [...]

Applied, thanks!

[1/4] firmware: arm_scmi: Rename .clear_notification() transport_ops
      commit: 87dff4e63cf2910f2e4a32d1cb3e4a1a25406eb7
[2/4] firmware: arm_scmi: Clear channel on reception of unexpected responses
      commit: b37f5cc8d243479d7572445010fb6c9a4dff6dc4
[3/4] firmware: arm_scmi: Clear channel for delayed responses
      commit: d04fb2b2ddefad7c00edd29c1ed40188ce8f12a2
[4/4] firmware: arm_scmi: Fix handling of unexpected delayed responses
      commit: c5bceb98ce0e4ae8057a386c5171a868213fe226

--
Regards,
Sudeep


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
