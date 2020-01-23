Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCD851464A4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 10:31:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XVHr9oy6VDp7VC1NFr42LMDxggBm3Y+pYLtrZf5FX7s=; b=T1UNRb/qGTW5ud
	ednEojz/iyAqrmiDafZnKl58sNLMNDLDel4G1tNVd/bYeV0q2XVCsz0Y7Xr4bH9P6ed6glD6L4te8
	Lc9BoSauE76IlRaHulKUKUixuUNaaCLgMR4st60c4wNvA0mUM7GfrgNEJ1SAo190RKweC+jahSZhH
	xLacim5AON+C5NgJa29JF1KMn09jLT2Q/l4l64cik+RGfed1+Z4kHpKkpNb9Uz+zNt5oPU2zDBYKU
	Frgn7GJ8VM3OxNvs5QYEUPGxCUZr0cv0pqLAZKz0bJTMddpdnuEjvye8PGIKgKfyr5Iu4wz04dMoF
	t9imrOcg/dUTEd/iGgoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuYpt-0001N0-20; Thu, 23 Jan 2020 09:31:37 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuYpi-0001Lw-Ce
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 09:31:27 +0000
Received: by mail-ed1-f66.google.com with SMTP id bx28so2605231edb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 01:31:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=R1J6FCR4iw6F143Mrog9ddQTJ4O+wJBhPa0ux9+3yY8=;
 b=pFDDoDTe3Et2tjn6ws024l5ob7oEkMEoHk5V+gJERogvAfqq+wQ/ySxzZphCTWBfIP
 cCxVMLAJnDhzigHQ/0J1e0SDlfFgolnbFwVZ6ZLYryBbBZ8aGboJwU2r+aOk2qP1wS2X
 yAJSeqqMF+j7+28+gAbvMp5R0cRqZFVc+WqgeSuwpnLkJiYyrdqnb422iIyhSrgQ5B6t
 zdxChTbfZcaPLP3rGILs3xY+DTUmb8uXnI1HQaD08H6bq+9nUm+AnqQ+tL1JZm39TEvt
 0fIdQBwtA5f/FijbOI3I6N2qYvoPValcNaOd9SUbEH2tbxsk2vQZ/re7pqHUffaotYBe
 DrJg==
X-Gm-Message-State: APjAAAVtC3gNrX3t+w8icki469XWWqSpt9xXGjq4KWwTbFJ27Owrj7YP
 fKH9BPMXn4xj8ScsgkzDUiI=
X-Google-Smtp-Source: APXvYqwidU7GWgMJb55gz0w+PLoJyZZqodHUu04xJ43Vh76V+omwmhwQwEgK/DA64YUcFlx9Aen1fQ==
X-Received: by 2002:a05:6402:30b7:: with SMTP id
 df23mr6178248edb.325.1579771883413; 
 Thu, 23 Jan 2020 01:31:23 -0800 (PST)
Received: from pi3 ([194.230.155.229])
 by smtp.googlemail.com with ESMTPSA id dx7sm48267ejb.81.2020.01.23.01.31.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jan 2020 01:31:22 -0800 (PST)
Date: Thu, 23 Jan 2020 10:31:20 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Wolfram Sang <wsa@the-dreams.de>
Subject: Re: [PATCH v2 1/2] i2c: Enable compile testing for some of drivers
Message-ID: <20200123093120.GA2365@pi3>
References: <1578384779-15487-1-git-send-email-krzk@kernel.org>
 <20200123091228.GB1105@ninjato>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200123091228.GB1105@ninjato>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_013126_427835_0F1FA615 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>, Greg KH <greg@kroah.com>,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Jarkko Nikula <jarkko.nikula@linux.intel.com>, linux-i2c@vger.kernel.org,
 Geert Uytterhoeven <geert@linux-m68k.org>, Jean Delvare <jdelvare@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 23, 2020 at 10:12:28AM +0100, Wolfram Sang wrote:
> 
> >  config I2C_ZX2967
> >  	tristate "ZTE ZX2967 I2C support"
> > -	depends on ARCH_ZX
> > -	default y
> > +	depends on ARCH_ZX || (COMPILE_TEST && (ARC || ARM || ARM64 || M68K || RISCV || SUPERH || SPARC))
> > +	# COMPILE_TEST needs architectures with readsX()/writesX() primitives
> 
> The list of archs neither looks pretty nor very maintainable. My
> suggestion is that we leave this out of COMPILE_TEST until we have
> something like ARCH_HAS_READS or something. What do you think?

Indeed it does not look good. However having compile testing allows
kbuild to run sparse and smatch which already started pointing minor
issues in existing drivers.

Yeah... pros and cons... I don't have a strong opinion to keep it. Since
patch is important, maybe let's just skip this part?

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
