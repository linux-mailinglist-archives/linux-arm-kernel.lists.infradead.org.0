Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7368717E2E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 18:37:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CEWdLv6+KXVFLjkXYmcqO1bjQYgMaz7nvA05CtBYlrc=; b=ecPpgRCxVauWUy
	3t58owwpEkoPh03QLzCFuHstDDVLZJnygRzOGK28rC0L5GsbR00nofu28rutDrAPCznbJuTQHP8JF
	DucYGfNtRkWpfPFwG0OSqdMf5WviYH2R5HM0Lx2FZKtexOPQK2cRlYXGtMQcJxKsbqAFyLrpGAryp
	jjnN6Y8AXdWHszrWf1fasYRH49r5rGlWjTYaFpen7iNEAEKbYs2xH1wJxglghwfOLLrFYIK8aBDyO
	Szu2hZzSv3wH4OhKfUpQcVikNX+DNA58AMfYWpcuEwNCaI6cM/Dq2DVrFL4ibXURi1z4e9JwpKdUs
	mbEO0lqKURJ+wKtCSj/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOPZM-00037m-VR; Wed, 08 May 2019 16:37:25 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOPZF-000371-1q
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 16:37:18 +0000
Received: by mail-pl1-x643.google.com with SMTP id n8so10186086plp.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 09:37:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=8Rth5LMPanMApgd/5gh0bE/u6yHTk5Ixmh3ZXSY6tUE=;
 b=s8yhU8FHqNYA+4qZIRdGTOgMBb6OO9HAEyWtfylRB390Y5/R0FVMpDFgZPhU1PxIct
 9FnDcP/32W2R5UztHlyttVCHcn1Fy1Uya6CB8NFC09/un5EwTZGBEXAkeYi+d+cLmDEV
 Dq9KCUkxpmurCBYwT5rpkdos3qCpu2wQaXe07g7GSZlw4zFbPejlGrcD+yJKA4r2EBpJ
 /5mxLEUnMYtDL8FQu6KxaAtykzaiBPWc2KZXuamz5C6uRIJhxh581AVT7Y7Gt3mz4GsY
 qUaRzSjr+bEpZzT1GIpc6adHzjgFnI+bzc+VGdHkCUyyMFpedJoYtC3NcS6cramN3Qda
 gAWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=8Rth5LMPanMApgd/5gh0bE/u6yHTk5Ixmh3ZXSY6tUE=;
 b=MTaCUfgsGNia1w+hCav1NbXXj5rtyOwezvPdlP33YVW2fPttDfkegy6ty8a1NxzvSv
 6dKI0bYX+X2H1eaFaatkW/Czcb+i12YuJc8blVP6tNNgIkbq06w7ygOZSe92HtbBJyQO
 xlg6Q0XoCQbme3qMGNdmFnZVResuAEUi9jkHO9FZAn/JVQCVeR6ct1mwA/17HhR+jA/2
 AAq095rr2rh0hqNVfJGHdE4ZxvHsj163KlGrkgADYa2myI16GVhv0Y0Ye8QNYzwzMpcb
 5zO1NTCgUQ6E1eQeNlqlE+jUDdgGQbCXhxv5GNDQQXyPlL/c2O72gyU6KkFsrDV126TQ
 D6Pg==
X-Gm-Message-State: APjAAAV2Z1w1umBSwxKJ4juBE/FBFpo2w1heTRbb2aBp/+0PvYidSneI
 PHrFz+7NBdEz+UuHx6ZEczI=
X-Google-Smtp-Source: APXvYqwalOY72qOhZHHeKJXR+QWtGOoZtNa9wH0KJnHZO/ldDmlVSKB5HcudwDRGOypSHDg6IjVyWg==
X-Received: by 2002:a17:902:4624:: with SMTP id
 o33mr48740289pld.191.1557333435960; 
 Wed, 08 May 2019 09:37:15 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id o81sm28457340pfa.156.2019.05.08.09.37.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 09:37:15 -0700 (PDT)
Date: Wed, 8 May 2019 09:37:14 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v3 0/2] hwmon: scmi: Scale values to target desired HWMON
 units
Message-ID: <20190508163714.GC5495@roeck-us.net>
References: <20190507230917.21659-1-f.fainelli@gmail.com>
 <20190508113452.GA27209@e107155-lin>
 <8421b37b-5d20-ab0d-3ae8-b6f63048c156@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8421b37b-5d20-ab0d-3ae8-b6f63048c156@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_093717_329518_AD71E126 
X-CRM114-Status: GOOD (  23.72  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.1 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "open list:HARDWARE MONITORING" <linux-hwmon@vger.kernel.org>,
 Jean Delvare <jdelvare@suse.com>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 08, 2019 at 09:26:10AM -0700, Florian Fainelli wrote:
> On 5/8/19 4:35 AM, Sudeep Holla wrote:
> > On Tue, May 07, 2019 at 04:09:15PM -0700, Florian Fainelli wrote:
> >> Hi Sudeep, Guenter,
> >>
> >> This patch series adds support for scaling SCMI sensor values read from
> >> firmware. Sudeep, let me know if you think we should be treating scale
> >> == 0 as a special value to preserve some firmware compatibility (not
> >> that this would be desired).
> > 
> > So are we providing raw values from sensors.c and handling conversion
> > in hwmon layer ? I was thinking of just providing converted values
> > to hwmon just in case if the scaling thing change in future with
> > newer versions of SCMI.
> 
> These are the reasons why I went with doing the scaling in scmi-hwmon.c:
> 
> - scmi-hwmon.c is where we know the target units that should be matching
> the HWMON conventions, if we put that scaling into sensors.c that would
> be a layering violation IMHO
> 
> - within sensors.c we don't have a struct scmi_sensor_info to work with
> when called with reading_get, we have a sensor_id, so we would have to
> look up the id to struct scmi_sensor_info which is an additional loop,
> doing this in scmi-hwmon.c gives us access to that structure directly
> 
> - scmi-sensors.c is also the location where the mapping between SCMI
> sensor type to HWMON sensor type is done, so if we need to update the
> scale from one to the other, we would rather do that where the mapping
> is already done, which goes back to the first item.
> 
> > I am fine either way, just trying to keep
> > hwmon-scmi simpler. I will check if scale = 0 needs to be treated as
> > special(I don't think so, but will read the spec)
> 
> My concern is not so much with the spec but with assumptions SCMI
> firmware writes might have made while populating sensor values. The spec
> does not indicate any special treatment about a particular unit power of
> 10 scale being done or not, and a power of 0 = 1, so that should work okay.
> 

FWIW, I agree with Florian. hwmon decides which units it wants to use.
Anything else would have to be more complicated: hwmon would have to request
the scale from SCMI, and SCMI would have to adjust its reported value based
on that. It is much easier to just take what we get and adjust internally.

Thanks,
Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
