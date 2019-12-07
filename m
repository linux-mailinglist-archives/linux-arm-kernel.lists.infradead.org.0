Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 745D9115DCE
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Dec 2019 18:39:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ujOfL2DtwYu9pCmV1HhhZffavLMX1l88vLzy4dv9F5o=; b=OTQZkyxWI0XzmS
	zcUzSaMJwm5XLyPOSF/5/vtnIsMZPJ4c5fbePh22LWGmGFbWWvSMSKPs3chfO85ViGae8ILcFyPAa
	y3XW6MP30ZBFc6KtnqdeUHBBRDmN6IcLCdASduRmr5RR0DjDTLK4mYjCeJ8ujz4G9JSosv6DWxPEv
	hLL0hSOytCqYN20FQXhH24pslgqVz3VLbHifkCSZL53SHjeIeY2byxAD0Ho3rwuj298hqwzVe4wP9
	LhrgxtLYWRYa1lZN8qP2exYqB8bk7J3R6KR1VrLr4E8++EO+Eh8y1mrib6lTbQGEaZG9ev3orUB/j
	ZdAG5SHpc3bhoCwGamxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ide3I-0003pV-0M; Sat, 07 Dec 2019 17:39:32 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ide37-0003oh-Qi
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Dec 2019 17:39:23 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why)
 by cheepnis.misterjones.org with esmtpsa (TLSv1.2:AES256-GCM-SHA384:256)
 (Exim 4.80) (envelope-from <maz@kernel.org>)
 id 1ide32-0008Ha-2c; Sat, 07 Dec 2019 18:39:16 +0100
Date: Sat, 7 Dec 2019 17:39:14 +0000
From: Marc Zyngier <maz@kernel.org>
To: Ray Jui <ray.jui@broadcom.com>
Subject: Re: [PATCH 0/2] Add iProc IDM device support
Message-ID: <20191207173914.353f768d@why>
In-Reply-To: <20191202233127.31160-1-ray.jui@broadcom.com>
References: <20191202233127.31160-1-ray.jui@broadcom.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: ray.jui@broadcom.com, robh+dt@kernel.org,
 mark.rutland@arm.com, devicetree@vger.kernel.org,
 rayagonda.kokatanur@broadcom.com, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_093922_013453_D33BAF18 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon,  2 Dec 2019 15:31:25 -0800
Ray Jui <ray.jui@broadcom.com> wrote:

> The Broadcom iProc IDM device allows control and monitoring of ASIC internal
> bus transactions. Most importantly, it can be configured to detect bus
> transaction timeout. In such case, critical information such as transaction
> address that caused the error, bus master ID of the transaction that caused
> the error, and etc., are made available from the IDM device.

This seems to have many of the features of an EDAC device reporting
uncorrectable errors.

Is there any reason why it is not implemented as such?

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
