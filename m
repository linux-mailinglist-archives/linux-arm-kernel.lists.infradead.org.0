Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C756BFCD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 18:44:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SSPPTiqN04lhbF3sPTxtq+KlKAkFANH1JSGg/5gkOB8=; b=d3X/iaRofsWA7Y
	27U44p7+jCkUuk33C8KfUyBk3CaZ2W6NfIVnVVkZjlgqQEI53hVb/+6wZOqnVEDtJIgayLsQCskVL
	W+0djRQHoG6jEIHUxtv6J0R6wi7KfmxX6CIFnTG+TqeneIyTsX1ojmwURkbxImuZD3XTYOCURPmnQ
	MNDQrqt3E3RZsNNK8L3Al8skn0eZM7Vw1winDXL07ZSuJLKVGqsrE1NSTADuC/Rz01ij0bcPXJvVc
	D+VslYDa7MBEKw2sRuXuamz3jQqSxtjesFcn6adHBLqTfnyHpH8wXgxy2Ed7hMA7kUjDXYxpjWpa4
	YQxDfKexODGwHl6svSjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnn31-0004fJ-Lu; Wed, 17 Jul 2019 16:44:55 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnn2l-0004et-Pk
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 16:44:41 +0000
Received: by mail-lf1-x144.google.com with SMTP id z15so12716799lfh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 09:44:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yk4XP9CZ1kslTNlitSHU1MG+UFO4IaHTa/axM5q+rdo=;
 b=F2vezRmfQSUXDCV1cPzbOl2mzviZagTPoHiu/ODYdsVpUBhK9w9YTNxRiMunEfJhbe
 3mqlmRvWWVWE6Wv2vMgJ/3fBXkb3weOGO4vSXqe1TpskMrzWhuzEuBnbHN2a2Hq7gQ+N
 E0BypQok1qcNIHv9hOwhsaElTu9JZ9Rqp2IpbKSGBiLu7ZE4GXKoNRauH2aKK/ljCC5z
 monU+OXeYlqNMgfB3NMS8HM2UQQH3Q12XmDlf9eAzdg0CjaNheV90gHdKVequ8iaodmB
 iPe07LMAM179eQNaYMQKSFAIGnaQEVwfW9GcMigIERJVLEFsmYpeY5n5M4g2gsHVL8c2
 047g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yk4XP9CZ1kslTNlitSHU1MG+UFO4IaHTa/axM5q+rdo=;
 b=WOsRZdb/ErlsUUS2YK/4VBTHqy41YndMYxoDqn+n/IhDSEhh1SAwa1Wn3GQikCSIq3
 n4p0WZ2Lqnwa8IH6tXvWMZSYa8QkY3fC5qvNqwE7ZRYPgFVKWtAqYhs1FhTq2P9tehGu
 OQwAx3W+/GG2CXzNfOo0lQCGI20foywe5pxsKnritjmw4cRuzo3Oa4tPDrlXh2tqqIDV
 4foqy4xGzMcIUSbFeT8AG9JhAVIidnccltd7sgmcdhHxH7JZV3yllw4A0vTUEkO0/hxs
 3CBjSbup0VT6SCX6tQt40mQOCfQP4e7PfGKcH1yDIa2OzjzMu4NfkZ/zJty3gmO7V3QU
 CJlw==
X-Gm-Message-State: APjAAAWlJcv+G8+Q/NQwT7RW0XuBGC6NqfTavX80Rkif949do3ijnBph
 zie2+Dv9mc8XU3tHLXF7tiL/b8H6qN6fFuT7ZrEpGw==
X-Google-Smtp-Source: APXvYqwQLMvsudJ95j/wcOmtZU/P9Yg5GgR6Iscd/wl6FHMGs+YoknUb+sFGT6wakjO1DBNIm8fyfNl1xZoU/iz67ug=
X-Received: by 2002:ac2:5c42:: with SMTP id s2mr7368803lfp.61.1563381877741;
 Wed, 17 Jul 2019 09:44:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190712091357.744515-1-arnd@arndb.de>
In-Reply-To: <20190712091357.744515-1-arnd@arndb.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 17 Jul 2019 18:44:26 +0200
Message-ID: <CACRpkdaKNk3eE5cfh8fKQ341PhDxOCRqVz8Cay5to_ZZ3t_7Vg@mail.gmail.com>
Subject: Re: [PATCH] dma: ste_dma40: fix unneeded variable warning
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_094439_898265_6A56A362 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dmaengine@vger.kernel.org, clang-built-linux@googlegroups.com,
 Vinod Koul <vkoul@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 12, 2019 at 11:14 AM Arnd Bergmann <arnd@arndb.de> wrote:

> clang-9 points out that there are two variables that depending on the
> configuration may only be used in an ARRAY_SIZE() expression but not
> referenced:
>
> drivers/dma/ste_dma40.c:145:12: error: variable 'd40_backup_regs' is not needed and will not be emitted [-Werror,-Wunneeded-internal-declaration]
> static u32 d40_backup_regs[] = {
>            ^
> drivers/dma/ste_dma40.c:214:12: error: variable 'd40_backup_regs_chan' is not needed and will not be emitted [-Werror,-Wunneeded-internal-declaration]
> static u32 d40_backup_regs_chan[] = {
>
> Mark these __maybe_unused to shut up the warning.
>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Seems like a reasonable fix:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
