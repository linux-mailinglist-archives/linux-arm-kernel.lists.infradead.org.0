Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC95F8CC50
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 09:09:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QOqQE9B4fQUEndL8QjYVOg63r6Jui9D7sW3WaqBultY=; b=cyZq/wkuO2OMg1
	cX5Zny61BjSAIwRuaKTeHOtYRCKqfDmrcYvZcCTHtqq4Toz1wyMKAsR3Z27F8CLuSjQkxcBoOvQZ+
	BechXyud6nqTuv5/vqKGLW/RNTiZ8GZsSTp0japxEffP3agtgh0Je827UffIehd/q6D7YoZdEKIkM
	eISOzQ8cP6mCabUmvzkB9yC+6AN91BknXhuryPSAscxu8jvfTNgGPo7CIHTpUZIFZyjXw/rvngn80
	T/OD7G1JZYFglOHDaQbkSo5dTSMiKflUCQS7h5G89mJFSS/eEhEU5fj5Ca/Nx6qjj0K9RGV0H8fHh
	CGXvKGCDJmeiHrfxV6Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxnP5-0005xG-IH; Wed, 14 Aug 2019 07:09:04 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxnOj-0005wp-SV
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 07:08:43 +0000
Received: by mail-pl1-x644.google.com with SMTP id a93so50272218pla.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 00:08:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=message-id:mime-version:content-transfer-encoding:in-reply-to
 :references:subject:from:cc:to:user-agent:date;
 bh=noA9l+lac2tFbODKUiemces22bFWF2XvyoUUU0oGh3Y=;
 b=azhHcHx6e2GPzq1qiXPKq9L0/FCy+3K5Ug+7kOM9qsxRMQvVJbQdk4B+sd9jPo1Wzm
 XUFDfEyv1O0gaQeTg8YERL8VT4vQRl44Lr844PzeDUfdP8nDuTFzs1GEGVxpExF3xus2
 JT3IsxKxLZ47NG/5vgeIDnHRAbxQfVqpGdkjk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version
 :content-transfer-encoding:in-reply-to:references:subject:from:cc:to
 :user-agent:date;
 bh=noA9l+lac2tFbODKUiemces22bFWF2XvyoUUU0oGh3Y=;
 b=HqH6a070K9u8Awzye7ZkPsxR77OIJrk4U7ZLXo5ISUlmQazU7pGCd+yh0P9KA8SSNY
 PZrfqvg14oQAQWsC6nFNqU2EasIdZ8su50xUFOjC+W4lbFamYIAsrS2gCJFioO2vtaIr
 FHFKZlv7O+wnz2zll78Ea0OrfeYrWCO5Xu9NslRDFK8DrtQSfT742TCX1Rnd1zJMcmDI
 RYe+KByYrBATRZQVMOp8Z1n4PzFW5s9/+Xxdb2Q3B68vXkDVQfN4e+61wTgM1i51KxRg
 yT/OM3ksxX/sQBnKTNS7mCzfMF5+/vVPXbZWJARg4Z8KG2YXliTJzmRFD1g0SYCWrynL
 M35A==
X-Gm-Message-State: APjAAAXa8z7gaKZTOYgFFwx7E0fQ9JZn6zE8Qc4BboukL8CTD99xYbHH
 EHV7nkBvMyON6R4l/7W3zJEwFg==
X-Google-Smtp-Source: APXvYqwhleD1WxLn9SQPb5TBxm/FmAKBDsfXxxHaV50lM2/VS0F8JJMyxYA9vP5R1sXtEGB5XR73nA==
X-Received: by 2002:a17:902:7612:: with SMTP id
 k18mr40585980pll.48.1565766520648; 
 Wed, 14 Aug 2019 00:08:40 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id e6sm14135669pfl.37.2019.08.14.00.08.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 14 Aug 2019 00:08:40 -0700 (PDT)
Message-ID: <5d53b378.1c69fb81.31b2e.5077@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <20190814063803.GY52127@atomide.com>
References: <20190814063803.GY52127@atomide.com>
Subject: Re: Regression in Linux next with show wakeup sources stats in sysfs
From: Stephen Boyd <swboyd@chromium.org>
To: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kalesh Singh <kaleshsingh@google.com>, Tony Lindgren <tony@atomide.com>,
 Tri Vo <trong@android.com>
User-Agent: alot/0.8.1
Date: Wed, 14 Aug 2019 00:08:39 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_000841_945816_2B4546F1 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-omap@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Tony Lindgren (2019-08-13 23:38:03)
> Hi all,
> 
> Looks like commit 986845e747af ("PM / wakeup: Show wakeup sources stats
> in sysfs") has caused a regression in Linux next where I can now get
> some errors like this during the boot:
> 
> kobject_add_internal failed for wakeup10 (error: -2 parent: usb)
> 
> Any ideas why this might be happening? Maybe some deferred probe
> related issue?
> 

Yeah! Take a look at this thread[1] and please test out patches I'm
throwing out there like a total cowboy(d).

[1] https://lkml.kernel.org/r/1565731976.8572.16.camel@lca.pw


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
