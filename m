Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33944146544
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 11:01:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3WQkS8hPCCtDlutxVGtA80LwgxsOzBXw8/cC8nq7mkg=; b=BiYenYPko/CLy4
	9sqC2TNWq9E+2bLwjHYkRjfrzGfT5Ck+sB1VfqhZeXsYtfyPECf8SYCUIeK52vZhB6oDp1ZL4rMud
	0Dad+fgfPxa+XY9rCp0TAfWegw0dx9RH9oGQnvJfhRQa4fwKVL+tBaoMiqQviXIzQPYuyk9QEAPaG
	NnrdqPD4urChDqYK6ZOjwMU+GQy3gdfLr7cmzlP6WbWUD8Rnlvr3ihYAQa4bs5LykKarhA8TD6wnX
	LkydrnKHGB8SgMgzq/OvIMMk7r1G0itFJpFG4Ol0MY9l1Ueg5hSdz6Yy6PsKABTpt9vzbBchgEJAI
	qYswSmBdxEMqhazCqInw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuZIE-0006Ht-4A; Thu, 23 Jan 2020 10:00:54 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuZI4-0006Gh-AC
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 10:00:47 +0000
Received: by mail-ed1-f65.google.com with SMTP id v28so2672837edw.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 02:00:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Vf2LEPghHkSvKBrXWZPAO0VwLPzYKVKYFia5aNnUKic=;
 b=Bsdf/hV/mqKI+mbgaDjvsEL4qt4Riq4nlbPDBInKRAhxG7WrHG75Jb0vPxkfm8AFqC
 IHslSrRb8orGvXjihSulE9QAvZyPzW0SSJbsD6vjnNYISRY3vALnXFsBgZHdZDC1yRL4
 6aSxLPEnXgGK1pP3o3W5PqBUaNBdwlKn53H0BndCzDHm3oREuieEoAxQYMYnio/qvcOP
 9+jmN6PN1bX8c+5pRj2n2II0bfTAaVhb1G/ZUYenQogUnA/N86GDGoC0VkMLCJERQDHg
 vkOXfhafs9WGME+OZyU3/LmrA2vtgvjS1zdGbQoLNunpZsurwLpnIxhRCtTuozp9FuKv
 cYZw==
X-Gm-Message-State: APjAAAWKnrALRy3Ab0BkziXoWc4ckWfOBInf5oFzxhatTO7ZNwY72Lvf
 59kFLqNiX8KKtkcW30qs0GE=
X-Google-Smtp-Source: APXvYqwg6hvXvf9VIf9L/M232l4c4678SdLLT/iriy2Shu2alAX41WXTpnBjPFK2hZjvXrRcm3n3kQ==
X-Received: by 2002:a17:906:19d8:: with SMTP id
 h24mr6143965ejd.166.1579773642698; 
 Thu, 23 Jan 2020 02:00:42 -0800 (PST)
Received: from pi3 ([194.230.155.229])
 by smtp.googlemail.com with ESMTPSA id r24sm10440edp.15.2020.01.23.02.00.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jan 2020 02:00:41 -0800 (PST)
Date: Thu, 23 Jan 2020 11:00:39 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Wolfram Sang <wsa@the-dreams.de>
Subject: Re: [PATCH v2 1/2] i2c: Enable compile testing for some of drivers
Message-ID: <20200123100039.GA2465@pi3>
References: <1578384779-15487-1-git-send-email-krzk@kernel.org>
 <20200123091228.GB1105@ninjato> <20200123093120.GA2365@pi3>
 <20200123094107.GD1105@ninjato>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200123094107.GD1105@ninjato>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_020044_354568_A7E4F002 
X-CRM114-Status: GOOD (  16.99  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
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

On Thu, Jan 23, 2020 at 10:41:07AM +0100, Wolfram Sang wrote:
> On Thu, Jan 23, 2020 at 10:31:20AM +0100, Krzysztof Kozlowski wrote:
> > On Thu, Jan 23, 2020 at 10:12:28AM +0100, Wolfram Sang wrote:
> > > 
> > > >  config I2C_ZX2967
> > > >  	tristate "ZTE ZX2967 I2C support"
> > > > -	depends on ARCH_ZX
> > > > -	default y
> > > > +	depends on ARCH_ZX || (COMPILE_TEST && (ARC || ARM || ARM64 || M68K || RISCV || SUPERH || SPARC))
> > > > +	# COMPILE_TEST needs architectures with readsX()/writesX() primitives
> > > 
> > > The list of archs neither looks pretty nor very maintainable. My
> > > suggestion is that we leave this out of COMPILE_TEST until we have
> > > something like ARCH_HAS_READS or something. What do you think?
> > 
> > Indeed it does not look good. However having compile testing allows
> > kbuild to run sparse and smatch which already started pointing minor
> > issues in existing drivers.
> > 
> > Yeah... pros and cons... I don't have a strong opinion to keep it. Since
> > patch is important, maybe let's just skip this part?
> 
> Yeah, let's skip it for now. If you or someone is keen on having it,
> something like ARCH_HAS_READS (<- needs better name) should be
> introduced so we can use it here. But that can/should be handled
> incrementally.

Shall I send v3 or mayybe can you apply without this hunk?

Best regards,
Krzysztof



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
