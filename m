Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD8511E473
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 14:21:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Ii005w0KqKV4YA+zjMqAMY/Mj+fYMGyxHfaJNpogRk=; b=GrECC/h2Q9fnDK
	CpYESilVSpSY2FlGo7hh9AhltGGZ/9H0Y3xhdBWl1dLtyfHO71wQUJdrZAkm6XwB43kOtxCXwm4PM
	2wS0j7jVrGWC89QElA71KMt73H3Y1awNKrypegFWQ7SjE5nnMfOSmNisOBclt+07iXCIEWZJ9KgnI
	9Sm9jHmwur+XAF5V8nKzfrqDyxGAF5ODWGQgNDlwdUBNJ9eagcl3c4PFvcJ6hmH8U0TXWxLvKHf71
	KWPpxtYoYfeHrPwSFsLx35bDFqbzRfiHO9oD5xxZXl+e0pdplckTaxUd/Ru7zufDY26SicXeERwFJ
	jMIf9mfMsET8XIYDtEBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifktE-00044l-Az; Fri, 13 Dec 2019 13:21:52 +0000
Received: from lb3-smtp-cloud9.xs4all.net ([194.109.24.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifksz-00041a-6C; Fri, 13 Dec 2019 13:21:41 +0000
Received: from [IPv6:2001:983:e9a7:1:c93c:45bd:1710:e478]
 ([IPv6:2001:983:e9a7:1:c93c:45bd:1710:e478])
 by smtp-cloud9.xs4all.net with ESMTPA
 id fksoihjoeGyJwfkspi1ER9; Fri, 13 Dec 2019 14:21:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1576243289; bh=7EgWnmlezgqj/BVCt+K0pvVbA4FXbio5mhVaiZ5dfQs=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=AdH5iv0YH+McIOrsn1DAaopGdWufZ29ioADupUDcGxWk1oLktScwdR5k9bi0JYjtg
 OEJK6H7Fs4R+OjlFrPBN4D0PRNP5Wlu8iyhe2rW2cTOe9a5r07vHBWpV+1CiGFxEit
 FDmKC4Ad2ub/oF4hqHsgOFOlZVxT1VPQmEfUvBA6OpYc84sg2ABsUu5DDgjqrLAGqi
 9P++BEXVdoVvRdzUPw/lz2ko24IEbZDeawl3d5bm1HVwMbvP/QFwC/h3KjwxcDEXKd
 dGTRPc7vl+n5+2qN5eSI/APzP226yXtfpxo8ojhRe2fG1eTM4qjmXWj6nUZtNOy5S3
 GnxofjNCHZf+w==
Subject: Re: [PATCH v3 2/4] media: vicodec: use v4l2-mem2mem draining, stopped
 and next-buf-is-last states handling
To: Neil Armstrong <narmstrong@baylibre.com>, mchehab@kernel.org,
 hans.verkuil@cisco.com
References: <20191209122028.13714-1-narmstrong@baylibre.com>
 <20191209122028.13714-3-narmstrong@baylibre.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <0eb52de8-97a9-40cf-a926-262b1ecdc3e9@xs4all.nl>
Date: Fri, 13 Dec 2019 14:21:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191209122028.13714-3-narmstrong@baylibre.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfCTmMw6UMTjLOJUPkCDlqks83iiillHmwdMzsgRBSoe9Hv36xB2m2JCtI2vE2e4HNUGyqznMLbJoF3O9tW1gv12rxYmLfCQHCIdKdX/s71xthDM0vOuU
 HptJYccltFJSVGvxkzTfO99gMJZGZHBu5Vaz88vywlnqQyIHp7vUCxeCldEda8taB9ZWImjzwda5M8IGmaVSwhVj/RtSopo8exf74kxYjqitarmaTOAGUEXy
 vrzJ4cE+GJJJMmriatdi6aScio5XLtqjkI02MJ3d+f/ClZOULw85BjGx+ORfwXifQSucKlUlhu/xQzwlpjCEAGZXUUFdP4dUcUqtZXKVCsKq6dC7S9BG2fib
 U2B6nyFsPBXuSCSUEXYE6U+PLxXEOBxttOov6+KYCDYkbns0RFk6rnSCz50+rb1qFMCepkIn8mY+WPW+tp+kCXYaMTbI7Wndg8mxwSJ5BgIxf+ZL3TiWviKE
 mphrMYzQ/VJUOTuejb9Z9e5J+hETayO1cXafObf1FnWicRf6w1sQNFZY5t2uDbKz4tzh1UjYQ+YeTUf1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_052139_093348_C47AFE4B 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.30 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Maxime Jourdan <mjourdan@baylibre.com>, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/9/19 1:20 PM, Neil Armstrong wrote:
> Use the previously introduced v4l2-mem2mem core APIs to handle the drainig,
> stopped and next-buf-is-last states.
> 
> With these changes, the v4l2-compliance still passes with the following
> commands :
> # v4l2-ctl --stream-mmap --stream-out-mmap --stream-to-hdr out.comp --stream-from in.yuv
>>>>> <><><><><><><><><><><><><><><><>< 15.53 fps
>  15.53 fps
>> <><><><><><><><><><><><>< 13.99 fps
>  13.99 fps
>> <><><><><><><><><><><>< 13.52 fps
>  13.52 fps
>> <><><><><><><><><><><><>< 13.41 fps
>  13.41 fps
>> <><><><><><><><><><><><>< 13.21 fps
>  13.21 fps
>> <><><><><><><><><><><>< 13.09 fps
>  13.09 fps
>> <><><><><><><
> STOP ENCODER
> <<<
> EOS EVENT
> 
> # v4l2-compliance --stream-from in.yuv -s
> v4l2-compliance SHA: 7ead0e1856b89f2e19369af452bb03fd0cd16793, 64 bits
> [...]
> Total for vicodec device /dev/video0: 50, Succeeded: 50, Failed: 0, Warnings: 0
> 
> The full output is available at [1]
> 
> # v4l2-compliance -d1 --stream-from-hdr out.comp -s
> v4l2-compliance SHA: 7ead0e1856b89f2e19369af452bb03fd0cd16793, 64 bits
> [...]
> Total for vicodec device /dev/video1: 50, Succeeded: 50, Failed: 0, Warnings: 0
> 
> The full output is available at [2]
> 
> No functional changes should be noticed.

Ah, unfortunately there *are* functional changes.

There is a (much) more extensive test that is done in the test-media script.

In v4l-utils, go to contrib/test. Now run (as root): test-media vicodec

This test now fails on some tests for the stateful decoder:

Streaming ioctls:
        test read/write: OK (Not Supported)
        test blocking wait: OK
                fail: v4l2-test-buffers.cpp(943): ret == 0
                fail: v4l2-test-buffers.cpp(1353): captureBufs(node, node_m2m_cap, q, m2m_q, frame_count, pollmode, capture_count)
        test MMAP (select): FAIL
                fail: v4l2-test-buffers.cpp(951): ret == 0
                fail: v4l2-test-buffers.cpp(1353): captureBufs(node, node_m2m_cap, q, m2m_q, frame_count, pollmode, capture_count)
        test MMAP (epoll): FAIL
                fail: v4l2-test-buffers.cpp(943): ret == 0
                fail: v4l2-test-buffers.cpp(1607): captureBufs(node, node_m2m_cap, q, m2m_q, frame_count, pollmode, capture_count)
        test USERPTR (select): FAIL
                fail: v4l2-test-buffers.cpp(943): ret == 0
                fail: v4l2-test-buffers.cpp(1761): captureBufs(node, node_m2m_cap, q, m2m_q, frame_count, pollmode, capture_count)
        test DMABUF (select): FAIL

I also see this:

cmp: EOF on /tmp/tmp.7KAXKAIkVZ/raw.yu12.1280.24 after byte 23500800, in line 1

which shouldn't be there either.

I can recommend the test-media script: it can test all the virtual drivers and it is
part of the daily build to check for regressions.

Regards,

	Hans

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
