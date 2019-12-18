Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F369A124A08
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 15:46:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6WPGmPog+7ANeq0E3NzuGaco51QTRJw8g2OUWtfim/g=; b=NbcarsyqNkL7a3
	FXyVi0x9vtQY6zeAg14PDGijJVeaj9yFtuqouqTlbd7m0x8jnLhqeRhDVOM3J6JtzNIyQ0mzZJdEc
	id50SADB2qcDwcknx6xS2FQui8QXHyCfBaX0mvCCuU/VBLwbXgcsvWFl9WnMCcRbrVmA7yCrrKzJn
	UtGXAEkIMafY1KuPw0sCYFQzJdVn2C/VoypQAgAATcafMPQkUwkhuQzR1RqSlC5ysmghs/FnvyWr8
	xHd/rJKcKCkiar7LChzM1AxNBEyAwqjEbVYY5BxZPu4zjqsy7J3sxA0dQ0gVp5rA3Cy+323/gwESX
	wNfKQYMSX5wvm67Zo/oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihaae-0005tD-Pe; Wed, 18 Dec 2019 14:46:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihaaU-0005sL-5K
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 14:46:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 88F2430E;
 Wed, 18 Dec 2019 06:46:04 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DDF753F719;
 Wed, 18 Dec 2019 06:46:02 -0800 (PST)
Date: Wed, 18 Dec 2019 14:45:55 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Jolly Shah <jolly.shah@xilinx.com>
Subject: Re: [PATCH 0/5] firmware: xilinx: Add xilinx specific sysfs interface
Message-ID: <20191218144555.GA12525@bogus>
References: <1575502159-11327-1-git-send-email-jolly.shah@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1575502159-11327-1-git-send-email-jolly.shah@xilinx.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_064606_246126_69E1A308 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: keescook@chromium.org, ard.biesheuvel@linaro.org, matt@codeblueprint.co.uk,
 gregkh@linuxfoundation.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com,
 linux-kernel@vger.kernel.org, rajanv@xilinx.com,
 Sudeep Holla <sudeep.holla@arm.com>, mingo@kernel.org,
 linux-arm-kernel@lists.infradead.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 04, 2019 at 03:29:14PM -0800, Jolly Shah wrote:
> This patch series adds xilinx specific sysfs interface for below
> purposes:
> - Register access
> - Set shutdown scope
> - Set boot health status bit

This series defeats the whole abstraction EEMI provides. By providing
direct register accesses, you are allowing user-space to do whatever it
wants. I had NACKed this idea before. Has anything changed ?

If you need it for testing firmware, better put them in debugfs which is
off on production builds.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
