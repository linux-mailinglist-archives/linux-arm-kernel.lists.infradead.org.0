Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7544720CEA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 18:27:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GOk8oI+ggRVV3CD0Jc5c+mPCCwFdGwCqKZztG0klMOw=; b=TOE3w6rPlgMxQ1
	RhRONQqsU0tEA+CD9zbYcu1L26GbVNNPa3vpllK0nvqUV8HLY5JI1Jiwk441bQ19grs2RsVx8zX5Y
	cc3nQvWDswrvGk1P4ZHXePpPlgb9VlX1Xlw/4z7dIgtIA7AerVGiRLssCvVu1jpwuUtUskoauEQKs
	4p/R8TxyV3sQYN+uTJ/tno3K5e7iPtHPtpkPb2qv2bw5AgqRleLAUc5wuNNKGVcKOC60Picn+eZ6w
	EMtTTw/X+SMmOLdyQ9+DRdT1dyFN3YnfudlP1I0yvItTsvSAFHg6wKC3TR5HRk5ujB+q0zj8zwFLc
	3owjxjw5kp+QjqSvVuig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRJDv-0007TE-81; Thu, 16 May 2019 16:27:15 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRJDn-0007Sn-36
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 16:27:08 +0000
Received: by mail-lj1-x242.google.com with SMTP id h11so2319358ljb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 09:27:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CJn+s1/9iwnST3l6oaCFH3Pabu3jpALwTCNZgnOPKSk=;
 b=RbIOcHhbe/wAJnhmE+X0+jqRT3pY8KcZzvhJF5Lg9TwQ8gVf3VLYKAsRoqwWTQp4qX
 GNwZxaLxD1imdCwMmdAyJyfUGNksYji2fm0afsXvot60M+nvGFT0cP+SGpPpRIIjwh3a
 zRlK4oU9gZLMtkC00ta8Onnj2sYvjd9PLdIOI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CJn+s1/9iwnST3l6oaCFH3Pabu3jpALwTCNZgnOPKSk=;
 b=InMZELYRX53SNeuxrO9LqNfU8pe98YXLlqXnNwwvQGNGJmlWdCln7s7D5g2bSYGH44
 l/9SJgVqKALN8Sd+3K2gXjAi8CkOHK0m2uMyWK24ftpIweOhN9SzONrXW0VnNFBm0QWY
 abiKZA2X8RofGsDmr2QJWObucg7Qk7SZVOTThTfOqQoXsLJCFGe5CfJSrlyrEUi803Ss
 a4S+GW18ja0L9ddgA0k475lCYQ5nRfoJifmEny73ZkPE3uoCJVk9WyttXSGZfqkcSLfX
 1Y41yl7jcyDP8Mj3dHqf/3POz7IPo80G8R6LaiAMAguoLmWaSqRDNwpG7ZYO46EzaREh
 OVaQ==
X-Gm-Message-State: APjAAAUwO3KMOYIBB5T13+6cLVj04eYwMMZ65AQZmOQkC+RmpYi965NS
 tB6EYoE40eI6mCXQ7RmDkqHWl4pPoAU=
X-Google-Smtp-Source: APXvYqzpeinNxRN0afRVLVY6Rm1QFMVselX13ZE4W9qo7HDQ6w9y2+1dqTQpoq4jwEK8GPuBOaf9og==
X-Received: by 2002:a2e:9e14:: with SMTP id e20mr9444533ljk.172.1558024024662; 
 Thu, 16 May 2019 09:27:04 -0700 (PDT)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com.
 [209.85.167.46])
 by smtp.gmail.com with ESMTPSA id h2sm1048265lfm.17.2019.05.16.09.27.03
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 09:27:04 -0700 (PDT)
Received: by mail-lf1-f46.google.com with SMTP id q17so3142454lfo.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 09:27:03 -0700 (PDT)
X-Received: by 2002:ac2:5212:: with SMTP id a18mr25173004lfl.166.1558024022880; 
 Thu, 16 May 2019 09:27:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190516064304.24057-1-olof@lixom.net>
 <20190516064304.24057-4-olof@lixom.net>
In-Reply-To: <20190516064304.24057-4-olof@lixom.net>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 16 May 2019 09:26:46 -0700
X-Gmail-Original-Message-ID: <CAHk-=whb-KituxcvM6ZPuXqyPX+rJENb8cnGCPbGE9pyqwOmXA@mail.gmail.com>
Message-ID: <CAHk-=whb-KituxcvM6ZPuXqyPX+rJENb8cnGCPbGE9pyqwOmXA@mail.gmail.com>
Subject: Re: [GIT PULL 3/4] ARM: SoC-related driver updates
To: Olof Johansson <olof@lixom.net>, Patrick Venture <venture@google.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_092707_137167_E7E26CE1 
X-CRM114-Status: GOOD (  18.01  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: ARM SoC <arm@kernel.org>,
 Linux List Kernel Mailing <linux-kernel@vger.kernel.org>,
 "linux-alpha@vger.kernel.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 11:43 PM Olof Johansson <olof@lixom.net> wrote:
>
> Various driver updates for platforms and a couple of the small driver
> subsystems we merge through our tree:

Hmm. This moved the aspeed drivers from drivers/misc to
drivers/soc/aspeed (in commit 524feb799408 "soc: add aspeed folder and
misc drivers"), but in the meantime we also had a new aspeed soc
driver added (in commit 01c60dcea9f7 "drivers/misc: Add Aspeed P2A
control driver").

I ended up resolving that "conflict" by moving the new aspeed P2A
control driver to be with the other aspeed drivers too. That seemed to
be the cleanest model.

I'm used to doing these kinds of fixups in a merge, but I have to
admit that maybe I should have made it a separate commit, because now
it's kind of non-obvious, and it's sometimes harder to see changes
that are in a merge commit than in a separate commit.

In particular, it looks like "git log --follow" is not smart enough to
follow a rename through a merge. But I think that is a git problem,
and not a very serious one at that ("git blame" has no such problem).

And it means that now the merge has

 drivers/{misc => soc/aspeed}/aspeed-lpc-ctrl.c                   |   0
 drivers/{misc => soc/aspeed}/aspeed-lpc-snoop.c                  |   0
 drivers/{misc => soc/aspeed}/aspeed-p2a-ctrl.c                   |   0

when you do "git show --stat" on it, which looks correct, and it feels
like conceptually the right merge resolution to me.

Sending out this explanatory email to everybody involved, just so that
this doesn't take you by surprise. But it looks like Patrick Venture
is not just the author of that moved driver, he was also involved in
the move of the two other drivers, so I'm guessing there's not going
to be a lot of confusion here.

HOWEVER. More subtly, as part of my *testing* for this, I also
realized that commit 524feb799408 is buggy. In my tests, the config
worked fine, but the aspeed drivers were never actually *built*. The
reason is that commit 524feb799408 ends up doing

   obj-$(CONFIG_ARCH_ASPEED)      += aspeed/

which is completely wrong, because the Kconfig fules are

        depends on (ARCH_ASPEED || COMPILE_TEST) && REGMAP && MFD_SYSCON

so those drivers can be configured even if ARCH_ASPEED *isn't* set.
The Kconfig part works fine, because the soc/aspeed/Kconfig file is
included unconditionally, but the actual build process then never
builds anything in the drivers/soc/aspeed/ subdirectory.

I solved _that_ problem by adding a new config option:

  config SOC_ASPEED
      def_bool y
      depends on ARCH_ASPEED || COMPILE_TEST

and using that instead of ARCH_ASPEED.

End result: this was a somewhat messy merge, and the most subtle mess
was because of that buggy 524feb799408 "soc: add aspeed folder and
misc drivers").

I *think* I sorted it all out correctly, and now I see the aspeed
drivers being built (and cleanly at that) but I really *really* want
people to double-check this all.

Also, I think that the same "we don't actually build-test the end
result" problem exists else-where for the same reasons.

At the very least, drivers/soc/{atmel,rockchip,zte} seem to have the
exact same pattern: the Kconfig files enable the drivers, but the
Makefile in drivers/soc doesn't actually traverse into the
subdirectories.

End result: CONFIG_COMPILE_TEST doesn't actually do any compile
testing for those drivers.

I did not try to fix all of those things up, because I didn't do the
driver movements there.

                  Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
