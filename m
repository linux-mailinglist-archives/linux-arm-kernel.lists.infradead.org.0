Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 695BC35A10
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 12:02:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qDj8pwyHc/5wSX4I5kFWwUNbjgK2141+9BAp2vGg2rE=; b=mHY8K9T97tgOGy
	Muoe1/Yb+smVhz/80u9fjE1LaZNRs54wDxKbGHHkbD6kax6YRmfiQG8/W1OLy6or4JSNuClL96oZb
	QHTryiWy/zYLR7Q84WYpodOuc7siIO0dEfYszjXpzmVzoYuEDxu/PYMLzBzuTWZaK4+rDKCK3loo6
	NrxWZbtnCVLjpRptQhPBqSV0ZsmoXqTvtq1EG4SkF+QaoplbMK1MB4rF1PG18/2ErU1wNKSE2W/ak
	V9hovXNg0pxwgibxrC4rQ/Ns2CB+FOGPWyN6Gc3gVAGL2l9Qdg8FVXQhpiOkAL56QJvc0oRDV5Wbq
	mo4dOYewWrIuhqrM9zFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYSk5-0004nk-4S; Wed, 05 Jun 2019 10:02:01 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYSjy-0004nF-A2; Wed, 05 Jun 2019 10:01:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1559728900;
 bh=UsET9Lll5M+CoTqv+pj38b2HWnBKUKBonnb58LGMBT4=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=bZD59ZmWY0Ntwhnge76QXnUAewp8/FaivB+KFTadt2z1WLIpRJTlz9brY9UOo3mDL
 sVe8Cr8xZ1m5qfcG/T1YyyBqb40gGEvMxtqaTVdFrbXtguM54zJJ9pQiJUS5kckjVr
 FzcaSXguUpZX0EjeNG0El4SLnzdH1AAj42k2nCt4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.160]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1N1fn0-1gb2dQ1uGm-0124AV; Wed, 05
 Jun 2019 12:01:40 +0200
Subject: Re: [PATCH 3/4] clk: bcm2835: register Raspberry Pi's firmware clk
 device
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com
References: <20190604173223.4229-1-nsaenzjulienne@suse.de>
 <20190604173223.4229-4-nsaenzjulienne@suse.de> <87muiwzyrw.fsf@anholt.net>
 <17ea99902e4329db735080d1a8fc04f5c06c9bf0.camel@suse.de>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <d4e0e290-5fa7-899b-c26b-691bfc32e864@gmx.net>
Date: Wed, 5 Jun 2019 12:01:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <17ea99902e4329db735080d1a8fc04f5c06c9bf0.camel@suse.de>
Content-Language: en-US
X-Provags-ID: V03:K1:9f2lQD4Z7CpbaiYWLkTMJigUa1MziLg6+z/wwaBIURmsxQgOUS5
 k2FYvw7vOfvcPi/PmfQ5fixRnOqThMuOv787Vl764hF59L8a6jmBs3NRYyoG5HAmJmv1b19
 +yvY6j7zCQUeWKyarSDtHkN+zou8bvDUL9jpBSvvfE2bD/YQ3lvm5FBWwjvJQYKdwvyBmXc
 V6NMtKpN71rZbBuSV6twg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:q4vxgRBg+Vk=:cSI8li99sc0SeLjZq6PBGa
 QZ6f42LRJFJJLcLD3cqQ8mY9OEKdD44MaT+Er+v3fQmuJoT1RMTdK/A6F4hvNqYD6DywuhSi3
 SaPRxALtUr+Jp8Fv3AkeUimHwzkgvjVgyZSMkef1mrCxUR1SF2WtZH5TX1wyITT77lYaQY/7b
 bj2m1VkzdVei2lLjOs5R7JOSgQM8rnWjSZBTBf3I9lVQxdo4DtJQVHJm+dMFaMagUTr7P16Wt
 EQRLvSSuISvwt0+t9lPSNz/WPyhNu9p+d/JPPEvNdTSWjLw3u54YIG2luGQkVwm68b6nSKUpj
 rejoSwSaq1rF1Wj6ofqdiTzytKDTf1n9MIjU4f36vJ0W6+KW6Ns61IoBDksQ6zuEI6yWCNTPx
 l/h0E8kgwSrVGvfEMVjCjtk384eYtQNYIwuLACSVtJ8r0JFcDcHNL1/mBPfhynGjTdvEKX4gw
 qYV14E7sCt3VgpUARbVj09YuuYBGVtum9phmcLP30a/2GUNA+FDnIaW7WmAle/QcuKyOC2ve1
 l7GEtohDJ9bYkv6HYiCbo8cde1FpaXWWcrLcdqnl8wg8jaWpbyhT5YZXRsPkiJIn4H0fIKuDt
 tpDash5HSLSInyq365xvLH7gwPG3oqGltwG/jGQ8+cfWFZ2UMJf0s065E4Zcnuvo3vRf8/3yb
 fM5KF4eLre3UJUebDgvSIz3PsguDzVEHxpc3kLrRAaR0YBXH1IO/ddwM1PZa88kZTAH62DOsi
 3fYq4DY8NaCvPXGyEjQQlgqITKRqGCYE806FquBDfKpn7taRiIeY3QkuYwmKZ1f/EsbSwGvj+
 KzVe9aMC6XbYTzOpYpKTR2S/Ct6/Ll4KoaLySUJdExAdxfXJ85uFEkAvupGEamOJdryZE2IVy
 2sJq5Qt9Y9Yp8uRN4iJa2bSAGUOrjOAIYEsd6A5rdVpaBMeoMFi5q/ChR4IOWnafHIpXKCpxp
 iYT9j/hHGM4FBvpD0s6Tuk7bFIsm1niuLu+E7jHnI2y7iRXyTdqdc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_030154_642514_3C960AE9 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-pm@vger.kernel.org, sboyd@kernel.org, viresh.kumar@linaro.org,
 mturquette@baylibre.com, ptesarik@suse.com, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, mbrugger@suse.de,
 linux-rpi-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, ssuloev@orpaltech.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 05.06.19 um 11:11 schrieb Nicolas Saenz Julienne:
> On Tue, 2019-06-04 at 17:00 -0700, Eric Anholt wrote:
>> Nicolas Saenz Julienne <nsaenzjulienne@suse.de> writes:
>>
>>> Registers clk-raspberrypi as a platform device as part of the driver's
>>> probe sequence.
>> Similar to how we have VCHI register platform devices for the services
>> VCHI provides, shouldn't we have the firmware driver register the device
>> for clk_raspberrypi?  Or put the clk provider in the fw driver instead
>> of a separate driver (no opinion on my part).
> Makes sense to me, I'll move the platform driver registration into the firmware
> driver.
Fine. Please keep in mind that you might need to add a MODULE_ALIAS
otherwise autoload won't work.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
