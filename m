Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59B0A8C386
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 23:21:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V1xv9oFM2mpLHhFFQxfIoQL+OywtKhnyjs5aq8RiJsc=; b=GLFMv0Qbp/dFHR
	z6PghCJeo4FBi1x4Sbwq7JyTQZ7SxzTzpVTNC2/4krAbKIv01JX+xtE4iDMuqqXIEq4zPAP21K39B
	MLw/OMhnABEEFNDgbnaiO060C6TFVW/xpQJDXvEFizrnlnUrPmgNWbj8suSgBibSJ8a8sDrLfNuYK
	hNm2Ou8eELpmqYTn39nbQmZBqXFVuMjL/rcxI4jVCQmNSYIPqRyQnHst13jZAD1S+e0CadIUlbEaQ
	CMdJBmGqJ1Fg5k5PLmV59PPC6kN0UFfd0n3uqn3P0Jl55MMuUnnCD0pmZZTAydsESGNaPfMwY+jy5
	BRLY4uNAmOYWB8fZDHmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxeEL-00051X-Vp; Tue, 13 Aug 2019 21:21:22 +0000
Received: from smtp04.smtpout.orange.fr ([80.12.242.126]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxeEC-00050I-1l
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 21:21:13 +0000
Received: from belgarion ([90.76.53.202]) by mwinf5d80 with ME
 id olM4200044MlyVm03lM4ry; Tue, 13 Aug 2019 23:21:07 +0200
X-ME-Helo: belgarion
X-ME-Auth: amFyem1pay5yb2JlcnRAb3JhbmdlLmZy
X-ME-Date: Tue, 13 Aug 2019 23:21:07 +0200
X-ME-IP: 90.76.53.202
From: Robert Jarzmik <robert.jarzmik@free.fr>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 4/6] dma: pxa_dma: no need to check return value of
 debugfs_create functions
References: <20190612122557.24158-1-gregkh@linuxfoundation.org>
 <20190612122557.24158-4-gregkh@linuxfoundation.org>
 <87tvaorfc1.fsf@belgarion.home> <20190811070350.GA28202@kroah.com>
X-URL: http://belgarath.falguerolles.org/
Date: Tue, 13 Aug 2019 23:21:04 +0200
In-Reply-To: <20190811070350.GA28202@kroah.com> (Greg Kroah-Hartman's message
 of "Sun, 11 Aug 2019 09:03:50 +0200")
Message-ID: <87o90srccf.fsf@belgarion.home>
User-Agent: Gnus/5.130008 (Ma Gnus v0.8) Emacs/26 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_142112_389102_22628A34 
X-CRM114-Status: GOOD (  15.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.126 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robert.jarzmik[at]free.fr)
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
Cc: linux-kernel@vger.kernel.org, Haojian Zhuang <haojian.zhuang@gmail.com>,
 vkoul@kernel.org, linux-arm-kernel@lists.infradead.org,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Greg Kroah-Hartman <gregkh@linuxfoundation.org> writes:

> On Sat, Aug 10, 2019 at 09:27:26PM +0200, Robert Jarzmik wrote:
>> Greg Kroah-Hartman <gregkh@linuxfoundation.org> writes:
>> 
>> This is not strictly equivalent.
>> Imagine that the debugfs_create_dir() fails and returns NULL :
> How can that happen?
Well in v5.0-rc1 that could happen ... unfortunately that's also the code I
checked ...

>>  - in the former case, neither "state", "descriptors" nor "requesters" would be
>>    created
>>  - in the new code, "state", "descriptors" nor "requesters" will be created in
>>    the debugfs root directory
>
> I agree, but debugfs_create_dir() does not return a NULL on an error
> since many kernel releases.  Neither can debugfs_create_file() so really
> this test is not working at all as-is :)
Ah yes, you're right, I wasn't aware of the debugfs changes ...

But checking a bit further, your original mail is 2 monthes old, and this patch
was already merged in v5.2. I probably fell in a time-space anomaly, as I
received this mail only a couple of days ago.

Have a nice day.

-- 
Robert

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
