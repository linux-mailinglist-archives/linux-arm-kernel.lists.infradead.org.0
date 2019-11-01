Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D87F1EC279
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 13:07:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=chE6SACoE3VmYifzv/djlF3DESLG0VtTZFz9CfGlFpU=; b=IF3rpuQEaI2Q6d
	3vn/zO5VbU5/Z6ps4pKyuoOz4smKjW1vnya8mh7DKpd8KcRgJGfeyz7xdqpyXJgCNAqpt5MHiUh9i
	KCnqK7MNxegcHD7bVd0VPjiQitM/2qni56y073cr3OqKeRKxL+zLsYi4jRDze8X15Bhl0INR0dgIG
	glWdWs9GZHdzCPYwrLPkMm00oYsP6s/AnygIsfPDTSwFDF08A9lnGsQ1vtKP4+H0CcCacD1gqxbZr
	bttiNB+58AxGn/HkbfQc0IkeXgAchB85o0RdvaF4wwJdP5L7d6M8Bh7dekQBwjADdFOOaL5VRnd+w
	I98/n9ZtEPFcgJc37Aew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQVi1-0003eD-1I; Fri, 01 Nov 2019 12:07:17 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQVeS-0006N1-LL
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 12:03:38 +0000
Received: by mail-oi1-f196.google.com with SMTP id s5so7923161oie.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 05:03:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YZrok7cgkO94R/GUFiBWhLW1yCsEGrtv4jiMULTddOw=;
 b=EeFXVyGvf+5J7eLwNXvOUgtYi59yicb5K99YmwlX0VTyrli/W5xXvpDnEhZVHWoqMo
 DvzgymQtQCay+aT3yAtzd/c8D25Y7ih5kjJSGzl40BQqQxhszeABDchHrewt8vDYmb8N
 9FCbuqgPR2JdTOMZRLIbNe1mqSb0ri45QyyC1wHGpcjnqyg6HcMX3MeyAtGduEJ65LpX
 iw4d/dyWmqZjqn7zsm4CJrvmjd7s+2nR8Eif1jiUM4mU6HuaLjoCE9mJqTEE9YpQsgrQ
 2h44sr3jpvKw8X/dTU0DRCQb9HNyMd1LGR+Y7ktvVKEMiuFHRhohal8dSmqSJDMd0+Ug
 I86w==
X-Gm-Message-State: APjAAAUQqmBqcaUDPEq5VHF3FMPSbLk65OfGiz0suszjsOB6/rEBhomx
 G19oTT0ee+1bFWptbb/YRCm4McG/1XstMkKqbXQ=
X-Google-Smtp-Source: APXvYqz4jTyd+oOcqRgHj3HeRfxE9Zz96+rDD4WhjiNTdrLb8yg4tNy2W25a3lQBHR8UqRVWEf9W2yc6pERWLOD4Cjc=
X-Received: by 2002:aca:1b05:: with SMTP id b5mr5166663oib.103.1572609814909; 
 Fri, 01 Nov 2019 05:03:34 -0700 (PDT)
MIME-Version: 1.0
References: <c222deda79ad334ff4edcbd49ddda248685c4ee1.1572395990.git.leonard.crestez@nxp.com>
 <3169109.BFaCN5124U@kreacher> <20191031222356.GE27773@google.com>
In-Reply-To: <20191031222356.GE27773@google.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Fri, 1 Nov 2019 13:03:23 +0100
Message-ID: <CAJZ5v0gu-kEXNYyAcpDgK712-Ca+iAtu7OPSW+ECJoiF9fV=eg@mail.gmail.com>
Subject: Re: [PATCH] cpufreq: Add user_min/max_freq
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_050336_722315_8EE117D2 
X-CRM114-Status: GOOD (  16.43  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Saravana Kannan <saravanak@google.com>, Linux PM <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 11:24 PM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> On Thu, Oct 31, 2019 at 11:24:31AM +0100, Rafael J. Wysocki wrote:
> > On Wednesday, October 30, 2019 1:41:49 AM CET Leonard Crestez wrote:
> > > Current values in scaling_min_freq and scaling_max freq can change on
> > > the fly due to event such as thermal monitoring.
> >
> > Which is intentional.
> >
> > > This behavior is confusing for userspace and because once an userspace
> > > limit is written to scaling_min/max_freq it is not possible to read it back.
> >
> > That can be argued both ways.
> >
> > It is also useful to know the effective constraints and arguably the ability
> > to read back the values that you have written is mostly needed for debugging
> > the code.
>
> Agreed that reading the values back is probably mostly useful for debugging.
>
> Reading the effective constraints is a debugging use case as well, userspace
> can't make any decisions based on values which might be in constant flux.

It sometimes helps to diagnose issues on production systems, though.
If you see those numbers change even without writing to the
attributes, for example, that indicates the existence of a source of
frequency constraints in the system (e.g. platform firmware) that
might have gone unnoticed otherwise.

> IMO the current interface is completely counterintuitive, I really hope we
> wouldn't implement it the same way if given a chance to do it again. If there
> is use for reading the effective constraints it should be exposed as a separate
> read-only attribute. Keep it simple (when possible).

I agree that such a design would have been better, but the existing
one cannot be changed this way now.  And I had not invented it. :-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
