Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F823BD7B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 22:29:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6oYvialnM9g9jNT2bDMB3qtw8NHvS93J/l1zUKxMaeA=; b=TB+HlyjvfYSYuY
	EQoUsXyVRzxos+HgY7Gf0p/6nTtcSQ5hbR+f7SagQHU9KjtflBJ+xh8oMYFfQkzp1s97xh4QXISng
	/eBkzriLpcXVYYtGigyrsP/eTOUr0VaE8LBpld8Z/soXr/15qrsbKsmbMpeHge/33kzrrEUU2oen7
	YrEAR89WuEIZ+4wZGZZh9eIBiBidWrW1am6pv0Kf2PHJ+LhPWI0kEjAiA6CO7MKbqzY/JfsLKaEeh
	M6h/5VDj47uWhNnf58Da/GaKbKys1DlKmRi7RZaEuuFbGy2YWlMV/Ww15k56tgpqd0Yu1IeapFuIw
	t0J0qbw/Jzh0eR6iOuPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haQvI-0004fp-O3; Mon, 10 Jun 2019 20:29:44 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haQv6-0004es-1Y
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 20:29:33 +0000
Received: by mail-pf1-x429.google.com with SMTP id a186so5945240pfa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 13:29:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=1u+Mk6P0GQp2YK+MbgZCemejiKqi+QRb5rVGWIgElFw=;
 b=G6f3CvIrKb/qPOpOxDrnhusVhhss4a4rdtkGIF9mDlmmqxSCz9ObWvhgBgTnml10hK
 JlDF0m8kSM2MRPw0DedfKg+9suAC/0w4ywoA7lTnIPx8Vd0L5QZM9kIEIdUepk9/A/Ci
 L3MsIhQZWfa778Ov/yadphBGN+mqRGE4K8TJ0XcXmyKaYfOK0bHJNtcQJNQTlOX6mgPf
 64bOa+0uK/5ghOUmBiBDDHn00kAT8AOzLX3YDmwNBbldXKVw7I5mp39nlvqkgaTnQFLn
 YHKUn9nd/mzA8vWJXcCk0LQFfz3S9tv6sz66Jd4qeWovTDBwzjn2zTC5wxejL248uT+B
 It3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=1u+Mk6P0GQp2YK+MbgZCemejiKqi+QRb5rVGWIgElFw=;
 b=iUTRGEJlY6I97lBPMnEBv6FI1Lmbqyiz+owcdPWrBeIAx9fpreEi9q/xMfgmPeiuyq
 4lhfq0XYqo6qGZf776TdUQi1YrNmOSAsqEs2FJv/pnjYYvev5JY/l9761iG/cJivYgXF
 HBuREmJ1Lltw/AZN0n1qAD3PQ8P5ovUWAY4RbLBlpE91zbprTxJfQq65XhoFmSD66MTV
 cl6WcrZLOaw5D6stRHCBs6Tzv5+RCPcqD9ytT3ZZZ8z9L05CYTDV04QYnsua/xaGYeQM
 gJmAKuNEH+57HFTDKgeIoOpTHyBfMzaZzKKHuGQ89/PMeaINBMYavnLoJSzyN6mI3VA4
 20sg==
X-Gm-Message-State: APjAAAXXHJr/OfUpH5sfl7JTOmQtMZkWzYQtRhUUYpGjhOzPoOvOYFJB
 AjhwEtGBQIBVtHfyA8AN1D8=
X-Google-Smtp-Source: APXvYqz8RUYRoaZm+zRUDtcye0JXQIhd3kp2snzDV/NHDjl0J3yKwIxNh87p7iEdeOMp2hurxqjFtA==
X-Received: by 2002:a62:5801:: with SMTP id m1mr77055067pfb.32.1560198569901; 
 Mon, 10 Jun 2019 13:29:29 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id 131sm6435257pfx.57.2019.06.10.13.29.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Jun 2019 13:29:29 -0700 (PDT)
Date: Mon, 10 Jun 2019 13:29:28 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Alexandre Belloni <alexandre.belloni@free-electrons.com>
Subject: Re: [RFE]: watchdog: atmel: atmel-sama5d4-wdt
Message-ID: <20190610202928.GB13191@roeck-us.net>
References: <BL0PR07MB41152EDB169FE9ED1AD3B4C9AD130@BL0PR07MB4115.namprd07.prod.outlook.com>
 <20190610162811.GA11270@roeck-us.net>
 <20190610201301.GH25472@piout.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190610201301.GH25472@piout.net>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_132932_115506_A32B404B 
X-CRM114-Status: GOOD (  29.22  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:429 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Ken Sloat <KSloat@aampglobal.com>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "wim@iguana.be" <wim@iguana.be>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 10:13:01PM +0200, Alexandre Belloni wrote:
> Hello,
> 
> On 10/06/2019 09:28:11-0700, Guenter Roeck wrote:
> > On Mon, Jun 10, 2019 at 03:51:52PM +0000, Ken Sloat wrote:
> > > Hello Nicolas,
> > > 
> > > I wanted to open a discussion proposing new functionality to allow disabling of the watchdog timer upon entering 
> > > suspend in the SAMA5D2/4.
> > > 
> > > Typical use case of a hardware watchdog timer in the kernel is a userspace application opens the watchdog timer and
> > > periodically "kicks" it. If the application hits a deadlock somewhere and is no longer able to kick it, then the watchdog
> > > intervenes and often resets the processor. Such is the case for the Atmel driver (which also allows a watchdog interrupt
> > > to be asserted in lieu of a system reset). In most use cases, upon entering a low power/suspend state, the application 
> > > will no longer be able to "kick" the watchdog. If the watchdog is not disabled or kicked via another method, then it will
> > > reset the system. This is the current behavior of the Atmel driver as of today.
> > > 
> > > The watchdog peripheral itself does have a "WDIDLEHLT" bit however, and this is enabled via the "atmel,idle-halt" dt
> > > property. However, this is not very useful, as it literally only makes the watchdog count when the CPU is active. This 
> > > results in non-deterministic triggering of the WDT and means that if a critical application were to crash, it may be
> > > quite a long time before the WDT would ever trigger. Below is a similar statement made in the device-tree doc for this
> > > peripheral:
> > > 
> > > - atmel,idle-halt: present if you want to stop the watchdog when the CPU is
> > > 		   in idle state.
> > > 	CAUTION: This property should be used with care, it actually makes the
> > > 	watchdog not counting when the CPU is in idle state, therefore the
> > > 	watchdog reset time depends on mean CPU usage and will not reset at all
> > > 	if the CPU stop working while it is in idle state, which is probably
> > > 	not what you want.
> > > 
> > > It seems to me, that it would be logical and useful to introduce a new property that would cause the Atmel WDT
> > > to disable on suspend and re-enable on resume. It also appears that the WDT is re-initialized anyways upon
> > > resume, so the only piece missing here would really be a dt flag and a call to disable.
> > > 
> > Wondering - why would this need a dt property ? That would be quite unusual. Is
> > there a condition where one would _not_ want the watchdog to stop on suspend ?
> > 
> 
> There are customers that protects suspend/resume using the watchdog.
> They wake up their platform every 15s to ping the watchdog.
> 

Interesting use case.

> Also, I don't see why the application deciding to go to suspend wouldn't
> be able to disable the watchdog before do so if this is the wanted policy.
> 

Many watchdog drivers already implement suspend/resume support. Such a
platform specific functionality seems to be quite undesirable to me.

Besides (and pretty much all watchdog drivers implementing suspend/resume
do that wrong), you'd likely want to disable the watchog late during
suspend and early during resume to reduce the risk of a hang. I don't
think you can do that from userspace.

Thanks,
Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
