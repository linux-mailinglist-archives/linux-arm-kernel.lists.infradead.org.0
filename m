Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A8DA14E42D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 21:43:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T/DOFX7NAfljT6fHclctDeWj4lR2rnVZPsPAZWvyIjU=; b=ENflVvMGvG6jQy
	AJi+yn1EljIuIFGFO0380HXpXz8hSnPR1xZOSrzE+NroPC0HYIFU+TfD2R37dayp5rHdrrlcxAC7w
	SZ9ghy9s/v1MVnGkZfqnFRcZmqHchzPHajomGbPROwQ5AOAjH3hbjYG8XCl3kltLLuLBJSvbMATN0
	KmYdLlEglxUzQi5IXH+PN5xBUfID67trLIzrX9hLEeVTLPvCSwfIdSkRYvI4/yA+PxP/qfef1lzpp
	94VdzTrRG4Dyj0kh9HmZA3H8jj3twMnY119gUW2WjCeCT8lN4YrW2kLPWU/pSSEc9BiC1AFlNOJwz
	qQdYFjJj+JyyxbdYKXig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixGfD-0002ML-FX; Thu, 30 Jan 2020 20:43:47 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixGf5-0002LQ-Ju
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 20:43:40 +0000
Received: by mail-pf1-x442.google.com with SMTP id 84so2089822pfy.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Jan 2020 12:43:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0dxYpvbP3+MitgaCJiQJwbd1PLgONyG5Ng5sN3hHzdc=;
 b=AdqtidcT3UyXX4tOAnsEgclFfQ+sfOYmLxjGeZOjbsO1dNlm6Hz+JFf3TvhvlJO9Wb
 5BJ2UbFzD2Se8VVQoiKvNLl0DnbchDFaZdaJqxkSyQxgvFmmjH9a3K++2MGLrghdgSRL
 Vh6blAXKV1tyNP/0cZ1GHUeWdo4iAjFITjZieOeI/feu6Uws5jf60Iaex3J4hmyys4V8
 oXZEaG83wKW9I9CeNi1f1M5obf9FmqBLfuvYu9FsTKePYFap4zG8nLNrwGg/OkySyAdQ
 WSUjOe8GXmKd6TR2AZOEvfBnzl/THm8g8oIRZhLAjGg1Ydqa7PoaL66Eq2VA/ZgCt4L7
 aV8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0dxYpvbP3+MitgaCJiQJwbd1PLgONyG5Ng5sN3hHzdc=;
 b=ak0z+DqpMtbg2afONMD000bV8x5QdUaPahipl3cL16gu/XuVPPoRUj/7G/EP/4evRq
 qBFQoTCtYb7H3rJBYW7ouADeGNhsYK0zKXBOMxGD4NQUVhJo3Bk9z02SRWT0NIQwp7Zq
 AFrw5J3ZA0YeVSj2DH3sC+t5S8gQPDn+8zZJ2BkSrohTHtYlMYKzsw9aY/0dN555x4zZ
 Rmi5T+Gg4aaWb5PO9WQJhznL+sVd613gXb+wiSsx6BKgIMBD2NVNjE1pzZkx9nCs+c7j
 cFOt1kLv1xhv4bPfnC83fYRIT+P9zOJHmaa4OvqqdmehrhU0HQlUiZnDT6vs/bJRjOQH
 k9Lg==
X-Gm-Message-State: APjAAAXo4Wc231AzAG9Pdk4JQwEQHZwg/EpO0WqUYOoJXY+tP9PDG7/S
 p+fdFPzUiNWGJ8F69+dfgVfoguhYg5Fb6U6X6ob2JdGFvnoe8A==
X-Google-Smtp-Source: APXvYqxtungvuJiW+tQaf+Q4OiC4fCw/m5Y6NFIJtHQbGTC2Ce2BKAtg6nHhDwrtGEnA52l43PrAt1t3SwmrQzwCwg4=
X-Received: by 2002:a65:5242:: with SMTP id q2mr6412421pgp.74.1580417015788;
 Thu, 30 Jan 2020 12:43:35 -0800 (PST)
MIME-Version: 1.0
References: <20200127231208.1443-1-s-anna@ti.com>
 <CAHp75VfaOfBZYjQa960keORW=VjOn2PdwoYpJMG7SsN83daSJg@mail.gmail.com>
 <99a04c52-1ff6-1611-5cf6-2c71b810ba43@ti.com>
In-Reply-To: <99a04c52-1ff6-1611-5cf6-2c71b810ba43@ti.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 30 Jan 2020 22:43:25 +0200
Message-ID: <CAHp75VfhLDpuJD+ftdEWt3bwooRD5U=KfOnKZeKm9d4N21HOtw@mail.gmail.com>
Subject: Re: [PATCH v2] mfd: syscon: Use a unique name with regmap_config
To: Suman Anna <s-anna@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_124339_677858_1AC3A13B 
X-CRM114-Status: GOOD (  15.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: David Lechner <david@lechnology.com>, Arnd Bergmann <arnd@arndb.de>,
 Tony Lindgren <tony@atomide.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux OMAP Mailing List <linux-omap@vger.kernel.org>,
 Lee Jones <lee.jones@linaro.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 30, 2020 at 7:09 PM Suman Anna <s-anna@ti.com> wrote:
> On 1/30/20 9:34 AM, Andy Shevchenko wrote:
> > On Tue, Jan 28, 2020 at 1:14 AM Suman Anna <s-anna@ti.com> wrote:

...

> >> -       syscon_config.name = of_node_full_name(np);
> >> +       syscon_config.name = kasprintf(GFP_KERNEL, "%pOFn@%llx", np,
> >> +                                      (u64)res.start);
> >
> > Explicit castings in printf() usually tell us that something is not okay.
>
> Yes, I agree in general.
>
> > Yes, for resource_size_t we have %pa.
>
> And that was the first thing I tried when doing v2, before moving away
> from it. This is not for a console printf statement, but is rather for
> the regmap debugfs name. Using a %pa adds the 0x and leading zeros in
> the debugfs name, when compared to the name before this patch. The
> typecast retains the current format, and replaces the unit-address
> without the leading 0s either. Introducing a local-variable to avoid the
> typecast is overkill.

Thanks for the clarification.

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
