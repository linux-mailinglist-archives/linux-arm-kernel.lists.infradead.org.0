Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 987202FCDF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 16:07:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J2CZmpVXyfkYOF/2z/3/bNZwleydKrB69AQkFjSPMfo=; b=R1UxrZDDFQP635
	sU7eLMd4kqg/1sarbsC5vtEWhzeseFqrXS+pipNiAPTlnI8V2lujnoJwnolsSIrTX30BC4G1+wxm7
	izNLGFQZcn6S7MBNe4ElgWVJD7HzI2xYhq6+Az/CDUqjwzQksdmkTxEba5lZFQjLJ6ASaVb1pIROH
	PX7JZAl09HDHrkeEo3rileplh20yURYmMP3xW8I7VI4FYJCqeDV3zWjrdjFBRhZPWEpmrGbCGZ/78
	hdmbU+9qxev+zkiLkoAFroWOSu3ewya/uw7PTs0A6MIMri2snSzr2K5EIiICyJ0O0DOyWdMvD/I5g
	49m61NDVUFkcwwplJrkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWLi5-0004eW-Eo; Thu, 30 May 2019 14:07:13 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWLhy-0004eF-Ub
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 14:07:08 +0000
Received: by mail-lj1-x243.google.com with SMTP id e13so6144054ljl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 07:07:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wLZbphDg3+JXe3+X/WRRbzRY0uZuXW7WSDSKEUjjYXA=;
 b=WG76braGIOcmR6OcNLNT93Vceteq5wwj+ufdZyMoDExJ70FINI/G01Zr7GBXQqqc/Q
 Su+ot0LaGocgbunzBWLjSsEbtm2LYD0yRyEbe1sOxa2D/aDqXiuMhrKAScDxhUidGNZx
 fabwjsNF84+K2+cqqif7sUH2qZvYHKrsz4mWHA/diPwLnIYYRrvujmKT5I6xl2xve7Ha
 mTWyc4qLrLQTqGEnIzG3V3t+3vZyr1KoRSPGuSULVU8Gj4bmEPUkJpynxAOfQylaz3+n
 RemaWwlj7kC+5vjqeRjyi6XCCuM+ySydupcx6h97TiwUkSU4NL9F9Zgfofy1btDKdTCJ
 BmVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wLZbphDg3+JXe3+X/WRRbzRY0uZuXW7WSDSKEUjjYXA=;
 b=EHwhzYseGE+JeSShgwfXVgiWEw3mxMzL9Q5ekyD1TUV02C/SZ9FplEcIKoa6e5uJ6K
 JFjeSJQzWaxwWRj8s1r3k4xCXJXziK+XM8wCnXpvOfyc+HJsjF60w2rz8xfHkujyRdei
 Y/AHfxrTrEse01i+Qo0PJh3f2Psl3sXZmtPDAa5AnB1zcQxCEEru0GA2KQ00gAGT3CEP
 gk0ls+UrakOME97t+W8blw77Bu5Qzvminn2Gm0oYo59uPEaV0r7U7dHQysAvILVvSbsA
 16aN3DaRyYmZtpJfP5ddu+Xu5d6zkSh5jRmPkrxmm5y3bA/R4QWsvojf6C2L5OfbyDNT
 ZsuA==
X-Gm-Message-State: APjAAAUPfMMXEehxc24nqNd4KFftN+kNxzNJgxwv0HxWByPTpbHuzHsU
 0xaZGr+63hOTc/F4gg9MkPZHkJ04X4hZws9MS9w=
X-Google-Smtp-Source: APXvYqx1XvTAbVTIp/qClkowF2Rdu1kLAKQDqx/iuL4pyIAFYt40NeyeSjRVYCJ3oX93ekx++JUsJFzbkJgMd2nH2qI=
X-Received: by 2002:a2e:91c3:: with SMTP id u3mr2241880ljg.130.1559225225206; 
 Thu, 30 May 2019 07:07:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190529154229.14911-1-bigeasy@linutronix.de>
 <CAOMZO5BZKNjeoCKnWT_LsL8-SzdzuWq=iVySQqmdJU63RMSAZg@mail.gmail.com>
 <20190530140350.ekpsjzadt6anhzce@linutronix.de>
In-Reply-To: <20190530140350.ekpsjzadt6anhzce@linutronix.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 30 May 2019 11:06:55 -0300
Message-ID: <CAOMZO5BUft+ct6YiGiNfEQFb6bKiZC-Qh-sS5=wvj7prJO-2UQ@mail.gmail.com>
Subject: Re: [PATCH] arm: imx6: cpuidle: Use raw_spinlock_t
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_070706_988948_52B0CA8D 
X-CRM114-Status: UNSURE (   7.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 11:03 AM Sebastian Andrzej Siewior
<bigeasy@linutronix.de> wrote:

> It makes no difference for !RT builds so I would avoid it. The RT
> releases for the relevant kernels will pick it up along with other RT
> related fixes.

Thanks for the clarification:

Reviewed-by: Fabio Estevam <festevam@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
