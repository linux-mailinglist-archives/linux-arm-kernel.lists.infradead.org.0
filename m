Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F0A2998AF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 18:01:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hVML0v57jB9XE8iIPRudl1DDab06hACa1ldYdijSHMQ=; b=OtqRm2Cmgl9d1s
	x0qLwFAoO/O0SXbfE0FYRT/cYULllFpYiYN0mczcHjXpYocUTGBY/3uH8aSJYD884mY3z865ImDp0
	v/e2EYBB1BBpEUy7tPqFuqr/JZegwDmOulj+euWHI7fisCzZtfNo/yQfDMkV2DrfLkl11NQz2Hmx9
	/e5ARztkGtH0d3ZDMXEF4+WSfrLlG9DW8VjrVnk4YxIhQ7NZqNDdbbUxnirpmYCbmiDX+hec0CsyK
	suEy7NfPo5XvdZuhUCIn56vQR4sFySkFCMzLD7ZuVLlrrDjlhr2k2evxNpLtYRoVk7eVpLU9CPWlK
	/iH8lG2m6Akz9278kmzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0pWx-0006tb-RM; Thu, 22 Aug 2019 16:01:43 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0pWl-0006r9-Vw
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 16:01:33 +0000
Received: by mail-pf1-x444.google.com with SMTP id q139so4228169pfc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 09:01:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=98w2GcKCN663QK9TeclkQTSI7rJh8WNm1jNEnO7e0aQ=;
 b=VYEQpTruVCXeLl7kVzcZ1GS0qiWbvPwn5x3IbGR6aAqF/r+h4/bU2H+kxGqp2QEyYx
 EDEALQ0LYuCKOomqkK+UoXAkQWK3ORrCM5ziynJprIxVNXIkonT+npeLOzPJ6aqKLFxf
 G4Ak8rDlSHi7so5ebuMX5XSq4zOOyPBsJjDT9zf2yAPoIBLDHAj8+t0yUFs5hBLkJNLp
 0zzZt8FfC+fl9RMMhgGi53HXi+d669q46yc6gc/sEOiE/Clz4SRK8WkXboz7336TceCD
 6zuA/Cs3A7cdDwePnXPdMxqwVnay6j6FPv8RBapsINpKdWQBEymRcxsl/uNmCjccECUj
 uXkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=98w2GcKCN663QK9TeclkQTSI7rJh8WNm1jNEnO7e0aQ=;
 b=IwOCTRy7phJ+YS/jXaSzfLzR6LZmXSPR+56WH8Jol9fNeU7awvNpB3lYg3LSojYp4h
 gWGex6Mf/Jt+HUmZTp/N58STL/iD0ZQ1R6Y03/bSrm9RG1iSQBgXiJkjKte95kA4Cd+Z
 LfSWn8ALfOaq61V/o+arWUFUSF/E+y2SXYtINIe7onkFHg+cejEWPJNidiN5p+10VxPL
 2I+/XTH7NVD4k5doaLJR/lvoP/afrD2H+pyQ791rnpEg3QAJnxtIpUUfcEz45HuAUR6l
 CuZtdVLW3/ZaV6ahJ8rJJGWEhmcYoXC67xN/wMG/CZj75+o5CzOYwdV3NdtFcgcBERoz
 Qu3g==
X-Gm-Message-State: APjAAAVgZAWV8COCkIVoDZY+4IHdWsYzjuVzppykU+7Lgs3eotUoNTMT
 53qQ+uEZomGK8Lh1MpgeVps=
X-Google-Smtp-Source: APXvYqxhzhQQCIJ9upWMd5eHMV/mPBB3qC6EoA0i0AwZ2PrrA62XyDUSenyDovW0vqb1IWGs5baOgA==
X-Received: by 2002:a62:6c1:: with SMTP id 184mr41294058pfg.230.1566489691040; 
 Thu, 22 Aug 2019 09:01:31 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id z189sm22267905pfb.137.2019.08.22.09.01.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 22 Aug 2019 09:01:29 -0700 (PDT)
Date: Thu, 22 Aug 2019 09:01:28 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Alexander Amelkin <a.amelkin@yadro.com>
Subject: Re: [PATCH 3/3] watchdog/aspeed: add support for dual boot
Message-ID: <20190822160127.GA6992@roeck-us.net>
References: <1f2cd155057e5ab0cdb20a9a11614bbb09bb49ad.camel@yadro.com>
 <20190821163220.GA11547@roeck-us.net>
 <9e7fe5cc-ba1b-b8b6-69c5-c3c6cf508a36@yadro.com>
 <20190821181008.GB15127@roeck-us.net>
 <5cb20f52-884a-b921-c904-ebf244092318@yadro.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5cb20f52-884a-b921-c904-ebf244092318@yadro.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_090132_055940_F739C0B6 
X-CRM114-Status: GOOD (  33.36  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-watchdog@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, linux-kernel@vger.kernel.org,
 Joel Stanley <joel@jms.id.au>, Ivan Mikhaylov <i.mikhaylov@yadro.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 05:36:21PM +0300, Alexander Amelkin wrote:
> 21.08.2019 21:10, Guenter Roeck wrote:
> > On Wed, Aug 21, 2019 at 08:42:24PM +0300, Alexander Amelkin wrote:
> >> 21.08.2019 19:32, Guenter Roeck wrote:
> >>> On Wed, Aug 21, 2019 at 06:57:43PM +0300, Ivan Mikhaylov wrote:
> >>>> Set WDT_CLEAR_TIMEOUT_AND_BOOT_CODE_SELECTION into WDT_CLEAR_TIMEOUT=
_STATUS
> >>>> to clear out boot code source and re-enable access to the primary SP=
I flash
> >>>> chip while booted via wdt2 from the alternate chip.
> >>>>
> >>>> AST2400 datasheet says:
> >>>> "In the 2nd flash booting mode, all the address mapping to CS0# woul=
d be
> >>>> re-directed to CS1#. And CS0# is not accessable under this mode. To =
access
> >>>> CS0#, firmware should clear the 2nd boot mode register in the WDT2 s=
tatus
> >>>> register WDT30.bit[1]."
> >>> Is there reason to not do this automatically when loading the module
> >>> in alt-boot mode ? What means does userspace have to determine if CS0
> >>> or CS1 is active at any given time ? If there is reason to ever have =
CS1
> >>> active instead of CS0, what means would userspace have to enable it ?
> >> Yes, there is. The driver is loaded long before the filesystems are mo=
unted.
> >> The filesystems, in the event of alternate/recovery boot, need to be m=
ounted
> >> from the same chip that the kernel was booted. For one reason because =
the main
> >> chip at CS0 is most probably corrupt. If you clear that bit when drive=
r is
> >> loaded, your software will not know that and will try to mount the wro=
ng
> >> filesystems. The whole idea of ASPEED's switching chipselects is to ha=
ve
> >> identical firmware in both chips, without the need to process the alte=
rnate
> >> boot state in any way except for indicating a successful boot and rest=
oring
> >> access to CS0 when needed.
> >>
> >> The userspace can read bootstatus sysfs node to determine if an altern=
ate
> >> boot has occured.
> >>
> >> With ASPEED, CS1 is activated automatically by wdt2 when system fails =
to boot
> >> from the primary flash chip (at CS0) and disable the watchdog to indic=
ate a
> >> successful boot. When that happens, both CS0 and CS1 controls=A0 get r=
outed in
> >> hardware to CS1 line, making the primary flash chip inaccessible. Depe=
nding
> >> on the architecture of the user-space software, it may choose to re-en=
able
> >> access to the primary chip via CS0 at different times. There must be a=
 way to do so.
> >>
> > So by activating cs0, userspace would essentially pull its own root fil=
e system
> > from underneath itself ?
> =

> Exactly. That's why for alternate boot the firmware would usually copy
> all filesystems to memory and mount from there. Some embedded systems
> do that always, regardless of which chip they boot from.
> =

That is different, though, to what you said earlier. Linux would then start
with a clean file system, and not need access to the file system in cs1 at =
all.
Clearing the flag when starting the driver would then be ok.

> However, to be able to recover the main flash chip, the system needs CS0
> to function as such (not as CS1). That's why this control is needed.
> =

If what you said is correct, not really. It should be fine and create more
predictive behavior if the probe function selects cs0 automatically.

Guenter

> As Ivan mentioned, for AST2500 and the upcoming AST2600 the behavior
> is slightly different. They don't just connect both CS controls to CS1 bu=
t instead
> swap them so the primary chip becomes secondary from the software point
> of view. The means to restore the normal wiring may still be needed.
> =

> >
> >> This code most probably adds nothing at the assembly level.
> >>
> > That seems quite unlikely. Please demonstrate.
> =

> Yes, you were right. It adds 7 instructions. We'll drop the check.
> It's just my DO-178 background, I add 'robustness' checks everywhere.
> =

> >>>> +	writel(WDT_CLEAR_TIMEOUT_AND_BOOT_CODE_SELECTION,
> >>>> +			wdt->base + WDT_CLEAR_TIMEOUT_STATUS);
> >>>> +	wdt->wdd.bootstatus |=3D WDIOF_EXTERN1;
> >>> The variable reflects the _boot status_. It should not change after b=
ooting.
> >> Is there any documentation that dictates that? All I could find is
> >>
> >> "bootstatus: status of the device after booting". That doesn't look to=
 me like it absolutely can not change to reflect the updated status (that i=
s, to reflect that the originally set up alternate CS routing has been rese=
t to normal).
> >>
> > You choose to interpret "after booting" in a kind of novel way,
> > which I find a bit disturbing. I am not really sure how else to
> > describe "boot status" in a way that does not permit such
> > reinterpratation of the term.
> =

> How about "Reflects reasons that caused a reboot, remains constant until =
the next boot" ?
> =

> > On top of that, how specifically would "WDIOF_EXTERN1" reflect
> > what you claim it does ? Not only you are hijacking bootstatus9
> > (which is supposed to describe the reason for a reboot), you
> > are also hijacking WDIOF_EXTERN1. That seems highly arbitrary
> > to me, and is not really how an API/ABI should be used.
> =

> We used WDIOF_EXTERN1 because:
> =

> 1. We thought that bootstatus _can_ change
> =

> 2. We thought that adding extra bits wouldn't be appreciated
> =

> Now as you clarified that assumption 1 was wrong we are going to implemen=
t status as I proposed earlier:
> =

> >
> >> I think we could make 'access_cs0' readable instead, so it could repor=
t the
> >> current state of the boot code selection bit. Reverted, I suppose. That
> >> way 'access_cs0' would report 1 after 1 has been written to it (it wou=
ldn't
> >> be possible to write a zero).
> =

> With best regards,
> Alexander Amelkin,
> BIOS/BMC Team Lead, YADRO
> https://yadro.com
> =

> =





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
