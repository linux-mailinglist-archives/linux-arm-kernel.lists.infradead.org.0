Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F761C593F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 16:23:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RbBcbvqleJiLBva1tOTC6WtySJy/jpwFEQQjVpKg8aE=; b=XWazhCa1CEi8Tq
	bpCN9Tjq2MX8n+lwbF5W9maSXCz0bDLD8DqYgJxoO5Cs2BGs4ri3BnJcQvMHOh1oAkeHV5zhtoy5n
	tvxJ4l5w0QI1ub13nC1pIv4P4rNSdZil5173FEvWQX2uNaZOKJ2KfgifM9kg7ZGHafXesQDmqOyNs
	cH7Paax1lpxBec1Np6Apcq8KSqEdwKnES7g29iVBdyG1GfeJ+HEpKfbtj8oYOZRPY3V3igA0J/zYt
	qmQh2lR52FAwFagAMXKua/MU96eOdRdxJg+EXKWqzgVq4BbqfODrLN2bPYhXQXvjqkeUkPihVZLAM
	m1S/cYHdf2Ix6DOTuguw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVyU0-0005ap-Qh; Tue, 05 May 2020 14:23:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVyTn-0005aE-Oj
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 14:23:28 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DF38520675;
 Tue,  5 May 2020 14:23:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588688607;
 bh=btspPBgx+wVDD4t0Y6wDO3EI1PcWVHUnacBogaW1ocA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KoX6cbhl9KFl5qC+HaUXcuwpnBxYaKxiIaJZTANX5bGE2IngJcYpuvWr1QlhxXGlh
 1R5dHIp1+d3GYw4NsCiD6U1UUsrifGaWTC1XxwmX2cWkQvoDoAWDQSCJh0IjO5NVXd
 auv9NPi8x7CcnXfkAd456dhu0aKZLe2Is1LKPZnI=
Date: Tue, 5 May 2020 16:23:25 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Hyunki Koo <hyunki00.koo@samsung.com>
Subject: Re: [PATCH v8 1/3] serial: samsung: Replace rd_regb/wr_regb with
 rd_reg/wr_reg
Message-ID: <20200505142325.GA816056@kroah.com>
References: <CGME20200420013322epcas2p263e72997dd4ebdaf00b095a83a6b6651@epcas2p2.samsung.com>
 <20200420013300.17249-1-hyunki00.koo@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200420013300.17249-1-hyunki00.koo@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_072327_817806_9188D691 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBBcHIgMjAsIDIwMjAgYXQgMTA6MzI6NTZBTSArMDkwMCwgSHl1bmtpIEtvbyB3cm90
ZToKPiBUaGlzIHBhdGNoIGNoYW5nZSB0aGUgbmFtZSBvZiBtYWNybyBmb3IgZ2VuZXJhbCB1c2Fn
ZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBIeXVua2kgS29vIDxoeXVua2kwMC5rb29Ac2Ftc3VuZy5j
b20+CgpUaGlzIHBhdGNoIHNlcmllcyBjcmVhdGVzIHRoZSBmb2xsb3dpbmcgYnVpbGQgZXJyb3Is
IHdoaWNoIGlzIG5vdAphbGxvd2VkOgoKICBDQyBbTV0gIGRyaXZlcnMvdHR5L3NlcmlhbC9zYW1z
dW5nX3R0eS5vCmRyaXZlcnMvdHR5L3NlcmlhbC9zYW1zdW5nX3R0eS5jOjE4NjoxMzogd2Fybmlu
Zzog4oCYd3JfcmVnX2JhcnJpZXLigJkgZGVmaW5lZCBidXQgbm90IHVzZWQgWy1XdW51c2VkLWZ1
bmN0aW9uXQogIDE4NiB8IHN0YXRpYyB2b2lkIHdyX3JlZ19iYXJyaWVyKHN0cnVjdCB1YXJ0X3Bv
cnQgKnBvcnQsIHUzMiByZWcsIHUzMiB2YWwpCiAgICAgIHwgICAgICAgICAgICAgXn5+fn5+fn5+
fn5+fn4KClBsZWFzZSBmaXggdXAgYW5kIHJlc2VuZC4gIEFsd2F5cyBtYWtlIHN1cmUgeW91IGtl
ZXAgdGhlIHJldmlld2VkLWJ5CnRhZ3MgZnJvbSBvdGhlcnMgYXMgd2VsbC4KCmdyZWcgay1oCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
