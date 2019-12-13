Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B89C11E766
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 17:02:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U/iOiT8FlHIxy7VHfokzZ1lf1k31P5tMWlsCXiFwK+4=; b=s80Kr67w/AwUVj
	c9qxv3M/YDO19T0jCEAefZI6HSW8TALTjmC9CmmD4UvCbtRLZGuZzEZzZE4k+TBsDJWSXp4bNj5cv
	u8j+m9bRSlawvkwz1xvTGRvHISeN/T1SDrLr9c5+gNomGbCpIjfQRzqN1obn0M3KfHJ3FQod4as7e
	QzugLmQ01E+2rK3RW54ProkFO0y8eByFfQy6/akk/MQMBBVJLZviNOYg+1J38nbHo49wiPcDEFzE/
	3Mp4KmubaQYdLGZ4bFHtkKRARUM+qwE7FV84XnJiyglquxBelk+FXd4hK4LXDe2y++rcWbRPqzMvN
	NkdU4MnsQ3VRUTOOuaHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifnOG-0000rA-8t; Fri, 13 Dec 2019 16:02:04 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifnO7-0000qt-UQ
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 16:01:57 +0000
Received: by mail-lj1-x243.google.com with SMTP id a13so3186252ljm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 08:01:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5JutpvUzxOsyoaSk9NwrCbjNfxIk5I6Gyk3NK08J6cQ=;
 b=XbodqbL3vPQgnrqfzeaCyEVhD38xe5Ee/7W6WG+3H0r8d3gK1zcoVwKVXMuUgAU0M2
 4DQOvNLUDR/////SzUbHc5j5W1xWM/yBLPPmprf6fAhrBPgnVrF9MWLeN4O2vYZCJ7M1
 4X1x8Fw9FLKKsz3moE9wj1ErHuqh07bNN9CKKPgDO7bCoXbsFXdawNp+ESB1lLm7lQbR
 T7yralAgbY7NRKeWAjgOfz/kV7Au4VVQTOzHFNzsMAdqqDo6XqgWVar4MM1VmRxH+vOC
 PfeOm17pCYVt57aHpW1G40Z4N/b7GfLJcpE1D+kmru6Dz8XIukjA6/e/RZoMG8TAjDWv
 SgYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5JutpvUzxOsyoaSk9NwrCbjNfxIk5I6Gyk3NK08J6cQ=;
 b=WS1NjsLQdabWjvxnl5ckWHz2kE0RK60591K3yGhWV/DIOCJ4bTy/h+0KtF2dZJYpJw
 oEsAfKFRMh6OV7WOk4D8Nxq3U56lTFmIXVmYaJsZOfs8TPEDzu3L3OBLYk3QAofOhogk
 /4vEgf5G4kC5AlqKOdciQBqjrqzQLM/yzpXgw3OHHWGtpdMq26weib8j+SscE+zDBBnO
 n0FuiP7c2VBHBc9ErCgpFo4bChUstapIEesTm+IGoR2KcPIrPlGNPEBmCdPDSA+UXCS2
 U+RKmGnbwH1PRuSv4Xk5dm1TVfcdbY/qFFHUGTNkTucdrGxjtLBzxOTHwtMQ0fQwS13v
 +iUA==
X-Gm-Message-State: APjAAAXJDPnD1rqZXsgfjTJDLFUQq3PVY+d9/nccN+oFWuf04ljWGGX1
 D9MsXjJ8gFKHhLwW8Hq6vwq+8NXikROvmjYPk0QS+Q==
X-Google-Smtp-Source: APXvYqw5j7XQGOFi0lBLLQGKLSulok+o4hXa/wOnJ5dacau9siOORcPCGi5To+aftjmvKminoQEjm3PyKNxF1Nwhy2s=
X-Received: by 2002:a05:651c:1049:: with SMTP id
 x9mr9948355ljm.233.1576252914355; 
 Fri, 13 Dec 2019 08:01:54 -0800 (PST)
MIME-Version: 1.0
References: <20191209163937.8156-1-krzk@kernel.org>
 <20191209163937.8156-2-krzk@kernel.org>
In-Reply-To: <20191209163937.8156-2-krzk@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 13 Dec 2019 17:01:43 +0100
Message-ID: <CACRpkdbZ8d0K08uSUhzUwnDupXX=Y+Wc+sa_etK-LnPL7RDB_Q@mail.gmail.com>
Subject: Re: [PATCH 2/2] pinctrl: samsung: Clarify the option titles/names
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_080156_021715_EA51D0D5 
X-CRM114-Status: UNSURE (   7.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Tomasz Figa <tomasz.figa@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 9, 2019 at 5:40 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:

> The config options toggle Samsung Exynos SoCs pinctrl drivers, not the
> driver data.  Clarify this in the option title/name and also make it
> consistent with other Samsung entries.  No functional change.
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Like the other Samsung patch this doesn't apply to my tree
devel branch which is close to v5.5-rc1.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
