Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6213FF625
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 00:37:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uT2FiGDE+5qvG74fMuao5lWlD7EYK4GJZHhr8PWky2Q=; b=VJkNsXi3DFGsZN
	5rFkCOOCnFQCfXEFuEP1JgogDVTYbEL8CSCH8KAu8fEAkG1wUNa4jQwE6h5O8YFh3hRgOnH+X/Jl8
	tQar11AZ3rU9KT4IPBkAUdl/Btb1Ay2PbrC9DjoTEt1jR26doI4CpkJsl3wAZIqj/qIfnek7L25Zq
	LuZZGKi7wN4xMdcaU7afXFBoiYJD3YpPeEFVDA2V5cRXhPrpyIZY/DVc0u/A7J/SkC+5Dzht9QdKo
	ugBDQidslm6TuKlxvqoYemQyGLnJ7b630AQrKuCE11b1KePuEJVsrWhyrTsHeZGO0f3AiSbxgdjRy
	wQTpq4IvLX5LKpOPWgdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW7dM-0007H5-Qi; Sat, 16 Nov 2019 23:37:40 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW7dE-0007GP-H3
 for linux-arm-kernel@lists.infradead.org; Sat, 16 Nov 2019 23:37:34 +0000
Received: by mail-lj1-x241.google.com with SMTP id 139so14638313ljf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 16 Nov 2019 15:37:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=cWWgZovKEA48Zj5lvjlmrXWU4Ufq3L0LOCxVWqc5rrU=;
 b=ytr3VuBwJokiNn4npoqwF+7n0/huzJte65gBjXfo2CRVWTM8YH9346ZNiZfjUuODIk
 oZwcPStavFtbWKvseFwluq/zVllw/LKXr1Ir4KDrV1EQ7ffAU1AHpq46xruXpBjbnFq5
 TL5e8pWhFBKE3D168SC5VXIFM0UPiTOimimHi7eHlsfKgfQFEhAEjiOXH2jO9aG/kLPd
 kyIf9BMYAPgx4YVV+nHolBy93krZZlZKMJf/sHKWe4G7LR+3z0kBPLW7gVvcckl52aaU
 GsPdPDlvCwBMYD313+6loLRTKY0T+LmlE1MRLp3YZ/FcvMIrh6PgcmEGxhi5L3cS9xuP
 5NSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=cWWgZovKEA48Zj5lvjlmrXWU4Ufq3L0LOCxVWqc5rrU=;
 b=jwa0MBsk5Ndcuy52vbbEKgfOaIpD7WiM+3dOklQU0JcA6bF24dlkr7E23u+NeAG3mr
 ml/faOwo9JOUZQs7aifuuqQj44YxTsMLk13+3Klum0ChL3O/bLZaYw2DZf/iB9RtmpBA
 2j/12fb4grrLjlICYO1KjPDJ7dMHGpAn2KwkxpDBLCjANSEYHoGFbYmE5tHBZ1xGcw0V
 IksIWkVNLO1B01g4t6Jk6epColjlxLdo84SnIOi5H8Y9vN4JCK4YN54SC3/HfHUz4GSe
 r+PguSbVS7DzL0nlthrlorIkJ4/MWDYELJVKBmHQpm+t6nZ6RwrQ729s2okITgoFAZdo
 rqcA==
X-Gm-Message-State: APjAAAXswmtGfBHa3ACrl7D/smtPijAlvxLBFSVgu2TBmKMoQR+eDcBC
 m0vdThqjCBS2MFjzf46pmhPo45EszI0=
X-Google-Smtp-Source: APXvYqyZ/VKrx0bdqJawIA3gbrfCLdwQ7sPcCZBzxpu5NZp5DlgMm+Re2Xtm2R+/RTxGgoDQ7u7YcA==
X-Received: by 2002:a2e:6a19:: with SMTP id f25mr12525828ljc.147.1573947450261; 
 Sat, 16 Nov 2019 15:37:30 -0800 (PST)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id z15sm2314240lfg.0.2019.11.16.15.37.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 16 Nov 2019 15:37:28 -0800 (PST)
Date: Sat, 16 Nov 2019 15:34:52 -0800
From: Olof Johansson <olof@lixom.net>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [GIT PULL v2] firmware: arm_scmi: fix for v5.5
Message-ID: <20191116233452.cypff3abhvifw7hl@localhost>
References: <20191113180406.GA12601@bogus>
 <20191114164555.GA19398@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191114164555.GA19398@bogus>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_153732_613879_23A8D039 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: SoC Team <soc@kernel.org>, ARM SoC Team <arm@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, ALKML <linux-arm-kernel@lists.infradead.org>,
 Kevin Hilman <khilman@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 14, 2019 at 04:45:55PM +0000, Sudeep Holla wrote:
> Hi ARM SoC Team,
> 
> Stephen Rothwell reported issue[1] with fixes tag in the commit. I have
> fixed the same and re-tagged it. Please drop the earlier PR and use
> this one based on your preference(I am not sure if want to ignore or
> fix it). Sorry for the silly mistake.

Usually we don't re-merge once we pick something up, but in this case it's at
the top of the branch so I did rebase with this version.

We should be running linters on the pull requests in patchwork so this is
caught before we merge, it's on the todo list but not done yet.

-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
