Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6AA511FE4E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 07:01:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kq+tOULlw1G5p+Fbzd3oimgKURxWAWCwuS/zhrnzuMg=; b=fsqFWhaJXzsEOr
	G58jNGqhYU8CWsX4GnA1T1CqpIb0KK6AMpj+bw5TcRXZObBW8QYsMapkUYBxbN5w/Jh65jp8A7w4R
	8c1W+eCAR0ehOoW+9KJsYjxnyubtttNXCU0zntWvZYC3WNKQRaOUueKgE6N6XHZOnRrkKOjBMu/lA
	snGTfvhZnfG6UoHflKA3vxqcyDxGdUznW+Uuc1L9vBCJK27b4X6O9+k1cJptgvluGVLwfEwKm/+kc
	nrFWOoBXCG9ItCzJ7bRA5zmcsydf0c5VVhpx98sP6GYyTPf7fkeDgjTizKbIr2gcSO7almxc4mb+a
	+pwGxRSF2VGxtv8BBxHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igjRm-0000kp-8i; Mon, 16 Dec 2019 06:01:34 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igjRb-0000jp-6G; Mon, 16 Dec 2019 06:01:24 +0000
Received: by mail-qt1-x844.google.com with SMTP id l12so4882003qtq.12;
 Sun, 15 Dec 2019 22:01:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=f2z51NNQPGTMFGtesof0cLcp5BmT40GR+s1mJAxOa+c=;
 b=b6X1jWpTP0RfxR0H/2AEWnknIbaWzzhiV6iFVLwl6X9CxbOBNzjE5GUcxjZ7hJEUAn
 Zc7OU2vHnDk1a726t9a0s/+ZZTMU1TeZTPhtju7Oi59MiMONTQOtK7D7BoAGFq/3OI0q
 8RTFbo/jAklEfgL4DoCUxqRT6V9fIOgVreE/E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=f2z51NNQPGTMFGtesof0cLcp5BmT40GR+s1mJAxOa+c=;
 b=G9xLJHS77USWtCiCcJgsnwatYxRZAksCfd7ooefCB1kZHgNVxmAQS09X1vuWxYkYa9
 KtLLiZYeXTBJ0w1dhBMx3XFVYqxqmhR/qhyQJTSYGqedlQMiXEKfZWIkJLe7rVYHic7i
 Vz5uFn83MRuAsjezisJhneqYbmEjw+85/PPRy8rvxknufbDcoW29A7T0SsOOriGaU17E
 FWMlBb4QLOPjv91Dp2/JDsViuu1eLP8HlKBWn3bd7hmL9cpo6N6Y7W0gwDgLyqW2kZZQ
 KZrJoC8rusB/QHvaHAwxKDxKcffMdjzg9FU4mPrTQxCQh7evn5bfdAaophPAuogszZpD
 iP/Q==
X-Gm-Message-State: APjAAAV5hVML95mjpuDcGKwM95sb49fHjMuMcFthkJdX1bdPvyHYdKlA
 HhW+/MMj5JCrWrP60MF0K1plRt7U8WRDBnjdY6RnUc4HuK4=
X-Google-Smtp-Source: APXvYqwPky1kIBq5TGeLsTIdyi7DvZWNnzatsH+kjC7TN4z5yU4h0spZkmjXTrZZd+qsQ9tWkqeQPGyHHbV6+3Lse00=
X-Received: by 2002:ac8:3467:: with SMTP id v36mr22831465qtb.255.1576476081509; 
 Sun, 15 Dec 2019 22:01:21 -0800 (PST)
MIME-Version: 1.0
References: <20191211192742.95699-1-brendanhiggins@google.com>
 <20191211192742.95699-8-brendanhiggins@google.com>
 <CACPK8XctCb9Q2RaFVHEDuWxKDXpCWMWs-+vnKZ=SeTa3xRnT_g@mail.gmail.com>
 <CAFd5g45MFYMK-eZWPC5fhm2OkynUXKfArUVhbanYVH+qKRUwPg@mail.gmail.com>
In-Reply-To: <CAFd5g45MFYMK-eZWPC5fhm2OkynUXKfArUVhbanYVH+qKRUwPg@mail.gmail.com>
From: Joel Stanley <joel@jms.id.au>
Date: Mon, 16 Dec 2019 06:01:09 +0000
Message-ID: <CACPK8XdgGLLT=RprY8zVW6kKJ6fjJdm4Oxs0uHBv-W5StMyGPQ@mail.gmail.com>
Subject: Re: [PATCH v1 7/7] fsi: aspeed: add unspecified HAS_IOMEM dependency
To: Brendan Higgins <brendanhiggins@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_220123_309776_973FA7E4 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrew Jeffery <andrew@aj.id.au>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 linux-um <linux-um@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 12 Dec 2019 at 00:30, Brendan Higgins <brendanhiggins@google.com> wrote:
>
> On Wed, Dec 11, 2019 at 4:12 PM Joel Stanley <joel@jms.id.au> wrote:
> >
> > Nice. I hit this when attempting to force on CONFIG_COMPILE_TEST in
> > order to build some ARM drivers under UM. Do you have plans to fix
> > that too?
>
> The only broken configs I found for UML are all listed on the cover
> letter of this patch. I think fixing COMPILE_TEST on UM could be
> worthwhile. Did you see any brokenness other than what I mentioned on
> the cover letter?

There's a few more in drivers/char/hw_random that you would need.
These were HW_RANDOM_MESON , HW_RANDOM_MTK, HW_RANDOM_EXYNOS,
HW_RANDOM_NPCM, HW_RANDOM_KEYSTONE.

The only one from your series I needed was PINCTRL_EQUILIBRIUM.

I applied this:

--- a/init/Kconfig
+++ b/init/Kconfig
@@ -91,7 +91,6 @@ config INIT_ENV_ARG_LIMIT

 config COMPILE_TEST
        bool "Compile also drivers which will not load"
-       depends on !UML
        default n
        help

That lets me build. However, the code I was attempting to enable
depends on REGMAP, which needs IOMEM too, so I hit that dead end.

Another issue I had was debugging my kunitconfig. This patch helped a bit:

--- a/tools/testing/kunit/kunit_config.py
+++ b/tools/testing/kunit/kunit_config.py
@@ -40,6 +40,9 @@ class Kconfig(object):
        def is_subset_of(self, other: 'Kconfig') -> bool:
                return self.entries().issubset(other.entries())

+       def difference(self, other: 'Kconfig') -> list:
+               return self.entries().difference(other.entries())
+
        def write_to_file(self, path: str) -> None:
                with open(path, 'w') as f:
                        for entry in self.entries():
diff --git a/tools/testing/kunit/kunit_kernel.py
b/tools/testing/kunit/kunit_kernel.py
index bf3876835331..0f261bc087e4 100644
--- a/tools/testing/kunit/kunit_kernel.py
+++ b/tools/testing/kunit/kunit_kernel.py
@@ -107,6 +107,7 @@ class LinuxSourceTree(object):
                validated_kconfig.read_from_file(kconfig_path)
                if not self._kconfig.is_subset_of(validated_kconfig):
                        logging.error('Provided Kconfig is not
contained in validated .config!')
+
logging.error(self._kconfig.difference(validated_kconfig))
                        return False
                return True

Which would need some tidying up before applying, but helped a lot in
working out what was going wrong.

>
> > Do you want to get this in a fix for 5.5?
>
> Preferably, yes.
>
> > Acked-by: Joel Stanley <joel@jms.id.au>
>
> Thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
