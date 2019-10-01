Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ECBAC3A54
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 18:21:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K3dCEpwkAktEOw7GsLxPkIqnFu37wVk2ws11uqwmS7w=; b=XKN7lRDYYVM4Qd
	WtxpyHYlSftkg92HVfpWzn0TN9LmzuCTqFHKC1yYSHMYAsp8KQ4MZXwbYKvHeDjaBQ4atY178QA0h
	KW6xIpl8HcCh7ChNUPdJnmeIjCIOFYozWeygA3vMEK5pQiOnDmeVy+v+jC5VMNHXxNJ35AXIZKsEo
	9LYfcLubJNcWAGSUXsJI2MCr17VCRJnEasv3H04tqJ7REF1ODkEAZipVllwyRk4qBCVpEb1uuWFl9
	ChR5H4wdm3CcIesijUbv2tY9GTyC7fSL/5ehWPKFv9ke6QxnBYcOnHft8QiDuuZ0YOxOigKQ5dEVf
	dfUQ0ixg8ljqzC7YStQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFKu5-0007L9-2t; Tue, 01 Oct 2019 16:21:33 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFKty-0007KQ-2t
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 16:21:27 +0000
Received: by mail-pf1-x449.google.com with SMTP id i187so10636969pfc.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 09:21:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=zGjQR/sTKc3smldtiGbvkknjnXT+JplA/pSqSqfQKlI=;
 b=G+DasL0iJZ5kBOTu/zg5lhBzEt6jZOfAi1wnx0r7cOAZ7BldGdYXaJI63ngD6HwE+O
 td2ExZht8/oykOJ6vj3MIg3yGym9/ezKCc3UmfSjNgdhuBL1BlabvNzMYb2E3ZmK4lmR
 xKQSP9pNUpOfgoU/c44mv2JlOPpsdNSPsp6QouWh475Br8GI5iE0CIHgwsannd+OKyWt
 kctUWW68POaqfmJytgwPWY5G+l1LIwfEbaTs2bpLH0Umzhe8ZJmbA42UbPso+f2qtHUY
 ulHHgYlPaHHs5q5C7uw6TN6jFgZV8vOqg7CfY4xxzi79Ymw1jMuYTQHemWXww+T+xqMs
 yHPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=zGjQR/sTKc3smldtiGbvkknjnXT+JplA/pSqSqfQKlI=;
 b=R809J9eIeTvTiCRIRb+ouXusxqnhCli3RoGUP6FUiqAIaaslCmgNAnudlnlW9Bn6x4
 C9qI5OGQrE2l/sJ3nLZGH7KvWcMiEf0ANDMyFt9xs2Copub6paq+vF8e0L+1VWt86xXT
 DTNIH7U3Gr/FYC/MOTBEjPJXqMW56240oI2foshadG9YZuYj0rqi7ZUtR9TKycnu1Tjy
 BHDM0VSOGbVg/8OHVb9LP8uJcPqhyNIvXW04fVnc6d7mWmRjgyqwq043ZRdTYxSK+ljV
 6J2fIIecHHUdxhIeIC/c0iMRAVR5i8A1RIeBFT/1MOBp6cYdENRuNy4nwxPBblZPqzq/
 p63g==
X-Gm-Message-State: APjAAAWRMzgNEDvMJGWrShiema+vhqooaLHRsXSaPvlFCPHiG83TmOLs
 5rkdLLA4edhg3+JvInF7OwnELOyQWcRKIzEZ7Nk=
X-Google-Smtp-Source: APXvYqyhx8xunEJibdqSSZMbfsVIGbOyET72Al96jQRFry9WCb7OIOKmE3DHCN3SHdahPhXrl18UgoKkM5icUQv7144=
X-Received: by 2002:a63:d846:: with SMTP id k6mr31013518pgj.378.1569946884027; 
 Tue, 01 Oct 2019 09:21:24 -0700 (PDT)
Date: Tue,  1 Oct 2019 09:21:21 -0700
In-Reply-To: <20191001104253.fci7s3sn5ov3h56d@willie-the-truck>
Message-Id: <20191001162121.67109-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20191001104253.fci7s3sn5ov3h56d@willie-the-truck>
X-Mailer: git-send-email 2.23.0.444.g18eeb5a265-goog
Subject: Re: [PATCH] Partially revert "compiler: enable
 CONFIG_OPTIMIZE_INLINING forcibly"
From: Nick Desaulniers <ndesaulniers@google.com>
To: will@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_092126_151581_50A88986 
X-CRM114-Status: UNSURE (   7.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: arnd@arndb.de, clang-built-linux@googlegroups.com, catalin.marinas@arm.com,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 yamada.masahiro@socionext.com, linux-arm-kernel@lists.infradead.org,
 torvalds@linux-foundation.org, nsaenzjulienne@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> So you'd prefer I do something like the diff below?

Yes, I find that diff preferable.  Use __always_inline only when absolutely
necessary.  Even then, it sounds like this is a workaround for one compiler,
so it should probably also have a comment. (I don't mind changing this for
all compilers).

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
