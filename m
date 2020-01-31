Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 116CA14EF91
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 16:29:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zitgf2vagEMeC/Vq+dB91DK+O6MYv5kK05+y0H7F2rM=; b=mC7p8O/W5b6X0G
	DVHZr4JxUlC2XsyzQFcWrZZL8Vu5yUQlEjkCNydlk0KLPUIqcZqlk31SjFgA6waHxU2+a7L/tCh1n
	/o+f9npphj/9l0sMt5L/rpvRlbFt0HGgGxmTrLH+KZy+u8nSCuI0tsYDdpLhLJfVF/CBCcv9ODg0L
	3tlINA13r4I26BBm5cOjH1CKvecPu5GAKQuJv/WoCYoTC5glfE01FNA9iHrNSAUGn9lsHUfj2+z5k
	k0rFBK2LenzCl+TY0SzZKYhiFXPZYITLbd5QwnpIo0FpvrZbVhcGpj18nExZrRh1z3j3uyRv7y0WF
	LFLrG9N7LWMmYLKu4xug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixYEO-0007P7-4e; Fri, 31 Jan 2020 15:29:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixYEE-0007OC-MQ
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 15:29:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BEA20FEC;
 Fri, 31 Jan 2020 07:29:03 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6BF713F67D;
 Fri, 31 Jan 2020 07:29:02 -0800 (PST)
Date: Fri, 31 Jan 2020 15:28:57 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH V6 0/3] firmware: arm_scmi: Make scmi core independent of
 the transport type
Message-ID: <20200131152857.GA54178@bogus>
References: <cover.1580448239.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1580448239.git.viresh.kumar@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_072906_777147_72B3C79E 
X-CRM114-Status: UNSURE (   8.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: peng.fan@nxp.com, arnd@arndb.de, jassisinghbrar@gmail.com,
 linux-kernel@vger.kernel.org, peter.hilber@opensynergy.com,
 linux-arm-kernel@lists.infradead.org, Sudeep Holla <sudeep.holla@arm.com>,
 cristian.marussi@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 31, 2020 at 10:58:10AM +0530, Viresh Kumar wrote:
> Hello,
>
> This patchset makes the scmi core (driver.c) independent of mailbox
> transport.
>

This version looks all good to me. I will apply for v5.7 once the merge
window is closed and v5.6-rc1 is tagged. Thanks for doing this.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
