Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 121E5128B8C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Dec 2019 21:41:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MPI6aXbzq2jVLNhG7obt/tWiflUzdhfa64GR/8jNMf8=; b=UtSnYKvYI1qiguPa9oYc01+n8
	SIrGXEf0RIF+gkA8rXcOccOaWOr1r1B4UpIRxSHoojavE0Q/uLSRW/ZJuMiLVn8//pcit1DQ3y7eG
	/7jskGgtDgXmEk1P2yLBM/gAdMJrLxb+yiJo5ICCZXTi/ayDL5akiCOeGX0qSW50FRqmj6IIbkkLY
	wolm7Fxo5UOmNCb/r4XzqHmvpfC0gpI6D6ugfKHy3s9ddKQfmtsSCDpoeCWkKkCQwhFvnCXBUq6/C
	eBxgYrI93DpJyifxyTjfej1YZi5VbOlEE0gp5bb6/hapjgGGlIZcQXWKg6pITwBxBE03ZGFW2uN4w
	cXgvf3uVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iilYu-0006aE-5q; Sat, 21 Dec 2019 20:41:20 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iilYi-0006Zq-5q; Sat, 21 Dec 2019 20:41:09 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 9B196ACE1;
 Sat, 21 Dec 2019 20:41:06 +0000 (UTC)
Subject: Re: [RFC 22/25] leds: tm1826: Add combined glyph support
To: Pavel Machek <pavel@ucw.cz>
References: <20191212033952.5967-1-afaerber@suse.de>
 <20191212033952.5967-23-afaerber@suse.de> <20191221202755.GN32732@amd>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <506d0697-1820-7811-1b38-910355812948@suse.de>
Date: Sat, 21 Dec 2019 21:41:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191221202755.GN32732@amd>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_124108_366133_DA4701AA 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-realtek-soc@lists.infradead.org, linux-kernel@vger.kernel.org,
 Geert Uytterhoeven <geert@linux-m68k.org>, Dan Murphy <dmurphy@ti.com>,
 linux-leds@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Pavel,

Am 21.12.19 um 21:27 schrieb Pavel Machek:
> On Thu 2019-12-12 04:39:49, Andreas F=E4rber wrote:
>> Allow to squeeze the text "HEllO" into a 4-digit display,
>> as seen on MeLE V9 TV box.
>>
>> Enable this combining mode only if the text would overflow.
> =

> "HEll,nO"!
> =

> :-)
> =

> Ok, it is kind of cool, but... Can you take a look at
> drivers/auxdisplay/charlcd.c ? It seems to support some kind of text
> displays...

Why don't you look at it before making such a suggestion? ;) It is in no =

way useful, as I pointed out in my cover letter. The only thing related =

today, as Geert pointed out, is in the input subsystem.

If you don't want this in leds, you'll have to help make leds subsystem =

more useful to external users - the latest function refactoring has been =

anything but helpful here, as you've seen with the indicators, and we're =

completely lacking any indexing or bulk operations on the LED controller =

level, since you treat each LED as a standalone device. That's precisely =

why this code is here in leds although - as I pointed out - it shouldn't =

belong here.

Regards,
Andreas

-- =

SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 N=FCrnberg, Germany
GF: Felix Imend=F6rffer
HRB 36809 (AG N=FCrnberg)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
