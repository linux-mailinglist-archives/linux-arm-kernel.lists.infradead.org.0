Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC99DCE06
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 20:34:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CMt17ewv16pl3OKq7C6tHdNNh3FI6UNKnAvyVhIOhmY=; b=BNT5URjP4+vK7X
	aI1si3f36bAWswVDiFFU7pA8B8ZQo2l2RdIZC7lsWhdb1WXeWIgNgi2F3sPtewU/wkKlXU9je7+9B
	lPFn8v2WzuCmUBk2hNvMR1S1UlKVGyqm/TtyVCDmfjdb5l8BvnhQn3ycnPFqbxhy2Axx5IGmWrj8F
	K4h0Q5XmNUKEw8KlVSPw+lpgnkX09NHTN5CNbv0HMSkSQQ4H5gU+ynXCmIqre1HkOwX3cyQqHW6vd
	CCQUmz9PerqqTnUA7zp5MrJTsHeCKlCpkvyj3zfJhXmAC+DKK2utRMhq/CHjB7FjVT8qZqejrDz9F
	0hkHHRpqngfAqBc2CyGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLX4t-0008Dk-Da; Fri, 18 Oct 2019 18:34:19 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLX4S-00081W-4p
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 18:34:03 +0000
Received: by mail-wr1-x444.google.com with SMTP id c2so2025126wrr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 11:33:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IEfP40kNAPNRF98rcgQ9usJUu0eHwjndanaBmeXM6WI=;
 b=BmmB82qFSxKsGihg0Xx+zhaYbYK8OI8x3+yInj6Oe+Xg/PvlXbVNhcwLs2T007oj8d
 fStjbLzkY7DY8knNpM7jkGBzgQj/A5Eb+L5OsDsi7QWGvaapS7UUUIaidiX2DpHNJBMG
 U9NwdP6l6E+PSnCKGv8sWIGdBQg3HuM7KNefO/YZcWfBQfidnmDY2HgnSsAonCiLdBTL
 2LlSKrWu+Zo6IOIrnDxTzOXAsKNS8OWbRSZ96YX6fVxDMdoJXzKW9tbHo1GOCo/jf/hY
 +Z0qDThIH/NQiiJlI8fnwLnrrLMoAwyB5VOFwKWLZy72ilRu64RkegQhSQW+k9vvjP+C
 TnXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IEfP40kNAPNRF98rcgQ9usJUu0eHwjndanaBmeXM6WI=;
 b=rxUHA/rNep1ZbiQathSPhujUL9ZmWmYuvAabpPX5Qjz7L89cMi9JXjz/zA0p4L7lsH
 QQTL3604d7dghK1NUaY8aBt/oaRFLh48XEz8qCtRDK1bZKgEnqBUrJH6uILrO8iiy3IK
 5kNCzBGmylbbk0/vQvJjY3rXdf3q+ZdNRPNCyeAXDyZHtX1lgxYS6rMSExdwIBJOwl8v
 lmCqc6p6KnbaLn/+lGn10avCUTbwZIBwuY+ZKcM/IKxEQJa/PAOpuPCuDMoKUWekUNOK
 Uzw25cZglo0U94eflg3XoFuRCAqD4C2TywopX6fFe1Xj0YSsikB7yZWjbFAMfO2GAedm
 TGVg==
X-Gm-Message-State: APjAAAV8AtHk+pT6X4KO3LLEzzqPlb1yKZWy3PumbVSS76O9Xzn4yx07
 40gHE6ndmPHcTAXrCXvflnfB59JU2g5v24kIp0E+8A==
X-Google-Smtp-Source: APXvYqyw2NrAGJJmCuaL6XEaFAsefGULCqjkdQmlHHYd9se29o0eT1HuF/tCMlDauSYUzXofK997VVdaVJnIay+btCs=
X-Received: by 2002:adf:9f08:: with SMTP id l8mr8549806wrf.325.1571423629794; 
 Fri, 18 Oct 2019 11:33:49 -0700 (PDT)
MIME-Version: 1.0
References: <20191018171835.12666-1-f.fainelli@gmail.com>
In-Reply-To: <20191018171835.12666-1-f.fainelli@gmail.com>
From: Brian Norris <computersforpeace@gmail.com>
Date: Fri, 18 Oct 2019 11:33:38 -0700
Message-ID: <CAN8TOE9xftQxTFjzuxomknS-5xebrDvmgpt38xprWE7VNBODig@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS: Remove Gregory and Brian for ARCH_BRCMSTB
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_113352_196211_2E649820 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (computersforpeace[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Brian Norris <briannorris@chromium.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Gregory Fong <gregory.0xf0@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 10:18 AM Florian Fainelli <f.fainelli@gmail.com> wrote:
>
> The last time Gregory and Brian did a review was sometime around 2015,
> since then, they have not been active for ARCH_BRCMSTB changes.
> Following the position of other maintainers and Harald Welte's position
> here:
>
> [1] http://laforge.gnumonks.org/blog/20180307-mchardy-gpl/
>
> remove both of them.
>
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
> Brian, Gregory,
>
> I don't expect you two to object to this, but if you would like to stay
> active, let me know, thanks! This is intended to go in v5.5

Acked-by: Brian Norris <computersforpeace@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
