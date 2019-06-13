Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 209A0447FC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 19:04:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2F+uCBtt1xwj5vl+DjV+ZFZAG6w7KZZwwAUUSDJu3RA=; b=fQtw6KYT+Om7Gi
	oCVtqJiaPC5QaW2VJR1yzqXmbYWrK8O4JJjrLSBxS0S7dRL6QPyBYmHWAQ2f9xD0bAl3NEiAt++sf
	Y+piLF2EFxhSZ4crBzOAHh/OH1mhnUNYzs15pEz9Wik4VptmFmG5/0aAkUADfqyITIwP4tvi6ujTn
	uZSs1+imipuYuwiKwygrhMO3hoe9MhorfwCaapKsJyqWtRimN2z9+0YVNk5Bnz2rtoYs1gPM7mOuJ
	iVZNqUpW5FC50TcLPNK/ryViUYEkHBvwQUZkZRwQFkjQEaIJ7y9DHwkV1HN2w1G0gRHAldueLUVBc
	srSTm3LsYydOuSQTX2DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbT8r-0002hW-2d; Thu, 13 Jun 2019 17:04:01 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbT8V-0002a5-9K
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 17:03:40 +0000
Received: by mail-qt1-x841.google.com with SMTP id a15so23382198qtn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 10:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=+fM9s+ZRu6a19ZVI0lc0MDu5AlmUc3QAgWfYbHMegA8=;
 b=qEi0As9FjslOUPyhy3Net8r6QbVgxoEl6gBQAvYjq4/nRnz7G3BE7He7EpNC/OXmBy
 q55XHN5KFNJpcOA/O+b9YOeBjoC219W355lHTG2oxWTzi/fcPQ6E9vhYB+iC8NgRq4vm
 8sURicPrA7zOoCFDeJl/egMR5HLgU9Sb2DueqkXvjKTLguUlVuG7RRu7zsTBhnkYIvgt
 fIPop3Ujnh2MeBfj1OeDEtCATPphFRkp3elQDHPRJ0z3FhRyAgHQPoweAVLo0ieppyRD
 X+OWwLS7qqUfYtLrO02SWcySfoUVqHpYZXmMiw2l0gDYKfHOvOm6EfIx7oInZIi+Guh/
 +X4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=+fM9s+ZRu6a19ZVI0lc0MDu5AlmUc3QAgWfYbHMegA8=;
 b=NZL056zufv69jFHxrWHHmVKt2cBkSIMk9YwPe+cWarq8nfVhY7Idq67/0Pnp7mbeHX
 5bHtRJ0URZzxS3we5jNmmlqcfpwWmY/494ps84GY9XT0NoonpwBWZ8oOVPqGs9HZG/jp
 +MA9BxKMrWpJVqmTsaZ2UZCPC/pZcf7cIda0bPJdweWdUHK0Zn0UseAK0IvUfkyxIoTw
 DTLyiKb1GedlIqWSRXFkZOviI68TEso3v98Va/3d3oI8neSHW4jDgtoMiQdPR9xgNsTJ
 a/ue9SHiJuBuWtxTiaQ/kWhn8q+kD6YU90XXEtfqICZ5DJaMS/TRiYuymb/1T0DkYMjQ
 KgKg==
X-Gm-Message-State: APjAAAWidiAizngCpnVcDMo7mJgbdFV5a/CEqlLbRbMilY5+emWK7WF9
 zRxNsDfkKLexELo6oBlBxo8THupu+xseoOvvbZXZ3rkvXfWREQ==
X-Google-Smtp-Source: APXvYqxiy5kouzZBRbpjgIdOzVKd074tyypO+LFeT69dim/yHszXr0rChCoWGVx/P0+4hEwdMRtozIq6/hSSH8DadPI=
X-Received: by 2002:a0c:ba21:: with SMTP id w33mr4559727qvf.122.1560445418047; 
 Thu, 13 Jun 2019 10:03:38 -0700 (PDT)
MIME-Version: 1.0
From: Nathan Huckleberry <nhuck@google.com>
Date: Thu, 13 Jun 2019 10:03:27 -0700
Message-ID: <CAJkfWY4aYAwUWMGu02=0ibae05Qo3_Yqy-Q0eFw0k=2torhEHQ@mail.gmail.com>
Subject: Cleanup of -Wunused-const-variable in
 drivers/clk/rockchip/clk-rv1108.c
To: shawn.lin@rock-chips.com, Michael Turquette <mturquette@baylibre.com>,
 sboyd@kernel.org, heiko@sntech.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_100339_341430_B2503B6B 
X-CRM114-Status: UNSURE (   6.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match 0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hey all,

I'm looking into cleaning up ignored warnings in the kernel so we can
remove compiler flags to ignore warnings. There's a variable
(mux_pll_src_3plls_p) in clk-rv1108.c causing an unused const warning.
Just wanted to reach out to ask if this variable is intended to be
used.

It doesn't look like it has been used since it was first introduced.
If it is no longer needed I'd like to remove it.

https://github.com/ClangBuiltLinux/linux/issues/524

Thanks,
Nathan Huckleberry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
