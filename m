Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7EF16FE9A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 13:03:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NeX/fIJy9k2LgElqc0DW6FJMTzH1CUffLRvZwWAbhOc=; b=IJXHS03y643wV1
	kCQ3nxrohLMQgZIq0Ois0O9NpX0hcoU7ftbM5cgRXTHRVc0n6hb9dNdhuN3Bat0ryofZejjnaYGIf
	DPBViin7K2iMlruVOD9JbzZvHGsSBp2kSVmU5pLOWbIGvwaR9TV9ILUhTaWjUAw8wnf5Q8xNmCXhG
	o31DZXj+QbgempRsqOHxPuGUso4eeXlet2xmVqTa1UKVcYkqfqEVCCPkX52PwmFXBITU9/QFDyCPV
	jVsW/uK1ITs4HZRyOx8m8FsrttNInDL+p0EszsZxjZxGwGBXxS7RBY3XRhb+Io7Lz6ryO1BXopScO
	eXr6wdvxCYEfFoKRibow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6vOw-0004fz-Fq; Wed, 26 Feb 2020 12:02:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6vOT-0004Pv-IM
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 12:02:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2B36D1FB;
 Wed, 26 Feb 2020 04:02:24 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B53393FA00;
 Wed, 26 Feb 2020 04:02:22 -0800 (PST)
Date: Wed, 26 Feb 2020 12:02:20 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Elliot Berman <eberman@codeaurora.org>
Subject: Re: [PATCH v2 2/3] firmware: psci: Add support for dt-supplied
 SYSTEM_RESET2 type
Message-ID: <20200226120220.GD8613@bogus>
References: <1582577858-12410-1-git-send-email-eberman@codeaurora.org>
 <1582577858-12410-3-git-send-email-eberman@codeaurora.org>
 <20200225110346.GF32784@bogus>
 <1d7fecf8-3a7f-57e5-5c13-73de89d52aa2@codeaurora.org>
 <20200226115912.GC8613@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200226115912.GC8613@bogus>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_040225_646207_1708703D 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Trilok Soni <tsoni@codeaurora.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 David Collins <collinsd@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Prasad Sodagudi <psodagud@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 26, 2020 at 11:59:12AM +0000, Sudeep Holla wrote:
> On Tue, Feb 25, 2020 at 05:37:53PM -0800, Elliot Berman wrote:
>
> [...]
>
> > Alternatively, I could rename the DT property to
> > "arm,psci-sys-reset2-vendor-param"
>
> Yes much better.
>

Just seconds after sending this I got a doubt as how is this being solved
with ACPI. How is vendor specific reset achieved on ACPI system especially
with other OSes ?

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
