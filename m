Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 971B71BE880
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 22:22:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZPU2q6OKwcrRre54N5/Djri0xPICdhVoYmr2F8fqzOw=; b=AuZ30Ik3reju4gSZGGoUOeqUn
	3bvuDqAEcKlkYJ+6B8THF8zX2NHbr97/wzAFkorYn1wfv7j4oDqnECc2fe5OfRn0aWA4p1P6QGx2U
	ydWXJhBNcErRoait1/NPYiignJtXRXocUmKY5LCQRYoWVxoL/rUqa27AgupBLP4qRV6x9ojHOzedp
	Jja+qmyUAKuUHPXgIzCLTS/b/+DLqOnWQ8JXC2+NUOddDLPmemhEkTz+IO4EIVWlwSWwGB2/LvHLY
	/D5cl81AKv3tt7+234DT5otEqH9Xt9iC6ZCcuor3Xg7dxvqRUfp9RbKMF1T7xmPPWuPWwshe8v0Hs
	YAASUqzGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTtDi-00050l-2Z; Wed, 29 Apr 2020 20:22:14 +0000
Received: from vern.gendns.com ([98.142.107.122])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTtDT-0004Rl-VM
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 20:22:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lechnology.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Y8MYBDFCYPC4U8pxIx3v4pRrJy5sBdcHs+qbfFFaKhU=; b=HTOA934A6qy/XJhCXv7JieZkm9
 VDL/VwsXQXfZKMgebwhoX79DwCe1dEyeNLemwXBIk8tM5mFwdDDYFvPECAQCzz75BADr6511h+kZm
 b8xC6rq+M3ApF0SyHRlkvEHJekU7J0f4DZ8eUQvE4QuZoVDF0ga3EBnACXPC9HY9MiFJVOENmdDtj
 V6tmcJNN1od8LGMdW7BZHbnD6DX6UdWZuMsTjoiZDME+RGH4YX2Cz59VwIWX2x2edHepq3assRPm5
 7v+9TI4QaC6GTRJwyxxr7pBa0wkQ6YQmJFqwDC/WN7rMHSh9ev0BsCPqOzmnf/buNsVuHQbXNNHod
 d6QWNSXQ==;
Received: from 108-198-5-147.lightspeed.okcbok.sbcglobal.net
 ([108.198.5.147]:40316 helo=[192.168.0.134])
 by vern.gendns.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <david@lechnology.com>)
 id 1jTtCd-0005BN-Mc; Wed, 29 Apr 2020 16:21:07 -0400
Subject: Re: [PATCH 0/4] Introduce the Counter character device interface
To: William Breathitt Gray <vilhelm.gray@gmail.com>, jic23@kernel.org
References: <cover.1588176662.git.vilhelm.gray@gmail.com>
From: David Lechner <david@lechnology.com>
Message-ID: <a6402ade-648d-6e49-85cd-a7fd7f58fd1d@lechnology.com>
Date: Wed, 29 Apr 2020 15:21:05 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <cover.1588176662.git.vilhelm.gray@gmail.com>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - vern.gendns.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lechnology.com
X-Get-Message-Sender-Via: vern.gendns.com: authenticated_id:
 davidmain+lechnology.com/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: vern.gendns.com: davidmain@lechnology.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_132200_175838_FB073444 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kamel.bouhara@bootlin.com, gwendal@chromium.org, alexandre.torgue@st.com,
 felipe.balbi@linux.intel.com, linux-iio@vger.kernel.org, syednwaris@gmail.com,
 alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, patrick.havelange@essensium.com,
 fabrice.gasnier@st.com, fabien.lahoudere@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/29/20 1:11 PM, William Breathitt Gray wrote:
> Over the past couple years we have noticed some shortcomings with the
> Counter sysfs interface. Although useful in the majority of situations,
> there are certain use-cases where interacting through sysfs attributes
> can become cumbersome and inefficient. A desire to support more advanced
> functionality such as timestamps, multi-axis positioning tables, and
> other such latency-sensitive applications, has motivated a reevaluation
> of the Counter subsystem. I believe a character device interface will be
> helpful for this more niche area of counter device use.

Nice to see some progress being made. :-)

> 
> Interaction with Counter character devices occurs via ioctl commands.
> This allows userspace applications to access and set counter data using
> native C datatypes rather than working through string translations.

For most aspects of the counter subsystem, this is not an issue since
configuring a counter is not a time-sensitive operation. Instead of
ioctls, I was expecting to just be able to read the character device
and receive counter events or poll to wait for events similar to how
the input subsystem works or how buffers work in the iio subsystem.

I'm afraid I don't really see much use in having ioctls that do
exactly what sysfs already does. And my intuition tells me that the
extra work needed to maintain it will probably cost more than any
benefit gained. (Maybe other have a different experience that leads
to a different conclusion?)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
