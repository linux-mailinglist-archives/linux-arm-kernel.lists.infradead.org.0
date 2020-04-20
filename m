Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 911F31B1420
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 20:14:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=q2zrehqNm6uOCT4MeFx21piX0BdeMoJ8q3xPHCSzp1Q=; b=tYwS/aVn6mui/g8mqdSaTsmKot
	RXdFU0uXGI1LvYCb2cOzPaSJgEtP6WJiD3arPJyz1U1Co4Nzdy5pRDqYeIenf2Y+3gjFjK/bpRGQ0
	f8ZwkBgYhSKZdONhtPNyGL0hsb7qi32zlC1PXcr1Td0K5VGgyORKRVYZl9X2S3QCDiScOu6Sx5FyF
	6RokI3Ks5jqczbWwhwDv3Pvv/4pMksWpsNbHzudtAJNfO5ZzZuTuGVS8LnrNqiJh1J8OCRvcgdj2P
	2VmGzJWQ3/i0loKnFtyz7nTqti0daNLEZaINuyozR6fE3XXQ1Femk7iGl8A/jwEavqzgSFuPZLN+b
	W4GsIbLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQavk-0005rJ-Ef; Mon, 20 Apr 2020 18:14:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQavB-0005UJ-TO
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 18:13:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 846751FB;
 Mon, 20 Apr 2020 11:13:28 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id C23183F73D;
 Mon, 20 Apr 2020 11:13:27 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org, Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH] firmware: arm_scmi: Fix return error code in
 smc_send_message
Date: Mon, 20 Apr 2020 19:13:20 +0100
Message-Id: <158740209474.29103.883770187920988162.b4-ty@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200417103232.6896-1-sudeep.holla@arm.com>
References: <20200417103232.6896-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_111330_023814_779FC58E 
X-CRM114-Status: UNSURE (   7.71  )
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
Cc: Peng Fan <peng.fan@nxp.com>, Etienne Carriere <etienne.carriere@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 17 Apr 2020 11:32:32 +0100, Sudeep Holla wrote:
> SMCCC can return one of the 2 return error code here: NOT_SUPPORTED(-1)
> and INVALID_PARAMETER(-3). Map them to appropriate Linux error codes
> namely -EOPNOTSUPP and -EINVAL respectively. -EINVAL is also returned
> for any other return values.
> 
> Link: https://lore.kernel.org/r/20200417103232.6896-1-sudeep.holla@arm.com
> Cc: Peng Fan <peng.fan@nxp.com>
> Reported-by: Etienne Carriere <etienne.carriere@linaro.org>
> Reviewed-by: Peng Fan <peng.fan@nxp.com>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> 
> [...]

Applied!

[1/1] firmware: arm_scmi: Fix return error code in smc_send_message
      commit: f7199cf489027ae38a9a82312d13025f7aefa0b8

--
Regards,
Sudeep


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
