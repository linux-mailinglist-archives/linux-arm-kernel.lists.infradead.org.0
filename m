Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8B68180B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 13:20:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qnua6ohx+dKNtwPNknv2o0ReWxVlvATcKB0G9AD2nd8=; b=FGOaLpweBDMAnv
	AZ7f5OBxumM6FgJ1HmkJ7OZxpPMFvNN6SGb68sOqY6S8uCHmpp1CpNo1p1Re7AfdMbhtVlS7Mdz4d
	X/YR3aJP90rPSY5Qnxd3jR4zjSldeSzgqygzqHUMxICoYNr/RwhQ0IPJl6yJE/Uenx5Lq2G2LAfOK
	jMtNVlsrVZEoX9vv+pKrHYjDu6gVuwsIe5L48NqL5KzBaa7yQGHnAAbGo4PMyqqKjCczmkm11WZI3
	9sDjzILgtsW/v5eB8y0SJfdJyeUkKPwJzZzfOAISAwzjXZOLJNn0TcEhfmefLucfE2N920Mdvyg3/
	NbBedZtnjpwENzSHYbnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hub2Q-0001M2-AQ; Mon, 05 Aug 2019 11:20:26 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hub2D-0001Lj-Jt
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 11:20:14 +0000
Received: by mail-lj1-x242.google.com with SMTP id v18so78905199ljh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 04:20:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=00opSjOUCt0nvHWrKUPJCC41uhCnbdAiE9Dvugabrgg=;
 b=bKtNIrao0IXWWGBcvE4CzCrr4sVoZERR4ON2NQ9OUZd3DlWEt0fbTvltfQc1fMItqO
 dsQMVhVznXe3BOPo/GY76BB+5MNqtZkga02sTaQ1B9i+FDp2i8IVn3oylXOL0YnNg/Xx
 kXJTbNyAfPcmDFWDUK+uXMPNY57GC1r8KIvEV9S4hJeXwQntlX9Gnc/yt0P3ZyAAyTM4
 EjnF26ghh5wVcfspBsS5Nx1tkhSHjb9v0fLoe6I1eAIPHzcb9esskISaj29AdtLbs96n
 bZXyOLAt6BOM/GcX02aJ7dOZ4K3EWGLWaZqArERR5HDprK7lppQ3olXrPFh6KSoN1lOd
 4nDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=00opSjOUCt0nvHWrKUPJCC41uhCnbdAiE9Dvugabrgg=;
 b=e749nzuJx1PnoikE1JUDbercz5nB/ze5Tj/ot8DKI7sAc6NgmJ92Jt1YAeindn10Aa
 PY2RUI5kWRMSuL8ZJcGiGXlEKpLDJOS/7vo/SdWWAZ+fNA5d7nP84dM656rezTXofT5o
 5S1mwdMbj8FDCncc+/bpKkgsBDo/BiAlMBQMzSlKiHgXBAFCGefSXZ6iFtN+lGi10Xlo
 8/8cXjE7Izt3dE+MRfJ43E/VxSZIWPCsBhCe4CQ5muctUb7FbEJrhtyqVamS8pdkBGP3
 913t/YWT23hq4Au16MS6B4x8saD5v+KMrS5dTIpk9D8eMvmc1OAwt8ur8RsOo6BR/AIB
 GtpA==
X-Gm-Message-State: APjAAAVhqz+VukZn3YF4lDexvfE4A6hCUWSTgwzzdYF+GS4FpYH3Ggj0
 qpgBKZw0aW7TQUzqQTJ18NZtAHIYnfdJIPGYb5xGGpzl
X-Google-Smtp-Source: APXvYqxNKcddtNY/mJyk1N0KVe71/UAx4m9nnhShPcFo6aRkA1Y7BWTouzWMllsjsG48s3b89d8KGfW8kMTL85j8Ycc=
X-Received: by 2002:a2e:9048:: with SMTP id n8mr47728ljg.37.1565004011463;
 Mon, 05 Aug 2019 04:20:11 -0700 (PDT)
MIME-Version: 1.0
References: <1564465410-9165-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1564465410-9165-4-git-send-email-hayashi.kunihiko@socionext.com>
In-Reply-To: <1564465410-9165-4-git-send-email-hayashi.kunihiko@socionext.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 5 Aug 2019 13:20:00 +0200
Message-ID: <CACRpkdb4xvUROYncrF4b+8t26A_8q3OEH9XD_tS51B6Z9Yc+tg@mail.gmail.com>
Subject: Re: [PATCH v2 3/5] pinctrl: uniphier: Add 5th LD20 MPEG2-TS input
 pin-mux setting
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_042013_653722_DBA60E54 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 7:43 AM Kunihiko Hayashi
<hayashi.kunihiko@socionext.com> wrote:

> The 5th serial TS interface uses the following pins:
>   hscin4_s: PCA[11-14]
>
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> Acked-by: Masahiro Yamada <yamada.masahiro@socionext.com>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
