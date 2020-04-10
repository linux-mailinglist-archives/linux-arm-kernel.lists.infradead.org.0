Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37AB31A48B7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 19:00:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K/wEhtcWnd4jkwohOU5rbNdi3KYT7yAw85HbhZJc1Y0=; b=G6XjNsk5w81+Lh
	LwK7jeHx0zFcYj6TWSAq2sm/vmM/rdBl828C8hygCH9Nk8G+9LP0e4avd1VrgXh9TzALS9H6COrZu
	JVAfXwrJa0GBDdDl/iMRJFo7YbT3IutYKOSkSPy9kGvo1UsRmkr4W3Cya7xPOvxr+WIwpTtwoYgqG
	Z66M+lD110tswkQNnHKXIHZGAYoVX6UWLfjFwQronZaGwGaZ9BEiGuDZpPZuJNTru0hLZFctgsy1I
	Z1uc7p+ug8Z+9kbIN9YDJFaUT4pInyO4APKnxVnzKoOe2MjkEZygb4vXnq5HUfVcZIB/KzV9anRZB
	UF9L9sIAUn+/yHjFTHcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMx1K-0001BI-Kg; Fri, 10 Apr 2020 17:00:46 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMx1E-00018h-KX
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 17:00:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oUKFqLg3+HDFm2vs2QWf5wGOnTF90+YW2FpbPNodGzs=; b=Gug0M9UyuSpEBsOoExHvkg79nj
 RraZD7s/HpjWHeZhbOm1BTN9DBDiI2Isn1+bvmxmTSDIrbX8CQXtqQh3YB3OwGB7+l/o9XGoDoWCC
 pRm39IUagOU54lOG36W8XUoJ/UXPMnC67Qf+gqMTWNVdbv/3Bt5Fjum7MZRraqCdCQCI=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jMx0O-001zrZ-H4; Fri, 10 Apr 2020 18:59:48 +0200
Date: Fri, 10 Apr 2020 18:59:48 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Jian Cai <caij2003@gmail.com>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
Message-ID: <20200410165948.GD448831@lunn.ch>
References: <20200409232728.231527-1-caij2003@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200409232728.231527-1-caij2003@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_100040_676582_1E3E3376 
X-CRM114-Status: UNSURE (   7.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linus Walleij <linus.walleij@linaro.org>, Peter.Smith@arm.com,
 stefan@agner.ch, David Howells <dhowells@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, manojgupta@google.com,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, ilie.halip@gmail.com,
 Masahiro Yamada <masahiroy@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Krzysztof Kozlowski <krzk@kernel.org>, clang-built-linux@googlegroups.com,
 samitolvanen@google.com, Masami Hiramatsu <mhiramat@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>,
 "Steven Rostedt \(VMware\)" <rostedt@goodmis.org>, jiancai@google.com,
 Doug Anderson <armlinux@m.disordat.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, Patrick Bellasi <patrick.bellasi@arm.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>, Tejun Heo <tj@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 09, 2020 at 04:27:26PM -0700, Jian Cai wrote:
> iwmmxt.S contains XScale instructions

Dumb question....

Are these Xscale instructions? My understanding is that they are an
instruction set of their own, implementing something similar to IA-32
MMX. 

Would it be more accurate to say CLANG does not support the iwmmxt
instruction set?

	    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
