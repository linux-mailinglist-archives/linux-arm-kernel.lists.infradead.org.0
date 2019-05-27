Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89EA82B9B1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 20:01:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MKtYF8rorP5WKavreHe8coIfywNDWlPd893Hx3konKY=; b=VmFKuf1Yr0Isap
	sD2fgLAuSj0tSZmrLfktKcPFWnKh2rbprU8FaSdh0SDhCOqWZCYyl6ybbsnUhHTAkpUEnayqmyjER
	4bgTPZEA/YcokvpE+1Tp2AhvIejLm+XAtSY89OfdG7rscXxIQrYyVH3mpzTrZtih22JuDzx4YPJl9
	NvL16c4PKtVN8smSpGblQNfZwoQsJAxOoDiggwLvEO6lLQhZG51L9UwObwSXmzrLXCYp/X5oAlOvf
	9Z7f0G6cfGdeXWYfpzG00gks/uH+sY1U8B7SQLmEh+M9hW+rldTWKvnbfIkJU9n3pEh7Xpjjd835V
	xvStqYv9JeQlY6nJ6wkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVJwC-0000Nu-1Z; Mon, 27 May 2019 18:01:32 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVJw3-0000Ma-BL; Mon, 27 May 2019 18:01:24 +0000
Received: by mail-ot1-x342.google.com with SMTP id i8so15461311oth.10;
 Mon, 27 May 2019 11:01:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EnoK4PcQ32UVFyVvgKGetFOED9mK/jXQboyT6bD3dDE=;
 b=QN13UOq2YxEU06ZlYM0bFo81jCO7B0LidLRXgklwd/MafCP6OGR503WNWGxhRAs8NO
 nMcAc/Q35ih2Un4fApqi3P0On5E5p98dbtrnYmE5VrpkI3WD4BKqk40ayTdQ4IbZVJJc
 R6ULYunFYunS0m7yky4sUfhKsMRDGEORZ8W82iD+DwcqDzwhbTehMFU4gdGMrGshDf1h
 y0zD3muDoSQ9rfK8yt5nS7QrlUluo8moEEqVf6DbUhj4OLzY1EeZGowITcIyovg1Nx7h
 3frxnfV5kdtgiv6NCxUcv476zTsUAX53CQtL2ghEO9koi4LMIOi0V1UMP2REHsKLRasM
 LQXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EnoK4PcQ32UVFyVvgKGetFOED9mK/jXQboyT6bD3dDE=;
 b=ghz54OzqARB6wZIYXHH/z42MJjEIKjtKRyQCBTYMKUkv8uOzaKkZfXdvZ03fnyZ0ho
 apfXmfriL7gzmIg16CoN9dRF8SEmJF4ceawUiYTaqghf4vuCUni3ASyMJtDRdKlBgD01
 BrWAiOrSlIh7PVOV9yOlvNBr3hMu/pnf6re2RisOroTzzOrf6d5ZBxb7txXbypzymfmw
 1tvGEPfY7WUucJVUpmYHDUgSdket7jcoKwXd9JyaCtTeA9P5qeG6fiBFdLb7wcMsZwYe
 LPe8fIqzfW3W3x1uNce0/ggcht5wZXHYhID6wWzkP1/fgasJI7wTOa0jcryu7pM1V8CZ
 Xqmw==
X-Gm-Message-State: APjAAAUgyvO6QzD7JHz8UgHw0GFmwv/IycU9rzFRLHigO//GevTMZex1
 YHlwZIuJoJxm+wMFM1ONXPcFCTq8g4N/mZNEB8E=
X-Google-Smtp-Source: APXvYqxDTzdAWQe0aoPV7ebEFThMELjXniHkv4cVzEGDcZtsCyPfFKYK0To523hJdA6unhGN0pMu5hTm1xZwHeSplIg=
X-Received: by 2002:a9d:2f08:: with SMTP id h8mr71794666otb.42.1558980081440; 
 Mon, 27 May 2019 11:01:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190527130043.3384-1-narmstrong@baylibre.com>
In-Reply-To: <20190527130043.3384-1-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 27 May 2019 20:01:10 +0200
Message-ID: <CAFBinCD67XCpT-zmppJ3SSs5Q5ruse-otGqMLdbeaTnkr3PKiQ@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: meson-g12a-x96-max: Add Gigabit Ethernet
 Support
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_110123_392206_40DEBE21 
X-CRM114-Status: UNSURE (   7.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 3:00 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Enable the network interface of the X96 Mac using an external
> Realtek RTL8211F gigabit PHY, needing the same broken-eee properties
> as the previous Amlogic SoC generations.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
