Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0A13165F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 23:03:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5WSfj9jYiy0I5N//C1XuZQhOK6iBANy+6ZQmjiYlFb4=; b=tEKcQss/9aScyI
	kh+K4wTfLy4OZ2nUaiY05/v6A68OKCwjK9qb5rJm8uzwY0Gbx2smo716VRXwHCmvXeF7kLDKO22fc
	Kxri1fABXLtP32jYuBm8BuD0rg/c6txe5NyxAcz9W84FPj9wLX5rw9tKWziKN7Jf72l6b2ksU71Kh
	7WLb4OhgXtynlWFTl7oBjkZVSWLP9c13bIZWW8KRtc6wKsLWxlisEcHZdqXj2S3cdVOBkGAEclWD5
	++k8roq09qs4u2wcfjNRrH5DQD8su3statqe8t9LhIssHsjPoEQP/DJBVfwPNDUJqE/5Tqt+xbLFw
	BavaI+bsppxaJOhMcXWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWogi-0002Ip-Nt; Fri, 31 May 2019 21:03:44 +0000
Received: from mail-qk1-f195.google.com ([209.85.222.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWogc-0002I6-7J
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 21:03:39 +0000
Received: by mail-qk1-f195.google.com with SMTP id a27so7231784qkk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 14:03:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UQZ0tC9yXzl9rq7qJxkFQdwUp1Ynzm5ICs3cFZoG4PE=;
 b=rbGWtc6pAyxtDWfGGoNUXCaHrmlGYZE0pYrTfCsiR4hDZkuod4tNhoaLauMkq+ZBau
 1u9DsFnnwHl8LPQYYgZT0Mskw4GV8+2ueIWmx9HZriKe28miyfNtS9qryehIjtGt3Whg
 POT73r3KNN/pT4V2Z1lVb0mRyjufWwFU4rSsGa2npk1n9wt7h2YCFnsNPIxOsiaTzuSj
 HstgwDmXv7nm1hAaPY+FCUlGmUD/efxYjtMzO6hHcSkuunBys9wqAHx12ERifRsi1f9r
 sMj2tnJmulUbQ8snmUfUB2VeCVXEIzkCDepyp6EMc0DY1lLjf1jXHnS+7sEV11FxUMRD
 5NnA==
X-Gm-Message-State: APjAAAVWY1QRQCbtyjxHt5GD3fpmEHzxHjXz4yXbxMjFpuJsYu6jJjXB
 mswDUvbpS5aYXC+hxoRCHam9J36Y/sVLSMJknds=
X-Google-Smtp-Source: APXvYqw8Gt47Ss6yAe0Fk1e2jy5O2gFmZjTyn0v1L+cc305iz0lTO6/jzCFIjXMHxhM13pygLVcfPpesJv5MlWJHBao=
X-Received: by 2002:ae9:e608:: with SMTP id z8mr1640546qkf.182.1559336616255; 
 Fri, 31 May 2019 14:03:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190528235742.105510-1-natechancellor@gmail.com>
 <CAK8P3a0a0hMsZDkqKsfsyCWpdvDni72tjAxCz2VeAaU56zqrXg@mail.gmail.com>
 <20190531183227.GA34102@archlinux-epyc>
 <CAK8P3a1-_KRvoeK4w0b8775izox8fRm=NGJC=yicDRn7J5UW2Q@mail.gmail.com>
 <CAKwvOdkyk3qLMPquSZqXCFauTADJU5X9qJi_fhJqbUuCYBH-6Q@mail.gmail.com>
In-Reply-To: <CAKwvOdkyk3qLMPquSZqXCFauTADJU5X9qJi_fhJqbUuCYBH-6Q@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 31 May 2019 23:03:19 +0200
Message-ID: <CAK8P3a2pYp6aaOSrtHKbVW+hPbwgj1An6dWNd-YLJyR5otvU-A@mail.gmail.com>
Subject: Re: [PATCH] ARM: xor-neon: Replace __GNUC__ checks with
 CONFIG_CC_IS_GCC
To: Nick Desaulniers <ndesaulniers@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_140338_265778_D79403BE 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.195 listed in list.dnswl.org]
 -0.4 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Nicolas Pitre <nico@fluxnic.net>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>, Russell King <linux@armlinux.org.uk>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 31, 2019 at 10:06 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Fri, May 31, 2019 at 12:21 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > clang, I would suggest dropping your patch then, and instead adding
>
> I disagree.  The minimum version of gcc required to build the kernel
> is 4.6, so the comment about older versions of gcc is irrelevant and
> should be removed.

Sure, that's ok. It just feels wrong to remove a warning that points
to a real problem that still exists and can be detected at the moment.

If we think that clang-9 is going to be fixed before its release,
the warning could be changed to test for that version as a minimum,
and point to the bugzilla entry for more details.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
