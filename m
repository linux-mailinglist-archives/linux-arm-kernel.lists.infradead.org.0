Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC826A05D3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 17:12:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TzI4D4rWt4R5g/YXvoz9jJLAKWx+KgOAtnLuVKpqPw4=; b=XBD3OCid2G26Iy
	mKWCzZ9mMsjqWPhWwG5DClcL6IbMfbZDtK+4hobRLsBo6Ht5w1DXt79ofPUT5tIcZ7mxgmlQt8z0r
	KLd+kJmwYkxZZ3gTwxvte/2hYaZad6OrnYlxRSjmWFqIx0/nGFMCuIP4/yMPeqST4Onsy6J79wgxH
	/k2DeHUjL1PE8hcG9O8zUo9xOZQHSkWERsOI9n7H6MdcNEIViD7dgo8SvahiKlkzh1Ofeg4dn8GKH
	wOVQgUrWAMEJCHRysryfp9waNi/h7u5AB6Kt3zlVFnQLOAo7xg5Vnjwj4yxt/1SvHACpsiqid4JOU
	KEe6/ijt2ngrV+Z63dJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2zcs-0006jt-UR; Wed, 28 Aug 2019 15:12:47 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2zcY-0006hh-RJ
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 15:12:28 +0000
Received: by mail-pg1-x544.google.com with SMTP id m3so1612443pgv.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 08:12:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=XcJ6NYlg/uL9WmWriXAoX9eMie6Q9zQs2ri3z33W8Do=;
 b=B2+UPSog7z8YLILm6YZplhJNxIH5DioVNm5Whk2+ecAMQWfM0n77Oz3Ge9I8H/Vpti
 z6bzqGN+baAi0yG18A2r5n2QkdsN3rtnXK/XfCMIizgEIY1jHvCBz01TICGm4RMM78OP
 xKiIL4fyqd73KHRwzu9Eo2PqQvL5qbVvdv/hI8g0PfQuP5jlQg3l4juQvANmy6I/MKXU
 uDQh9BAq/H88QsdenOLMwPYExjsjktzeUbybwynwBrdnzSmr8LimKn/fFKjG89VIAZb3
 g/pB+GdmD9Z0iurJEiuMYQXq/MYUV6eU20W+ajDVpS0S5SBMVuTNd1VlmB99/FSmiEKX
 cXvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=XcJ6NYlg/uL9WmWriXAoX9eMie6Q9zQs2ri3z33W8Do=;
 b=uFf3Ynw4l22RL5XhrKx0SYZdEnbNVKjJCv+aeF7SOxHfIb0UJbC5x6KjNF/jbsMBpO
 15mhBMyyEYg3w0xOTQsxriZOyxLZ7Cu599Q1SbD9OQ8ZQC7tBujIUbdLcHuMcLKcooN6
 EkWHeFdTyDVAI3q9VzydvnKdOBEzdo4wO5zk8CoQ6LB60M/m95BjI3KleqM+QDmTWLmY
 p/fKYDM8cR8Xo+SXFm0ek4vHvOFf6RQ0n/3Fyz9Ecy9GIijIIP/J2kPdUkgF3/wnHzid
 QJVLQzevTHQv0kJc1w8E0W207wNgbcJYizgJ0rlFQ0c6mmz7Zf5xxCp8jVfPrLP0EYtT
 r8Tw==
X-Gm-Message-State: APjAAAWEPA57Ki46jj8sKRy2OmYJUBIV4gCScxV6XjA9L5IiyGt+L9+q
 lvuATOG3ZHftaM546PaT1fhoPw==
X-Google-Smtp-Source: APXvYqz97Mimt+J42SvRSibm4RDZVnMCd5grLb1uXWfEqZeh5eyLN9Msos0FMr0J7qZbOn21/oz1ow==
X-Received: by 2002:a63:2b84:: with SMTP id r126mr3994757pgr.308.1567005144906; 
 Wed, 28 Aug 2019 08:12:24 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:cc35:e750:308e:47f])
 by smtp.gmail.com with ESMTPSA id l31sm6950443pgm.63.2019.08.28.08.12.24
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 28 Aug 2019 08:12:24 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 0/2] drm/meson: add resume/suspend hooks
In-Reply-To: <b8ea00c4-3749-e571-edb6-ae5091b23247@baylibre.com>
References: <20190827095825.21015-1-narmstrong@baylibre.com>
 <7h5zmixvrz.fsf@baylibre.com>
 <b8ea00c4-3749-e571-edb6-ae5091b23247@baylibre.com>
Date: Wed, 28 Aug 2019 08:12:22 -0700
Message-ID: <7htva1s4rt.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_081226_909413_524658C7 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> On 27/08/2019 21:17, Kevin Hilman wrote:
>> Neil Armstrong <narmstrong@baylibre.com> writes:
>> 
>>> This serie adds the resume/suspend hooks in the Amlogic Meson VPU main driver
>>> and the DW-HDMI Glue driver to correctly save state and disable HW before
>>> suspend, and succesfully re-init the HW to recover functionnal display
>>> after resume.
>>>
>>> This serie has been tested on Amlogic G12A based SEI510 board, using
>>> the newly accepted VRTC driver and the rtcwake utility.
>> 
>> Tested-by: Kevin Hilman <khilman@baylibre.com>
>> 
>> Tested on my G12A SEI510 board, and I verified that it fixes
>> suspend/resume issues previously seen.
>> 
>> Kevin
>> 
>
> Thanks,
>
> Applying to drm-misc-next (for v5.5), with a typo fix in the first patch commit log:
> s/suspens/suspend

Is there any chance of getting this in a a fix for v5.4 so we have a
working suspend/resume in v5.4?

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
