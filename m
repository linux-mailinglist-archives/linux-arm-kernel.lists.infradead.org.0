Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C1986C91
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 23:43:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EyJe3tZ8uErgmoSN5qTvGz9Lc2NLx3Xp3T9nKg9SC+o=; b=SebtbiKLPIsYLj
	J8s36pXoWT+RRuAdmCw0AN0YUJSajNcN8XzuoFxH2vOFvuwmIHWYv/5m43uluzQS2zl2uXlQvT3dr
	qft6rog9uG695BO4/VwXAdVRIW/DyssAq+XzLfzizFoVdi/PT5R8L6mdzrSVjwJVuKexsqKTaV8he
	xMbwkvt3kjOtNbOFwns2DuTNWHl3k0egzKZ2tGh+Zy+kMJzePnMYzRy0MDwRiXN/TH0984jzP9cK+
	Fo7XXDr4D7TfYusbGQKVoLtRtsOAwa9gzYCRolH8psnx5E2TcZz+NPZs2JCKd0SlNA4qXJGbGwBAI
	FP4lKH+oDUAZEpXv3oVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvqBh-0004Xz-Ka; Thu, 08 Aug 2019 21:43:09 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvqBa-0004XL-KU
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 21:43:03 +0000
Received: by mail-pf1-x442.google.com with SMTP id r1so44818608pfq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 14:43:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=1bNgei30R6lkF3hz+NsVCnBAfvYU1eRUdoqwp3463t0=;
 b=PysEoIwt1QJUUowEDG3pVbNXkkflSPVaaCMFeBIrhGNvwPHuXwGT/TPYdysEaTJI3b
 UV1nmlhyB52On3hIZeqIP71Pys6yrENCPU5q2zZKsebz16UcrAWC2W1kCIBJ6liUp/kq
 r0xvqRlxjLLMakLhHlTzi1Y9xGICGoA1xer3kNcciftJR+6M+6jlc8WkEWm0zJZRv/5i
 vS7VQaEBefSYc5Ru6fSuinXx9Q8JEw8XQq8VSyvcrVVkK2K/Urjh3ZSN2teV7rxf39XB
 2n9xCZ97baGKPApYifT0fumuWGrozzknixJosH5u4UELLWRedE+lC2KljjtJVNTSUDbN
 LQUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1bNgei30R6lkF3hz+NsVCnBAfvYU1eRUdoqwp3463t0=;
 b=bjT6XB8NLOU+QzUG7BCKEadOLm6iY4St+dv2m2uPUlbNl1Z+den0WjXzlooeoGHAsR
 nv+bkHQD36+hhzdo6oScOs0rVweGGP/3hFeYoEKuLHwnUGVqQHhncmb5h3iUG3q45TQ9
 GUmhnKhnDlUnNomz/dx7uX+re3HZkrwSDINHMTDErGRi5CvsUwRs9ijakKJfpFUTMn2L
 7QN2DARIjLhwzSYNOjk1bOodH7IPfJXoU2NJwI40Q+DbyXhZkWGR3M0ey4J7ZWfia60N
 GGMU79yrFcN1s8p4rq5ibFplBK6VXHkfir/V9GOMnE1BRhpr1NkscK0E6Th6sEkp/fO9
 96IQ==
X-Gm-Message-State: APjAAAUI8cnTfAq64UyDI00bqnJqw9daAlvJbl6x3hu6kSX3pBoSAmdn
 U+4UCtsTJgKM5cMlQBGmd0s=
X-Google-Smtp-Source: APXvYqwEYgsfXg+hfoqo9RDdSe7+E36ffIyFkz/VT7eIvM9O8msVvBj84QMApyZWdQt9WCiZrKVPCw==
X-Received: by 2002:a63:e306:: with SMTP id f6mr14301648pgh.39.1565300580917; 
 Thu, 08 Aug 2019 14:43:00 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id ev3sm16522616pjb.3.2019.08.08.14.42.59
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 08 Aug 2019 14:42:59 -0700 (PDT)
Date: Thu, 8 Aug 2019 14:42:57 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 13/22] input: omap: void using mach/*.h headers
Message-ID: <20190808214257.GF178933@dtor-ws>
References: <20190808212234.2213262-1-arnd@arndb.de>
 <20190808212234.2213262-14-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808212234.2213262-14-arnd@arndb.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_144302_695851_1B77F8D2 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>, Tony Lindgren <tony@atomide.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 linux-kernel@vger.kernel.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 linux-input@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,

On Thu, Aug 08, 2019 at 11:22:22PM +0200, Arnd Bergmann wrote:
> By using the new linux/soc/ti/omap1-io.h header instead,
> compile-testing can be enabled, and a CONFIG_ARCH_MULTIPLATFORM
> conversion of omap1 may eventually be possible.
> 
> The warning in the header file gets removed in order to
> allow CONFIG_COMPILE_TEST.

Given that we want to migrate people off this driver everywhere but
OMAP1 I wonder why we would want to improve compile coverage of it.

Thanks.

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
