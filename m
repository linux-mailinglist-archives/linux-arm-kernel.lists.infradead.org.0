Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E022A119C5C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 23:30:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5FdgpYqSJahEf7A3eRJOJDy/zU10puS66HcRKfbU/1g=; b=WSetDixUTLdoiz
	Z0A3r78qoW5v61e29bM0QIvuex25CW+0Z4MV5IkKIMA9M6dNiafOiKVfwnOqYDUALzZhT4H0W/Nw8
	nrHI5pzXpcBS1h3Sva2qiK+/7S80XF/8Rw/z5dBhmQ8RsqWzdWXX1QqIFlONvC5v5XqsffZ1zHKho
	yTVKzp7tVmBBW+oct0Nmn6EbOt1OxO5ccOZAGiuFhAWDAAjvE62tG3ajBXTjjYzOIeJsTxYBxqh12
	X00V6d4hBMIBVPsf1S+HOScF8R88TOaP7DbMqlFPWkRUmLdr1NqX9qYrQmNZvYh32iszAX+Wd0A/f
	wmCpK8vMauD9wJx9bSsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieo1f-0003R0-KJ; Tue, 10 Dec 2019 22:30:39 +0000
Received: from mailbnc116.isp.belgacom.be ([195.238.20.250])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieo1V-0003Q6-3A
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 22:30:33 +0000
IronPort-SDR: PGiat2diR+q2DqcVJF8Z+X+V6dr0oKkEh27/raIU28O3R4bhTdD8df6o/8TFK9M+hEPxmr/xow
 QhRIgkUjlIWMYkCjkzYBJIO7UInMn6Ou+8Za9+4eNOMvXdOs8cXiTVexi9LOQOURH4nvCflfDV
 zm8iWRO7Hpjq+nkgL0QVDXcWP92/r5APh0+V/NGSh0nql9mv05Ymp0s3YN37yOi+zYrexSej10
 zO/iGaNkSvKI1l/ykqNtLutA6RGt1kVVEUE+IBqY8IuKs8e5gP0gCzC3+L7tn7you1hYUNnqEt
 CFU=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2DsDAC7G/Bd/7fO9C5lhDgsLT91Eiq?=
 =?us-ascii?q?NBoZmCQUBgTMBOAGJM49fgWcJAQECAQEBAQEIIwkBAgEBgUyCbgQCCoF4Jzg?=
 =?us-ascii?q?TAgMBAQsBAQUBAQEBAQUEbYRrTAyGAh0cEhEYJAwDDBkFKDQUgkNMglIpC69?=
 =?us-ascii?q?vg0pwAYRQgUIGIoEUjDJ5gQeBEINShAQJCQELBwFeEIJzgiwEjSQYiF+JMI8?=
 =?us-ascii?q?ZgjmHI45BDBuCQod2hBWLa5YRfpIUgWkiKhsicU0gGBoEgwkSPiVWAY02AQK?=
 =?us-ascii?q?HXYVAQzCBAQEeCBMFBQEBiy4PFQKCBBcBAQ?=
X-IPAS-Result: =?us-ascii?q?A2DsDAC7G/Bd/7fO9C5lhDgsLT91EiqNBoZmCQUBgTMBO?=
 =?us-ascii?q?AGJM49fgWcJAQECAQEBAQEIIwkBAgEBgUyCbgQCCoF4JzgTAgMBAQsBAQUBA?=
 =?us-ascii?q?QEBAQUEbYRrTAyGAh0cEhEYJAwDDBkFKDQUgkNMglIpC69vg0pwAYRQgUIGI?=
 =?us-ascii?q?oEUjDJ5gQeBEINShAQJCQELBwFeEIJzgiwEjSQYiF+JMI8ZgjmHI45BDBuCQ?=
 =?us-ascii?q?od2hBWLa5YRfpIUgWkiKhsicU0gGBoEgwkSPiVWAY02AQKHXYVAQzCBAQEeC?=
 =?us-ascii?q?BMFBQEBiy4PFQKCBBcBAQ?=
Received: from ppp-46-244-206-183.dynamic.mnet-online.de (HELO albert)
 ([46.244.206.183])
 by relay.proximus.be with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 10 Dec 2019 23:30:23 +0100
Received: from libv by albert with local (Exim 4.84_2)
 (envelope-from <libv@skynet.be>)
 id 1ieo1O-00049O-Li; Tue, 10 Dec 2019 23:30:22 +0100
Date: Tue, 10 Dec 2019 23:30:22 +0100
From: Luc Verhaegen <libv@skynet.be>
To: fosdem@lists.fosdem.org
Subject: FOSDEM Hardware Enablement Devroom: call for speakers.
Message-ID: <20191210223022.GA15788@skynet.be>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_143029_422276_43ACAF93 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [195.238.20.250 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FILL_THIS_FORM         Fill in a form with personal information
 2.0 FILL_THIS_FORM_LONG    Fill in a form with personal information
 0.0 T_FILL_THIS_FORM_FRAUD_PHISH Answer suspicious question(s)
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
Cc: flashrom@flashrom.org, coreboot@coreboot.org,
 hardware-devroom-manager@fosdem.org, u-boot@lists.denx.de,
 linux-sunxi@googlegroups.com, linuxboot@googlegroups.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

At FOSDEM on sunday the 2nd of february 2020, there will be another 
hardware enablement DevRoom. URL: https://fosdem.org/2020/

This devroom covers topics related to hardware support and enablement 
with free software. It includes the following topics:
* peripheral/controller firmwares
* hw support and drivers in bootloaders
* kernel drivers and hardware interfaces
* hardware-related adaptation in operating systems
* tools for firmware flashing
* tools for low-level development

FOSDEM is very much an open source community event, please refrain from 
turning in a talk that is meant to be purely corporate or a product 
commercial. Also, this is a highly technical devroom on a conference 
aimed at developers and advanced users, so only submit a talk on a 
subject you actually are involved with. Finally, this devrooms focus is 
the technical aspects of the hardware and its enablement in free 
projects, rather than the specific applications and use cases that 
benefit from it.

With the return of the Embedded and Automotive DevRoom, we have the 
ability to schedule full hour talks again, and to go in-depth. If you 
however only need half an hour, then this is of course also possible.

Talk Submission:

The venerable pentabarf system will once again be used for talk 
submission.

https://penta.fosdem.org/submission/FOSDEM20

When in pentabarf, spend some time on the abstract and description, for 
both the event and the speaker. The abstract should be a shortened 
description, and the event abstract will sometimes even be printed 
directly in the booklet. BUT, on the website the abstract is immediately 
followed by the full description. If your abstract is fully descriptive, 
while terse, you might get away with just the abstract. As soon as your 
talk is scheduled by the devroom managers, you can see the result of 
your handiwork on the main website.

Please re-use your old pentabarf account instead of creating a new one: 
lost password: https://penta.fosdem.org/user/forgot_password

Talks are either 50 minutes or 20 minutes long, plus 5 minutes for 
questions.

All talks will be recorded, and will be streamed out live, and will 
later be made available as CC-BY, sometimes minutes after your talk has 
finished.

As for deadlines, the fosdem organizers want to have a finished schedule 
by the 15th of december, but do not count on that deadline, there are 
only a limited number of slots available. Given my belatedness in 
sending out this CFP, i might get a few more days if i am really really 
nice to the core FOSDEM organizers, but again, do not count on that 
(extra hugs only go so far when you're built like i am).

On your personal page:
* General:
  * First and last name
  * Nickname
  * Image
  * Contact:
   * email address
   * mobile number (this is a very hard requirement as there will be no 
other reliable form of emergency communication on the day)
* Description:
  * Abstract
  * Description

Create an event:
* On the General page:
  * Event title
  * Event subtitle.
  * Track: Hardware Enablement Devroom
  * Event type: Lecture (talk) or Meeting (BoF)
* Persons:
  * Add yourself as speaker.
* Description:
  * Abstract:
  * Full Description
* Schedule:
  * select your preferred talk length, either 55 or 25 minutes.
* Links:
  * Add relevant links.

The mobile phone number is the hardest requirement, so you can be 
contacted on-the-day when something comes up. Speakers will all receive 
my mobile number in return.

Neither email nor phonenumber are publicy visible, nor will this 
information be used for anything outside of devroom organization. After 
your talk has been scheduled, i usually only send out a single email 
with some organizational details in the days before the event.

Everything else can be ignored or will be filled in by me or the FOSDEM 
organizers.

I will be keeping a keen eye on your submissions and will come back with 
further questions or make small fixes as needed. Feel free to poke me 
with any questions or anything, both on irc (libv@freenode) and on 
email (hardware-devroom-manager@fosdem.org).

That's about it. Hope to see you all at FOSDEM :)

Luc Verhaegen.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
